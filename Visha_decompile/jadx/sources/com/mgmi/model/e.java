package com.mgmi.model;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class e {
    private int b;
    private int d;
    private int c = 1;
    private List<d> a = new ArrayList();
    private Map<String, List<String>> e = new HashMap();

    public List<d> a() {
        return this.a;
    }

    public int b() {
        return this.c;
    }

    public int c() {
        return this.d;
    }

    public void a(int i) {
        this.c = i;
    }

    public void b(int i) {
        this.b = i;
    }

    public void c(int i) {
        this.d = i;
    }

    public void a(d dVar) {
        this.a.add(dVar);
    }

    public void a(String str, String str2) {
        List<String> listA;
        if (TextUtils.isEmpty(str2) || (listA = a(this.e, str)) == null || listA.contains(str2)) {
            return;
        }
        listA.add(str2);
    }

    private List<String> a(Map<String, List<String>> map, String str) {
        if (map == null) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = "[DEFAULT]";
        }
        List<String> list = map.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        map.put(str, arrayList);
        return arrayList;
    }
}
