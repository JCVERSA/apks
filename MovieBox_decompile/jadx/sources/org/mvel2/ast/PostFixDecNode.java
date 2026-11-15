package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class PostFixDecNode extends ASTNode {
    private String name;

    public PostFixDecNode(String str, ParserContext parserContext) {
        super(parserContext);
        this.name = str;
        if (parserContext != null) {
            this.egressType = parserContext.getVarOrInputType(str);
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.name);
        Object value = variableResolver.getValue();
        variableResolver.setValue(a00.a.f(value, 1, 101, 1));
        return value;
    }
}
