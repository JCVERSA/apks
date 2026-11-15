package androidx.compose.ui.text;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class y {

    private final AnnotatedString f6161a;

    private final d0 f6162b;

    private final List f6163c;

    private final int f6164d;

    private final boolean f6165e;

    private final int f6166f;

    private final o0.e f6167g;

    private final LayoutDirection f6168h;

    private final androidx.compose.ui.text.font.h.b f6169i;

    private final long f6170j;

    private androidx.compose.ui.text.font.g f6171k;

    public y(AnnotatedString annotatedString, d0 d0Var, List list, int i10, boolean z10, int i11, o0.e eVar, LayoutDirection layoutDirection, androidx.compose.ui.text.font.h.b bVar, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, d0Var, list, i10, z10, i11, eVar, layoutDirection, bVar, j10);
    }

    public final long a() {
        return this.f6170j;
    }

    public final o0.e b() {
        return this.f6167g;
    }

    public final androidx.compose.ui.text.font.h.b c() {
        return this.f6169i;
    }

    public final LayoutDirection d() {
        return this.f6168h;
    }

    public final int e() {
        return this.f6164d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        return Intrinsics.c(this.f6161a, yVar.f6161a) && Intrinsics.c(this.f6162b, yVar.f6162b) && Intrinsics.c(this.f6163c, yVar.f6163c) && this.f6164d == yVar.f6164d && this.f6165e == yVar.f6165e && androidx.compose.ui.text.style.p.e(this.f6166f, yVar.f6166f) && Intrinsics.c(this.f6167g, yVar.f6167g) && this.f6168h == yVar.f6168h && Intrinsics.c(this.f6169i, yVar.f6169i) && o0.b.f(this.f6170j, yVar.f6170j);
    }

    public final int f() {
        return this.f6166f;
    }

    public final List g() {
        return this.f6163c;
    }

    public final boolean h() {
        return this.f6165e;
    }

    public int hashCode() {
        return (((((((((((((((((this.f6161a.hashCode() * 31) + this.f6162b.hashCode()) * 31) + this.f6163c.hashCode()) * 31) + this.f6164d) * 31) + androidx.compose.foundation.e.a(this.f6165e)) * 31) + androidx.compose.ui.text.style.p.f(this.f6166f)) * 31) + this.f6167g.hashCode()) * 31) + this.f6168h.hashCode()) * 31) + this.f6169i.hashCode()) * 31) + o0.b.o(this.f6170j);
    }

    public final d0 i() {
        return this.f6162b;
    }

    public final AnnotatedString j() {
        return this.f6161a;
    }

    public String toString() {
        return "TextLayoutInput(text=" + ((Object) this.f6161a) + ", style=" + this.f6162b + ", placeholders=" + this.f6163c + ", maxLines=" + this.f6164d + ", softWrap=" + this.f6165e + ", overflow=" + ((Object) androidx.compose.ui.text.style.p.g(this.f6166f)) + ", density=" + this.f6167g + ", layoutDirection=" + this.f6168h + ", fontFamilyResolver=" + this.f6169i + ", constraints=" + ((Object) o0.b.q(this.f6170j)) + ')';
    }

    private y(AnnotatedString annotatedString, d0 d0Var, List list, int i10, boolean z10, int i11, o0.e eVar, LayoutDirection layoutDirection, androidx.compose.ui.text.font.g gVar, androidx.compose.ui.text.font.h.b bVar, long j10) {
        this.f6161a = annotatedString;
        this.f6162b = d0Var;
        this.f6163c = list;
        this.f6164d = i10;
        this.f6165e = z10;
        this.f6166f = i11;
        this.f6167g = eVar;
        this.f6168h = layoutDirection;
        this.f6169i = bVar;
        this.f6170j = j10;
        this.f6171k = gVar;
    }

    private y(AnnotatedString annotatedString, d0 d0Var, List list, int i10, boolean z10, int i11, o0.e eVar, LayoutDirection layoutDirection, androidx.compose.ui.text.font.h.b bVar, long j10) {
        this(annotatedString, d0Var, list, i10, z10, i11, eVar, layoutDirection, (androidx.compose.ui.text.font.g) null, bVar, j10);
    }
}
