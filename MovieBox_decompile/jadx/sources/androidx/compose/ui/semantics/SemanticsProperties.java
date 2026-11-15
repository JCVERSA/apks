package androidx.compose.ui.semantics;

import androidx.compose.ui.text.AnnotatedString;
import com.amazonaws.services.s3.model.BucketLifecycleConfiguration;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import x.x;
import x.y;

public final class SemanticsProperties {

    public static final SemanticsProperties f5610a = new SemanticsProperties();

    private static final SemanticsPropertyKey f5611b = SemanticsPropertiesKt.b("ContentDescription", new Function2<List<? extends String>, List<? extends String>, List<? extends String>>() {
        @Override
        public final List<String> invoke(List<String> list, List<String> list2) {
            List<String> listU0;
            if (list == null || (listU0 = CollectionsKt.U0(list)) == null) {
                return list2;
            }
            listU0.addAll(list2);
            return listU0;
        }
    });

    private static final SemanticsPropertyKey f5612c = SemanticsPropertiesKt.a("StateDescription");

    private static final SemanticsPropertyKey f5613d = SemanticsPropertiesKt.a("ProgressBarRangeInfo");

    private static final SemanticsPropertyKey f5614e = SemanticsPropertiesKt.b("PaneTitle", new Function2<String, String, String>() {
        @Override
        public final String invoke(String str, String str2) {
            throw new IllegalStateException("merge function called on unmergeable property PaneTitle.");
        }
    });

    private static final SemanticsPropertyKey f5615f = SemanticsPropertiesKt.a("SelectableGroup");

    private static final SemanticsPropertyKey f5616g = SemanticsPropertiesKt.a("CollectionInfo");

    private static final SemanticsPropertyKey f5617h = SemanticsPropertiesKt.a("CollectionItemInfo");

    private static final SemanticsPropertyKey f5618i = SemanticsPropertiesKt.a("Heading");

    private static final SemanticsPropertyKey f5619j = SemanticsPropertiesKt.a(BucketLifecycleConfiguration.DISABLED);

    private static final SemanticsPropertyKey f5620k = SemanticsPropertiesKt.a("LiveRegion");

    private static final SemanticsPropertyKey f5621l = SemanticsPropertiesKt.a("Focused");

    private static final SemanticsPropertyKey f5622m = SemanticsPropertiesKt.a("IsTraversalGroup");

    private static final SemanticsPropertyKey f5623n = new SemanticsPropertyKey("InvisibleToUser", new Function2<Unit, Unit, Unit>() {
        @Override
        public final Unit invoke(Unit unit, Unit unit2) {
            return unit;
        }
    });

    private static final SemanticsPropertyKey f5624o = new SemanticsPropertyKey("ContentType", new Function2<y, y, y>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            android.support.v4.media.session.c.a(obj2);
            invoke((y) null, (y) null);
            return null;
        }

