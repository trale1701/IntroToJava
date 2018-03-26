package section2;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	
	public static void main(String[] args) {
		
		// START HERE
	System.out.println("hellow world");
		Robot t1000=new Robot();
		t1000.setSpeed(200);
		t1000.turn(180);
		t1000.move(200);
		t1000.turn(180);
		t1000.penDown();
		for(int i=0;i<4;i++) {
		t1000.move(100);
		t1000.turn(-90);
		t1000.move(50);
		t1000.turn(180);
		t1000.move(150);
		t1000.turn(-90);}
		
		
	}
}
