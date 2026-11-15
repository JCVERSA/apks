package org.mvel2.integration.impl;

import java.util.Map;
import org.mvel2.b;
import org.mvel2.integration.VariableResolver;

public class PrecachedMapVariableResolver implements VariableResolver {
    private Map.Entry entry;
    private Class<?> knownType;
    private String name;

    public PrecachedMapVariableResolver(Map.Entry entry, String str) {
        this.entry = entry;
        this.name = str;
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
        return this.knownType;
    }

    @Override
    public Object getValue() {
        return this.entry.getValue();
    }

    public void setName(String str) {
        this.name = str;
    }

    @Override
    public void setStaticType(Class cls) {
        this.knownType = cls;
    }

    @Override
    public void setValue(Object obj) {
        if (this.knownType != null && obj != null && obj.getClass() != this.knownType) {
            if (!b.a(this.knownType, obj.getClass())) {
                throw new RuntimeException("cannot assign " + obj.getClass().getName() + " to type: " + this.knownType.getName());
            }
            try {
                obj = b.b(obj, this.knownType);
            } catch (Exception unused) {
                throw new RuntimeException("cannot convert value of " + obj.getClass().getName() + " to: " + this.knownType.getName());
            }
        }
        this.entry.setValue(obj);
    }

    public PrecachedMapVariableResolver(Map.Entry entry, String str, Class cls) {
        this.name = str;
        this.knownType = cls;
        this.entry = entry;
    }
}
