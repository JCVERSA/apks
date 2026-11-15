package androidx.compose.ui.semantics;

import kotlin.Function;
import kotlin.jvm.functions.Function2;

public final class h {
    private static final SemanticsPropertyKey A;
    private static final SemanticsPropertyKey B;
    private static final SemanticsPropertyKey C;
    private static final SemanticsPropertyKey D;
    public static final int E;

    public static final h f5667a = new h();

    private static final SemanticsPropertyKey f5668b;

    private static final SemanticsPropertyKey f5669c;

    private static final SemanticsPropertyKey f5670d;

    private static final SemanticsPropertyKey f5671e;

    private static final SemanticsPropertyKey f5672f;

    private static final SemanticsPropertyKey f5673g;

    private static final SemanticsPropertyKey f5674h;

    private static final SemanticsPropertyKey f5675i;

    private static final SemanticsPropertyKey f5676j;

    private static final SemanticsPropertyKey f5677k;

    private static final SemanticsPropertyKey f5678l;

    private static final SemanticsPropertyKey f5679m;

    private static final SemanticsPropertyKey f5680n;

    private static final SemanticsPropertyKey f5681o;

    private static final SemanticsPropertyKey f5682p;

    private static final SemanticsPropertyKey f5683q;

    private static final SemanticsPropertyKey f5684r;

    private static final SemanticsPropertyKey f5685s;

    private static final SemanticsPropertyKey f5686t;

    private static final SemanticsPropertyKey f5687u;

    private static final SemanticsPropertyKey f5688v;

    private static final SemanticsPropertyKey f5689w;

    private static final SemanticsPropertyKey f5690x;

    private static final SemanticsPropertyKey f5691y;

    private static final SemanticsPropertyKey f5692z;

    static {
        SemanticsPropertiesKt$ActionPropertyKey$1 semanticsPropertiesKt$ActionPropertyKey$1 = new Function2<a, a, a>() {
            @Override
            public final a invoke(a aVar, a aVar2) {
                String strB;
                Function functionA;
                if (aVar == null || (strB = aVar.b()) == null) {
                    strB = aVar2.b();
                }
                if (aVar == null || (functionA = aVar.a()) == null) {
                    functionA = aVar2.a();
                }
                return new a(strB, functionA);
            }
        };
        f5668b = SemanticsPropertiesKt.b("GetTextLayoutResult", semanticsPropertiesKt$ActionPropertyKey$1);
        f5669c = SemanticsPropertiesKt.b("OnClick", semanticsPropertiesKt$ActionPropertyKey$1);
        f5670d = SemanticsPropertiesKt.b("OnLongClick", semanticsPropertiesKt$ActionPropertyKey$1);
        f5671e = SemanticsPropertiesKt.b("ScrollBy", semanticsPropertiesKt$ActionPropertyKey$1);
        f5672f = new SemanticsPropertyKey("ScrollByOffset", null, 2, null);
        f5673g = SemanticsPropertiesKt.b("ScrollToIndex", semanticsPropertiesKt$ActionPropertyKey$1);
        f5674h = SemanticsPropertiesKt.b("OnAutofillText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5675i = SemanticsPropertiesKt.b("SetProgress", semanticsPropertiesKt$ActionPropertyKey$1);
        f5676j = SemanticsPropertiesKt.b("SetSelection", semanticsPropertiesKt$ActionPropertyKey$1);
        f5677k = SemanticsPropertiesKt.b("SetText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5678l = SemanticsPropertiesKt.b("SetTextSubstitution", semanticsPropertiesKt$ActionPropertyKey$1);
        f5679m = SemanticsPropertiesKt.b("ShowTextSubstitution", semanticsPropertiesKt$ActionPropertyKey$1);
        f5680n = SemanticsPropertiesKt.b("ClearTextSubstitution", semanticsPropertiesKt$ActionPropertyKey$1);
        f5681o = SemanticsPropertiesKt.b("InsertTextAtCursor", semanticsPropertiesKt$ActionPropertyKey$1);
        f5682p = SemanticsPropertiesKt.b("PerformImeAction", semanticsPropertiesKt$ActionPropertyKey$1);
        f5683q = SemanticsPropertiesKt.b("PerformImeAction", semanticsPropertiesKt$ActionPropertyKey$1);
        f5684r = SemanticsPropertiesKt.b("CopyText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5685s = SemanticsPropertiesKt.b("CutText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5686t = SemanticsPropertiesKt.b("PasteText", semanticsPropertiesKt$ActionPropertyKey$1);
        f5687u = SemanticsPropertiesKt.b("Expand", semanticsPropertiesKt$ActionPropertyKey$1);
        f5688v = SemanticsPropertiesKt.b("Collapse", semanticsPropertiesKt$ActionPropertyKey$1);
        f5689w = SemanticsPropertiesKt.b("Dismiss", semanticsPropertiesKt$ActionPropertyKey$1);
        f5690x = SemanticsPropertiesKt.b("RequestFocus", semanticsPropertiesKt$ActionPropertyKey$1);
        f5691y = SemanticsPropertiesKt.a("CustomActions");
        f5692z = SemanticsPropertiesKt.b("PageUp", semanticsPropertiesKt$ActionPropertyKey$1);
        A = SemanticsPropertiesKt.b("PageLeft", semanticsPropertiesKt$ActionPropertyKey$1);
        B = SemanticsPropertiesKt.b("PageDown", semanticsPropertiesKt$ActionPropertyKey$1);
        C = SemanticsPropertiesKt.b("PageRight", semanticsPropertiesKt$ActionPropertyKey$1);
        D = SemanticsPropertiesKt.b("GetScrollViewportLength", semanticsPropertiesKt$ActionPropertyKey$1);
        E = 8;
    }

    private h() {
    }

    public final SemanticsPropertyKey a() {
        return f5680n;
    }

    public final SemanticsPropertyKey b() {
        return f5688v;
    }

    public final SemanticsPropertyKey c() {
        return f5684r;
    }

    public final SemanticsPropertyKey d() {
        return f5691y;
    }

    public final SemanticsPropertyKey e() {
        return f5685s;
    }

    public final SemanticsPropertyKey f() {
        return f5689w;
    }

    public final SemanticsPropertyKey g() {
        return f5687u;
    }

    public final SemanticsPropertyKey h() {
        return D;
    }

    public final SemanticsPropertyKey i() {
        return f5668b;
    }

    public final SemanticsPropertyKey j() {
        return f5669c;
    }

    public final SemanticsPropertyKey k() {
        return f5682p;
    }

    public final SemanticsPropertyKey l() {
        return f5670d;
    }

    public final SemanticsPropertyKey m() {
        return B;
    }

    public final SemanticsPropertyKey n() {
        return A;
    }

    public final SemanticsPropertyKey o() {
        return C;
    }

    public final SemanticsPropertyKey p() {
        return f5692z;
    }

    public final SemanticsPropertyKey q() {
        return f5686t;
    }

    public final SemanticsPropertyKey r() {
        return f5690x;
    }

    public final SemanticsPropertyKey s() {
        return f5671e;
    }

    public final SemanticsPropertyKey t() {
        return f5672f;
    }

    public final SemanticsPropertyKey u() {
        return f5673g;
    }

    public final SemanticsPropertyKey v() {
        return f5675i;
    }

    public final SemanticsPropertyKey w() {
        return f5676j;
    }

    public final SemanticsPropertyKey x() {
        return f5677k;
    }

    public final SemanticsPropertyKey y() {
        return f5678l;
    }

    public final SemanticsPropertyKey z() {
        return f5679m;
    }
}
