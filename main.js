const checkAgeStr = function() {
    age = parseInt(prompt("Input age"))
    const age_1 = 18
    const age_2 = 61
    if((typeof(age)==="number")) {
    if (age < age_1) {
        return("You don’t have access cause your age is " + age + " It’s less then " + age_1);
    }
    else if (age >= age_1 && age <=  age_2){
        return( "Welcome! ");
    }
    else if (age  > age_2){
        return( "Keep calm and look Culture channel");
    }
    else {
        return("Technical work")
    }
}    
else {
    return("Введите целые числовые значения возраста")
}
    
}
alert(checkAgeStr())