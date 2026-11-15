package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

public class Invert extends ASTNode {
    private ExecutableStatement stmt;

    public Invert(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if ((i12 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.stmt = executableStatement;
            e.c(parserContext, executableStatement, Integer.class, true);
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        Object objO = org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory);
        if (objO instanceof Integer) {
            return Integer.valueOf(~((Integer) objO).intValue());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("was expecting type: Integer; but found type: ");
        sb2.append(objO == null ? "null" : objO.getClass().getName());
        throw new CompileException(sb2.toString(), this.expr, this.start);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Integer.valueOf(~((Integer) this.stmt.getValue(obj, obj2, variableResolverFactory)).intValue());
    }
}
