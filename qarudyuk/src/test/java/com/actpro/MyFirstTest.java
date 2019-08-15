package test.java.com.actpro;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class MyFirstTest {
	public static  WebDriver driver;
	
	@Test
    public  void  Login () throws InterruptedException {
		System.setProperty ("webdriver.chrome.driver", "/home/vitalij/sveta/chromed/chromedriver");
		
    	driver = new ChromeDriver();
        driver.manage().window().maximize();
        driver.get("http://users.bugred.ru/");
        driver.findElement(By.xpath("//span[contains(text(), 'Войти')]")).click();
        driver.findElement(By.xpath("//div[3]/div[1]/div[1]/form/table/tbody/tr[1]/td[2]/input")).sendKeys("angelmoj@gmail.com");
        driver.findElement(By.xpath("//div[3]/div[1]/div[1]/form/table/tbody/tr[2]/td[2]/input")).sendKeys("1234567");
        driver.findElement(By.xpath("//div[3]/div[1]/div[1]/form/table/tbody/tr[3]/td[2]/input")).click();

        Thread.sleep(2000);
        driver.findElement(By.xpath("//a[contains(text(), 'Добавить пользователя')]")).click();
        driver.findElement(By.xpath("//div[3]/form/table/tbody/tr[1]/td[2]/input")).sendKeys("светлана");
        driver.findElement(By.xpath("/html/body/div[3]/form/table/tbody/tr[2]/td[2]/input")).sendKeys("arutinus@gmail.com");
        driver.findElement(By.xpath("  //div[3]/form/table/tbody/tr[3]/td[2]/input")).sendKeys("1234567");
        driver.findElement((By.xpath("//div[3]/form/table/tbody/tr[21]/td[2]/input"))).click();

        driver.quit();
    }
}
