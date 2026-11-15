package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class IntDiv extends BinaryOperation implements c {
    public IntDiv(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(2, parserContext);
        this.left = aSTNode;
        this.right = aSTNode2;
    }

    @Override
    public Class getEgressType() {
        return Integer.class;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(((Integer) this.left.getReducedValue(obj, obj2, variableResolverFactory)).intValue() / ((Integer) this.right.getReducedValue(obj, obj2, variableResolverFactory)).intValue());
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(((Integer) this.left.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).intValue() / ((Integer) this.right.getReducedValueAccelerated(obj, obj2, variableResolverFactory)).intValue());
    }

    @Override
    public void setRight(ASTNode aSTNode) {
        super.setRight(aSTNode);
    }
}
