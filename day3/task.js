const obj1 =  {name :"anuradha", age: 26, location: "chennai" ,desigination1: "JE" };
const keys1 = Object.keys(obj1).sort();
console.log(keys1);
console.log(JSON.stringify(keys1));

const obj2 = {age: 21, desigination:"JE", location: "vandalur",name :"radha" };
const keys2 = Object.keys(obj2).sort();
console.log(keys2);

if (JSON.stringify(keys1)===JSON.stringify(keys2)) {
    console.log("Equal");
}else{
    console.log("not equal!");
}