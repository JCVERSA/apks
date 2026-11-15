package org.mvel2.integration.impl;

import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class ItemResolverFactory extends BaseVariableResolverFactory {
    private final ItemResolver resolver;

    public ItemResolverFactory(ItemResolver itemResolver, VariableResolverFactory variableResolverFactory) {
        this.resolver = itemResolver;
        this.nextFactory = variableResolverFactory;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        if (!isTarget(str)) {
            return this.nextFactory.createVariable(str, obj);
        }
        this.resolver.setValue(obj);
        return this.resolver;
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
        return isTarget(str) ? this.resolver : this.nextFactory.getVariableResolver(str);
    }

    @Override
    public boolean isResolveable(String str) {
        VariableResolverFactory variableResolverFactory;
        return this.resolver.getName().equals(str) || ((variableResolverFactory = this.nextFactory) != null && variableResolverFactory.isResolveable(str));
    }

    @Override
    public boolean isTarget(String str) {
        return this.resolver.getName().equals(str);
    }

    public static class ItemResolver implements VariableResolver {
        private final String name;
        private Class type;
        public Object value;

        public ItemResolver(String str, Class cls) {
            this.name = str;
            this.type = cls;
        }

        @Override
        public int getFlags() {
            return 0;
        }

        @Override
        public String getName() {
            return this.name;
        }

        @Override
        public Class getType() {
            return this.type;
        }

        @Override
        public Object getValue() {
            return this.value;
        }

        @Override
        public void setStaticType(Class cls) {
            this.type = cls;
        }

        @Override
        public void setValue(Object obj) {
            this.value = obj;
        }

        public ItemResolver(String str) {
            this.type = Object.class;
            this.name = str;
        }
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (!isTarget(str)) {
            return this.nextFactory.createVariable(str, obj);
        }
        throw new RuntimeException("variable already defined in scope: " + str);
    }
}
