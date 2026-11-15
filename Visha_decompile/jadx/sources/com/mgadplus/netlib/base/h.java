package com.mgadplus.netlib.base;

import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.Headers;

public class h {
    private static h a = new h();
    private ConcurrentHashMap<String, String> b = new ConcurrentHashMap<>();
    private HashSet<String> c = new HashSet<>();

    public static h a() {
        return a;
    }

    public void a(String str, Headers headers) {
        List<String> listValues;
        if (!this.c.contains(str) || headers == null || (listValues = headers.values("set-cookie")) == null || listValues.size() == 0) {
            return;
        }
        String str2 = listValues.get(0).split(ProcessInfo.SPLIT_NEW_VERSION)[0];
        if (str2.length() != 0) {
            this.b.put(str, str2);
        }
    }

    public String a(String str) {
        if (this.c.contains(str)) {
            return this.b.get(str);
        }
        return null;
    }
}
