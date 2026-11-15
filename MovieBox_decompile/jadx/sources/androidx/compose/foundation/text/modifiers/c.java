package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.d0;
import androidx.compose.ui.text.e0;
import androidx.compose.ui.text.q;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class c {

    public static final a f2966h = new a(null);

    public static final int f2967i = 8;

    private static c f2968j;

    private final LayoutDirection f2969a;

    private final d0 f2970b;

    private final o0.e f2971c;

    private final androidx.compose.ui.text.font.h.b f2972d;

    private final d0 f2973e;

    private float f2974f;

    private float f2975g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a(c cVar, LayoutDirection layoutDirection, d0 d0Var, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
            if (cVar != null && layoutDirection == cVar.g() && Intrinsics.c(d0Var, cVar.f()) && eVar.getDensity() == cVar.d().getDensity() && bVar == cVar.e()) {
                return cVar;
            }
            c cVar2 = c.f2968j;
            if (cVar2 != null && layoutDirection == cVar2.g() && Intrinsics.c(d0Var, cVar2.f()) && eVar.getDensity() == cVar2.d().getDensity() && bVar == cVar2.e()) {
                return cVar2;
            }
            c cVar3 = new c(layoutDirection, e0.c(d0Var, layoutDirection), o0.g.a(eVar.getDensity(), eVar.B0()), bVar, null);
            c.f2968j = cVar3;
            return cVar3;
        }

        private a() {
        }
    }

    public c(LayoutDirection layoutDirection, d0 d0Var, o0.e eVar, androidx.compose.ui.text.font.h.b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(layoutDirection, d0Var, eVar, bVar);
    }

    public final long c(long j10, int i10) {
        float height = this.f2975g;
        float height2 = this.f2974f;
        if (Float.isNaN(height) || Float.isNaN(height2)) {
            height = q.a(d.f2976a, this.f2973e, o0.c.b(0, 0, 0, 0, 15, null), this.f2971c, this.f2972d, (96 & 32) != 0 ? CollectionsKt.l() : null, (96 & 64) != 0 ? CollectionsKt.l() : null, (96 & 128) != 0 ? Integer.MAX_VALUE : 1, (96 & 256) != 0 ? false : false).getHeight();
            height2 = q.a(d.f2977b, this.f2973e, o0.c.b(0, 0, 0, 0, 15, null), this.f2971c, this.f2972d, (96 & 32) != 0 ? CollectionsKt.l() : null, (96 & 64) != 0 ? CollectionsKt.l() : null, (96 & 128) != 0 ? Integer.MAX_VALUE : 2, (96 & 256) != 0 ? false : false).getHeight() - height;
            this.f2975g = height;
            this.f2974f = height2;
        }
        return o0.c.a(o0.b.n(j10), o0.b.l(j10), i10 != 1 ? RangesKt.h(RangesKt.e(Math.round(height + (height2 * (i10 - 1))), 0), o0.b.k(j10)) : o0.b.m(j10), o0.b.k(j10));
    }

    public final o0.e d() {
        return this.f2971c;
    }

    public final androidx.compose.ui.text.font.h.b e() {
        return this.f2972d;
    }

    public final d0 f() {
        return this.f2970b;
    }

    public final LayoutDirection g() {
        return this.f2969a;
    }

    private c(LayoutDirection layoutDirection, d0 d0Var, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        this.f2969a = layoutDirection;
        this.f2970b = d0Var;
        this.f2971c = eVar;
        this.f2972d = bVar;
        this.f2973e = e0.c(d0Var, layoutDirection);
        this.f2974f = Float.NaN;
        this.f2975g = Float.NaN;
    }
}
