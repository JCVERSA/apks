package com.mgadplus.netlib.base;

import defpackage.wed;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

public class c extends wed implements Serializable {
    private String bodyJson;
    private String bodyXml;
    private boolean isBodyGZip;
    private g multiParts;
    private final Map<String, String> get = new LinkedHashMap();
    private final Map<String, String> header = new TreeMap();
    private final Map<String, String> body = new LinkedHashMap();

    public static class AnonymousClass1 {
        static final int[] a;

        static {
            int[] iArr = new int[a.values().length];
            a = iArr;
            try {
                iArr[a.HEADER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[a.BODY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum a {
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

    public g getMultiParts() {
        return this.multiParts;
    }

    public Map<String, String> getParams() {
        return getParams(null);
    }

    public boolean isBodyGZip() {
        return this.isBodyGZip;
    }

    public c put(String str, String str2) {
        return put(str, str2, (a) null);
    }

    public c putParams(Map<String, String> map) {
        return putParams(map, null);
    }

    public c setBodyGZip(boolean z) {
        this.isBodyGZip = z;
        return this;
    }

    public c setBodyJson(String str) {
        this.bodyJson = str;
        return this;
    }

    public c setBodyXml(String str) {
        this.bodyXml = str;
        return this;
    }

    public c setMultiParts(g gVar) {
        this.multiParts = gVar;
        return this;
    }

    public String get(String str, a aVar) {
        return getParams(aVar).get(str);
    }

    public Map<String, String> getParams(a aVar) {
        if (aVar == null) {
            return this.get;
        }
        int i = AnonymousClass1.a[aVar.ordinal()];
        if (i != 1) {
            return i != 2 ? this.get : this.body;
        }
        return this.header;
    }

    public c put(String str, Number number) {
        return put(str, String.valueOf(number), (a) null);
    }

    public c putParams(Map<String, String> map, a aVar) {
        getParams(aVar).putAll(map);
        return this;
    }

    public c put(String str, String str2, a aVar) {
        getParams(aVar).put(str, str2);
        return this;
    }

    public c put(String str, Number number, a aVar) {
        getParams(aVar).put(str, String.valueOf(number));
        return this;
    }
}
