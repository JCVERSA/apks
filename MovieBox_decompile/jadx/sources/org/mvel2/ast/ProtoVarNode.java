package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class ProtoVarNode extends ASTNode implements a {
    private String name;
    private ExecutableStatement statement;

    public ProtoVarNode(char[] cArr, int i10, int i11, int i12, Proto proto, ParserContext parserContext) {
        super(parserContext);
        this.egressType = Proto.b.class;
        this.start = i10;
        this.offset = i11;
        this.fields = i12;
        this.expr = cArr;
        int iB = m.B(cArr, i10, i11, '=');
        if (iB != -1) {
            String strX = m.x(cArr, 0, iB);
            this.name = strX;
            m.k(strX);
            i12 |= 128;
            if ((i12 & 16) != 0) {
                this.statement = (ExecutableStatement) m.I0(cArr, iB + 1, i11, parserContext);
            }
        } else {
            String str = new String(cArr, i10, i11);
            this.name = str;
            m.k(str);
        }
        if ((i12 & 16) != 0) {
            parserContext.addVariable(this.name, this.egressType, true);
        }
    }

    @Override
    public String getAssignmentVar() {
        return this.name;
    }

    public char[] getExpression() {
        return this.expr;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        String str = this.name;
        Object objO = org.mvel2.d.o(this.expr, this.start, this.offset, obj2, variableResolverFactory);
        variableResolverFactory.createVariable(str, objO, this.egressType);
        return objO;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (this.statement == null) {
            this.statement = (ExecutableStatement) m.I0(this.expr, this.start, this.offset, this.pCtx);
        }
        String str = this.name;
        Object value = this.statement.getValue(obj, obj2, variableResolverFactory);
        variableResolverFactory.createVariable(str, value, this.egressType);
        return value;
    }

    @Override
    public boolean isNewDeclaration() {
        return true;
    }

    @Override
    public void setValueStatement(ExecutableStatement executableStatement) {
        this.statement = executableStatement;
    }
}
