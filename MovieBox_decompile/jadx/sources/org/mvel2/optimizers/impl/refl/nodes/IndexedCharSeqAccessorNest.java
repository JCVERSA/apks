package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;

public class IndexedCharSeqAccessorNest implements AccessorNode {
    private ExecutableStatement index;
    private AccessorNode nextNode;

    public IndexedCharSeqAccessorNest() {
    }

    public ExecutableStatement getIndex() {
        return this.index;
    }

    @Override
    public Class getKnownEgressType() {
        return Character.class;
    }

    @Override
    public AccessorNode getNextNode() {
        return this.nextNode;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(Character.valueOf(((String) obj).charAt(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue())), obj2, variableResolverFactory) : Character.valueOf(((String) obj).charAt(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()));
    }

    public void setIndex(ExecutableStatement executableStatement) {
        this.index = executableStatement;
    }

    @Override
    public AccessorNode setNextNode(AccessorNode accessorNode) {
        this.nextNode = accessorNode;
        return accessorNode;
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        return this.nextNode.setValue(Character.valueOf(((String) obj).charAt(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue())), obj2, variableResolverFactory, obj3);
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }

    public IndexedCharSeqAccessorNest(ExecutableStatement executableStatement) {
        this.index = executableStatement;
    }
}
