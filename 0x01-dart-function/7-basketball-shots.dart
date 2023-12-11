int whoWins(Map<String, int> teamA, Map<String, int> teamB){
    int scoreofteam1 = 0;
    int scoreofteam2 = 0;

    teamA.forEach((type, result){
        if (type == 'Free throws'){
            scoreofteam1 += result * 1;
        }
        else if (type == '2 pointers'){
            scoreofteam1 += result * 2;
        }
        else if (type == '3 pointers'){
            scoreofteam1 += result * 2;
        }
    });


    teamB.forEach((type, result){
        if (type == 'Free throws'){
            scoreofteam2 += result * 1;
        }
        else if (type == '2 pointers'){
            scoreofteam2 += result * 2;
        }
        else if (type == '3 pointers'){
            scoreofteam2 += result * 2;
        }
    });



    if (scoreofteam1 == scoreofteam2){
        return 0;
    }
    else if(scoreofteam1 < scoreofteam2) { 
        return 2;
    }
    else{
        return 1;
    }
}
