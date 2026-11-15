package org.mvel2.ast;

import org.mvel2.integration.VariableResolverFactory;

public class d extends b {

    private final VariableResolverFactory f68791b;

    public d(Function function, VariableResolverFactory variableResolverFactory) {
        super(function);
        this.f68791b = variableResolverFactory;
    }

    @Override
    public Object a(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
        return this.f68790a.call(obj, obj2, new InvokationContextFactory(variableResolverFactory, this.f68791b), objArr);
    }

    public VariableResolverFactory c() {
        return this.f68791b;
    }

    public String toString() {
        return "function_prototype:" + this.f68790a.getName();
    }
}
