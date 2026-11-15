package com.mgtv.irouting.net;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

public class HttpParams implements HttpInterface.JsonInterface {
    private String bodyJson;
    private String bodyXml;
    private boolean isBodyGZip;
    private final Map<String, String> get = new LinkedHashMap();
    private final Map<String, String> header = new TreeMap();
    private final Map<String, String> body = new LinkedHashMap();

    public static class AnonymousClass1 {
        static final int[] a;

        static {
            int[] iArr = new int[Type.values().length];
            a = iArr;
            try {
                iArr[Type.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Type.BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum Type {
        GET,
        HEADER,
        BODY
    }

    public String get(String str) {
        return get(str, null);
    }

    public String getBodyJson() {
        return this.bodyJson;
    }

    public String getBodyXml() {
        return this.bodyXml;
    }

    public String getConcatParamsData(Type type) {
        String str = "";
        if (Type.GET != type) {
            return "";
        }
        for (String str2 : this.get.keySet()) {
            str = str + str2 + "=" + this.get.get(str2) + "&";
        }
        return !str.isEmpty() ? str.substring(0, str.length() - 1) : str;
    }

    public Map<String, String> getParams() {
        return getParams(null);
    }

    public boolean isBodyGZip() {
        return this.isBodyGZip;
    }

    public HttpParams put(String str, String str2) {
        return put(str, str2, (Type) null);
    }

    public HttpParams putParams(Map<String, String> map) {
        return putParams(map, null);
    }

    public HttpParams setBodyGZip(boolean z) {
        this.isBodyGZip = z;
        return this;
    }

    public HttpParams setBodyJson(String str) {
        this.bodyJson = str;
        return this;
    }

    public HttpParams setBodyXml(String str) {
        this.bodyXml = str;
        return this;
    }

    public String get(String str, Type type) {
        return getParams(type).get(str);
    }

    public Map<String, String> getParams(Type type) {
        if (type == null) {
            return this.get;
        }
        int i = AnonymousClass1.a[type.ordinal()];
        if (i != 1) {
            return i != 2 ? this.get : this.body;
        }
        return this.header;
    }

    public HttpParams put(String str, Number number) {
        return put(str, String.valueOf(number), (Type) null);
    }

    public HttpParams putParams(Map<String, String> map, Type type) {
        getParams(type).putAll(map);
        return this;
    }

    public HttpParams put(String str, String str2, Type type) {
        getParams(type).put(str, str2);
        return this;
    }

    public HttpParams put(String str, Number number, Type type) {
        getParams(type).put(str, String.valueOf(number));
        return this;
    }
}
