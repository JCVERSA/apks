package androidx.compose.ui.semantics;

import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

public abstract class SemanticsPropertiesKt {

    static final KProperty[] f5639a = {Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "stateDescription", "getStateDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "progressBarRangeInfo", "getProgressBarRangeInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ProgressBarRangeInfo;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "paneTitle", "getPaneTitle(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "liveRegion", "getLiveRegion(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "focused", "getFocused(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isContainer", "isContainer(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isTraversalGroup", "isTraversalGroup(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "contentType", "getContentType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/autofill/ContentType;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "contentDataType", "getContentDataType(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "traversalIndex", "getTraversalIndex(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)F", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "horizontalScrollAxisRange", "getHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "verticalScrollAxisRange", "getVerticalScrollAxisRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/ScrollAxisRange;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "role", "getRole(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "testTag", "getTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/lang/String;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSubstitution", "getTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isShowingTextSubstitution", "isShowingTextSubstitution(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "editableText", "getEditableText(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/text/AnnotatedString;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "textSelectionRange", "getTextSelectionRange(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)J", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "imeAction", "getImeAction(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "selected", "getSelected(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionInfo", "getCollectionInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionInfo;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "collectionItemInfo", "getCollectionItemInfo(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/semantics/CollectionItemInfo;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "toggleableState", "getToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/ui/state/ToggleableState;", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "isEditable", "isEditable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Z", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "maxTextLength", "getMaxTextLength(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)I", 1)), Reflection.f(new MutablePropertyReference1Impl(SemanticsPropertiesKt.class, "customActions", "getCustomActions(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Ljava/util/List;", 1))};

    static {
        SemanticsProperties semanticsProperties = SemanticsProperties.f5610a;
        semanticsProperties.A();
        semanticsProperties.w();
        semanticsProperties.u();
        semanticsProperties.s();
        semanticsProperties.i();
        semanticsProperties.r();
        semanticsProperties.r();
        semanticsProperties.e();
        semanticsProperties.c();
        semanticsProperties.G();
        semanticsProperties.k();
        semanticsProperties.H();
        semanticsProperties.x();
        semanticsProperties.B();
        semanticsProperties.E();
        semanticsProperties.q();
        semanticsProperties.g();
        semanticsProperties.D();
        semanticsProperties.l();
        semanticsProperties.z();
        semanticsProperties.a();
        semanticsProperties.b();
        semanticsProperties.F();
        semanticsProperties.p();
        semanticsProperties.t();
        h.f5667a.d();
    }

    public static final void A(n nVar, e eVar) {
        SemanticsProperties.f5610a.w().d(nVar, f5639a[1], eVar);
    }

    public static final void B(n nVar, int i10) {
        SemanticsProperties.f5610a.x().d(nVar, f5639a[12], f.h(i10));
    }

    public static final void C(n nVar, boolean z10) {
        SemanticsProperties.f5610a.z().d(nVar, f5639a[19], Boolean.valueOf(z10));
    }

    public static final void D(n nVar, boolean z10) {
        SemanticsProperties.f5610a.q().d(nVar, f5639a[15], Boolean.valueOf(z10));
    }

    public static final void E(n nVar, AnnotatedString annotatedString) {
        nVar.a(SemanticsProperties.f5610a.C(), CollectionsKt.e(annotatedString));
    }

    public static final void F(n nVar, AnnotatedString annotatedString) {
        SemanticsProperties.f5610a.E().d(nVar, f5639a[14], annotatedString);
    }

    public static final void G(n nVar, String str, Function1 function1) {
        nVar.a(h.f5667a.y(), new a(str, function1));
    }

    public static void H(n nVar, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        G(nVar, str, function1);
    }

    public static final void I(n nVar, ToggleableState toggleableState) {
        SemanticsProperties.f5610a.F().d(nVar, f5639a[22], toggleableState);
    }

    public static final void J(n nVar, boolean z10) {
        SemanticsProperties.f5610a.r().d(nVar, f5639a[6], Boolean.valueOf(z10));
    }

    public static final void K(n nVar, g gVar) {
        SemanticsProperties.f5610a.H().d(nVar, f5639a[11], gVar);
    }

    public static final void L(n nVar, String str, Function1 function1) {
        nVar.a(h.f5667a.z(), new a(str, function1));
    }

    public static void M(n nVar, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        L(nVar, str, function1);
    }

    public static final SemanticsPropertyKey a(String str) {
        return new SemanticsPropertyKey(str, true);
    }

    public static final SemanticsPropertyKey b(String str, Function2 function2) {
        return new SemanticsPropertyKey(str, true, function2);
    }

    public static final void c(n nVar, String str, Function0 function0) {
        nVar.a(h.f5667a.a(), new a(str, function0));
    }

    public static void d(n nVar, String str, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        c(nVar, str, function0);
    }

    public static final void e(n nVar) {
        nVar.a(SemanticsProperties.f5610a.o(), Unit.f64096a);
    }

    public static final void f(n nVar) {
        nVar.a(SemanticsProperties.f5610a.f(), Unit.f64096a);
    }

    public static final void g(n nVar, String str, final Function0 function0) {
        nVar.a(h.f5667a.h(), new a(str, new Function1<List<Float>, Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(List<Float> list) {
                boolean z10;
                Float f10 = (Float) function0.invoke();
                if (f10 == null) {
                    z10 = false;
                } else {
                    list.add(f10);
                    z10 = true;
                }
                return Boolean.valueOf(z10);
            }
        }));
    }

    public static void h(n nVar, String str, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        g(nVar, str, function0);
    }

    public static final void i(n nVar, String str, Function1 function1) {
        nVar.a(h.f5667a.i(), new a(str, function1));
    }

    public static void j(n nVar, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        i(nVar, str, function1);
    }

    public static final void k(n nVar, Function1 function1) {
        nVar.a(SemanticsProperties.f5610a.m(), function1);
    }

    public static final void l(n nVar, String str, Function0 function0) {
        nVar.a(h.f5667a.j(), new a(str, function0));
    }

    public static final void m(n nVar, String str, Function0 function0) {
        nVar.a(h.f5667a.l(), new a(str, function0));
    }

    public static final void n(n nVar, String str, Function0 function0) {
        nVar.a(h.f5667a.r(), new a(str, function0));
    }

    public static void o(n nVar, String str, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        n(nVar, str, function0);
    }

    public static final void p(n nVar, String str, Function2 function2) {
        nVar.a(h.f5667a.s(), new a(str, function2));
    }

    public static void q(n nVar, String str, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        p(nVar, str, function2);
    }

    public static final void r(n nVar, Function2 function2) {
        nVar.a(h.f5667a.t(), function2);
    }

    public static final void s(n nVar, String str, Function1 function1) {
        nVar.a(h.f5667a.u(), new a(str, function1));
    }

    public static void t(n nVar, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        s(nVar, str, function1);
    }

    public static final void u(n nVar, b bVar) {
        SemanticsProperties.f5610a.a().d(nVar, f5639a[20], bVar);
    }

    public static final void v(n nVar, String str) {
        nVar.a(SemanticsProperties.f5610a.d(), CollectionsKt.e(str));
    }

    public static final void w(n nVar, boolean z10) {
        SemanticsProperties.f5610a.i().d(nVar, f5639a[4], Boolean.valueOf(z10));
    }

    public static final void x(n nVar, g gVar) {
        SemanticsProperties.f5610a.k().d(nVar, f5639a[10], gVar);
    }

    public static final void y(n nVar, String str, Function1 function1) {
        nVar.a(h.f5667a.v(), new a(str, function1));
    }

    public static void z(n nVar, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        y(nVar, str, function1);
    }
}
