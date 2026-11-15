package org.mvel2.optimizers;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public interface a {
    Class getEgressType();

    Object getResultOptPass();

    void init();

    boolean isLiteralOnly();

    org.mvel2.compiler.a optimizeAccessor(ParserContext parserContext, char[] cArr, int i10, int i11, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z10, Class cls);

    org.mvel2.compiler.a optimizeCollection(ParserContext parserContext, Object obj, Class cls, char[] cArr, int i10, int i11, Object obj2, Object obj3, VariableResolverFactory variableResolverFactory);

    org.mvel2.compiler.a optimizeObjectCreation(ParserContext parserContext, char[] cArr, int i10, int i11, Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    org.mvel2.compiler.a optimizeSetAccessor(ParserContext parserContext, char[] cArr, int i10, int i11, Object obj, Object obj2, VariableResolverFactory variableResolverFactory, boolean z10, Object obj3, Class cls);
}
