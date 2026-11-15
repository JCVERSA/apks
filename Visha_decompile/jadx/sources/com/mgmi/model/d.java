package com.mgmi.model;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class d {
    private String A;
    private String B;
    public String a;
    private int e;
    private int f;
    private String g;
    private String h;
    private String i;
    private int j;
    private String m;
    private int n;
    private String o;
    private String p;
    private t q;
    private Clicks r;
    private String s;
    private int t;
    private Clicks u;
    private String v;
    private int w;
    private String z;
    private int k = 0;
    private int l = 0;
    String b = "";
    String c = "";
    String d = "";
    private final Map<String, List<String>> y = new HashMap();
    private Map<String, List<String>> x = new HashMap();

    private List<String> m(String str) {
        if (this.y.containsKey(str)) {
            return this.y.get(str);
        }
        ArrayList arrayList = new ArrayList();
        this.y.put(str, arrayList);
        return arrayList;
    }

    public void a(String str) {
        this.s = str;
    }

    public void b(String str) {
        this.v = str;
    }

    public List<String> c(String str) {
        if (this.y.containsKey(str)) {
            return this.y.get(str);
        }
        return null;
    }

    public void d(String str) {
        this.m = str;
    }

    public void e(String str) {
        this.p = str;
    }

    public void f(String str) {
        this.o = str;
    }

    public void g(String str) {
        this.g = str;
    }

    public void h(String str) {
        this.h = str;
    }

    public void i(String str) {
        this.i = str;
    }

    public void j(String str) {
        this.z = str;
    }

    public void k(String str) {
        this.A = str;
    }

    public void l(String str) {
        this.B = str;
    }

    public void a(Clicks clicks) {
        this.r = clicks;
    }

    public void b(String str, String str2) {
        List<String> listM = m(str);
        if (listM != null) {
            listM.add(str2);
        }
    }

    public String d() {
        return this.o;
    }

    public String e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public boolean g() {
        return this.n == 1;
    }

    public String h() {
        return this.z;
    }

    public String i() {
        return this.A;
    }

    public void a(int i) {
        this.t = i;
    }

    public String c() {
        return this.p;
    }

    public void d(int i) {
        this.n = i;
    }

    public void e(int i) {
        this.k = i;
    }

    public void f(int i) {
        this.j = i;
    }

    public void g(int i) {
        this.l = i;
    }

    public void h(int i) {
        this.w = i;
    }

    public void a(String str, String str2) {
        List<String> listA;
        if (TextUtils.isEmpty(str2) || (listA = a(this.x, str)) == null || listA.contains(str2)) {
            return;
        }
        listA.add(str2);
    }

    public String b() {
        return this.m;
    }

    public void c(int i) {
        this.f = i;
    }

    public void b(int i) {
        this.e = i;
    }

    public void b(Clicks clicks) {
        this.u = clicks;
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

    public t a() {
        return this.q;
    }

    public void a(t tVar) {
        this.q = tVar;
    }
}
