package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class Negation extends ASTNode {
    private ExecutableStatement stmt;

    public Negation(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if ((i12 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.stmt = executableStatement;
            if (executableStatement.getKnownEgressType() != null && !m.f(this.stmt.getKnownEgressType()).isAssignableFrom(Boolean.class)) {
                throw new CompileException("negation operator cannot be applied to non-boolean type", cArr, i10);
            }
        }
    }

    @Override
    public Class getEgressType() {
        return Boolean.class;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        try {
            return Boolean.valueOf(!((Boolean) org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory)).booleanValue());
        } catch (ClassCastException e10) {
            throw new CompileException("negation operator applied to non-boolean expression", this.expr, this.start, e10);
        } catch (NullPointerException e11) {
            throw new CompileException("negation operator applied to a null value", this.expr, this.start, e11);
        }
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(!((Boolean) this.stmt.getValue(obj, obj2, variableResolverFactory)).booleanValue());
    }

    public ExecutableStatement getStatement() {
        return this.stmt;
    }
}
