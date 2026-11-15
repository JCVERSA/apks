package org.mvel2.compiler;

import org.mvel2.integration.VariableResolverFactory;

public class ExecutableLiteral implements ExecutableStatement {
    private boolean intOptimized;
    private int integer32;
    private Object literal;

    public ExecutableLiteral(Object obj) {
        this.literal = obj;
        if (obj instanceof Integer) {
            this.integer32 = ((Integer) obj).intValue();
        }
    }

    public int getInteger32() {
        return this.integer32;
    }

    @Override
    public Class getKnownEgressType() {
        Object obj = this.literal;
        return obj == null ? Object.class : obj.getClass();
    }

    @Override
    public Class getKnownIngressType() {
        return null;
    }

    public Object getLiteral() {
        return this.literal;
    }

    @Override
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    @Override
    public boolean intOptimized() {
        return this.intOptimized;
    }

    @Override
    public boolean isConvertableIngressEgress() {
        return false;
    }

    @Override
    public boolean isEmptyStatement() {
        return false;
    }

    @Override
    public boolean isExplicitCast() {
        return false;
    }

    @Override
    public boolean isLiteralOnly() {
        return true;
    }

    public void setInteger32(int i10) {
        this.integer32 = i10;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.literal;
    }

    public ExecutableLiteral(int i10) {
        this.integer32 = i10;
        this.literal = Integer.valueOf(i10);
        this.intOptimized = true;
    }

    @Override
    public void computeTypeConversionRule() {
    }

    @Override
    public void setKnownEgressType(Class cls) {
    }

    @Override
    public void setKnownIngressType(Class cls) {
    }
}
