import org.openqa.selenium.Keys;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.By;

public class Datepicker {
    public static void main(String[] args) {

        System.setProperty("webdriver.chrome.driver", "/Users/sathya.dhanaraj/Downloads/chromedriver_win32/chromedriver.exe");

        WebDriver driver = new ChromeDriver();

        driver.get("https://formy-project.herokuapp.com/datepicker");

        WebElement dateFiled = driver.findElement(By.id("datepicker"));
        dateFiled.sendKeys("03/03/2021");
        dateFiled.sendKeys(Keys.RETURN);
        driver.quit();
    }
}