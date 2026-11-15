package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class TypedVarNode extends ASTNode implements a {
    private String name;
    private ExecutableStatement statement;

    public TypedVarNode(char[] cArr, int i10, int i11, int i12, Class cls, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.fields = i12;
        this.start = i10;
        this.offset = i11;
        this.expr = cArr;
        int iB = m.B(cArr, i10, i11, '=');
        if (iB != -1) {
            int i13 = iB - i10;
            String strX = m.x(cArr, i10, i13);
            this.name = strX;
            m.k(strX);
            int i14 = this.offset - i13;
            this.offset = i14;
            int i15 = iB + 1;
            this.start = i15;
            i12 |= 128;
            if ((i12 & 16) != 0) {
                this.statement = (ExecutableStatement) m.I0(cArr, i15, i14, parserContext);
            }
        } else {
            String str = new String(cArr, i10, i11);
            this.name = str;
            m.k(str);
        }
        if ((i12 & 16) != 0) {
            Class varOrInputType = parserContext.getVarOrInputType(this.name);
            if (varOrInputType == null || varOrInputType == Object.class || varOrInputType.isAssignableFrom(this.egressType)) {
                parserContext.addVariable(this.name, this.egressType, false);
                return;
            }
            throw new RuntimeException("statically-typed variable already defined in scope: " + this.name);
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
