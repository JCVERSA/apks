package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.CompiledAccExpression;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.g;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class DeepAssignmentNode extends ASTNode implements a {
    private CompiledAccExpression acc;
    private String property;
    private ExecutableStatement statement;

    public DeepAssignmentNode(char[] cArr, int i10, int i11, int i12, int i13, String str, ParserContext parserContext) {
        super(parserContext);
        this.fields |= i12 | 2;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if (i13 != -1) {
            this.property = str;
            ExecutableStatement executableStatement = (ExecutableStatement) m.J0(m.w(str, cArr, i10, i11, i13), parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        } else {
            int iB = m.B(cArr, i10, i11, '=');
            if (iB != -1) {
                this.property = m.x(cArr, i10, iB - i10);
                int i14 = iB + 1;
                int iE0 = m.E0(cArr, i14);
                this.start = iE0;
                if (iE0 >= i10 + i11) {
                    throw new CompileException("unexpected end of statement", cArr, i14);
                }
                int i15 = i11 - (iE0 - i10);
                this.offset = i15;
                if ((i12 & 16) != 0) {
                    this.statement = (ExecutableStatement) m.I0(cArr, iE0, i15, parserContext);
                }
            } else {
                this.property = new String(cArr);
            }
        }
        if ((i12 & 16) != 0) {
            this.acc = (CompiledAccExpression) org.mvel2.d.i(this.property.toCharArray(), i10, i11, parserContext);
        }
    }

    @Override
    public String getAbsoluteName() {
        String str = this.property;
        return str.substring(0, str.indexOf(46));
    }

    @Override
    public String getAssignmentVar() {
        return this.property;
    }

    public char[] getExpression() {
        return m.F0(this.expr, this.start, this.offset);
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.property;
        Object objO = org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory);
        g.A(obj, variableResolverFactory, str, objO, this.pCtx);
        return objO;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.statement == null) {
            this.statement = (ExecutableStatement) m.I0(this.expr, this.start, this.offset, this.pCtx);
            this.acc = (CompiledAccExpression) org.mvel2.d.j(this.property.toCharArray(), this.statement.getKnownEgressType(), this.pCtx);
        }
        CompiledAccExpression compiledAccExpression = this.acc;
        Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
        compiledAccExpression.setValue(obj, obj2, variableResolverFactory, value);
        return value;
    }

    @Override
    public boolean isAssignment() {
        return true;
    }

    @Override
    public boolean isNewDeclaration() {
        return false;
    }

    @Override
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }

    public DeepAssignmentNode(char[] cArr, int i10, int i11, int i12, ParserContext parserContext) {
        this(cArr, i10, i11, i12, -1, null, parserContext);
    }
}
