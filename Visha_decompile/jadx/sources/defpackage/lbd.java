package defpackage;

import com.bumptech.glide.request.target.AppWidgetTarget;
import com.bumptech.glide.request.target.NotificationTarget;
import com.bumptech.glide.request.target.SimpleTarget;
import com.mgadplus.Imagework.d;
import com.mgadplus.Imagework.l;
import com.transsion.audiotagger.tag.id3.valuepair.ImageFormats;

public class lbd {
    public static lbd E = new b().z(2).H(true).s(false).A(false).p(d.ALL).q(l.HIGH).t();
    public boolean A;
    public int B;
    public boolean C;
    public boolean D;
    public String a;
    public Integer b;
    public Integer c;
    public boolean d;
    public int e;
    public int f;
    public int g;
    public int h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public d m;
    public l n;
    public float o;
    public String p;
    public SimpleTarget q;
    public NotificationTarget r;
    public AppWidgetTarget s;
    public Integer t;
    public boolean u;
    public boolean v;
    public int w;
    public boolean x;
    public boolean y;
    public int z;

    public static class b {
        public boolean A;
        public int B;
        public boolean C;
        public boolean D;
        public String a;
        public Integer b;
        public Integer c;
        public boolean d;
        public int e;
        public boolean i;
        public boolean j;
        public boolean k;
        public boolean l;
        public float o;
        public String p;
        public SimpleTarget q;
        public NotificationTarget r;
        public AppWidgetTarget s;
        public Integer t;
        public boolean u;
        public boolean v;
        public boolean x;
        public boolean y;
        public int z;
        public int f = 0;
        public int g = 0;
        public int h = 0;
        public d m = d.ALL;
        public l n = l.HIGH;
        public int w = 10;
        public boolean E = true;

        public static m8d U(b bVar) {
            bVar.getClass();
            return null;
        }

        public static m8d h(b bVar, m8d m8dVar) {
            bVar.getClass();
            return m8dVar;
        }

        public b A(boolean z) {
            this.j = z;
            return this;
        }

        public b G(int i) {
            this.w = i;
            return this;
        }

        public b H(boolean z) {
            this.k = z;
            return this;
        }

        public b M(boolean z) {
            this.u = z;
            return this;
        }

        public b R(boolean z) {
            this.v = z;
            return this;
        }

        public b n(int i) {
            return z(i);
        }

        public b o(SimpleTarget simpleTarget) {
            this.q = simpleTarget;
            return this;
        }

        public b p(d dVar) {
            this.m = dVar;
            return this;
        }

        public b q(l lVar) {
            this.n = lVar;
            return this;
        }

        public b r(Integer num) {
            this.b = num;
            return this;
        }

        public b s(boolean z) {
            this.i = z;
            return this;
        }

        public lbd t() {
            return new lbd(this);
        }

        public b z(int i) {
            this.f = i;
            return this;
        }
    }

    public static lbd a(String str, lbd lbdVar) {
        lbdVar.i = false;
        lbdVar.j = false;
        if (b(str)) {
            lbdVar.i = true;
        } else if (d(str)) {
            lbdVar.j = true;
        }
        return lbdVar;
    }

    public static boolean b(String str) {
        return str.endsWith("gif") || str.endsWith(ImageFormats.V22_GIF_FORMAT);
    }

    public static b c(String str, lbd lbdVar) {
        b bVar = new b();
        lbd lbdVarA = a(str, lbdVar);
        bVar.a = lbdVarA.a;
        bVar.b = lbdVarA.b;
        bVar.c = lbdVarA.c;
        bVar.d = lbdVarA.d;
        bVar.e = lbdVarA.e;
        b.h(bVar, null);
        bVar.f = lbdVarA.f;
        bVar.g = lbdVarA.g;
        bVar.h = lbdVarA.h;
        bVar.i = lbdVarA.i;
        bVar.j = lbdVarA.j;
        bVar.k = lbdVarA.k;
        bVar.l = lbdVarA.l;
        bVar.m = lbdVarA.m;
        bVar.o = lbdVarA.o;
        bVar.p = lbdVarA.p;
        bVar.q = lbdVarA.q;
        bVar.r = lbdVarA.r;
        bVar.s = lbdVarA.s;
        bVar.t = lbdVarA.t;
        bVar.n = lbdVarA.n;
        bVar.u = lbdVarA.u;
        bVar.v = lbdVarA.v;
        bVar.w = lbdVarA.w;
        bVar.x = lbdVarA.x;
        bVar.y = lbdVarA.y;
        bVar.z = lbdVarA.z;
        bVar.A = lbdVarA.A;
        bVar.B = lbdVarA.B;
        bVar.C = lbdVarA.C;
        bVar.D = lbdVarA.D;
        return bVar;
    }

    public static boolean d(String str) {
        return str.endsWith("webp") || str.endsWith("WEBP");
    }

    public lbd(b bVar) {
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
        b.U(bVar);
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
        this.m = bVar.m;
        this.o = bVar.o;
        this.p = bVar.p;
        this.q = bVar.q;
        this.r = bVar.r;
        this.s = bVar.s;
        this.t = bVar.t;
        this.n = bVar.n;
        this.y = bVar.y;
        this.z = bVar.z;
        this.u = bVar.u;
        this.v = bVar.v;
        this.w = bVar.w;
        this.x = bVar.x;
        this.A = bVar.A;
        this.B = bVar.B;
        this.C = bVar.C;
        this.D = bVar.D;
    }
}
