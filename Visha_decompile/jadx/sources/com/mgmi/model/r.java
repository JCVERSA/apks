package com.mgmi.model;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class r {
    private VASTAd c;
    private int d;
    private List<IncentiveVastAd> f;
    private int g;
    private int i;
    private com.mgmi.g.a n;
    private boolean o;
    private int p;
    private int q;
    private int h = 1;
    private boolean r = false;
    private float s = 3.0f;
    private int t = 0;
    private boolean u = false;
    private List<VASTAd> b = new ArrayList();
    private List<String> a = new ArrayList();
    private List<VASTAd> e = new ArrayList();
    private List<VASTFloatAd> j = new ArrayList();
    private List<com.mgmi.platform.view.a> k = new ArrayList();
    private List<VASTChannelAd> l = new ArrayList();
    private List<VASTBarrageAd> m = new ArrayList();

    public int a() {
        Iterator<VASTAd> it = this.b.iterator();
        int duration = 0;
        while (it.hasNext()) {
            duration += it.next().getDuration();
        }
        return duration;
    }

    public int b() {
        List<VASTAd> list = this.b;
        int size = list != null ? list.size() : 0;
        int i = 0;
        int duration = 0;
        for (int i2 = 0; i2 < size; i2++) {
            VASTAd vASTAd = this.b.get(i2);
            if (vASTAd.getSkipTimeout() > 0) {
                duration += vASTAd.getSkipTimeout();
                i = i2;
            }
        }
        if (i <= size) {
            size = i;
        }
        for (int i3 = 0; i3 < size; i3++) {
            duration += this.b.get(i3).getDuration();
        }
        return duration;
    }

    public int c() {
        List<VASTAd> list = this.e;
        if (list == null) {
            return 0;
        }
        int size = list != null ? list.size() : 0;
        int i = 0;
        int duration = 0;
        for (int i2 = 0; i2 < size; i2++) {
            VASTAd vASTAd = this.e.get(i2);
            if (vASTAd.getSkipTimeout() > 0) {
                duration += vASTAd.getSkipTimeout();
                i = i2;
            }
        }
        if (i <= size) {
            size = i;
        }
        for (int i3 = 0; i3 < size; i3++) {
            duration += this.e.get(i3).getDuration();
        }
        return duration;
    }

    public List<VASTFloatAd> d() {
        return this.j;
    }

    public List<VASTAd> e() {
        return this.b;
    }

    public int f() {
        return this.i;
    }

    public VASTAd g() {
        List<VASTAd> list = this.b;
        if (list == null || list.size() == 0) {
            return null;
        }
        VASTAd vASTAd = this.c;
        if (vASTAd != null) {
            return vASTAd;
        }
        VASTAd vASTAd2 = this.b.get(0);
        this.c = vASTAd2;
        return vASTAd2;
    }

    public List<VASTChannelAd> h() {
        return this.l;
    }

    public List<VASTAd> i() {
        return this.e;
    }

    public int j() {
        List<VASTAd> list = this.e;
        int duration = 0;
        if (list == null) {
            return 0;
        }
        Iterator<VASTAd> it = list.iterator();
        while (it.hasNext()) {
            duration += it.next().getDuration();
        }
        return duration;
    }

    public int k() {
        List<VASTAd> list = this.e;
        int duration = 0;
        if (list == null) {
            return 0;
        }
        for (VASTAd vASTAd : list) {
            if (vASTAd.getStaticResources() != null) {
                duration += vASTAd.getDuration();
            }
        }
        return duration;
    }

    public List<com.mgmi.platform.view.a> l() {
        return this.k;
    }

    public com.mgmi.g.a m() {
        return this.n;
    }

    public boolean n() {
        return this.o;
    }

    public boolean o() {
        return this.s == 4.0f;
    }

    public boolean p() {
        return this.r;
    }

    public void d(int i) {
        List<VASTAd> list = this.b;
        if (list == null || list.size() <= 0 || this.b.get(0) == null) {
            return;
        }
        this.b.get(0).setAdRollTime(i);
    }

    public void e(int i) {
        this.p = i;
    }

    public void f(int i) {
        this.q = i;
    }

    public void a(IncentiveVastAd incentiveVastAd) {
        if (this.f == null) {
            this.f = new ArrayList();
        }
        this.f.add(incentiveVastAd);
    }

    public void g(int i) {
        this.t = i;
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(VASTAd vASTAd) {
        this.b.add(vASTAd);
    }

    public void b(VASTAd vASTAd) {
        this.e.add(vASTAd);
    }

    public void a(String str) {
        this.a.add(str);
    }

    public void b(int i) {
        this.d = i;
    }

    public void c(int i) {
        this.g = i;
    }

    public void a(VASTFloatAd vASTFloatAd) {
        this.j.add(vASTFloatAd);
    }

    public void b(String str) {
        this.s = l.b(str);
    }

    public void c(boolean z) {
        this.u = z;
    }

    public void a(VASTChannelAd vASTChannelAd) {
        this.l.add(vASTChannelAd);
    }

    public void b(boolean z) {
        this.r = z;
    }

    public void a(VASTBarrageAd vASTBarrageAd) {
        this.m.add(vASTBarrageAd);
    }

    public void a(com.mgmi.platform.view.a aVar) {
        this.k.add(aVar);
    }

    public void a(com.mgmi.g.a aVar) {
        this.n = aVar;
    }

    public void a(boolean z) {
        this.o = z;
    }
}
