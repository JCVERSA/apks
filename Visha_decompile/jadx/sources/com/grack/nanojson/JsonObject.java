package com.grack.nanojson;

import defpackage.aa5;
import java.util.HashMap;
import java.util.Map;

public class JsonObject extends HashMap<String, Object> {
    private static final long serialVersionUID = 1;

    public JsonObject() {
    }

    public static aa5 builder() {
        return new aa5(new JsonObject());
    }

    public JsonArray getArray(String str) {
        return getArray(str, new JsonArray());
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, Boolean.FALSE);
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public Number getNumber(String str) {
        return getNumber(str, null);
    }

    public JsonObject getObject(String str) {
        return getObject(str, new JsonObject());
    }

    public String getString(String str) {
        return getString(str, null);
    }

    public boolean has(String str) {
        return super.containsKey(str);
    }

    public boolean isBoolean(String str) {
        return get(str) instanceof Boolean;
    }

    public boolean isNull(String str) {
        return super.containsKey(str) && get(str) == null;
    }

    public boolean isNumber(String str) {
        return get(str) instanceof Number;
    }

    public boolean isString(String str) {
        return get(str) instanceof String;
    }

    public JsonObject(int i) {
        super(i);
    }

    public JsonArray getArray(String str, JsonArray jsonArray) {
        return get(str) instanceof JsonArray ? (JsonArray) get(str) : jsonArray;
    }

    public boolean getBoolean(String str, Boolean bool) {
        Object obj = get(str);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : bool.booleanValue();
    }

    public double getDouble(String str, double d) {
        Object obj = get(str);
        return obj instanceof Number ? ((Number) obj).doubleValue() : d;
    }

    public float getFloat(String str, float f) {
        Object obj = get(str);
        return obj instanceof Number ? ((Number) obj).floatValue() : f;
    }

    public int getInt(String str, int i) {
        Object obj = get(str);
        return obj instanceof Number ? ((Number) obj).intValue() : i;
    }

    public long getLong(String str, long j) {
        Object obj = get(str);
        return obj instanceof Number ? ((Number) obj).longValue() : j;
    }

    public Number getNumber(String str, Number number) {
        Object obj = get(str);
        return obj instanceof Number ? (Number) obj : number;
    }

    public JsonObject getObject(String str, JsonObject jsonObject) {
        return get(str) instanceof JsonObject ? (JsonObject) get(str) : jsonObject;
    }

    public String getString(String str, String str2) {
        return get(str) instanceof String ? (String) get(str) : str2;
    }

    public JsonObject(int i, float f) {
        super(i, f);
    }

    public JsonObject(Map<? extends String, ? extends Object> map) {
        super(map);
    }
}
