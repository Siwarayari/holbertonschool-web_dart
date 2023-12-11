int add(int a, int b){
    return a + b;
}

int sub(int a, int b){
    return a - b;
}

String showFunc(int a, int b){
    int addfunc = add(a, b);
    int subfunc = sub(a, b);
    String result = "Add $a + $b = $addfunc\nSub $a - $b = $subfunc";
    return result;
}
