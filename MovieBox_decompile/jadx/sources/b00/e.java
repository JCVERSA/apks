package b00;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;

public class e implements a {

    private char[] f15493a;

    private int f15494b;

    private int f15495c;

    private boolean f15496d = false;

    private int f15497e = 0;

    private long f15498f = System.currentTimeMillis();

    private ParserContext f15499g;

    private final org.mvel2.compiler.a f15500h;

    private org.mvel2.compiler.a f15501i;

    public e(ParserContext parserContext, char[] cArr, int i10, int i11, org.mvel2.compiler.a aVar) {
        this.f15501i = aVar;
        this.f15500h = aVar;
        this.f15499g = parserContext;
        this.f15493a = cArr;
        this.f15494b = i10;
        this.f15495c = i11;
    }

    private Object b(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        this.f15501i = org.mvel2.optimizers.b.b("ASM").optimizeSetAccessor(this.f15499g, this.f15493a, this.f15494b, this.f15495c, obj, obj2, variableResolverFactory, false, obj3, obj3 != null ? obj3.getClass() : Object.class);
        return obj3;
    }

    @Override
    public void a() {
        this.f15501i = this.f15500h;
        this.f15496d = false;
        this.f15497e = 0;
        this.f15498f = System.currentTimeMillis();
    }

    @Override
    public Class getKnownEgressType() {
        return this.f15500h.getKnownEgressType();
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("value cannot be read with this accessor");
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (!this.f15496d) {
            int i10 = this.f15497e + 1;
            this.f15497e = i10;
            if (i10 > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.f15498f < DynamicOptimizer.timeSpan) {
                    this.f15496d = true;
                    return b(obj, obj2, variableResolverFactory, obj3);
                }
                this.f15497e = 0;
                this.f15498f = System.currentTimeMillis();
            }
        }
        this.f15501i.setValue(obj, obj2, variableResolverFactory, obj3);
        return obj3;
    }
}
