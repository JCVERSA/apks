package org.mvel2.ast;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;

public class InvokationContextFactory extends MapVariableResolverFactory {
    private VariableResolverFactory protoContext;

    public InvokationContextFactory(VariableResolverFactory variableResolverFactory, VariableResolverFactory variableResolverFactory2) {
        this.nextFactory = variableResolverFactory;
        this.protoContext = variableResolverFactory2;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        return (!isResolveable(str) || this.protoContext.isResolveable(str)) ? this.protoContext.createVariable(str, obj) : this.nextFactory.createVariable(str, obj);
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
        return (!isResolveable(str) || this.protoContext.isResolveable(str)) ? this.protoContext.getVariableResolver(str) : this.nextFactory.getVariableResolver(str);
    }

    @Override
    public boolean isIndexedFactory() {
        return true;
    }

    @Override
    public boolean isResolveable(String str) {
        return this.protoContext.isResolveable(str) || this.nextFactory.isResolveable(str);
    }

    @Override
    public boolean isTarget(String str) {
        return this.protoContext.isTarget(str);
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (isResolveable(str) && !this.protoContext.isResolveable(str)) {
            return this.nextFactory.createVariable(str, obj, cls);
        }
        return this.protoContext.createVariable(str, obj, cls);
    }
}
