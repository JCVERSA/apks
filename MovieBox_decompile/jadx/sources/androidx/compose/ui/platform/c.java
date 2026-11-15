package androidx.compose.ui.platform;

import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c extends androidx.compose.ui.platform.a {

    private static c f5438f;

    private androidx.compose.ui.text.z f5441c;

    public static final a f5436d = new a(null);

    public static final int f5437e = 8;

    private static final ResolvedTextDirection f5439g = ResolvedTextDirection.Rtl;

    private static final ResolvedTextDirection f5440h = ResolvedTextDirection.Ltr;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final c a() {
            if (c.f5438f == null) {
                c.f5438f = new c(null);
            }
            c cVar = c.f5438f;
            Intrinsics.f(cVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.LineTextSegmentIterator");
            return cVar;
        }

        private a() {
        }
    }

    public c(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final int i(int i10, ResolvedTextDirection resolvedTextDirection) {
        androidx.compose.ui.text.z zVar = this.f5441c;
        androidx.compose.ui.text.z zVar2 = null;
        if (zVar == null) {
            Intrinsics.y("layoutResult");
            zVar = null;
        }
        int iT = zVar.t(i10);
        androidx.compose.ui.text.z zVar3 = this.f5441c;
        if (zVar3 == null) {
            Intrinsics.y("layoutResult");
            zVar3 = null;
        }
        if (resolvedTextDirection != zVar3.w(iT)) {
            androidx.compose.ui.text.z zVar4 = this.f5441c;
            if (zVar4 == null) {
                Intrinsics.y("layoutResult");
            } else {
                zVar2 = zVar4;
            }
            return zVar2.t(i10);
        }
        androidx.compose.ui.text.z zVar5 = this.f5441c;
        if (zVar5 == null) {
            Intrinsics.y("layoutResult");
            zVar5 = null;
        }
        return androidx.compose.ui.text.z.o(zVar5, i10, false, 2, null) - 1;
    }

    @Override
    public int[] a(int i10) {
        int iP;
        if (d().length() <= 0 || i10 >= d().length()) {
            return null;
        }
        if (i10 < 0) {
            androidx.compose.ui.text.z zVar = this.f5441c;
            if (zVar == null) {
                Intrinsics.y("layoutResult");
                zVar = null;
            }
            iP = zVar.p(0);
        } else {
            androidx.compose.ui.text.z zVar2 = this.f5441c;
            if (zVar2 == null) {
                Intrinsics.y("layoutResult");
                zVar2 = null;
            }
            int iP2 = zVar2.p(i10);
            iP = i(iP2, f5439g) == i10 ? iP2 : iP2 + 1;
        }
        androidx.compose.ui.text.z zVar3 = this.f5441c;
        if (zVar3 == null) {
            Intrinsics.y("layoutResult");
            zVar3 = null;
        }
        if (iP >= zVar3.m()) {
            return null;
        }
        return c(i(iP, f5439g), i(iP, f5440h) + 1);
    }

    @Override
    public int[] b(int i10) {
        int iP;
        if (d().length() <= 0 || i10 <= 0) {
            return null;
        }
        if (i10 > d().length()) {
            androidx.compose.ui.text.z zVar = this.f5441c;
            if (zVar == null) {
                Intrinsics.y("layoutResult");
                zVar = null;
            }
            iP = zVar.p(d().length());
        } else {
            androidx.compose.ui.text.z zVar2 = this.f5441c;
            if (zVar2 == null) {
                Intrinsics.y("layoutResult");
                zVar2 = null;
            }
            int iP2 = zVar2.p(i10);
            iP = i(iP2, f5440h) + 1 == i10 ? iP2 : iP2 - 1;
        }
        if (iP < 0) {
            return null;
        }
        return c(i(iP, f5439g), i(iP, f5440h) + 1);
    }

    public final void j(String str, androidx.compose.ui.text.z zVar) {
        f(str);
        this.f5441c = zVar;
    }

    private c() {
    }
}
