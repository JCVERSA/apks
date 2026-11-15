package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;

public class SimpleValueResolver implements VariableResolver {
    private Object value;

    public SimpleValueResolver(Object obj) {
        this.value = obj;
    }

    @Override
    public int getFlags() {
        return 0;
    }

    @Override
    public String getName() {
        return null;
    }

    @Override
    public Class getType() {
        return Object.class;
    }

    @Override
    public Object getValue() {
        return this.value;
    }

    @Override
    public void setValue(Object obj) {
        this.value = obj;
    }

    @Override
    public void setStaticType(Class cls) {
    }
}
