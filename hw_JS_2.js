/*Напишите валидационный скрипт используя функции 
 1. Скрипт должен на вход принимать строку.
 2. После проверки строки выводить в консоль сообщение где будет конкретно написано, что не так в ведённой строке.
 3. Минимум 5 символов в строке
 4. Максимум 64 символа в строке
 5. В строке должны быть буквы
 6. Должна быть хотя бы одна буква в верхнем регистре
 7. Должна быть хотя бы одна цифра
 8. Должна быть хотя бы одна @
 9. Строка не должна быть пустой*/


function checkingString (str) {
    let str_output = ""
    if (typeof(str)!=="string") {
        str_output = "Значение " + str + " не является строкой"
    }
    else {
        if (str.length<5){
            str_output+="В строке должно быть минимум 5 символов. \n"
        }
        if (str.length>64){
            str_output+="В строке должно быть максимум 64 символа. \n"
        }
        if (!/[a-zA-Z]/.test(str)) {
            str_output+="В строке должны быть буквы. \n"
        }
        if (!/[A-Z]/.test(str)) {
            str_output+="Должна быть хотя бы одна буква в верхнем регистре \n"
        }
        if (!/@/.test(str)){
            str_output+="Должна быть хотя бы одна @"
        }
        if (!/[0-9]/.test(str)) {
            str_output+="В строке должны быть цифры. \n"
        }
    }
    if (str_output.length==0) {
        str_output+="Строка соответствует требованиям"
    }
    return str_output
}
console.log(checkingString("grtA3@gmail.com"))