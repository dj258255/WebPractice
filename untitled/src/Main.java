import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int T = scan.nextInt(); // 테스트 케이스 수

        for (int t = 1; t <= T; t++) {
            int matrixsize = scan.nextInt(); // N * N 배열 크기
            int size = scan.nextInt(); // 파리채의 크기 M * M

            int[][] matrix = new int[matrixsize][matrixsize]; // 매트릭스 초기화
            int[][] sum = new int[matrixsize + 1][matrixsize + 1]; // 누적합 배열

            // 매트릭스 입력 받기
            for (int i = 0; i < matrixsize; i++) {
                for (int j = 0; j < matrixsize; j++) {
                    matrix[i][j] = scan.nextInt();
                    // 누적합 계산
                    sum[i + 1][j + 1] = matrix[i][j] + sum[i][j + 1] + sum[i + 1][j] - sum[i][j];
                }
            }

            int max = Integer.MIN_VALUE;

            // 파리채로 덮을 수 있는 모든 구역을 누적합을 통해 계산
            for (int i = 0; i <= matrixsize - size; i++) {
                for (int j = 0; j <= matrixsize - size; j++) {
                    // (i, j)에서 시작하는 M*M 구간의 합 계산
                    int x1 = i, y1 = j;
                    int x2 = i + size - 1, y2 = j + size - 1;

                    int regionSum = sum[x2 + 1][y2 + 1] - sum[x1][y2 + 1] - sum[x2 + 1][y1] + sum[x1][y1];
                    max = Math.max(max, regionSum);
                }
            }

            // 결과 출력
            System.out.println("#" + t + " " + max);
        }
    }
}
