import java.lang.Math;

public class S1254013 {
    static int money = 10000;

    public static void main(String[] args) {
        GuangfuRoad gfr = new GuangfuRoad();
        NCUE ncue = new NCUE();
        gfr.start();
        ncue.start();
    }
}

interface Road {

    public void run();

    public int randMoney();
}

class GuangfuRoad extends Thread implements Road {

    public void run() {
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 1000000; j++)
                ;
            int m = randMoney();

            if (Q4.money - m < 0) {
                System.out.println("餘額不足!");
            } else {
                Q4.money -= m;
                System.out.println("光復路郵局領取" + m + "元" + "，餘額" + (Q4.money) + "元");
            }
        }
    }

    public int randMoney() {
        int m = (int) (Math.random() * 2000);
        return m;
    }
}

class NCUE extends Thread implements Road {

    public void run() {
        for (int i = 0; i < 8; i++) {
            for (int j = 0; j < 1000000; j++)
                ;
            int m = randMoney();

            if (Q4.money - m < 0) {
                System.out.println("餘額不足!");
            } else {
                Q4.money -= m;
                System.out.println("彰師大郵局領取" + m + "元" + "，餘額" + (Q4.money) + "元");
            }
        }
    }

    public int randMoney() {
        int m = (int) (Math.random() * 2000);
        return m;
    }
}
