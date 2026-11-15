package org.mvel2.integration.impl;

import java.util.HashMap;
import java.util.Map;
import org.mvel2.ast.Function;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;

public class FunctionVariableResolverFactory extends BaseVariableResolverFactory {
    private Function function;
    private boolean noTilt = false;

    public FunctionVariableResolverFactory(Function function, VariableResolverFactory variableResolverFactory, String[] strArr, Object[] objArr) {
        this.function = function;
        this.variableResolvers = new HashMap();
        this.nextFactory = variableResolverFactory;
        this.indexedVariableNames = strArr;
        this.indexedVariableResolvers = new VariableResolver[strArr.length];
        for (int i10 = 0; i10 < objArr.length; i10++) {
            this.variableResolvers.put(this.indexedVariableNames[i10], null);
            this.indexedVariableResolvers[i10] = new SimpleValueResolver(objArr[i10]);
        }
    }

    private int increaseRegisterTableSize() {
        String[] strArr = this.indexedVariableNames;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        int length = strArr.length;
        int i10 = length + 1;
        this.indexedVariableNames = new String[i10];
        this.indexedVariableResolvers = new VariableResolver[i10];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            this.indexedVariableNames[i11] = strArr[i11];
            this.indexedVariableResolvers[i11] = variableResolverArr[i11];
        }
        return length;
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj) {
        int i11 = i10 - this.indexOffset;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i11];
        if (variableResolver != null) {
            variableResolver.setValue(obj);
        } else {
            variableResolverArr[i11] = new SimpleValueResolver(obj);
        }
        this.variableResolvers.put(str, null);
        return this.indexedVariableResolvers[i11];
    }

    @Override
    public VariableResolver createVariable(String str, Object obj) {
        VariableResolver variableResolver = getVariableResolver(str);
        if (variableResolver != null) {
            variableResolver.setValue(obj);
            return variableResolver;
        }
        int iIncreaseRegisterTableSize = increaseRegisterTableSize();
        this.indexedVariableNames[iIncreaseRegisterTableSize] = str;
        this.indexedVariableResolvers[iIncreaseRegisterTableSize] = new SimpleValueResolver(obj);
        this.variableResolvers.put(str, null);
        return this.indexedVariableResolvers[iIncreaseRegisterTableSize];
    }

    public Function getFunction() {
        return this.function;
    }

    @Override
    public VariableResolver getIndexedVariableResolver(int i10) {
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i10];
        if (variableResolver != null) {
            return variableResolver;
        }
        VariableResolver variableResolver2 = super.getVariableResolver(this.indexedVariableNames[i10]);
        variableResolverArr[i10] = variableResolver2;
        return variableResolver2;
    }

    public VariableResolver[] getIndexedVariableResolvers() {
        return this.indexedVariableResolvers;
    }

    @Override
    public VariableResolver getVariableResolver(String str) {
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

    @Override
    public boolean isIndexedFactory() {
        return true;
    }

    @Override
    public boolean isResolveable(String str) {
        VariableResolverFactory variableResolverFactory;
        return this.variableResolvers.containsKey(str) || ((variableResolverFactory = this.nextFactory) != null && variableResolverFactory.isResolveable(str));
    }

    @Override
    public boolean isTarget(String str) {
        return this.variableResolvers.containsKey(str) || variableIndexOf(str) != -1;
    }

    public void setIndexOffset(int i10) {
        this.indexOffset = i10;
    }

    public void setIndexedVariableResolvers(VariableResolver[] variableResolverArr) {
        this.indexedVariableResolvers = variableResolverArr;
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

    public void updateParameters(Object[] objArr) {
        for (int i10 = 0; i10 < objArr.length; i10++) {
            this.indexedVariableResolvers[i10] = new SimpleValueResolver(objArr[i10]);
        }
    }

    @Override
    public VariableResolver createIndexedVariable(int i10, String str, Object obj, Class<?> cls) {
        int i11 = i10 - this.indexOffset;
        VariableResolver[] variableResolverArr = this.indexedVariableResolvers;
        VariableResolver variableResolver = variableResolverArr[i11];
        if (variableResolver != null) {
            variableResolver.setValue(obj);
        } else {
            variableResolverArr[i11] = new SimpleValueResolver(obj);
        }
        return this.indexedVariableResolvers[i11];
    }

    @Override
    public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
        Map<String, VariableResolver> map = this.variableResolvers;
        VariableResolver variableResolver = map != null ? map.get(str) : null;
        if (variableResolver != null && variableResolver.getType() != null) {
            throw new RuntimeException("variable already defined within scope: " + variableResolver.getType() + " " + str);
        }
        return createIndexedVariable(variableIndexOf(str), str, obj);
    }
}
