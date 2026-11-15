package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.b;

public class a implements org.mvel2.compiler.a {

    private org.mvel2.compiler.a f68841a;

    private char[] f68842b;

    private int f68843c;

    private int f68844d;

    private org.mvel2.compiler.a f68845e;

    private ParserContext f68846f;

    public a(ParserContext parserContext, org.mvel2.compiler.a aVar, char[] cArr, int i10, int i11) {
        this.f68841a = aVar;
        this.f68843c = i10;
        this.f68844d = i11;
        this.f68842b = cArr;
        this.f68846f = parserContext;
    }

    private Object b(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.f68845e != null) {
            return this.f68841a.getValue(obj, obj2, variableResolverFactory);
        }
        Object value = this.f68841a.getValue(obj, obj2, variableResolverFactory);
        org.mvel2.optimizers.a aVarC = b.c();
        this.f68845e = aVarC.optimizeAccessor(this.f68846f, this.f68842b, this.f68843c, this.f68844d, value, obj2, variableResolverFactory, false, this.f68841a.getKnownEgressType());
        return aVarC.getResultOptPass();
    }

    @Override
    public Class getKnownEgressType() {
        return this.f68845e.getKnownEgressType();
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        org.mvel2.compiler.a aVar = this.f68845e;
        return aVar == null ? b(obj, obj2, variableResolverFactory) : aVar.getValue(b(obj, obj2, variableResolverFactory), obj2, variableResolverFactory);
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.f68845e.setValue(b(obj, obj2, variableResolverFactory), obj2, variableResolverFactory, obj3);
    }
}
