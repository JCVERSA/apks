package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class DefaultLocalVariableResolverFactory extends MapVariableResolverFactory {
    private boolean noTilt;

    public DefaultLocalVariableResolverFactory() {
        super(new HashMap());
        this.noTilt = false;
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        boolean z10;
        VariableResolver variableResolver;
        if (this.indexedVariableNames == null) {
            return super.createVariable(str, obj, cls);
        }
        try {
            int iVariableIndexOf = variableIndexOf(str);
            if (iVariableIndexOf == -1) {
                return super.createVariable(str, obj, cls);
            }
            SimpleValueResolver simpleValueResolver = new SimpleValueResolver(obj);
            VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
            if (variableResolverArr[iVariableIndexOf] == null) {
                variableResolverArr[iVariableIndexOf] = simpleValueResolver;
            }
            this.variableResolvers.put(this.indexedVariableNames[iVariableIndexOf], simpleValueResolver);
            variableResolver = this.indexedVariableResolvers[iVariableIndexOf];
            z10 = true;
            if (z10 || variableResolver == null || variableResolver.getType() == null) {
                MapVariableResolver mapVariableResolver = new MapVariableResolver(this.variables, str, cls);
                addResolver(str, mapVariableResolver).setValue(obj);
                return mapVariableResolver;
            }
            throw new RuntimeException("variable already defined within scope: " + variableResolver.getType() + " " + str);
        } catch (UnresolveablePropertyException unused) {
            z10 = false;
            variableResolver = null;
        }
    }

    @Override
    public VariableResolver getIndexedVariableResolver(int i10) {
        String[] strArr = this.indexedVariableNames;
        if (strArr == null) {
            return null;
        }
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i10];
        if (variableResolver != null) {
            return variableResolver;
        }
        VariableResolver variableResolver2 = super.getVariableResolver(strArr[i10]);
        variableResolverArr[i10] = variableResolver2;
        return variableResolver2;
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
        if (this.indexedVariableNames == null) {
            return super.getVariableResolver(str);
        }
        int iVariableIndexOf = variableIndexOf(str);
        if (iVariableIndexOf == -1) {
            return super.getVariableResolver(str);
        }
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        if (variableResolverArr[iVariableIndexOf] == null) {
            variableResolverArr[iVariableIndexOf] = new SimpleValueResolver(null);
        }
        this.variableResolvers.put(this.indexedVariableNames[iVariableIndexOf], null);
        return this.indexedVariableResolvers[iVariableIndexOf];
    }

    public VariableResolverFactory setNoTilt(boolean z10) {
        this.noTilt = z10;
        return this;
    }

    @Override
    public void setTiltFlag(boolean z10) {
        if (this.noTilt) {
            return;
        }
        super.setTiltFlag(z10);
    }

    public DefaultLocalVariableResolverFactory(Map<String, Object> map) {
        super(map);
        this.noTilt = false;
    }

    public DefaultLocalVariableResolverFactory(Map<String, Object> map, VariableResolverFactory variableResolverFactory) {
        super(map, variableResolverFactory);
        this.noTilt = false;
    }

    public DefaultLocalVariableResolverFactory(Map<String, Object> map, boolean z10) {
        super(map);
        this.noTilt = false;
    }

    public DefaultLocalVariableResolverFactory(VariableResolverFactory variableResolverFactory) {
        super(new HashMap(), variableResolverFactory);
        this.noTilt = false;
    }

    public DefaultLocalVariableResolverFactory(VariableResolverFactory variableResolverFactory, String[] strArr) {
        super(new HashMap(), variableResolverFactory);
        this.noTilt = false;
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = new VariableResolver[strArr.length];
    }
}
