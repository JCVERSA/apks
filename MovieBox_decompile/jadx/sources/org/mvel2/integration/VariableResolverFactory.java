package org.mvel2.integration;

import java.io.Serializable;
import java.util.Set;

public interface VariableResolverFactory extends Serializable {
    VariableResolver createIndexedVariable(int i10, String str, Object obj);

    VariableResolver createIndexedVariable(int i10, String str, Object obj, Class<?> cls);

    VariableResolver createVariable(String str, Object obj);

    VariableResolver createVariable(String str, Object obj, Class<?> cls);

    VariableResolver getIndexedVariableResolver(int i10);

    Set<String> getKnownVariables();

    VariableResolverFactory getNextFactory();

    VariableResolver getVariableResolver(String str);

    boolean isIndexedFactory();

    boolean isResolveable(String str);

    boolean isTarget(String str);

    VariableResolver setIndexedVariableResolver(int i10, VariableResolver variableResolver);

    VariableResolverFactory setNextFactory(VariableResolverFactory variableResolverFactory);

    void setTiltFlag(boolean z10);

    boolean tiltFlag();

    int variableIndexOf(String str);
}
