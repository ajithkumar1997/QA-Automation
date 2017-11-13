package kk.java;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;



public class Divi {

	public static void main(String[] args) {
		String exePath = "F:\\abu\\kk.java\\geckodriver\\chromedriver\\chromedriver.exe";
		System.setProperty("webdriver.chrome.driver", exePath);
		WebDriver driver = new ChromeDriver();
		driver.get("https://www.facebook.com/login.php");
		driver.findElement(By.id("email")).sendKeys("given mail   ");
		driver.findElement(By.id("pass")).sendKeys(" given password ");
		driver.findElement(By.id("loginbutton")).click();
	
	}
}
	