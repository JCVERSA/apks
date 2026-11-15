package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;
import org.mvel2.util.MethodStub;

public class StaticMethodImportResolver implements VariableResolver {
    private MethodStub method;
    private String name;

    public StaticMethodImportResolver(String str, MethodStub methodStub) {
        this.name = str;
        this.method = methodStub;
    }

    @Override
    public int getFlags() {
        return 0;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Class getType() {
        return null;
    }

    @Override
    public void setValue(Object obj) {
        this.method = (MethodStub) obj;
    }

    @Override
    public MethodStub getValue() {
        return this.method;
    }

    @Override
    public void setStaticType(Class cls) {
    }
}
