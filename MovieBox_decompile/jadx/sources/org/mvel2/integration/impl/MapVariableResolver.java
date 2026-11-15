package org.mvel2.integration.impl;

import java.util.Map;
import org.mvel2.b;
import org.mvel2.integration.VariableResolver;

public class MapVariableResolver implements VariableResolver {
    private Class<?> knownType;
    private String name;
    private Map<String, Object> variableMap;

    public MapVariableResolver(Map<String, Object> map, String str) {
        this.variableMap = map;
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
        return this.variableMap.get(this.name);
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
        if (this.knownType != null && obj != null) {
            Class<?> cls = obj.getClass();
            Class<?> cls2 = this.knownType;
            if (cls != cls2) {
                if (!b.a(cls2, obj.getClass())) {
                    throw new RuntimeException("cannot assign " + obj.getClass().getName() + " to type: " + this.knownType.getName());
                }
                try {
                    obj = b.b(obj, this.knownType);
                } catch (Exception unused) {
                    throw new RuntimeException("cannot convert value of " + obj.getClass().getName() + " to: " + this.knownType.getName());
                }
            }
        }
        this.variableMap.put(this.name, obj);
    }

    public void setVariableMap(Map<String, Object> map) {
        this.variableMap = map;
    }

    public MapVariableResolver(Map<String, Object> map, String str, Class cls) {
        this.name = str;
        this.knownType = cls;
        this.variableMap = map;
    }
}
