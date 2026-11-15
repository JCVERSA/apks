package defpackage;

import kotlinx.serialization.json.internal.JsonNamesMapKt;
import kotlinx.serialization.json.internal.WriteMode;
import org.mozilla.javascript.ES6Iterator;

public final class yy9 extends w2 implements na5 {
    public final ad1 a;
    public final u95 b;
    public final WriteMode c;
    public final na5[] d;
    public final td9 e;
    public final da5 f;
    public boolean g;
    public String h;

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[WriteMode.values().length];
            try {
                iArr[WriteMode.LIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WriteMode.MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WriteMode.POLY_OBJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public yy9(ad1 ad1Var, u95 u95Var, WriteMode writeMode, na5[] na5VarArr) {
        y45.j(ad1Var, "composer");
        y45.j(u95Var, "json");
        y45.j(writeMode, hb0.KEY_NAME_MODE);
        this.a = ad1Var;
        this.b = u95Var;
        this.c = writeMode;
        this.d = na5VarArr;
        this.e = d().a();
        this.f = d().d();
        int iOrdinal = writeMode.ordinal();
        if (na5VarArr != null) {
            na5 na5Var = na5VarArr[iOrdinal];
            if (na5Var == null && na5Var == this) {
                return;
            }
            na5VarArr[iOrdinal] = this;
        }
    }

    @Override
    public void A() {
        this.a.j("null");
    }

    @Override
    public void C(nd9 nd9Var, Object obj) {
        y45.j(nd9Var, "serializer");
        if (!(nd9Var instanceof p3) || d().d().l()) {
            nd9Var.serialize(this, obj);
            return;
        }
        p3 p3Var = (p3) nd9Var;
        String strC = nc8.c(nd9Var.getDescriptor(), d());
        y45.h(obj, "null cannot be cast to non-null type kotlin.Any");
        nd9 nd9VarB = pc8.b(p3Var, this, obj);
        nc8.f(p3Var, nd9VarB, strC);
        nc8.b(nd9VarB.getDescriptor().getKind());
        this.h = strC;
        nd9VarB.serialize(this, obj);
    }

    @Override
    public void D(char c) {
        v(String.valueOf(c));
    }

    @Override
    public boolean G(kotlinx.serialization.descriptors.a aVar, int i) {
        y45.j(aVar, "descriptor");
        int i2 = a.a[this.c.ordinal()];
        if (i2 != 1) {
            boolean z = false;
            if (i2 != 2) {
                if (i2 != 3) {
                    if (!this.a.a()) {
                        this.a.e(',');
                    }
                    this.a.c();
                    v(JsonNamesMapKt.f(aVar, d(), i));
                    this.a.e(':');
                    this.a.o();
                } else {
                    if (i == 0) {
                        this.g = true;
                    }
                    if (i == 1) {
                        this.a.e(',');
                        this.a.o();
                        this.g = false;
                    }
                }
            } else if (this.a.a()) {
                this.g = true;
                this.a.c();
            } else {
                if (i % 2 == 0) {
                    this.a.e(',');
                    this.a.c();
                    z = true;
                } else {
                    this.a.e(':');
                    this.a.o();
                }
                this.g = z;
            }
        } else {
            if (!this.a.a()) {
                this.a.e(',');
            }
            this.a.c();
        }
        return true;
    }

    public final void I(kotlinx.serialization.descriptors.a aVar) {
        this.a.c();
        String str = this.h;
        y45.g(str);
        v(str);
        this.a.e(':');
        this.a.o();
        v(aVar.h());
    }

    @Override
    public td9 a() {
        return this.e;
    }

    @Override
    public id1 b(kotlinx.serialization.descriptors.a aVar) {
        na5 na5Var;
        y45.j(aVar, "descriptor");
        WriteMode writeModeB = ppc.b(d(), aVar);
        char c = writeModeB.begin;
        if (c != 0) {
            this.a.e(c);
            this.a.b();
        }
        if (this.h != null) {
            I(aVar);
            this.h = null;
        }
        if (this.c == writeModeB) {
            return this;
        }
        na5[] na5VarArr = this.d;
        return (na5VarArr == null || (na5Var = na5VarArr[writeModeB.ordinal()]) == null) ? new yy9(this.a, d(), writeModeB, this.d) : na5Var;
    }

    @Override
    public void c(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        if (this.c.end != 0) {
            this.a.p();
            this.a.c();
            this.a.e(this.c.end);
        }
    }

    @Override
    public u95 d() {
        return this.b;
    }

    @Override
    public void e(byte b) {
        if (this.g) {
            v(String.valueOf((int) b));
        } else {
            this.a.d(b);
        }
    }

    @Override
    public void f(kotlinx.serialization.descriptors.a aVar, int i) {
        y45.j(aVar, "enumDescriptor");
        v(aVar.f(i));
    }

    @Override
    public ca3 g(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "descriptor");
        if (zy9.b(aVar)) {
            ad1 cd1Var = this.a;
            if (!(cd1Var instanceof cd1)) {
                cd1Var = new cd1(cd1Var.a, this.g);
            }
            return new yy9(cd1Var, d(), this.c, (na5[]) null);
        }
        if (!zy9.a(aVar)) {
            return super.g(aVar);
        }
        ad1 bd1Var = this.a;
        if (!(bd1Var instanceof bd1)) {
            bd1Var = new bd1(bd1Var.a, this.g);
        }
        return new yy9(bd1Var, d(), this.c, (na5[]) null);
    }

    @Override
    public void h(kotlinx.serialization.descriptors.a aVar, int i, nd9 nd9Var, Object obj) {
        y45.j(aVar, "descriptor");
        y45.j(nd9Var, "serializer");
        if (obj != null || this.f.f()) {
            super.h(aVar, i, nd9Var, obj);
        }
    }

    @Override
    public void k(short s) {
        if (this.g) {
            v(String.valueOf((int) s));
        } else {
            this.a.k(s);
        }
    }

    @Override
    public void l(boolean z) {
        if (this.g) {
            v(String.valueOf(z));
        } else {
            this.a.l(z);
        }
    }

    @Override
    public void m(float f) {
        if (this.g) {
            v(String.valueOf(f));
        } else {
            this.a.g(f);
        }
        if (this.f.a()) {
            return;
        }
        if (Float.isInfinite(f) || Float.isNaN(f)) {
            throw oa5.b(Float.valueOf(f), this.a.a.toString());
        }
    }

    @Override
    public boolean r(kotlinx.serialization.descriptors.a aVar, int i) {
        y45.j(aVar, "descriptor");
        return this.f.e();
    }

    @Override
    public void s(int i) {
        if (this.g) {
            v(String.valueOf(i));
        } else {
            this.a.h(i);
        }
    }

    @Override
    public void v(String str) {
        y45.j(str, ES6Iterator.VALUE_PROPERTY);
        this.a.m(str);
    }

    @Override
    public void x(double d) {
        if (this.g) {
            v(String.valueOf(d));
        } else {
            this.a.f(d);
        }
        if (this.f.a()) {
            return;
        }
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw oa5.b(Double.valueOf(d), this.a.a.toString());
        }
    }

    @Override
    public void z(long j) {
        if (this.g) {
            v(String.valueOf(j));
        } else {
            this.a.i(j);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public yy9(sc5 sc5Var, u95 u95Var, WriteMode writeMode, na5[] na5VarArr) {
        this(ed1.a(sc5Var, u95Var), u95Var, writeMode, na5VarArr);
        y45.j(sc5Var, "output");
        y45.j(u95Var, "json");
        y45.j(writeMode, hb0.KEY_NAME_MODE);
        y45.j(na5VarArr, "modeReuseCache");
    }
}
