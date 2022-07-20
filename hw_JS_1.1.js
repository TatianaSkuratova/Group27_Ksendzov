/*
1*:
Преобразовать написанный код в 26-33 пунктах в функцию, принимающую на вход возраст.
Пример: const checkAge = function(age) {
Ваши преобразования
}
Вывести в консоль результат работы функции с возрастами 17, 18, 61
*/
/*
2*:
Преобразовать задание 1* таким образом, чтобы первым делом в функции проверялся тип данных. 
И если он не Number - кидалась ошибка.
*/
const checkAge = function(age) {
    const age_1 = 18
    const age_2 = 61
    
    if((typeof(age)==="number")) {
        if (age < age_1) {
            return("You don’t have access cause your age is " + age + " It’s less then " + age_1);
        }
        else if (age >= age_1 && age <=  age_2){
            return( "Welcome  ! ");
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
//console.log(checkAge("re"))





/*
3**:
Преобразовать 2* таким образом, чтобы значение '2' (строка в которой лежит ТОЛЬКО ЦИФРА) пропускалось, 
преобразовываясь в number
*/
const checkAgeStr = function(age) {
    age = parseInt(age)
    const age_1 = 18
    const age_2 = 61
    if((typeof(age)==="number")) {
        if (age < age_1) {
            return("You don’t have access cause your age is " + age + " It’s less then " + age_1);
        }
        else if (age >= age_1 && age <=  age_2){
            return( "Welcome!");
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
console.log(checkAgeStr("17"))

/* 
4***:
Преобразовать задание 3* таким образом, чтобы возраст вводится используя функцию prompt в привязанной верстке*/
