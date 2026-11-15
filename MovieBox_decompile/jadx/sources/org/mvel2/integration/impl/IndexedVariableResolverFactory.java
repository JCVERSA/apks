package org.mvel2.integration.impl;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class IndexedVariableResolverFactory extends BaseVariableResolverFactory {
    public IndexedVariableResolverFactory(String[] strArr, VariableResolver[] variableResolverArr) {
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = variableResolverArr;
    }

    private static VariableResolver[] createResolvers(Object[] objArr, int i10) {
        VariableResolver[] variableResolverArr = new VariableResolver[i10];
        int i11 = 0;
        while (i11 < i10) {
            variableResolverArr[i11] = i11 >= objArr.length ? new SimpleValueResolver(null) : new IndexVariableResolver(i11, objArr);
            i11++;
        }
        return variableResolverArr;
    }

    private VariableResolver getResolver(String str) {
        int i10 = 0;
        while (true) {
            String[] strArr = this.indexedVariableNames;
            if (i10 >= strArr.length) {
                return null;
            }
            if (strArr[i10].equals(str)) {
                return this.indexedVariableResolvers[i10];
            }
            i10++;
        }
    }

    protected VariableResolver addResolver(String str, VariableResolver variableResolver) {
        this.variableResolvers.put(str, variableResolver);
        return variableResolver;
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj) {
        VariableResolver variableResolver = this.indexedVariableResolvers[i10];
        variableResolver.setValue(obj);
        return variableResolver;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            resolver.setValue(obj);
        }
        return resolver;
    }

    @Override
    public VariableResolver getIndexedVariableResolver(int i10) {
        return this.indexedVariableResolvers[i10];
    }

    @Override
    public Set<String> getKnownVariables() {
        return new HashSet(Arrays.asList(this.indexedVariableNames));
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            return resolver;
        }
        VariableResolverFactory variableResolverFactory = this.nextFactory;
        if (variableResolverFactory != null) {
            return variableResolverFactory.getVariableResolver(str);
        }
        throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
    }

    @Override
    public boolean isIndexedFactory() {
        return true;
    }

    @Override
    public boolean isResolveable(String str) {
        VariableResolverFactory variableResolverFactory;
        return isTarget(str) || ((variableResolverFactory = this.nextFactory) != null && variableResolverFactory.isResolveable(str));
    }

    @Override
    public boolean isTarget(String str) {
        for (String str2 : this.indexedVariableNames) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        VariableResolver resolver = getResolver(str);
        if (resolver != null) {
            resolver.setValue(obj);
        }
        return resolver;
    }

    public IndexedVariableResolverFactory(String[] strArr, Object[] objArr) {
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = createResolvers(objArr, strArr.length);
    }

    public IndexedVariableResolverFactory(String[] strArr, Object[] objArr, VariableResolverFactory variableResolverFactory) {
        this.indexedVariableNames = strArr;
        MapVariableResolverFactory mapVariableResolverFactory = new MapVariableResolverFactory();
        this.nextFactory = mapVariableResolverFactory;
        mapVariableResolverFactory.setNextFactory(variableResolverFactory);
        this.indexedVariableResolvers = createResolvers(objArr, strArr.length);
    }

    public void clear() {
    }
}
