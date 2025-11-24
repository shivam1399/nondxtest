@IsTest
private class StatsUtilTest {
    @IsTest
    static void average_shouldPreserveFraction() {
        // Average of [1,2] should be 1.5 — this will FAIL due to integer division in StatsUtil
        List<Integer> nums = new List<Integer>{1, 2};
        Decimal expected = 1.5;
        Decimal actual   = StatsUtil.average(nums);

        System.assertEquals(
            expected,
            actual,
            'Average should be 1.5 for [1,2]; fraction is being lost (integer division bug).'
        );
    }
}