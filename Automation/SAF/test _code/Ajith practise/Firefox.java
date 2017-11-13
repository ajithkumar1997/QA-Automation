package kk.java;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Firefox {

public static void main(String[] args) throws InterruptedException {
	System.setProperty("webdriver.gecko.driver", "F:\\\\abu\\kk.java\\geckodriver\\geckodriver.exe");
	WebDriver driver = new FirefoxDriver();
	driver.get("http://www.toolsqa.com//");

	Thread.sleep(5000);
	
}
}

