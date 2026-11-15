package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;

public class OperatorNode extends ASTNode {
    static final boolean $assertionsDisabled = false;
    private Integer operator;

    public OperatorNode(Integer num, char[] cArr, int i10, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.operator = num;
        this.literal = num;
        this.start = i10;
    }

    @Override
    public Integer getOperator() {
        return this.operator;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new CompileException("illegal use of operator: " + xz.a.b(this.operator.intValue()), this.expr, this.start);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        throw new CompileException("illegal use of operator: " + xz.a.b(this.operator.intValue()), this.expr, this.start);
    }

    @Override
    public boolean isOperator() {
        return true;
    }

    @Override
    public boolean isOperator(Integer num) {
        return num.equals(this.operator);
    }
}
