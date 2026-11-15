package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class EndOfStatement extends ASTNode {
    public EndOfStatement(ParserContext parserContext) {
        super(parserContext);
        this.literal = getOperator();
    }

    @Override
    public Integer getOperator() {
        return 37;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return null;
    }

    @Override
    public boolean isOperator() {
        return true;
    }

    @Override
    public boolean isOperator(Integer num) {
        return num.intValue() == 37;
    }
}
