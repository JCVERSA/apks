package s;

import androidx.compose.runtime.a2;
import androidx.compose.runtime.k;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.o1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

public final class c extends h {

    private final g f71387a = new g();

    private final g f71388b = new g();

    public final void a() {
        this.f71388b.m();
        this.f71387a.m();
    }

    public final void b(Function0 function0, int i10, androidx.compose.runtime.c cVar) {
        g gVar = this.f71387a;
        d.n nVar = d.n.f71412c;
        gVar.y(nVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), function0);
        g.c.c(gVarA, d.q.a(0), i10);
        int i11 = 1;
        g.c.d(gVarA, d.t.a(1), cVar);
        if (!(gVar.f71431g == gVar.n(nVar.b()) && gVar.f71432h == gVar.n(nVar.d()))) {
            StringBuilder sb2 = new StringBuilder();
            int iB = nVar.b();
            int i12 = 0;
            int i13 = 0;
            while (i13 < iB) {
                if (((i11 << i13) & gVar.f71431g) != 0) {
                    if (i12 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(nVar.e(d.q.a(i13)));
                    i12++;
                }
                i13++;
                i11 = 1;
            }
            String string = sb2.toString();
            Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
            StringBuilder sb3 = new StringBuilder();
            int iD = nVar.d();
            int i14 = 0;
            int i15 = 0;
            while (i15 < iD) {
                if (((1 << i15) & gVar.f71432h) != 0) {
                    if (i12 > 0) {
                        sb3.append(", ");
                    }
                    sb3.append(nVar.f(d.t.a(i15)));
                    i14++;
                }
                i15++;
                gVar = gVar;
            }
            String string2 = sb3.toString();
            Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
            o1.b("Error while pushing " + nVar + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
        }
        g gVar2 = this.f71388b;
        d.u uVar = d.u.f71417c;
        gVar2.y(uVar);
        g gVarA2 = g.c.a(gVar2);
        g.c.c(gVarA2, d.q.a(0), i10);
        g.c.d(gVarA2, d.t.a(0), cVar);
        if (gVar2.f71431g == gVar2.n(uVar.b()) && gVar2.f71432h == gVar2.n(uVar.d())) {
            return;
        }
        StringBuilder sb4 = new StringBuilder();
        int iB2 = uVar.b();
        int i16 = 0;
        for (int i17 = 0; i17 < iB2; i17++) {
            if (((1 << i17) & gVar2.f71431g) != 0) {
                if (i16 > 0) {
                    sb4.append(", ");
                }
                sb4.append(uVar.e(d.q.a(i17)));
                i16++;
            }
        }
        String string3 = sb4.toString();
        Intrinsics.g(string3, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb5 = new StringBuilder();
        int iD2 = uVar.d();
        int i18 = 0;
        int i19 = 0;
        while (i19 < iD2) {
            if (((1 << i19) & gVar2.f71432h) != 0) {
                if (i16 > 0) {
                    sb5.append(", ");
                }
                sb5.append(uVar.f(d.t.a(i19)));
                i18++;
            }
            i19++;
            gVar2 = gVar2;
        }
        String string4 = sb5.toString();
        Intrinsics.g(string4, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + uVar + ". Not all arguments were provided. Missing " + i16 + " int arguments (" + string3 + ") and " + i18 + " object arguments (" + string4 + ").");
    }

    public final void c() {
        if (!this.f71388b.u()) {
            k.r("Cannot end node insertion, there are no pending operations that can be realized.");
        }
        this.f71388b.w(this.f71387a);
    }

    public final void d(androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
        if (!this.f71388b.t()) {
            k.r("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
        this.f71387a.r(fVar, m2Var, a2Var);
    }

    public final boolean e() {
        return this.f71387a.t();
    }

    public final void f(Object obj, Function2 function2) {
        g gVar = this.f71387a;
        d.e0 e0Var = d.e0.f71400c;
        gVar.y(e0Var);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), obj);
        int iA = d.t.a(1);
        Intrinsics.f(function2, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
        g.c.d(gVarA, iA, (Function2) TypeIntrinsics.e(function2, 2));
        if (gVar.f71431g == gVar.n(e0Var.b()) && gVar.f71432h == gVar.n(e0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = e0Var.b();
        int i10 = 0;
        for (int i11 = 0; i11 < iB; i11++) {
            if (((1 << i11) & gVar.f71431g) != 0) {
                if (i10 > 0) {
                    sb2.append(", ");
                }
                sb2.append(e0Var.e(d.q.a(i11)));
                i10++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = e0Var.d();
        int i12 = 0;
        for (int i13 = 0; i13 < iD; i13++) {
            if (((1 << i13) & gVar.f71432h) != 0) {
                if (i10 > 0) {
                    sb3.append(", ");
                }
                sb3.append(e0Var.f(d.t.a(i13)));
                i12++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + e0Var + ". Not all arguments were provided. Missing " + i10 + " int arguments (" + string + ") and " + i12 + " object arguments (" + string2 + ").");
    }
}
