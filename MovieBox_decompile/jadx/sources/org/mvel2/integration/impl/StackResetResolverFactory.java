package org.mvel2.integration.impl;

import java.util.Set;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class StackResetResolverFactory implements VariableResolverFactory {
    private VariableResolverFactory delegate;

    public StackResetResolverFactory(VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.setTiltFlag(false);
        this.delegate = variableResolverFactory;
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj) {
        return this.delegate.createIndexedVariable(i10, str, obj);
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        return this.delegate.createVariable(str, obj);
    }

    public VariableResolverFactory getDelegate() {
        return this.delegate;
    }

    @Override
    public VariableResolver getIndexedVariableResolver(int i10) {
        return this.delegate.getIndexedVariableResolver(i10);
    }

    @Override
    public Set<String> getKnownVariables() {
        return this.delegate.getKnownVariables();
    }

    @Override
    public VariableResolverFactory getNextFactory() {
        return this.delegate.getNextFactory();
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
        return this.delegate.getVariableResolver(str);
    }

    @Override
    public boolean isIndexedFactory() {
        return this.delegate.isIndexedFactory();
    }

    @Override
    public boolean isResolveable(String str) {
        return this.delegate.isResolveable(str);
    }

    @Override
    public boolean isTarget(String str) {
        return this.delegate.isTarget(str);
    }

    @Override
    public VariableResolver setIndexedVariableResolver(int i10, VariableResolver variableResolver) {
        return this.delegate.setIndexedVariableResolver(i10, variableResolver);
    }

    @Override
    public VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory) {
        return this.delegate.setNextFactory(variableResolverFactory);
    }

    @Override
    public void setTiltFlag(boolean z10) {
        if (this.delegate.tiltFlag()) {
            return;
        }
        this.delegate.setTiltFlag(z10);
    }

    @Override
    public boolean tiltFlag() {
        return this.delegate.tiltFlag();
    }

    @Override
    public int variableIndexOf(String str) {
        return this.delegate.variableIndexOf(str);
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj, Class<?> cls) {
        return this.delegate.createIndexedVariable(i10, str, obj, cls);
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        return this.delegate.createVariable(str, obj, cls);
    }
}
