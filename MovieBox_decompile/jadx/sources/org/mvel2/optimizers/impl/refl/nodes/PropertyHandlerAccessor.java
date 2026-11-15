package org.mvel2.optimizers.impl.refl.nodes;

import org.mvel2.compiler.AccessorNode;
import org.mvel2.d;
import org.mvel2.integration.VariableResolverFactory;
import yz.c;

public class PropertyHandlerAccessor extends BaseAccessor {
    private Class conversionType;
    private c propertyHandler;
    private String propertyName;

    public PropertyHandlerAccessor(String str, Class cls, c cVar) {
        this.propertyName = str;
        this.conversionType = cls;
    }

    @Override
    public Class getKnownEgressType() {
        return Object.class;
    }

    @Override
    public Object getValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        if (!this.conversionType.isAssignableFrom(obj.getClass())) {
            AccessorNode accessorNode = this.nextNode;
            return accessorNode != null ? accessorNode.getValue(d.v(this.propertyName, obj), obj2, variableResolverFactory) : d.v(this.propertyName, obj);
        }
        try {
            if (this.nextNode != null) {
                throw null;
            }
            throw null;
        } catch (Exception e10) {
            throw new RuntimeException("unable to access field", e10);
        }
    }

    @Override
    public Object setValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object obj3) {
        this.nextNode.getClass();
        throw null;
    }
}
