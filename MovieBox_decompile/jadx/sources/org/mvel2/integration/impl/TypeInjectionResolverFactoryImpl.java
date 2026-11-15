package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.mvel2.ParserContext;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class TypeInjectionResolverFactoryImpl extends MapVariableResolverFactory {
    public TypeInjectionResolverFactoryImpl() {
        this.variables = new HashMap();
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        if (this.nextFactory == null) {
            this.nextFactory = new MapVariableResolverFactory(new HashMap());
        }
        return this.nextFactory.createVariable(str, obj);
    }

    @Override
    public Set<String> getKnownVariables() {
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        return variableResolverFactory == null ? new HashSet(0) : variableResolverFactory.getKnownVariables();
    }

    public TypeInjectionResolverFactoryImpl(Map<String, Object> map) {
        this.variables = map;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        if (this.nextFactory == null) {
            this.nextFactory = new MapVariableResolverFactory(new HashMap());
        }
        return this.nextFactory.createVariable(str, obj, cls);
    }

    public TypeInjectionResolverFactoryImpl(ParserContext parserContext, VariableResolverFactory variableResolverFactory) {
        super(parserContext.getImports(), parserContext.hasFunction() ? new TypeInjectionResolverFactoryImpl((Map<String, Object>) parserContext.getFunctions(), variableResolverFactory) : variableResolverFactory);
    }

    public TypeInjectionResolverFactoryImpl(Map<String, Object> map, VariableResolverFactory variableResolverFactory) {
        super(map, variableResolverFactory);
    }

    public TypeInjectionResolverFactoryImpl(Map<String, Object> map, boolean z10) {
        super(map);
    }
}
