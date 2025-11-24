public class MySampleClass {
    public String getGreeting(String name) {
        String greeting = 'Hello, ' + name + '! Welcome to Salesforce.';
                    return greeting;
    }

                    public void printGreeting(String name){
        String greeting = getGreeting(name);
        System.debug(greeting);
    }
}