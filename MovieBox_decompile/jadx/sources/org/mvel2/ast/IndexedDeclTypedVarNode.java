package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

public class IndexedDeclTypedVarNode extends ASTNode implements a {
    private int register;

    public IndexedDeclTypedVarNode(int i10, int i11, int i12, Class cls, ParserContext parserContext) {
        super(parserContext);
        this.egressType = cls;
        this.start = i11;
        this.offset = i12;
        this.register = i10;
    }

    @Override
    public String getAssignmentVar() {
        return null;
    }

    public char[] getExpression() {
        return new char[0];
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createIndexedVariable(this.register, null, this.egressType);
        return null;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createIndexedVariable(this.register, null, this.egressType);
        return obj;
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
}
