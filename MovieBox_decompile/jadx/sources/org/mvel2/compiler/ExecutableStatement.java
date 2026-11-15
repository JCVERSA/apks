package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;

public interface ExecutableStatement extends a, Serializable, Cloneable {
    void computeTypeConversionRule();

    @Override
    Class getKnownEgressType();

    Class getKnownIngressType();

    @Override
    Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    Object getValue(Object obj, VariableResolverFactory variableResolverFactory);

    boolean intOptimized();

    boolean isConvertableIngressEgress();

    boolean isEmptyStatement();

    boolean isExplicitCast();

    boolean isLiteralOnly();

    void setKnownEgressType(Class cls);

    void setKnownIngressType(Class cls);

    @Override
    Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
