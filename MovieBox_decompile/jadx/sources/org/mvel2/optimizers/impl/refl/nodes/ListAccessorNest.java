package org.mvel2.optimizers.impl.refl.nodes;

import java.util.List;
import org.mvel2.b;
import org.mvel2.compiler.AccessorNode;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.util.m;

public class ListAccessorNest implements AccessorNode {
    private Class conversionType;
    private ExecutableStatement index;
    private AccessorNode nextNode;

    public ListAccessorNest() {
    }

    public ExecutableStatement getIndex() {
        return this.index;
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
        AccessorNode accessorNode = this.nextNode;
        return accessorNode != null ? accessorNode.getValue(((List) obj).get(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()), obj2, variableResolverFactory) : ((List) obj).get(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue());
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
        AccessorNode accessorNode = this.nextNode;
        if (accessorNode != null) {
            return accessorNode.setValue(((List) obj).get(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue()), obj2, variableResolverFactory, obj3);
        }
        if (this.conversionType == null) {
            ((List) obj).set(((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue(), obj3);
            return obj3;
        }
        List list = (List) obj;
        int iIntValue = ((Integer) this.index.getValue(obj, obj2, variableResolverFactory)).intValue();
        Object objB = b.b(obj3, this.conversionType);
        list.set(iIntValue, objB);
        return objB;
    }

    public String toString() {
        return "Array Accessor -> [" + this.index + "]";
    }

    public ListAccessorNest(String str, Class cls) {
        this.index = (ExecutableStatement) m.H0(str.toCharArray());
        this.conversionType = cls;
    }

    public ListAccessorNest(ExecutableStatement executableStatement, Class cls) {
        this.index = executableStatement;
        this.conversionType = cls;
    }
}
