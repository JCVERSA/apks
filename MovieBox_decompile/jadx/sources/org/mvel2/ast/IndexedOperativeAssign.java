package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class IndexedOperativeAssign extends ASTNode {
    private final int operation;
    private final int register;
    private ExecutableStatement statement;

    public IndexedOperativeAssign(char[] cArr, int i10, int i11, int i12, int i13, int i14, ParserContext parserContext) {
        super(parserContext);
        this.operation = i12;
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.register = i13;
        if ((i14 & 16) != 0) {
            ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
            this.statement = executableStatement;
            this.egressType = executableStatement.getKnownEgressType();
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objG = a00.a.g(indexedVariableResolver.getValue(), this.operation, org.mvel2.d.o(this.expr, this.start, this.offset, obj, variableResolverFactory));
        indexedVariableResolver.setValue(objG);
        return objG;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        VariableResolver indexedVariableResolver = variableResolverFactory.getIndexedVariableResolver(this.register);
        Object objG = a00.a.g(indexedVariableResolver.getValue(), this.operation, this.statement.getValue(obj, obj2, variableResolverFactory));
        indexedVariableResolver.setValue(objG);
        return objG;
    }
}
