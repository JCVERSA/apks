package org.mvel2.integration.impl;

import java.util.Set;
import org.mvel2.ScriptRuntimeException;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class ImmutableDefaultFactory implements VariableResolverFactory {
    private boolean tiltFlag;

    private void throwError() {
        throw new ScriptRuntimeException("cannot assign variables; no variable resolver factory available.");
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj) {
        throwError();
        return null;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        throwError();
        return null;
    }

    @Override
    public VariableResolver getIndexedVariableResolver(int i10) {
        throwError();
        return null;
    }

    @Override
    public Set<String> getKnownVariables() {
        return null;
    }

    @Override
    public VariableResolverFactory getNextFactory() {
        return null;
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
        throw new UnresolveablePropertyException(str);
    }

    @Override
    public boolean isIndexedFactory() {
        return false;
    }

    @Override
    public boolean isResolveable(String str) {
        return false;
    }

    @Override
    public boolean isTarget(String str) {
        return false;
    }

    @Override
    public VariableResolver setIndexedVariableResolver(int i10, VariableResolver variableResolver) {
        throwError();
        return null;
    }

    @Override
    public VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("cannot chain to this factory");
    }

    @Override
    public void setTiltFlag(boolean z10) {
        this.tiltFlag = z10;
    }

    @Override
    public boolean tiltFlag() {
        return this.tiltFlag;
    }

    @Override
    public int variableIndexOf(String str) {
        return -1;
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj, Class<?> cls) {
        throwError();
        return null;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        throwError();
        return null;
    }
}
