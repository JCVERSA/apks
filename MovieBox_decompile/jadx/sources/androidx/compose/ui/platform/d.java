package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class d extends androidx.compose.ui.platform.a {

    private static d f5450h;

    private androidx.compose.ui.text.z f5453c;

    private SemanticsNode f5454d;

    private Rect f5455e;

    public static final a f5448f = new a(null);

    public static final int f5449g = 8;

    private static final ResolvedTextDirection f5451i = ResolvedTextDirection.Rtl;

    private static final ResolvedTextDirection f5452j = ResolvedTextDirection.Ltr;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final d a() {
            if (d.f5450h == null) {
                d.f5450h = new d(null);
            }
            d dVar = d.f5450h;
            Intrinsics.f(dVar, "null cannot be cast to non-null type androidx.compose.ui.platform.AccessibilityIterators.PageTextSegmentIterator");
            return dVar;
        }

        private a() {
        }
    }

    public d(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private final int i(int i10, ResolvedTextDirection resolvedTextDirection) {
        androidx.compose.ui.text.z zVar = this.f5453c;
        androidx.compose.ui.text.z zVar2 = null;
        if (zVar == null) {
            Intrinsics.y("layoutResult");
            zVar = null;
        }
        int iT = zVar.t(i10);
        androidx.compose.ui.text.z zVar3 = this.f5453c;
        if (zVar3 == null) {
            Intrinsics.y("layoutResult");
            zVar3 = null;
        }
        if (resolvedTextDirection != zVar3.w(iT)) {
            androidx.compose.ui.text.z zVar4 = this.f5453c;
            if (zVar4 == null) {
                Intrinsics.y("layoutResult");
            } else {
                zVar2 = zVar4;
            }
            return zVar2.t(i10);
        }
        androidx.compose.ui.text.z zVar5 = this.f5453c;
        if (zVar5 == null) {
            Intrinsics.y("layoutResult");
            zVar5 = null;
        }
        return androidx.compose.ui.text.z.o(zVar5, i10, false, 2, null) - 1;
    }

    @Override
    public int[] a(int i10) {
        int iM;
        androidx.compose.ui.text.z zVar = null;
        if (d().length() <= 0 || i10 >= d().length()) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.f5454d;
            if (semanticsNode == null) {
                Intrinsics.y("node");
                semanticsNode = null;
            }
            int iRound = Math.round(semanticsNode.i().e());
            int iE = RangesKt.e(0, i10);
            androidx.compose.ui.text.z zVar2 = this.f5453c;
            if (zVar2 == null) {
                Intrinsics.y("layoutResult");
                zVar2 = null;
            }
            int iP = zVar2.p(iE);
            androidx.compose.ui.text.z zVar3 = this.f5453c;
            if (zVar3 == null) {
                Intrinsics.y("layoutResult");
                zVar3 = null;
            }
            float fU = zVar3.u(iP) + iRound;
            androidx.compose.ui.text.z zVar4 = this.f5453c;
            if (zVar4 == null) {
                Intrinsics.y("layoutResult");
                zVar4 = null;
            }
            androidx.compose.ui.text.z zVar5 = this.f5453c;
            if (zVar5 == null) {
                Intrinsics.y("layoutResult");
                zVar5 = null;
            }
            if (fU < zVar4.u(zVar5.m() - 1)) {
                androidx.compose.ui.text.z zVar6 = this.f5453c;
                if (zVar6 == null) {
                    Intrinsics.y("layoutResult");
                } else {
                    zVar = zVar6;
                }
                iM = zVar.q(fU);
            } else {
                androidx.compose.ui.text.z zVar7 = this.f5453c;
                if (zVar7 == null) {
                    Intrinsics.y("layoutResult");
                } else {
                    zVar = zVar7;
                }
                iM = zVar.m();
            }
            return c(iE, i(iM - 1, f5452j) + 1);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    @Override
    public int[] b(int i10) {
        int iQ;
        androidx.compose.ui.text.z zVar = null;
        if (d().length() <= 0 || i10 <= 0) {
            return null;
        }
        try {
            SemanticsNode semanticsNode = this.f5454d;
            if (semanticsNode == null) {
                Intrinsics.y("node");
                semanticsNode = null;
            }
            int iRound = Math.round(semanticsNode.i().e());
            int iH = RangesKt.h(d().length(), i10);
            androidx.compose.ui.text.z zVar2 = this.f5453c;
            if (zVar2 == null) {
                Intrinsics.y("layoutResult");
                zVar2 = null;
            }
            int iP = zVar2.p(iH);
            androidx.compose.ui.text.z zVar3 = this.f5453c;
            if (zVar3 == null) {
                Intrinsics.y("layoutResult");
                zVar3 = null;
            }
            float fU = zVar3.u(iP) - iRound;
            if (fU > 0.0f) {
                androidx.compose.ui.text.z zVar4 = this.f5453c;
                if (zVar4 == null) {
                    Intrinsics.y("layoutResult");
                } else {
                    zVar = zVar4;
                }
                iQ = zVar.q(fU);
            } else {
                iQ = 0;
            }
            if (iH == d().length() && iQ < iP) {
                iQ++;
            }
            return c(i(iQ, f5451i), iH);
        } catch (IllegalStateException unused) {
            return null;
        }
    }

    public final void j(String str, androidx.compose.ui.text.z zVar, SemanticsNode semanticsNode) {
        f(str);
        this.f5453c = zVar;
        this.f5454d = semanticsNode;
    }

    private d() {
        this.f5455e = new Rect();
    }
}
