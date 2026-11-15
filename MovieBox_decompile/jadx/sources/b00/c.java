package b00;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;

public class c implements a {

    private ParserContext f15471a;

    private Object f15472b;

    private Class f15473c;

    private char[] f15474d;

    private int f15475e;

    private int f15476f;

    private int f15478h;

    private int f15479i;

    private org.mvel2.compiler.a f15481k;

    private org.mvel2.compiler.a f15482l;

    private boolean f15480j = false;

    private long f15477g = System.currentTimeMillis();

    public c(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i10, int i11, int i12, org.mvel2.compiler.a aVar) {
        this.f15471a = parserContext;
        this.f15472b = obj;
        this.f15473c = cls;
        this.f15482l = aVar;
        this.f15481k = aVar;
        this.f15478h = i12;
        this.f15474d = cArr;
        this.f15475e = i10;
        this.f15476f = i11;
    }

    private Object b(ParserContext parserContext, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        org.mvel2.compiler.a aVarOptimizeCollection = org.mvel2.optimizers.b.b("ASM").optimizeCollection(parserContext, this.f15472b, this.f15473c, this.f15474d, this.f15475e, this.f15476f, obj, obj2, variableResolverFactory);
        this.f15482l = aVarOptimizeCollection;
        return aVarOptimizeCollection.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public void a() {
        this.f15482l = this.f15481k;
        this.f15480j = false;
        this.f15479i = 0;
        this.f15477g = System.currentTimeMillis();
    }

    @Override
    public Class getKnownEgressType() {
        return this.f15473c;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.f15480j) {
            int i10 = this.f15479i + 1;
            this.f15479i = i10;
            if (i10 > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.f15477g < DynamicOptimizer.timeSpan) {
                    this.f15480j = true;
                    return b(this.f15471a, obj, obj2, variableResolverFactory);
                }
                this.f15479i = 0;
                this.f15477g = System.currentTimeMillis();
            }
        }
        return this.f15482l.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.f15479i++;
        return this.f15482l.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
