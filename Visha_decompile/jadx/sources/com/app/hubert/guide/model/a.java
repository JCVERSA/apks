package com.app.hubert.guide.model;

import android.view.View;
import android.view.animation.Animation;
import defpackage.df7;
import defpackage.sr8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a {
    public List a = new ArrayList();
    public boolean b = true;
    public int c;
    public int d;
    public int[] e;
    public df7 f;
    public Animation g;
    public Animation h;

    public static a l() {
        return new a();
    }

    public a a(View view, HighLight.Shape shape, int i, int i2, b bVar) {
        sr8 sr8Var;
        c cVar = new c(view, shape, i, i2);
        if (bVar != null && (sr8Var = bVar.b) != null) {
            sr8Var.highLight = cVar;
        }
        cVar.e(bVar);
        this.a.add(cVar);
        return this;
    }

    public a b(View view, HighLight.Shape shape, b bVar) {
        return a(view, shape, 0, 0, bVar);
    }

    public int c() {
        return this.c;
    }

    public int[] d() {
        return this.e;
    }

    public Animation e() {
        return this.g;
    }

    public Animation f() {
        return this.h;
    }

    public List g() {
        return this.a;
    }

    public int h() {
        return this.d;
    }

    public df7 i() {
        return this.f;
    }

    public List j() {
        sr8 sr8Var;
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            b options = ((HighLight) it.next()).getOptions();
            if (options != null && (sr8Var = options.b) != null) {
                arrayList.add(sr8Var);
            }
        }
        return arrayList;
    }

    public boolean k() {
        return this.b;
    }

    public a m(int i) {
        this.c = i;
        return this;
    }

    public a n(boolean z) {
        this.b = z;
        return this;
    }
}
