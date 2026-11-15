package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class Contains extends ASTNode {
    private ASTNode stmt;
    private ASTNode stmt2;

    public Contains(ASTNode aSTNode, ASTNode aSTNode2, ParserContext parserContext) {
        super(parserContext);
        this.stmt = aSTNode;
        this.stmt2 = aSTNode2;
    }

    @Override
    public Class getEgressType() {
        return Boolean.class;
    }

    public ASTNode getFirstStatement() {
        return this.stmt;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new RuntimeException("operation not supported");
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(m.l(this.stmt.getReducedValueAccelerated(obj, obj2, variableResolverFactory), this.stmt2.getReducedValueAccelerated(obj, obj2, variableResolverFactory)));
    }

    public ASTNode getSecondStatement() {
        return this.stmt2;
    }
}
