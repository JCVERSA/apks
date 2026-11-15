package com.mgtv.downloader.net;

import com.hunantv.imgo.util.n;
import com.mgtv.json.JsonInterface;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
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
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams implements JsonInterface, Serializable {
    public static final String APPLICATION_JSON = "application/json";
    public static final String APPLICATION_OCTET_STREAM = "application/octet-stream";
    protected static final String LOG_TAG = "RequestParams";
    protected boolean autoCloseInputStreams;
    protected String contentEncoding;
    protected final ConcurrentHashMap<String, a> fileParams;
    protected boolean isRepeatable;
    protected final ConcurrentHashMap<String, b> streamParams;
    protected final ConcurrentHashMap<String, String> urlParams;
    protected final ConcurrentHashMap<String, Object> urlParamsWithObjects;
    protected boolean useJsonStreamer;

    public static class a {
        public final File a;
        public final String b;

        public a(File file, String str) {
            this.a = file;
            this.b = str;
        }
    }

    public static class b {
        public final InputStream a;
        public final String b;
        public final String c;
        public final boolean d;

        public b(InputStream inputStream, String str, String str2, boolean z) {
            this.a = inputStream;
            this.b = str;
            this.c = str2;
            this.d = z;
        }

        public static b a(InputStream inputStream, String str, String str2, boolean z) {
            if (str2 == null) {
                str2 = "application/octet-stream";
            }
            return new b(inputStream, str, str2, z);
        }
    }

    public RequestParams() {
        this((Map<String, String>) null);
    }

    private HttpEntity createFormEntity() {
        try {
            return new UrlEncodedFormEntity(getParamsList(), this.contentEncoding);
        } catch (UnsupportedEncodingException e) {
            n.a(LOG_TAG, "createFormEntity failed", e);
            return null;
        }
    }

    public void add(String str, String str2) {
        put(str, str2);
    }

    public String getParamString() {
        return URLEncodedUtils.format(getParamsList(), this.contentEncoding);
    }

    public List<BasicNameValuePair> getParams() {
        LinkedList linkedList = new LinkedList();
        for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
            linkedList.add(new BasicNameValuePair(entry.getKey(), entry.getValue().toString()));
        }
        for (Map.Entry<String, Object> entry2 : this.urlParamsWithObjects.entrySet()) {
            if (entry2.getValue() instanceof String) {
                linkedList.add(new BasicNameValuePair(entry2.getKey(), entry2.getValue().toString()));
            }
        }
        return linkedList;
    }

    public List<BasicNameValuePair> getParamsList() {
        LinkedList linkedList = new LinkedList();
        for (Map.Entry<String, String> entry : this.urlParams.entrySet()) {
            linkedList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
        }
        linkedList.addAll(getParamsList(null, this.urlParamsWithObjects));
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
        return (this.urlParams.get(str) == null && this.streamParams.get(str) == null && this.fileParams.get(str) == null && this.urlParamsWithObjects.get(str) == null) ? false : true;
    }

    public void put(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        this.urlParams.put(str, str2);
    }

    public void remove(String str) {
        this.urlParams.remove(str);
        this.streamParams.remove(str);
        this.fileParams.remove(str);
        this.urlParamsWithObjects.remove(str);
    }

    public void setAutoCloseInputStreams(boolean z) {
        this.autoCloseInputStreams = z;
    }

    public void setContentEncoding(String str) {
        if (str != null) {
            this.contentEncoding = str;
        } else {
            n.a(LOG_TAG, "setContentEncoding called with null attribute");
        }
    }

    public void setHttpEntityIsRepeatable(boolean z) {
        this.isRepeatable = z;
    }

    public void setUseJsonStreamer(boolean z) {
        this.useJsonStreamer = z;
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
        for (Map.Entry<String, b> entry2 : this.streamParams.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry2.getKey());
            sb.append("=");
            sb.append("STREAM");
        }
        for (Map.Entry<String, a> entry3 : this.fileParams.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry3.getKey());
            sb.append("=");
            sb.append("FILE");
        }
        for (BasicNameValuePair basicNameValuePair : getParamsList(null, this.urlParamsWithObjects)) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(basicNameValuePair.getName());
            sb.append("=");
            sb.append(basicNameValuePair.getValue());
        }
        return sb.toString();
    }

    public String toString() {
        String strEncode;
        StringBuilder sb = new StringBuilder();
        Iterator<Map.Entry<String, String>> it = this.urlParams.entrySet().iterator();
        while (true) {
            String strEncode2 = "";
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, String> next = it.next();
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(next.getKey());
            sb.append("=");
            try {
                strEncode2 = URLEncoder.encode(next.getValue(), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            sb.append(strEncode2);
        }
        for (Map.Entry<String, b> entry : this.streamParams.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry.getKey());
            sb.append("=");
            sb.append("STREAM");
        }
        for (Map.Entry<String, a> entry2 : this.fileParams.entrySet()) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(entry2.getKey());
            sb.append("=");
            sb.append("FILE");
        }
        for (BasicNameValuePair basicNameValuePair : getParamsList(null, this.urlParamsWithObjects)) {
            if (sb.length() > 0) {
                sb.append("&");
            }
            sb.append(basicNameValuePair.getName());
            sb.append("=");
            try {
                strEncode = URLEncoder.encode(basicNameValuePair.getValue(), "UTF-8");
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
                strEncode = "";
            }
            sb.append(strEncode);
        }
        return sb.toString();
    }

    public RequestParams(Map<String, String> map) {
        this.urlParams = new ConcurrentHashMap<>();
        this.streamParams = new ConcurrentHashMap<>();
        this.fileParams = new ConcurrentHashMap<>();
        this.urlParamsWithObjects = new ConcurrentHashMap<>();
        this.contentEncoding = "UTF-8";
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    public void put(String str, File file) throws FileNotFoundException {
        put(str, file, (String) null);
    }

    public void put(String str, File file, String str2) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new FileNotFoundException();
        }
        if (str != null) {
            this.fileParams.put(str, new a(file, str2));
        }
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

    public void put(String str, InputStream inputStream) {
        put(str, inputStream, (String) null);
    }

    public void put(String str, InputStream inputStream, String str2) {
        put(str, inputStream, str2, null);
    }

    public void put(String str, InputStream inputStream, String str2, String str3) {
        put(str, inputStream, str2, str3, this.autoCloseInputStreams);
    }

    public void put(String str, InputStream inputStream, String str2, String str3, boolean z) {
        if (str == null || inputStream == null) {
            return;
        }
        this.streamParams.put(str, b.a(inputStream, str2, str3, z));
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

    public void put(String str, Object obj) {
        if (str == null || obj == null) {
            return;
        }
        this.urlParamsWithObjects.put(str, obj);
    }

    public RequestParams(Object... objArr) {
        this.urlParams = new ConcurrentHashMap<>();
        this.streamParams = new ConcurrentHashMap<>();
        this.fileParams = new ConcurrentHashMap<>();
        this.urlParamsWithObjects = new ConcurrentHashMap<>();
        this.contentEncoding = "UTF-8";
        int length = objArr.length;
        if (length % 2 != 0) {
            throw new IllegalArgumentException("Supplied arguments must be even");
        }
        for (int i = 0; i < length; i += 2) {
            put(String.valueOf(objArr[i]), String.valueOf(objArr[i + 1]));
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
}
