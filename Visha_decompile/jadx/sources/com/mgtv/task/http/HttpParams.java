package com.mgtv.task.http;

import com.mgtv.json.JsonInterface;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.TreeMap;

public class HttpParams implements JsonInterface {
    private String bodyJson;
    private String bodyXml;
    private String contentTypeS;
    private boolean isBodyGZip;
    private String method;
    private MultiParts multiParts;
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

    public String buildParameter() {
        if (getParams() == null || getParams().entrySet() == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = getParams().entrySet().iterator();
        while (it.hasNext()) {
            try {
                Map.Entry<String, String> next = it.next();
                String key = next.getKey();
                String value = next.getValue();
                if (value == null) {
                    value = "";
                }
                sb.append(key.toString());
                sb.append("=");
                sb.append(URLEncoder.encode(value.toString(), "UTF-8"));
                if (it.hasNext()) {
                    sb.append("&");
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        return sb.toString();
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

    public String getContentTypeS() {
        return this.contentTypeS;
    }

    public String getMethod() {
        return this.method;
    }

    public MultiParts getMultiParts() {
        return this.multiParts;
    }

    public Map<String, String> getParams() {
        return getParams(null);
    }

    public boolean isBodyGZip() {
        return this.isBodyGZip;
    }

    public boolean noAppendMap() {
        try {
            Map<String, String> map = this.body;
            if (map == null) {
                return false;
            }
            return "1".equals(map.get("supportnoaddbody"));
        } catch (Throwable unused) {
            return false;
        }
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

    public void setContentTypeS(String str) {
        this.contentTypeS = str;
    }

    public void setMethod(String str) {
        this.method = str;
    }

    public HttpParams setMultiParts(MultiParts multiParts) {
        this.multiParts = multiParts;
        return this;
    }

    public String toString() {
        return "HttpParams{get=" + this.get + ", header=" + this.header + ", body=" + this.body + ", bodyJson='" + this.bodyJson + "', bodyXml='" + this.bodyXml + "', multiParts=" + this.multiParts + ", method='" + this.method + "', isBodyGZip=" + this.isBodyGZip + '}';
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
