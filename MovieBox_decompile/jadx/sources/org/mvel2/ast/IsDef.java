package org.mvel2.ast;

import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.n;

public class IsDef extends ASTNode {
    public IsDef(char[] cArr, int i10, int i11, ParserContext parserContext) {
        super(parserContext);
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.nameCache = new String(cArr, i10, i11);
    }

    @Override
    public Class getEgressType() {
        return Boolean.class;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(variableResolverFactory.isResolveable(this.nameCache) || !(obj2 == null || n.b(obj2.getClass(), this.nameCache) == null));
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return Boolean.valueOf(variableResolverFactory.isResolveable(this.nameCache) || !(obj2 == null || n.b(obj2.getClass(), this.nameCache) == null));
    }
}
