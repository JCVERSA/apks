package org.mvel2.ast;

import java.util.HashMap;
import org.mvel2.ParserContext;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.util.e;
import org.mvel2.util.m;

public class DoUntilNode extends BlockNode {
    protected ExecutableStatement condition;
    protected String item;

    public DoUntilNode(char[] cArr, int i10, int i11, int i12, int i13, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        ExecutableStatement executableStatement = (ExecutableStatement) m.I0(cArr, i10, i11, parserContext);
        this.condition = executableStatement;
        e.c(parserContext, executableStatement, Boolean.class, (this.fields & 16) != 0);
        if (parserContext != null) {
            parserContext.pushVariableScope();
        }
        this.compiledBlock = (ExecutableStatement) m.I0(cArr, i12, i13, parserContext);
        if (parserContext != null) {
            parserContext.popVariableScope();
        }
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        do {
            this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
        } while (!((Boolean) this.condition.getValue(obj, obj2, mapVariableResolverFactory)).booleanValue());
        return null;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory(new HashMap(0), variableResolverFactory);
        do {
            this.compiledBlock.getValue(obj, obj2, mapVariableResolverFactory);
        } while (!((Boolean) this.condition.getValue(obj, obj2, mapVariableResolverFactory)).booleanValue());
        return null;
    }
}
