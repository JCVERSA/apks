package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.e0;
import androidx.compose.ui.text.style.p;
import androidx.compose.ui.text.y;
import androidx.compose.ui.text.z;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import o0.u;

public final class e {

    private AnnotatedString f2978a;

    private d0 f2979b;

    private androidx.compose.ui.text.font.h.b f2980c;

    private int f2981d;

    private boolean f2982e;

    private int f2983f;

    private int f2984g;

    private List f2985h;

    private c f2986i;

    private long f2987j;

    private o0.e f2988k;

    private MultiParagraphIntrinsics f2989l;

    private LayoutDirection f2990m;

    private z f2991n;

    private int f2992o;

    private int f2993p;

    public e(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, bVar, i10, z10, i11, i12, list);
    }

    private final MultiParagraph d(long j10, LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsicsI = i(layoutDirection);
        return new MultiParagraph(multiParagraphIntrinsicsI, b.a(j10, this.f2982e, this.f2981d, multiParagraphIntrinsicsI.a()), b.b(this.f2982e, this.f2981d, this.f2983f), p.e(this.f2981d, p.f6133a.b()), null);
    }

    private final void f() {
        this.f2989l = null;
        this.f2991n = null;
        this.f2993p = -1;
        this.f2992o = -1;
    }

    private final boolean g(z zVar, long j10, LayoutDirection layoutDirection) {
        if (zVar == null || zVar.v().i().b() || layoutDirection != zVar.k().d()) {
            return true;
        }
        if (o0.b.f(j10, zVar.k().a())) {
            return false;
        }
        return o0.b.l(j10) != o0.b.l(zVar.k().a()) || ((float) o0.b.k(j10)) < zVar.v().h() || zVar.v().f();
    }

    private final MultiParagraphIntrinsics i(LayoutDirection layoutDirection) {
        MultiParagraphIntrinsics multiParagraphIntrinsics = this.f2989l;
        if (multiParagraphIntrinsics == null || layoutDirection != this.f2990m || multiParagraphIntrinsics.b()) {
            this.f2990m = layoutDirection;
            AnnotatedString annotatedString = this.f2978a;
            d0 d0VarC = e0.c(this.f2979b, layoutDirection);
            o0.e eVar = this.f2988k;
            Intrinsics.e(eVar);
            androidx.compose.ui.text.font.h.b bVar = this.f2980c;
            List listL = this.f2985h;
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, d0VarC, listL, eVar, bVar);
        }
        this.f2989l = multiParagraphIntrinsics;
        return multiParagraphIntrinsics;
    }

    private final z j(LayoutDirection layoutDirection, long j10, MultiParagraph multiParagraph) {
        float fMin = Math.min(multiParagraph.i().a(), multiParagraph.w());
        AnnotatedString annotatedString = this.f2978a;
        d0 d0Var = this.f2979b;
        List listL = this.f2985h;
        if (listL == null) {
            listL = CollectionsKt.l();
        }
        List list = listL;
        int i10 = this.f2983f;
        boolean z10 = this.f2982e;
        int i11 = this.f2981d;
        o0.e eVar = this.f2988k;
        Intrinsics.e(eVar);
        return new z(new y(annotatedString, d0Var, list, i10, z10, i11, eVar, layoutDirection, this.f2980c, j10, (DefaultConstructorMarker) null), multiParagraph, o0.c.f(j10, u.a(androidx.compose.foundation.text.b.a(fMin), androidx.compose.foundation.text.b.a(multiParagraph.h()))), null);
    }

    public final o0.e a() {
        return this.f2988k;
    }

    public final z b() {
        return this.f2991n;
    }

    public final z c() {
        z zVar = this.f2991n;
        if (zVar != null) {
            return zVar;
        }
        throw new IllegalStateException("You must call layoutWithConstraints first");
    }

    public final boolean e(long j10, LayoutDirection layoutDirection) {
        if (this.f2984g > 1) {
            c.a aVar = c.f2966h;
            c cVar = this.f2986i;
            d0 d0Var = this.f2979b;
            o0.e eVar = this.f2988k;
            Intrinsics.e(eVar);
            c cVarA = aVar.a(cVar, layoutDirection, d0Var, eVar, this.f2980c);
            this.f2986i = cVarA;
            j10 = cVarA.c(j10, this.f2984g);
        }
        if (g(this.f2991n, j10, layoutDirection)) {
            this.f2991n = j(layoutDirection, j10, d(j10, layoutDirection));
            return true;
        }
        z zVar = this.f2991n;
        Intrinsics.e(zVar);
        if (o0.b.f(j10, zVar.k().a())) {
            return false;
        }
        z zVar2 = this.f2991n;
        Intrinsics.e(zVar2);
        this.f2991n = j(layoutDirection, j10, zVar2.v());
        return true;
    }

    public final void h(o0.e eVar) {
        o0.e eVar2 = this.f2988k;
        long jD = eVar != null ? a.d(eVar) : a.f2964a.a();
        if (eVar2 == null) {
            this.f2988k = eVar;
            this.f2987j = jD;
        } else if (eVar == null || !a.e(this.f2987j, jD)) {
            this.f2988k = eVar;
            this.f2987j = jD;
            f();
        }
    }

    public final void k(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12, List list) {
        this.f2978a = annotatedString;
        this.f2979b = d0Var;
        this.f2980c = bVar;
        this.f2981d = i10;
        this.f2982e = z10;
        this.f2983f = i11;
        this.f2984g = i12;
        this.f2985h = list;
        f();
    }

    private e(AnnotatedString annotatedString, d0 d0Var, androidx.compose.ui.text.font.h.b bVar, int i10, boolean z10, int i11, int i12, List list) {
        this.f2978a = annotatedString;
        this.f2979b = d0Var;
        this.f2980c = bVar;
        this.f2981d = i10;
        this.f2982e = z10;
        this.f2983f = i11;
        this.f2984g = i12;
        this.f2985h = list;
        this.f2987j = a.f2964a.a();
        this.f2992o = -1;
        this.f2993p = -1;
    }
}
