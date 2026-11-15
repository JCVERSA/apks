package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.ParserContext;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.optimizers.b;

public class NullSafe implements AccessorNode {
    private char[] expr;
    private AccessorNode nextNode;
    private int offset;
    private ParserContext pCtx;
    private int start;

    public NullSafe(char[] cArr, int i10, int i11, ParserContext parserContext) {
        this.expr = cArr;
        this.start = i10;
        this.offset = i11;
        this.pCtx = parserContext;
    }

    @Override
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (obj == null) {
            return null;
        }
        if (this.nextNode == null) {
            final org.mvel2.compiler.a aVarOptimizeAccessor = b.b(b.f68834b).optimizeAccessor(this.pCtx, this.expr, this.start, this.offset, obj, obj2, variableResolverFactory, true, obj.getClass());
            this.nextNode = new AccessorNode() {
                @Override
                public Class getKnownEgressType() {
                    return aVarOptimizeAccessor.getKnownEgressType();
                }

                @Override
                public AccessorNode getNextNode() {
                    return null;
                }

                @Override
                public Object getValue(Object obj3, Object obj4, VariableResolverFactory variableResolverFactory2) {
                    return aVarOptimizeAccessor.getValue(obj3, obj4, variableResolverFactory2);
                }

                @Override
                public AccessorNode setNextNode(AccessorNode accessorNode) {
                    return null;
                }

                @Override
                public Object setValue(Object obj3, Object obj4, VariableResolverFactory variableResolverFactory2, Object obj5) {
                    return aVarOptimizeAccessor.setValue(obj3, obj4, variableResolverFactory2, obj5);
                }
            };
        }
        return this.nextNode.getValue(obj, obj2, variableResolverFactory);
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        if (obj == null) {
            return null;
        }
        return this.nextNode.setValue(obj, obj2, variableResolverFactory, obj3);
    }
}
