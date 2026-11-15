package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;

public class IndexVariableResolver implements VariableResolver {
    private int indexPos;
    private Object[] vars;

    public IndexVariableResolver(int i10, Object[] objArr) {
        this.indexPos = i10;
        this.vars = objArr;
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
        return null;
    }

    @Override
    public Object getValue() {
        return this.vars[this.indexPos];
    }

    @Override
    public void setValue(Object obj) {
        this.vars[this.indexPos] = obj;
    }

    @Override
    public void setStaticType(Class cls) {
    }
}
