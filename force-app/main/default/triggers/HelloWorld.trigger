trigger HelloWorld on Lead (before update) {

for (Lead L : trigger.new) {
    L.FirstName = 'Hello';
    L.LastName = 'World';

}
}