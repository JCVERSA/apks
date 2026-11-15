package org.mvel2.ast;

import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class DeclTypedVarNode extends ASTNode implements a {
    private String name;

    public DeclTypedVarNode(String str, char[] cArr, int i10, int i11, Class cls, int i12, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.name = str;
        m.k(str);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if ((i12 & 16) != 0) {
            parserContext.addVariable(str, this.egressType, true);
        }
    }

    @Override
    public String getAssignmentVar() {
        return this.name;
    }

    public char[] getExpression() {
        return new char[0];
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!variableResolverFactory.isResolveable(this.name)) {
            variableResolverFactory.createVariable(this.name, null, this.egressType);
            return null;
        }
        throw new CompileException("variable defined within scope: " + this.name, this.expr, this.start);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!variableResolverFactory.isResolveable(this.name)) {
            variableResolverFactory.createVariable(this.name, null, this.egressType);
            return null;
        }
        throw new CompileException("variable defined within scope: " + this.name, this.expr, this.start);
    }

    @Override
    public boolean isAssignment() {
        return true;
    }

    @Override
    public boolean isNewDeclaration() {
        return true;
    }

    @Override
    public void setValueStatement(ExecutableStatement executableStatement) {
        throw new RuntimeException("illegal operation");
    }

    @Override
    public String toString() {
        return "var:" + this.name;
    }
}
