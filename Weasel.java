import java.util.ArrayList;
import java.util.Random;

public class Weasel {
    static Random rand = new Random();

    private String generateRandomSequence(String goal, String characters){
        String sequence = "";
        for(int i = 0;i < goal.length(); i++){
            sequence += characters.charAt(rand.nextInt(characters.length()));
        }
        return sequence;
    }

    private String getMutatedSequence(String sequence, String goal, String characters){
        ArrayList<String> sequenceList = getSequenceMutations(sequence, characters);
        String bestSeq = sequenceList.get(0);
        int bestSimilarityFactor = getScore(bestSeq, goal);
        int similarityFactor;
        for (String seq : sequenceList) {
            similarityFactor = getScore(seq, goal);
            if(similarityFactor > bestSimilarityFactor){
                bestSimilarityFactor = similarityFactor;
                bestSeq = seq;
            }
        }
        return bestSeq;
    }

    private ArrayList<String> getSequenceMutations(String sequence, String characters){
        ArrayList<String> sequenceList = new ArrayList<String>();
        for(int i = 0; i < 100; i++){
            sequenceList.add(mutateSequence(sequence, characters));
        }
        return sequenceList;
    }

    private static String mutateSequence(String sequence, String characters){
        String result = "";
        for(int i = 0; i < sequence.length(); i++){
            if(rand.nextInt(100) <= 5)
                result += characters.charAt(rand.nextInt(characters.length()));
            else
                result += sequence.charAt(i);
        }
        return result;
    }

    private int getScore(String sequence, String goal){
        int score = 0;
        for(int i = 0; i < goal.length(); i++){
            if(goal.charAt(i) == sequence.charAt(i))
                score++;
        }
        return score;
    }

    public static void main(String[] args){

        final String goal = "METHINKS IT IS LIKE A WEASEL";
        final String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
        int generations = 0;

        Weasel weasel = new Weasel();
        String currentSequence = weasel.generateRandomSequence(goal, characters);

        System.out.println("Generation: " + generations + " " + currentSequence);
        while(!currentSequence.equals(goal)){
            currentSequence = weasel.getMutatedSequence(currentSequence, goal, characters);
            generations++;
            System.out.println("Generation: " + generations + " " + currentSequence);
        }
    }

}