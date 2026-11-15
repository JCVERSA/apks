package androidx.compose.material;

import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class d implements j {

    private final long f3090a;

    private final long f3091b;

    private final long f3092c;

    private final long f3093d;

    private final long f3094e;

    private final long f3095f;

    private final long f3096g;

    private final long f3097h;

    private final long f3098i;

    private final long f3099j;

    public d(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, j11, j12, j13, j14, j15, j16, j17, j18, j19);
    }

    @Override
    public a3 a(boolean z10, boolean z11, androidx.compose.runtime.i iVar, int i10) {
        long j10;
        iVar.P(-1491563694);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1491563694, i10, -1, "androidx.compose.material.DefaultSliderColors.tickColor (Slider.kt:1111)");
        }
        if (z10) {
            j10 = z11 ? this.f3096g : this.f3097h;
        } else {
            j10 = z11 ? this.f3098i : this.f3099j;
        }
        a3 a3VarI = r2.i(u1.g(j10), iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return a3VarI;
    }

    @Override
    public a3 b(boolean z10, boolean z11, androidx.compose.runtime.i iVar, int i10) {
        long j10;
        iVar.P(1575395620);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1575395620, i10, -1, "androidx.compose.material.DefaultSliderColors.trackColor (Slider.kt:1100)");
        }
        if (z10) {
            j10 = z11 ? this.f3092c : this.f3093d;
        } else {
            j10 = z11 ? this.f3094e : this.f3095f;
        }
        a3 a3VarI = r2.i(u1.g(j10), iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return a3VarI;
    }

    @Override
    public a3 c(boolean z10, androidx.compose.runtime.i iVar, int i10) {
        iVar.P(-1733795637);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1733795637, i10, -1, "androidx.compose.material.DefaultSliderColors.thumbColor (Slider.kt:1095)");
        }
        a3 a3VarI = r2.i(u1.g(z10 ? this.f3090a : this.f3091b), iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return a3VarI;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return u1.m(this.f3090a, dVar.f3090a) && u1.m(this.f3091b, dVar.f3091b) && u1.m(this.f3092c, dVar.f3092c) && u1.m(this.f3093d, dVar.f3093d) && u1.m(this.f3094e, dVar.f3094e) && u1.m(this.f3095f, dVar.f3095f) && u1.m(this.f3096g, dVar.f3096g) && u1.m(this.f3097h, dVar.f3097h) && u1.m(this.f3098i, dVar.f3098i) && u1.m(this.f3099j, dVar.f3099j);
    }

    public int hashCode() {
        return (((((((((((((((((u1.s(this.f3090a) * 31) + u1.s(this.f3091b)) * 31) + u1.s(this.f3092c)) * 31) + u1.s(this.f3093d)) * 31) + u1.s(this.f3094e)) * 31) + u1.s(this.f3095f)) * 31) + u1.s(this.f3096g)) * 31) + u1.s(this.f3097h)) * 31) + u1.s(this.f3098i)) * 31) + u1.s(this.f3099j);
    }

    private d(long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19) {
        this.f3090a = j10;
        this.f3091b = j11;
        this.f3092c = j12;
        this.f3093d = j13;
        this.f3094e = j14;
        this.f3095f = j15;
        this.f3096g = j16;
        this.f3097h = j17;
        this.f3098i = j18;
        this.f3099j = j19;
    }
}
