package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class NewPrototypeNode extends ASTNode {
    private String protoName;

    public NewPrototypeNode(TypeDescriptor typeDescriptor, ParserContext parserContext) {
        super(parserContext);
        this.protoName = typeDescriptor.getClassName();
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return ((Proto) variableResolverFactory.getVariableResolver(this.protoName).getValue()).newInstance(obj, obj2, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return ((Proto) variableResolverFactory.getVariableResolver(this.protoName).getValue()).newInstance(obj, obj2, variableResolverFactory);
    }
}
