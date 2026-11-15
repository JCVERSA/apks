package com.airbnb.lottie.model.layer;

import com.airbnb.lottie.model.content.LBlendMode;
import defpackage.ag0;
import defpackage.dc;
import defpackage.l33;
import defpackage.mc;
import defpackage.nc;
import defpackage.rc;
import defpackage.ur5;
import java.util.List;
import java.util.Locale;

public class Layer {
    public final List a;
    public final ur5 b;
    public final String c;
    public final long d;
    public final LayerType e;
    public final long f;
    public final String g;
    public final List h;
    public final rc i;
    public final int j;
    public final int k;
    public final int l;
    public final float m;
    public final float n;
    public final float o;
    public final float p;
    public final mc q;
    public final nc r;
    public final dc s;
    public final List t;
    public final MatteType u;
    public final boolean v;
    public final ag0 w;
    public final l33 x;
    public final LBlendMode y;

    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List list, ur5 ur5Var, String str, long j, LayerType layerType, long j2, String str2, List list2, rc rcVar, int i, int i2, int i3, float f, float f2, float f3, float f4, mc mcVar, nc ncVar, List list3, MatteType matteType, dc dcVar, boolean z, ag0 ag0Var, l33 l33Var, LBlendMode lBlendMode) {
        this.a = list;
        this.b = ur5Var;
        this.c = str;
        this.d = j;
        this.e = layerType;
        this.f = j2;
        this.g = str2;
        this.h = list2;
        this.i = rcVar;
        this.j = i;
        this.k = i2;
        this.l = i3;
        this.m = f;
        this.n = f2;
        this.o = f3;
        this.p = f4;
        this.q = mcVar;
        this.r = ncVar;
        this.t = list3;
        this.u = matteType;
        this.s = dcVar;
        this.v = z;
        this.w = ag0Var;
        this.x = l33Var;
        this.y = lBlendMode;
    }

    public LBlendMode a() {
        return this.y;
    }

    public ag0 b() {
        return this.w;
    }

    public ur5 c() {
        return this.b;
    }

    public l33 d() {
        return this.x;
    }

    public long e() {
        return this.d;
    }

    public List f() {
        return this.t;
    }

    public LayerType g() {
        return this.e;
    }

    public List h() {
        return this.h;
    }

    public MatteType i() {
        return this.u;
    }

    public String j() {
        return this.c;
    }

    public long k() {
        return this.f;
    }

    public float l() {
        return this.p;
    }

    public float m() {
        return this.o;
    }

    public String n() {
        return this.g;
    }

    public List o() {
        return this.a;
    }

    public int p() {
        return this.l;
    }

    public int q() {
        return this.k;
    }

    public int r() {
        return this.j;
    }

    public float s() {
        return this.n / this.b.e();
    }

    public mc t() {
        return this.q;
    }

    public String toString() {
        return z("");
    }

    public nc u() {
        return this.r;
    }

    public dc v() {
        return this.s;
    }

    public float w() {
        return this.m;
    }

    public rc x() {
        return this.i;
    }

    public boolean y() {
        return this.v;
    }

    public String z(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(j());
        sb.append("\n");
        Layer layerT = this.b.t(k());
        if (layerT != null) {
            sb.append("\t\tParents: ");
            sb.append(layerT.j());
            Layer layerT2 = this.b.t(layerT.k());
            while (layerT2 != null) {
                sb.append("->");
                sb.append(layerT2.j());
                layerT2 = this.b.t(layerT2.k());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!h().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(h().size());
            sb.append("\n");
        }
        if (r() != 0 && q() != 0) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p())));
        }
        if (!this.a.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (Object obj : this.a) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(obj);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
