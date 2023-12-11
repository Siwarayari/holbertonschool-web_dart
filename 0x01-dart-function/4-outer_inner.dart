void outer(String name, String id){
    String inner(){
        List<String> words = name.split(" ");
        String newname = "${words[1][0]}.${words[0]}";
        return 'Hello Agent $newname your id is $id';
    }
    String result = inner();
    print(result);
}
