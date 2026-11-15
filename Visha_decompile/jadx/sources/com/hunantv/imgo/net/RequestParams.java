package com.hunantv.imgo.net;

import android.text.TextUtils;
import com.google.gson.JsonObject;
import com.hunantv.imgo.util.n;
import com.mgtv.json.JsonInterface;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams implements JsonInterface, Serializable {
    public static final String APPLICATION_JSON = "application/json";
    public static final String APPLICATION_OCTET_STREAM = "application/octet-stream";
    protected static final String LOG_TAG = "RequestParams";
    protected boolean autoCloseInputStreams;
    protected String contentEncoding;
    protected boolean isRepeatable;
    protected final ConcurrentHashMap<String, String> urlParams;
    protected boolean useJsonStreamer;

    public RequestParams() {
        this((Map<String, String>) null);
    }

    private List<BasicNameValuePair> getParamsList(String str, Object obj) {
        Object obj2;
        LinkedList linkedList = new LinkedList();
        int i = 0;
        if (obj instanceof Map) {
            Map map = (Map) obj;
            ArrayList arrayList = new ArrayList(map.keySet());
            if (arrayList.size() > 0 && (arrayList.get(0) instanceof Comparable)) {
                Collections.sort(arrayList);
            }
            for (Object obj3 : arrayList) {
                if ((obj3 instanceof String) && (obj2 = map.get(obj3)) != null) {
                    linkedList.addAll(getParamsList(str == null ? (String) obj3 : String.format("%s[%s]", str, obj3), obj2));
                }
            }
        } else if (obj instanceof List) {
            List list = (List) obj;
            int size = list.size();
            while (i < size) {
                linkedList.addAll(getParamsList(String.format("%s[%d]", str, Integer.valueOf(i)), list.get(i)));
                i++;
            }
        } else if (obj instanceof Object[]) {
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            while (i < length) {
                linkedList.addAll(getParamsList(String.format("%s[%d]", str, Integer.valueOf(i)), objArr[i]));
                i++;
            }
        } else if (obj instanceof Set) {
            Iterator it = ((Set) obj).iterator();
            while (it.hasNext()) {
                linkedList.addAll(getParamsList(str, it.next()));
            }
        } else {
            linkedList.add(new BasicNameValuePair(str, obj.toString()));
        }
        return linkedList;
    }

    public void add(String str, String str2) {
        put(str, str2);
    }

    public List<BasicNameValuePair> getParams() {
        LinkedList linkedList = new LinkedList();
        for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
            linkedList.add(new BasicNameValuePair(entry.getKey(), entry.getValue().toString()));
        }
        return linkedList;
    }

    public Map<String, String> getParamsMap() {
        HashMap map = new HashMap();
        for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
            map.put(entry.getKey(), entry.getValue());
        }
        return map;
    }

    public boolean has(String str) {
        return this.urlParams.get(str) != null;
    }

    public void put(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.urlParams.put(str, str2);
    }

    public void remove(String str) {
        this.urlParams.remove(str);
    }

    public void setContentEncoding(String str) {
        if (str != null) {
            this.contentEncoding = str;
        } else {
            n.a(LOG_TAG, "setContentEncoding called with null attribute");
        }
    }

    public String toJson() {
        JsonObject jsonObject = new JsonObject();
        try {
            for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
                jsonObject.addProperty(entry.getKey(), entry.getValue());
            }
        } catch (Exception unused) {
        }
        return jsonObject.toString();
    }

    public String toJsonNew() {
        JsonObject jsonObject = new JsonObject();
        try {
            for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
                if (!"lob".equalsIgnoreCase(entry.getKey()) && !"err_info".equalsIgnoreCase(entry.getKey())) {
                    jsonObject.addProperty(entry.getKey(), entry.getValue());
                } else if (!TextUtils.isEmpty(entry.getValue())) {
                    jsonObject.addProperty(entry.getKey(), entry.getValue());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jsonObject.toString();
    }

    public String toNoFormatString() {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append(entry.getValue());
        }
        return sb.toString();
    }

    public String toString() {
        String strEncode;
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey());
            sb.append("=");
            try {
                strEncode = URLEncoder.encode(entry.getValue(), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                strEncode = "";
            }
            sb.append(strEncode);
        }
        return sb.toString();
    }

    public RequestParams(Map<String, String> map) {
        this.urlParams = new ConcurrentHashMap<>();
        this.contentEncoding = "UTF-8";
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public void put(String str, int i) {
        if (str != null) {
            this.urlParams.put(str, String.valueOf(i));
        }
    }

    public void put(String str, long j) {
        if (str != null) {
            this.urlParams.put(str, String.valueOf(j));
        }
    }

    public RequestParams(String str, String str2) {
        this(new HashMap<String, String>(str, str2) {
            final String val$key;
            final String val$value;

            {
                this.val$key = str;
                this.val$value = str2;
                put(str, str2);
            }
        });
    }

    public RequestParams(Object... objArr) {
        this.urlParams = new ConcurrentHashMap<>();
        this.contentEncoding = "UTF-8";
        int length = objArr.length;
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Supplied arguments must be even");
        }
        for (int i = 0; i < length; i += 2) {
            put(String.valueOf(objArr[i]), String.valueOf(objArr[i + 1]));
        }
    }
}
