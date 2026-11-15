package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class DeclProtoVarNode extends ASTNode implements a {
    private String name;

    public DeclProtoVarNode(String str, Proto proto, int i10, ParserContext parserContext) {
        super(parserContext);
        this.egressType = Proto.b.class;
        this.name = str;
        m.k(str);
        if ((i10 & 16) != 0) {
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
        throw new RuntimeException("variable defined within scope: " + this.name);
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!variableResolverFactory.isResolveable(this.name)) {
            variableResolverFactory.createVariable(this.name, null, this.egressType);
            return null;
        }
        throw new RuntimeException("variable defined within scope: " + this.name);
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
