package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class IndexedPostFixIncNode extends ASTNode {
    private int register;

    public IndexedPostFixIncNode(int i10, ParserContext parserContext) {
        super(parserContext);
        this.register = i10;
        this.egressType = parserContext.getVarOrInputType(parserContext.getIndexedVarNames()[i10]);
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object value = indexedVariableResolver.getValue();
        indexedVariableResolver.setValue(a00.a.f(value, 0, 101, 1));
        return value;
    }
}
