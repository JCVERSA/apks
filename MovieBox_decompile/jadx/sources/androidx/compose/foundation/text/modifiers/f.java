package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.e0;
import androidx.compose.ui.text.l;
import androidx.compose.ui.text.o;
import androidx.compose.ui.text.q;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.y;
import androidx.compose.ui.text.z;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.t;
import o0.u;

public final class f {

    private String f2994a;

    private d0 f2995b;

    private androidx.compose.ui.text.font.h.b f2996c;

    private int f2997d;

    private boolean f2998e;

    private int f2999f;

    private int f3000g;

    private long f3001h;

    private o0.e f3002i;

    private l f3003j;

    private boolean f3004k;

    private long f3005l;

    private c f3006m;

    private o f3007n;

    private LayoutDirection f3008o;

    private long f3009p;

    private int f3010q;

    private int f3011r;

    public f(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, d0Var, bVar, i10, z10, i11, i12);
    }

    private final l f(long j10, LayoutDirection layoutDirection) {
        o oVarK = k(layoutDirection);
        return q.c(oVarK, b.a(j10, this.f2998e, this.f2997d, oVarK.a()), b.b(this.f2998e, this.f2997d, this.f2999f), p.e(this.f2997d, p.f6133a.b()));
    }

    private final void h() {
        this.f3003j = null;
        this.f3007n = null;
        this.f3008o = null;
        this.f3010q = -1;
        this.f3011r = -1;
        this.f3009p = o0.b.f67397b.c(0, 0);
        this.f3005l = u.a(0, 0);
        this.f3004k = false;
    }

    private final boolean i(long j10, LayoutDirection layoutDirection) {
        o oVar;
        l lVar = this.f3003j;
        if (lVar == null || (oVar = this.f3007n) == null || oVar.b() || layoutDirection != this.f3008o) {
            return true;
        }
        if (o0.b.f(j10, this.f3009p)) {
            return false;
        }
        return o0.b.l(j10) != o0.b.l(this.f3009p) || ((float) o0.b.k(j10)) < lVar.getHeight() || lVar.k();
    }

    private final o k(LayoutDirection layoutDirection) {
        o oVarB = this.f3007n;
        if (oVarB == null || layoutDirection != this.f3008o || oVarB.b()) {
            this.f3008o = layoutDirection;
            String str = this.f2994a;
            d0 d0VarC = e0.c(this.f2995b, layoutDirection);
            o0.e eVar = this.f3002i;
            Intrinsics.e(eVar);
            oVarB = androidx.compose.ui.text.p.b(str, d0VarC, null, null, eVar, this.f2996c, 12, null);
        }
        this.f3007n = oVarB;
        return oVarB;
    }

    public final o0.e a() {
        return this.f3002i;
    }

    public final boolean b() {
        return this.f3004k;
    }

    public final long c() {
        return this.f3005l;
    }

    public final Unit d() {
        o oVar = this.f3007n;
        if (oVar != null) {
            oVar.b();
        }
        return Unit.f64096a;
    }

    public final l e() {
        return this.f3003j;
    }

    public final boolean g(long j10, LayoutDirection layoutDirection) {
        boolean z10 = true;
        if (this.f3000g > 1) {
            c.a aVar = c.f2966h;
            c cVar = this.f3006m;
            d0 d0Var = this.f2995b;
            o0.e eVar = this.f3002i;
            Intrinsics.e(eVar);
            c cVarA = aVar.a(cVar, layoutDirection, d0Var, eVar, this.f2996c);
            this.f3006m = cVarA;
            j10 = cVarA.c(j10, this.f3000g);
        }
        boolean z11 = false;
        if (i(j10, layoutDirection)) {
            l lVarF = f(j10, layoutDirection);
            this.f3009p = j10;
            long jF = o0.c.f(j10, u.a(androidx.compose.foundation.text.b.a(lVarF.getWidth()), androidx.compose.foundation.text.b.a(lVarF.getHeight())));
            this.f3005l = jF;
            if (!p.e(this.f2997d, p.f6133a.c()) && (t.g(jF) < lVarF.getWidth() || t.f(jF) < lVarF.getHeight())) {
                z11 = true;
            }
            this.f3004k = z11;
            this.f3003j = lVarF;
            return true;
        }
        if (!o0.b.f(j10, this.f3009p)) {
            l lVar = this.f3003j;
            Intrinsics.e(lVar);
            long jF2 = o0.c.f(j10, u.a(androidx.compose.foundation.text.b.a(Math.min(lVar.a(), lVar.getWidth())), androidx.compose.foundation.text.b.a(lVar.getHeight())));
            this.f3005l = jF2;
            if (p.e(this.f2997d, p.f6133a.c()) || (t.g(jF2) >= lVar.getWidth() && t.f(jF2) >= lVar.getHeight())) {
                z10 = false;
            }
            this.f3004k = z10;
            this.f3009p = j10;
        }
        return false;
    }

    public final void j(o0.e eVar) {
        o0.e eVar2 = this.f3002i;
        long jD = eVar != null ? a.d(eVar) : a.f2964a.a();
        if (eVar2 == null) {
            this.f3002i = eVar;
            this.f3001h = jD;
        } else if (eVar == null || !a.e(this.f3001h, jD)) {
            this.f3002i = eVar;
            this.f3001h = jD;
            h();
        }
    }

    public final z l(d0 d0Var) {
        o0.e eVar;
        LayoutDirection layoutDirection = this.f3008o;
        if (layoutDirection == null || (eVar = this.f3002i) == null) {
            return null;
        }
        AnnotatedString annotatedString = new AnnotatedString(this.f2994a, null, null, 6, null);
        if (this.f3003j == null || this.f3007n == null) {
            return null;
        }
        long jD = o0.b.d(this.f3009p, 0, 0, 0, 0, 10, null);
        return new z(new y(annotatedString, d0Var, CollectionsKt.l(), this.f2999f, this.f2998e, this.f2997d, eVar, layoutDirection, this.f2996c, jD, (DefaultConstructorMarker) null), new MultiParagraph(new MultiParagraphIntrinsics(annotatedString, d0Var, CollectionsKt.l(), eVar, this.f2996c), jD, this.f2999f, p.e(this.f2997d, p.f6133a.b()), null), this.f3005l, null);
    }

    public final void m(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12) {
        this.f2994a = str;
        this.f2995b = d0Var;
        this.f2996c = bVar;
        this.f2997d = i10;
        this.f2998e = z10;
        this.f2999f = i11;
        this.f3000g = i12;
        h();
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ParagraphLayoutCache(paragraph=");
        sb2.append(this.f3003j != null ? "<paragraph>" : "null");
        sb2.append(", lastDensity=");
        sb2.append((Object) a.h(this.f3001h));
        sb2.append(')');
        return sb2.toString();
    }

    private f(String str, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12) {
        this.f2994a = str;
        this.f2995b = d0Var;
        this.f2996c = bVar;
        this.f2997d = i10;
        this.f2998e = z10;
        this.f2999f = i11;
        this.f3000g = i12;
        this.f3001h = a.f2964a.a();
        this.f3005l = u.a(0, 0);
        this.f3009p = o0.b.f67397b.c(0, 0);
        this.f3010q = -1;
        this.f3011r = -1;
    }
}
