package org.mvel2.compiler;

import org.mvel2.ast.ASTNode;
import org.mvel2.ast.TypeCast;
import org.mvel2.integration.VariableResolverFactory;

public class ExecutableAccessor implements ExecutableStatement {
    private boolean convertable;
    private Class egress;
    private Class ingress;
    private ASTNode node;

    public ExecutableAccessor(ASTNode aSTNode, Class cls) {
        this.node = aSTNode;
        this.egress = cls;
    }

    @Override
    public void computeTypeConversionRule() {
        Class<?> cls;
        Class cls2 = this.ingress;
        if (cls2 == null || (cls = this.egress) == null) {
            return;
        }
        this.convertable = cls2.isAssignableFrom(cls);
    }

    @Override
    public Class getKnownEgressType() {
        return this.egress;
    }

    @Override
    public Class getKnownIngressType() {
        return this.ingress;
    }

    public ASTNode getNode() {
        return this.node;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return this.node.getReducedValueAccelerated(obj, obj2, variableResolverFactory);
    }

    @Override
    public boolean intOptimized() {
        return false;
    }

    @Override
    public boolean isConvertableIngressEgress() {
        return this.convertable;
    }

    @Override
    public boolean isEmptyStatement() {
        return this.node == null;
    }

    @Override
    public boolean isExplicitCast() {
        return this.node instanceof TypeCast;
    }

    @Override
    public boolean isLiteralOnly() {
        return false;
    }

    @Override
    public void setKnownEgressType(Class cls) {
        this.egress = cls;
    }

    @Override
    public void setKnownIngressType(Class cls) {
        this.ingress = cls;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return null;
    }

    public String toString() {
        return this.node.toString();
    }

    @Override
    public Object getValue(Object obj, VariableResolverFactory variableResolverFactory) {
        return this.node.getReducedValueAccelerated(obj, obj, variableResolverFactory);
    }
}
