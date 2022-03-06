

import static net.sourceforge.jwebunit.junit.JWebUnit.*;
 
import org.junit.Before;
import org.junit.Test;

import net.sourceforge.jwebunit.util.TestingEngineRegistry;

 
 
public class ViewToDoTest {
    @Before
    public void prepare() {   
        setTestingEngineKey(TestingEngineRegistry.TESTING_ENGINE_HTMLUNIT); 
        setBaseUrl("http://localhost:8080/ToDoApp");
    }
 
    @Test
    public void testViewPage() {
    	setScriptingEnabled(false);
        beginAt("index.jsp"); 
        assertTitleEquals("View To Do");
    }
     
    @Test
    public void testAddPage() {
    	setScriptingEnabled(false);
        beginAt("index.jsp"); 
        assertLinkPresent("addToDo");
        clickLink("addToDo");
        assertTitleEquals("Add To Do");
    }
}