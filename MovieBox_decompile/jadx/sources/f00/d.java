package f00;

import java.util.Map;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.templates.CompiledTemplate;
import org.mvel2.templates.res.Node;
import org.mvel2.util.g;

public class d {

    private char[] f59893a;

    private c f59894b;

    private Node f59895c;

    private String f59896d;

    private g f59897e;

    public d(char[] cArr, c cVar, Node node, String str) {
        this.f59893a = cArr;
        this.f59894b = cVar;
        this.f59895c = node;
        this.f59896d = str;
    }

    public static Object a(String str, Object obj, VariableResolverFactory variableResolverFactory) {
        return e(b.f(str), obj, variableResolverFactory);
    }

    public static Object b(String str, Map map) {
        return e(b.f(str), null, new MapVariableResolverFactory(map));
    }

    public static Object e(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory) {
        return g(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, null);
    }

    public static Object f(CompiledTemplate compiledTemplate, Object obj, VariableResolverFactory variableResolverFactory, c cVar) {
        return g(compiledTemplate.getRoot(), compiledTemplate.getTemplate(), new StringBuilder(), obj, variableResolverFactory, cVar);
    }

    public static Object g(Node node, char[] cArr, StringBuilder sb2, Object obj, VariableResolverFactory variableResolverFactory, c cVar) {
        return new d(cArr, cVar, node, ".").d(sb2, obj, variableResolverFactory);
    }

    public Object c(g00.c cVar, Object obj, VariableResolverFactory variableResolverFactory) {
        return this.f59895c.eval(this, cVar, obj, variableResolverFactory);
    }

    public Object d(StringBuilder sb2, Object obj, VariableResolverFactory variableResolverFactory) {
        return c(new h00.a(sb2), obj, variableResolverFactory);
    }

    public c h() {
        return this.f59894b;
    }

    public g i() {
        if (this.f59897e == null) {
            g gVar = new g();
            this.f59897e = gVar;
            gVar.q(this.f59896d);
        }
        return this.f59897e;
    }

    public char[] j() {
        return this.f59893a;
    }

    public void k(c cVar) {
        this.f59894b = cVar;
    }
}