        public final y invoke(y yVar, y yVar2) {
            return yVar;
        }
    });

    private static final SemanticsPropertyKey f5625p = new SemanticsPropertyKey("ContentDataType", new Function2<x, x, x>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            android.support.v4.media.session.c.a(obj);
            android.support.v4.media.session.c.a(obj2);
            throw null;
        }

        public final x m165invokex33U9Dw(x xVar, int i10) {
            return xVar;
        }
    });

    private static final SemanticsPropertyKey f5626q = SemanticsPropertiesKt.b("TraversalIndex", new Function2<Float, Float, Float>() {
        public final Float invoke(Float f10, float f11) {
            return f10;
        }

        @Override
        public Object invoke(Object obj, Object obj2) {
            return invoke((Float) obj, ((Number) obj2).floatValue());
        }
    });

    private static final SemanticsPropertyKey f5627r = SemanticsPropertiesKt.a("HorizontalScrollAxisRange");

    private static final SemanticsPropertyKey f5628s = SemanticsPropertiesKt.a("VerticalScrollAxisRange");

    private static final SemanticsPropertyKey f5629t = SemanticsPropertiesKt.b("IsPopup", new Function2<Unit, Unit, Unit>() {
        @Override
        public final Unit invoke(Unit unit, Unit unit2) {
            throw new IllegalStateException("merge function called on unmergeable property IsPopup. A popup should not be a child of a clickable/focusable node.");
        }
    });

    private static final SemanticsPropertyKey f5630u = SemanticsPropertiesKt.b("IsDialog", new Function2<Unit, Unit, Unit>() {
        @Override
        public final Unit invoke(Unit unit, Unit unit2) {
            throw new IllegalStateException("merge function called on unmergeable property IsDialog. A dialog should not be a child of a clickable/focusable node.");
        }
    });

    private static final SemanticsPropertyKey f5631v = SemanticsPropertiesKt.b("Role", new Function2<f, f, f>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            return m166invokeqtAw6s((f) obj, ((f) obj2).n());
        }

        public final f m166invokeqtAw6s(f fVar, int i10) {
            return fVar;
        }
    });

    private static final SemanticsPropertyKey f5632w = new SemanticsPropertyKey("TestTag", false, new Function2<String, String, String>() {
        @Override
        public final String invoke(String str, String str2) {
            return str;
        }
    });

    private static final SemanticsPropertyKey f5633x = SemanticsPropertiesKt.b("Text", new Function2<List<? extends AnnotatedString>, List<? extends AnnotatedString>, List<? extends AnnotatedString>>() {
        @Override
        public final List<AnnotatedString> invoke(List<AnnotatedString> list, List<AnnotatedString> list2) {
            List<AnnotatedString> listU0;
            if (list == null || (listU0 = CollectionsKt.U0(list)) == null) {
                return list2;
            }
            listU0.addAll(list2);
            return listU0;
        }
    });

    private static final SemanticsPropertyKey f5634y = new SemanticsPropertyKey("TextSubstitution", null, 2, null);

    private static final SemanticsPropertyKey f5635z = new SemanticsPropertyKey("IsShowingTextSubstitution", null, 2, null);
    private static final SemanticsPropertyKey A = SemanticsPropertiesKt.a("EditableText");
    private static final SemanticsPropertyKey B = SemanticsPropertiesKt.a("TextSelectionRange");
    private static final SemanticsPropertyKey C = SemanticsPropertiesKt.a("ImeAction");
    private static final SemanticsPropertyKey D = SemanticsPropertiesKt.a("Selected");
    private static final SemanticsPropertyKey E = SemanticsPropertiesKt.a("ToggleableState");
    private static final SemanticsPropertyKey F = SemanticsPropertiesKt.a("Password");
    private static final SemanticsPropertyKey G = SemanticsPropertiesKt.a("Error");
    private static final SemanticsPropertyKey H = new SemanticsPropertyKey("IndexForKey", null, 2, null);
    private static final SemanticsPropertyKey I = new SemanticsPropertyKey("IsEditable", null, 2, null);
    private static final SemanticsPropertyKey J = new SemanticsPropertyKey("MaxTextLength", null, 2, null);
    public static final int K = 8;

    private SemanticsProperties() {
    }

    public final SemanticsPropertyKey A() {
        return f5612c;
    }

    public final SemanticsPropertyKey B() {
        return f5632w;
    }

    public final SemanticsPropertyKey C() {
        return f5633x;
    }

    public final SemanticsPropertyKey D() {
        return B;
    }

    public final SemanticsPropertyKey E() {
        return f5634y;
    }

    public final SemanticsPropertyKey F() {
        return E;
    }

    public final SemanticsPropertyKey G() {
        return f5626q;
    }

    public final SemanticsPropertyKey H() {
        return f5628s;
    }

    public final SemanticsPropertyKey a() {
        return f5616g;
    }

    public final SemanticsPropertyKey b() {
        return f5617h;
    }

    public final SemanticsPropertyKey c() {
        return f5625p;
    }

    public final SemanticsPropertyKey d() {
        return f5611b;
    }

    public final SemanticsPropertyKey e() {
        return f5624o;
    }

    public final SemanticsPropertyKey f() {
        return f5619j;
    }

    public final SemanticsPropertyKey g() {
        return A;
    }

    public final SemanticsPropertyKey h() {
        return G;
    }

    public final SemanticsPropertyKey i() {
        return f5621l;
    }

    public final SemanticsPropertyKey j() {
        return f5618i;
    }

    public final SemanticsPropertyKey k() {
        return f5627r;
    }

    public final SemanticsPropertyKey l() {
        return C;
    }

    public final SemanticsPropertyKey m() {
        return H;
    }

    public final SemanticsPropertyKey n() {
        return f5623n;
    }

    public final SemanticsPropertyKey o() {
        return f5630u;
    }

    public final SemanticsPropertyKey p() {
        return I;
    }

    public final SemanticsPropertyKey q() {
        return f5635z;
    }

    public final SemanticsPropertyKey r() {
        return f5622m;
    }

    public final SemanticsPropertyKey s() {
        return f5620k;
    }

    public final SemanticsPropertyKey t() {
        return J;
    }

    public final SemanticsPropertyKey u() {
        return f5614e;
    }

    public final SemanticsPropertyKey v() {
        return F;
    }

    public final SemanticsPropertyKey w() {
        return f5613d;
    }

    public final SemanticsPropertyKey x() {
        return f5631v;
    }

    public final SemanticsPropertyKey y() {
        return f5615f;
    }

    public final SemanticsPropertyKey z() {
        return D;
    }
}
