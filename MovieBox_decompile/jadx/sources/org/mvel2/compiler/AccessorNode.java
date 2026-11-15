package org.mvel2.compiler;

import java.io.Serializable;
import org.mvel2.integration.VariableResolverFactory;

public interface AccessorNode extends a, Serializable {
    @Override
    Class getKnownEgressType();

    AccessorNode getNextNode();

    @Override
    Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory);

    AccessorNode setNextNode(AccessorNode accessorNode);

    @Override
    Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3);
}
