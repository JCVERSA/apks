package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class Substatement extends ASTNode {
    private ExecutableStatement statement;

    public Substatement(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.fields = i12;
        if ((i12 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.statement.getValue(obj, obj2, variableResolverFactory);
    }

    public ExecutableStatement getStatement() {
        return this.statement;
    }

    @Override
    public String toString() {
        ExecutableStatement executableStatement = this.statement;
        if (executableStatement != null) {
            return executableStatement.toString();
        }
        return "(" + new String(this.expr, this.start, this.offset) + ")";
    }
}
