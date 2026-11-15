package f00;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.TemplateError;

public class a implements c {

    private Map f59881a = new HashMap();

    @Override
    public CompiledTemplate a(String str) {
        CompiledTemplate compiledTemplate = (CompiledTemplate) this.f59881a.get(str);
        if (compiledTemplate != null) {
            return compiledTemplate;
        }
        throw new TemplateError("no named template exists '" + str + "'");
    }

    @Override
    public void b(String str, CompiledTemplate compiledTemplate) {
        this.f59881a.put(str, compiledTemplate);
    }
}
