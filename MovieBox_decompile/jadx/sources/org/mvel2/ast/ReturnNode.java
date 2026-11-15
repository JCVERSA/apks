package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.StackDemarcResolverFactory;
import org.mvel2.util.m;

public class ReturnNode extends ASTNode {
    public ReturnNode(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if ((i12 & 16) != 0) {
            setAccessor((org.mvel2.compiler.a) m.I0(cArr, i10, i11, parserContext));
        }
    }

    @Override
    public Integer getOperator() {
        return 99;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.setTiltFlag(true);
        return org.mvel2.d.o(this.expr, this.start, this.offset, obj, new StackDemarcResolverFactory(variableResolverFactory));
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.accessor == null) {
            setAccessor((org.mvel2.compiler.a) m.I0(this.expr, this.start, this.offset, this.pCtx));
        }
        variableResolverFactory.setTiltFlag(true);
        return this.accessor.getValue(obj, obj2, new StackDemarcResolverFactory(variableResolverFactory));
    }

    @Override
    public boolean isOperator() {
        return true;
    }

    @Override
    public boolean isOperator(Integer num) {
        return 99 == num.intValue();
    }
}
