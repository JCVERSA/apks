package com.hunantv.media.player.subtitle.a;

import java.util.Vector;

class f implements e.b {
    StringBuilder a = new StringBuilder();
    Vector<c[]> b = new Vector<>();
    Vector<c> c = new Vector<>();
    long d;

    public f() {
        c();
    }

    private void c() {
        StringBuilder sb = this.a;
        sb.delete(0, sb.length());
        this.b.clear();
        this.c.clear();
        this.d = -1L;
    }

    @Override
    public void a() {
        if (this.a.length() > 0) {
            this.c.add(new c(this.a.toString(), this.d));
            StringBuilder sb = this.a;
            sb.delete(0, sb.length());
        }
        c[] cVarArr = new c[this.c.size()];
        this.c.toArray(cVarArr);
        this.c.clear();
        this.b.add(cVarArr);
    }

    @Override
    public void b(String str) {
    }

    @Override
    public void a(long j) {
        if (this.a.length() > 0 && j != this.d) {
            this.c.add(new c(this.a.toString(), this.d));
            StringBuilder sb = this.a;
            sb.delete(0, sb.length());
        }
        this.d = j;
    }

    public c[][] b() {
        if (this.a.length() > 0 || this.c.size() > 0) {
            a();
        }
        c[][] cVarArr = new c[this.b.size()][];
        this.b.toArray(cVarArr);
        c();
        return cVarArr;
    }

    @Override
    public void a(String str) {
        this.a.append(str);
    }

    @Override
    public void a(String str, String[] strArr, String str2) {
    }
}
