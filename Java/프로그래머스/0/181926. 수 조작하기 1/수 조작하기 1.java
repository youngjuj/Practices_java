class Solution {
    public int solution(int n, String control) {
        int answer = 0;
        answer = n;
        
        for(int i = 0; i < control.length(); i++){
            switch(control.charAt(i)){
                case 'w':
                    answer++;
                    break;
                case 's':
                    answer--;
                    break;
                case 'd':
                    answer += 10;
                    break;
                default:
                    answer -= 10;
                    break;
            }
        }
        return answer;
    }
}