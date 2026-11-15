package b00;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.OptimizationNotSupported;
import org.mvel2.optimizers.dynamic.DynamicOptimizer;

public class d implements a {

    private char[] f15483a;

    private int f15484b;

    private int f15485c;

    private int f15487e;

    private int f15488f;

    private ParserContext f15490h;

    private org.mvel2.compiler.a f15491i;

    private org.mvel2.compiler.a f15492j;

    private boolean f15489g = false;

    private long f15486d = System.currentTimeMillis();

    public d(ParserContext parserContext, char[] cArr, int i10, int i11, int i12, org.mvel2.compiler.a aVar) {
        this.f15492j = aVar;
        this.f15491i = aVar;
        this.f15487e = i12;
        this.f15483a = cArr;
        this.f15484b = i10;
        this.f15485c = i11;
        this.f15490h = parserContext;
    }

    private Object b(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (DynamicOptimizer.isOverloaded()) {
            DynamicOptimizer.enforceTenureLimit();
        }
        org.mvel2.optimizers.a aVarB = org.mvel2.optimizers.b.b("ASM");
        int i10 = this.f15487e;
        if (i10 == 0) {
            this.f15492j = aVarB.optimizeAccessor(this.f15490h, this.f15483a, this.f15484b, this.f15485c, obj, obj2, variableResolverFactory, false, null);
            return aVarB.getResultOptPass();
        }
        if (i10 == 2) {
            org.mvel2.compiler.a aVarOptimizeCollection = aVarB.optimizeCollection(this.f15490h, obj, null, this.f15483a, this.f15484b, this.f15485c, obj, obj2, variableResolverFactory);
            this.f15492j = aVarOptimizeCollection;
            return aVarOptimizeCollection.getValue(obj, obj2, variableResolverFactory);
        }
        if (i10 != 3) {
            return null;
        }
        org.mvel2.compiler.a aVarOptimizeObjectCreation = aVarB.optimizeObjectCreation(this.f15490h, this.f15483a, this.f15484b, this.f15485c, obj, obj2, variableResolverFactory);
        this.f15492j = aVarOptimizeObjectCreation;
        return aVarOptimizeObjectCreation.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public void a() {
        this.f15492j = this.f15491i;
        this.f15489g = false;
        this.f15488f = 0;
        this.f15486d = System.currentTimeMillis();
    }

    @Override
    public Class getKnownEgressType() {
        return this.f15491i.getKnownEgressType();
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.f15489g) {
            int i10 = this.f15488f + 1;
            this.f15488f = i10;
            if (i10 > DynamicOptimizer.tenuringThreshold) {
                if (System.currentTimeMillis() - this.f15486d < DynamicOptimizer.timeSpan) {
                    this.f15489g = true;
                    try {
                        return b(obj, obj2, variableResolverFactory);
                    } catch (OptimizationNotSupported unused) {
                    }
                } else {
                    this.f15488f = 0;
                    this.f15486d = System.currentTimeMillis();
                }
            }
        }
        return this.f15492j.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.f15488f++;
        return this.f15492j.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
