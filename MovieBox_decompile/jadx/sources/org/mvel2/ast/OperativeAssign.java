package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class OperativeAssign extends ASTNode {
    private int knownInType;
    private final int operation;
    private ExecutableStatement statement;
    private String varName;

    public OperativeAssign(String str, char[] cArr, int i10, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.knownInType = -1;
        this.varName = str;
        this.operation = i12;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        if ((i13 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
            if (parserContext.isStrongTyping()) {
                this.knownInType = m.a(this.egressType);
            }
            if (parserContext.hasVarOrInput(this.varName)) {
                return;
            }
            parserContext.addInput(this.varName, this.egressType);
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.varName);
        Object objG = a00.a.g(variableResolver.getValue(), this.operation, org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory));
        variableResolver.setValue(objG);
        return objG;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver variableResolver = variableResolverFactory.getVariableResolver(this.varName);
        Object objF = a00.a.f(variableResolver.getValue(), this.operation, this.knownInType, this.statement.getValue(obj, obj2, variableResolverFactory));
        variableResolver.setValue(objF);
        return objF;
    }
}
