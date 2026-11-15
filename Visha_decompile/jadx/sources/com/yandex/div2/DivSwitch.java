package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.og2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivSwitch implements d65, ko4, og2 {
    public static final a K = new a(null);
    public static final Expression L;
    public static final DivSize.d M;
    public static final Expression N;
    public static final Expression O;
    public static final DivSize.c P;
    public static final s74 Q;
    public final DivAppearanceTransition A;
    public final DivAppearanceTransition B;
    public final List C;
    public final List D;
    public final List E;
    public final Expression F;
    public final DivVisibilityAction G;
    public final List H;
    public final DivSize I;
    public Integer J;
    public final DivAccessibility a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final List e;
    public final List f;
    public final DivBorder g;
    public final Expression h;
    public final List i;
    public final List j;
    public final DivFocus k;
    public final List l;
    public final DivSize m;
    public final String n;
    public final Expression o;
    public final String p;
    public final DivLayoutProvider q;
    public final DivEdgeInsets r;
    public final Expression s;
    public final DivEdgeInsets t;
    public final Expression u;
    public final Expression v;
    public final List w;
    public final List x;
    public final DivTransform y;
    public final DivChangeTransition z;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivSwitch a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivSwitchJsonParser.b) ml0.a().I7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        L = aVar.a(Double.valueOf(1.0d));
        M = new DivSize.d(new DivWrapContentSize(null, null, null, 7, null));
        N = aVar.a(Boolean.TRUE);
        O = aVar.a(DivVisibility.VISIBLE);
        P = new DivSize.c(new DivMatchParentSize(0 == true ? 1 : 0, 1, 0 == true ? 1 : 0));
        Q = new s74() {
            @Override
            public final DivSwitch invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivSwitch.K.a(hx7Var, jSONObject);
            }
        };
    }

    public DivSwitch(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression5, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, List list6, List list7, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list8, List list9, List list10, Expression expression9, DivVisibilityAction divVisibilityAction, List list11, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(divSize, "height");
        y45.j(expression5, "isEnabled");
        y45.j(str2, "isOnVariable");
        y45.j(expression9, "visibility");
        y45.j(divSize2, "width");
        this.a = divAccessibility;
        this.b = expression;
        this.c = expression2;
        this.d = expression3;
        this.e = list;
        this.f = list2;
        this.g = divBorder;
        this.h = expression4;
        this.i = list3;
        this.j = list4;
        this.k = divFocus;
        this.l = list5;
        this.m = divSize;
        this.n = str;
        this.o = expression5;
        this.p = str2;
        this.q = divLayoutProvider;
        this.r = divEdgeInsets;
        this.s = expression6;
        this.t = divEdgeInsets2;
        this.u = expression7;
        this.v = expression8;
        this.w = list6;
        this.x = list7;
        this.y = divTransform;
        this.z = divChangeTransition;
        this.A = divAppearanceTransition;
        this.B = divAppearanceTransition2;
        this.C = list8;
        this.D = list9;
        this.E = list10;
        this.F = expression9;
        this.G = divVisibilityAction;
        this.H = list11;
        this.I = divSize2;
    }

    @Override
    public List A() {
        return this.e;
    }

    @Override
    public DivBorder B() {
        return this.g;
    }

    public final DivSwitch C(DivAccessibility divAccessibility, Expression expression, Expression expression2, Expression expression3, List list, List list2, DivBorder divBorder, Expression expression4, List list3, List list4, DivFocus divFocus, List list5, DivSize divSize, String str, Expression expression5, String str2, DivLayoutProvider divLayoutProvider, DivEdgeInsets divEdgeInsets, Expression expression6, DivEdgeInsets divEdgeInsets2, Expression expression7, Expression expression8, List list6, List list7, DivTransform divTransform, DivChangeTransition divChangeTransition, DivAppearanceTransition divAppearanceTransition, DivAppearanceTransition divAppearanceTransition2, List list8, List list9, List list10, Expression expression9, DivVisibilityAction divVisibilityAction, List list11, DivSize divSize2) {
        y45.j(expression3, "alpha");
        y45.j(divSize, "height");
        y45.j(expression5, "isEnabled");
        y45.j(str2, "isOnVariable");
        y45.j(expression9, "visibility");
        y45.j(divSize2, "width");
        return new DivSwitch(divAccessibility, expression, expression2, expression3, list, list2, divBorder, expression4, list3, list4, divFocus, list5, divSize, str, expression5, str2, divLayoutProvider, divEdgeInsets, expression6, divEdgeInsets2, expression7, expression8, list6, list7, divTransform, divChangeTransition, divAppearanceTransition, divAppearanceTransition2, list8, list9, list10, expression9, divVisibilityAction, list11, divSize2);
    }

    public final boolean E(DivSwitch divSwitch, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean z;
        boolean z2;
        boolean zA2;
        boolean z3;
        boolean z4;
        boolean zA3;
        boolean z5;
        boolean zA4;
        boolean zA5;
        boolean zA6;
        boolean z6;
        boolean z7;
        boolean zA7;
        boolean zA8;
        boolean zA9;
        boolean zA10;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean zG;
        boolean z11;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divSwitch == null) {
            return false;
        }
        DivAccessibility divAccessibilityR = r();
        if (divAccessibilityR != null) {
            zA = divAccessibilityR.a(divSwitch.r(), oj3Var, oj3Var2);
        } else {
            zA = divSwitch.r() == null;
        }
        if (!zA) {
            return false;
        }
        Expression expressionG = g();
        DivAlignmentHorizontal divAlignmentHorizontal = expressionG != null ? (DivAlignmentHorizontal) expressionG.b(oj3Var) : null;
        Expression expressionG2 = divSwitch.g();
        if (divAlignmentHorizontal != (expressionG2 != null ? (DivAlignmentHorizontal) expressionG2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionO = o();
        DivAlignmentVertical divAlignmentVertical = expressionO != null ? (DivAlignmentVertical) expressionO.b(oj3Var) : null;
        Expression expressionO2 = divSwitch.o();
        if (divAlignmentVertical != (expressionO2 != null ? (DivAlignmentVertical) expressionO2.b(oj3Var2) : null)) {
            return false;
        }
        if (!(((Number) p().b(oj3Var)).doubleValue() == ((Number) divSwitch.p().b(oj3Var2)).doubleValue())) {
            return false;
        }
        List listA = A();
        if (listA != null) {
            List listA2 = divSwitch.A();
            if (listA2 == null) {
                return false;
            }
            if (listA.size() == listA2.size()) {
                Iterator it = listA.iterator();
                int i = 0;
                while (true) {
                    if (it.hasNext()) {
                        Object next = it.next();
                        int i2 = i + 1;
                        if (i < 0) {
                            y71.u();
                        }
                        if (((DivAnimator) next).a((DivAnimator) listA2.get(i), oj3Var, oj3Var2)) {
                            i = i2;
                        }
                    }
                }
            }
        } else {
            z = divSwitch.A() == null;
        }
        if (!z) {
            return false;
        }
        List background = getBackground();
        if (background != null) {
            List background2 = divSwitch.getBackground();
            if (background2 == null) {
                return false;
            }
            if (background.size() == background2.size()) {
                Iterator it2 = background.iterator();
                int i3 = 0;
                while (true) {
                    if (it2.hasNext()) {
                        Object next2 = it2.next();
                        int i4 = i3 + 1;
                        if (i3 < 0) {
                            y71.u();
                        }
                        if (((DivBackground) next2).a((DivBackground) background2.get(i3), oj3Var, oj3Var2)) {
                            i3 = i4;
                        }
                    }
                }
            }
        } else {
            z2 = divSwitch.getBackground() == null;
        }
        if (!z2) {
            return false;
        }
        DivBorder divBorderB = B();
        if (divBorderB != null) {
            zA2 = divBorderB.a(divSwitch.B(), oj3Var, oj3Var2);
        } else {
            zA2 = divSwitch.B() == null;
        }
        if (!zA2) {
            return false;
        }
        Expression expressionB = b();
        Long l = expressionB != null ? (Long) expressionB.b(oj3Var) : null;
        Expression expressionB2 = divSwitch.b();
        if (!y45.e(l, expressionB2 != null ? (Long) expressionB2.b(oj3Var2) : null)) {
            return false;
        }
        List listK = k();
        if (listK != null) {
            List listK2 = divSwitch.k();
            if (listK2 == null) {
                return false;
            }
            if (listK.size() == listK2.size()) {
                Iterator it3 = listK.iterator();
                int i5 = 0;
                while (true) {
                    if (it3.hasNext()) {
                        Object next3 = it3.next();
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            y71.u();
                        }
                        if (((DivDisappearAction) next3).g((DivDisappearAction) listK2.get(i5), oj3Var, oj3Var2)) {
                            i5 = i6;
                        }
                    }
                }
            }
        } else {
            z3 = divSwitch.k() == null;
        }
        if (!z3) {
            return false;
        }
        List extensions = getExtensions();
        if (extensions != null) {
            List extensions2 = divSwitch.getExtensions();
            if (extensions2 == null) {
                return false;
            }
            if (extensions.size() == extensions2.size()) {
                Iterator it4 = extensions.iterator();
                int i7 = 0;
                while (true) {
                    if (it4.hasNext()) {
                        Object next4 = it4.next();
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            y71.u();
                        }
                        if (((DivExtension) next4).a((DivExtension) extensions2.get(i7), oj3Var, oj3Var2)) {
                            i7 = i8;
                        }
                    }
                }
            }
        } else {
            z4 = divSwitch.getExtensions() == null;
        }
        if (!z4) {
            return false;
        }
        DivFocus divFocusQ = q();
        if (divFocusQ != null) {
            zA3 = divFocusQ.a(divSwitch.q(), oj3Var, oj3Var2);
        } else {
            zA3 = divSwitch.q() == null;
        }
        if (!zA3) {
            return false;
        }
        List listY = y();
        if (listY != null) {
            List listY2 = divSwitch.y();
            if (listY2 == null) {
                return false;
            }
            if (listY.size() == listY2.size()) {
                Iterator it5 = listY.iterator();
                int i9 = 0;
                while (true) {
                    if (it5.hasNext()) {
                        Object next5 = it5.next();
                        int i10 = i9 + 1;
                        if (i9 < 0) {
                            y71.u();
                        }
                        if (((DivFunction) next5).a((DivFunction) listY2.get(i9), oj3Var, oj3Var2)) {
                            i9 = i10;
                        }
                    }
                }
            }
        } else {
            z5 = divSwitch.y() == null;
        }
        if (!z5 || !getHeight().a(divSwitch.getHeight(), oj3Var, oj3Var2) || !y45.e(getId(), divSwitch.getId()) || ((Boolean) this.o.b(oj3Var)).booleanValue() != ((Boolean) divSwitch.o.b(oj3Var2)).booleanValue() || !y45.e(this.p, divSwitch.p)) {
            return false;
        }
        DivLayoutProvider divLayoutProviderV = v();
        if (divLayoutProviderV != null) {
            zA4 = divLayoutProviderV.a(divSwitch.v(), oj3Var, oj3Var2);
        } else {
            zA4 = divSwitch.v() == null;
        }
        if (!zA4) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsD = d();
        if (divEdgeInsetsD != null) {
            zA5 = divEdgeInsetsD.a(divSwitch.d(), oj3Var, oj3Var2);
        } else {
            zA5 = divSwitch.d() == null;
        }
        if (!zA5) {
            return false;
        }
        Expression expression = this.s;
        Integer num = expression != null ? (Integer) expression.b(oj3Var) : null;
        Expression expression2 = divSwitch.s;
        if (!y45.e(num, expression2 != null ? (Integer) expression2.b(oj3Var2) : null)) {
            return false;
        }
        DivEdgeInsets divEdgeInsetsT = t();
        if (divEdgeInsetsT != null) {
            zA6 = divEdgeInsetsT.a(divSwitch.t(), oj3Var, oj3Var2);
        } else {
            zA6 = divSwitch.t() == null;
        }
        if (!zA6) {
            return false;
        }
        Expression expressionF = f();
        String str = expressionF != null ? (String) expressionF.b(oj3Var) : null;
        Expression expressionF2 = divSwitch.f();
        if (!y45.e(str, expressionF2 != null ? (String) expressionF2.b(oj3Var2) : null)) {
            return false;
        }
        Expression expressionE = e();
        Long l2 = expressionE != null ? (Long) expressionE.b(oj3Var) : null;
        Expression expressionE2 = divSwitch.e();
        if (!y45.e(l2, expressionE2 != null ? (Long) expressionE2.b(oj3Var2) : null)) {
            return false;
        }
        List listU = u();
        if (listU != null) {
            List listU2 = divSwitch.u();
            if (listU2 == null) {
                return false;
            }
            if (listU.size() == listU2.size()) {
                Iterator it6 = listU.iterator();
                int i11 = 0;
                while (true) {
                    if (it6.hasNext()) {
                        Object next6 = it6.next();
                        int i12 = i11 + 1;
                        if (i11 < 0) {
                            y71.u();
                        }
                        if (((DivAction) next6).a((DivAction) listU2.get(i11), oj3Var, oj3Var2)) {
                            i11 = i12;
                        }
                    }
                }
            }
        } else {
            z6 = divSwitch.u() == null;
        }
        if (!z6) {
            return false;
        }
        List listH = h();
        if (listH != null) {
            List listH2 = divSwitch.h();
            if (listH2 == null) {
                return false;
            }
            if (listH.size() == listH2.size()) {
                Iterator it7 = listH.iterator();
                int i13 = 0;
                while (true) {
                    if (it7.hasNext()) {
                        Object next7 = it7.next();
                        int i14 = i13 + 1;
                        if (i13 < 0) {
                            y71.u();
                        }
                        if (((DivTooltip) next7).a((DivTooltip) listH2.get(i13), oj3Var, oj3Var2)) {
                            i13 = i14;
                        }
                    }
                }
            }
        } else {
            z7 = divSwitch.h() == null;
        }
        if (!z7) {
            return false;
        }
        DivTransform divTransformM = m();
        if (divTransformM != null) {
            zA7 = divTransformM.a(divSwitch.m(), oj3Var, oj3Var2);
        } else {
            zA7 = divSwitch.m() == null;
        }
        if (!zA7) {
            return false;
        }
        DivChangeTransition divChangeTransitionJ = j();
        if (divChangeTransitionJ != null) {
            zA8 = divChangeTransitionJ.a(divSwitch.j(), oj3Var, oj3Var2);
        } else {
            zA8 = divSwitch.j() == null;
        }
        if (!zA8) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionZ = z();
        if (divAppearanceTransitionZ != null) {
            zA9 = divAppearanceTransitionZ.a(divSwitch.z(), oj3Var, oj3Var2);
        } else {
            zA9 = divSwitch.z() == null;
        }
        if (!zA9) {
            return false;
        }
        DivAppearanceTransition divAppearanceTransitionI = i();
        if (divAppearanceTransitionI != null) {
            zA10 = divAppearanceTransitionI.a(divSwitch.i(), oj3Var, oj3Var2);
        } else {
            zA10 = divSwitch.i() == null;
        }
        if (!zA10) {
            return false;
        }
        List listN = n();
        if (listN != null) {
            List listN2 = divSwitch.n();
            if (listN2 == null) {
                return false;
            }
            if (listN.size() == listN2.size()) {
                Iterator it8 = listN.iterator();
                int i15 = 0;
                while (true) {
                    if (it8.hasNext()) {
                        Object next8 = it8.next();
                        int i16 = i15 + 1;
                        if (i15 < 0) {
                            y71.u();
                        }
                        if (((DivTransitionTrigger) next8) == ((DivTransitionTrigger) listN2.get(i15))) {
                            i15 = i16;
                        }
                    }
                }
            }
        } else {
            z8 = divSwitch.n() == null;
        }
        if (!z8) {
            return false;
        }
        List listW = w();
        if (listW != null) {
            List listW2 = divSwitch.w();
            if (listW2 == null) {
                return false;
            }
            if (listW.size() == listW2.size()) {
                Iterator it9 = listW.iterator();
                int i17 = 0;
                while (true) {
                    if (it9.hasNext()) {
                        Object next9 = it9.next();
                        int i18 = i17 + 1;
                        if (i17 < 0) {
                            y71.u();
                        }
                        if (((DivTrigger) next9).a((DivTrigger) listW2.get(i17), oj3Var, oj3Var2)) {
                            i17 = i18;
                        }
                    }
                }
            }
        } else {
            z9 = divSwitch.w() == null;
        }
        if (!z9) {
            return false;
        }
        List listC = c();
        if (listC != null) {
            List listC2 = divSwitch.c();
            if (listC2 == null) {
                return false;
            }
            if (listC.size() == listC2.size()) {
                Iterator it10 = listC.iterator();
                int i19 = 0;
                while (true) {
                    if (it10.hasNext()) {
                        Object next10 = it10.next();
                        int i20 = i19 + 1;
                        if (i19 < 0) {
                            y71.u();
                        }
                        if (((DivVariable) next10).a((DivVariable) listC2.get(i19), oj3Var, oj3Var2)) {
                            i19 = i20;
                        }
                    }
                }
            }
        } else {
            z10 = divSwitch.c() == null;
        }
        if (!z10 || getVisibility().b(oj3Var) != divSwitch.getVisibility().b(oj3Var2)) {
            return false;
        }
        DivVisibilityAction divVisibilityActionX = x();
        if (divVisibilityActionX != null) {
            zG = divVisibilityActionX.g(divSwitch.x(), oj3Var, oj3Var2);
        } else {
            zG = divSwitch.x() == null;
        }
        if (!zG) {
            return false;
        }
        List listA3 = a();
        if (listA3 != null) {
            List listA4 = divSwitch.a();
            if (listA4 == null) {
                return false;
            }
            if (listA3.size() == listA4.size()) {
                Iterator it11 = listA3.iterator();
                int i21 = 0;
                while (true) {
                    if (it11.hasNext()) {
                        Object next11 = it11.next();
                        int i22 = i21 + 1;
                        if (i21 < 0) {
                            y71.u();
                        }
                        if (((DivVisibilityAction) next11).g((DivVisibilityAction) listA4.get(i21), oj3Var, oj3Var2)) {
                            i21 = i22;
                        }
                    }
                }
            }
        } else {
            z11 = divSwitch.a() == null;
        }
        return z11 && getWidth().a(divSwitch.getWidth(), oj3Var, oj3Var2);
    }

    @Override
    public List a() {
        return this.H;
    }

    @Override
    public Expression b() {
        return this.h;
    }

    @Override
    public List c() {
        return this.E;
    }

    @Override
    public DivEdgeInsets d() {
        return this.r;
    }

    @Override
    public Expression e() {
        return this.v;
    }

    @Override
    public Expression f() {
        return this.u;
    }

    @Override
    public Expression g() {
        return this.b;
    }

    @Override
    public List getBackground() {
        return this.f;
    }

    @Override
    public List getExtensions() {
        return this.j;
    }

    @Override
    public DivSize getHeight() {
        return this.m;
    }

    @Override
    public String getId() {
        return this.n;
    }

    @Override
    public Expression getVisibility() {
        return this.F;
    }

    @Override
    public DivSize getWidth() {
        return this.I;
    }

    @Override
    public List h() {
        return this.x;
    }

    @Override
    public int hash() {
        int iHash;
        int iHash2;
        int iHash3;
        int iHash4;
        int iHash5;
        int iHash6;
        int iHash7;
        int iHash8;
        int iHash9;
        Integer num = this.J;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivSwitch.class).hashCode();
        DivAccessibility divAccessibilityR = r();
        int iHash10 = 0;
        int iHash11 = iHashCode + (divAccessibilityR != null ? divAccessibilityR.hash() : 0);
        Expression expressionG = g();
        int iHashCode2 = iHash11 + (expressionG != null ? expressionG.hashCode() : 0);
        Expression expressionO = o();
        int iHashCode3 = iHashCode2 + (expressionO != null ? expressionO.hashCode() : 0) + p().hashCode();
        List listA = A();
        if (listA != null) {
            Iterator it = listA.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAnimator) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode3 + iHash;
        List background = getBackground();
        if (background != null) {
            Iterator it2 = background.iterator();
            iHash2 = 0;
            while (it2.hasNext()) {
                iHash2 += ((DivBackground) it2.next()).hash();
            }
        } else {
            iHash2 = 0;
        }
        int i2 = i + iHash2;
        DivBorder divBorderB = B();
        int iHash12 = i2 + (divBorderB != null ? divBorderB.hash() : 0);
        Expression expressionB = b();
        int iHashCode4 = iHash12 + (expressionB != null ? expressionB.hashCode() : 0);
        List listK = k();
        if (listK != null) {
            Iterator it3 = listK.iterator();
            iHash3 = 0;
            while (it3.hasNext()) {
                iHash3 += ((DivDisappearAction) it3.next()).hash();
            }
        } else {
            iHash3 = 0;
        }
        int i3 = iHashCode4 + iHash3;
        List extensions = getExtensions();
        if (extensions != null) {
            Iterator it4 = extensions.iterator();
            iHash4 = 0;
            while (it4.hasNext()) {
                iHash4 += ((DivExtension) it4.next()).hash();
            }
        } else {
            iHash4 = 0;
        }
        int i4 = i3 + iHash4;
        DivFocus divFocusQ = q();
        int iHash13 = i4 + (divFocusQ != null ? divFocusQ.hash() : 0);
        List listY = y();
        if (listY != null) {
            Iterator it5 = listY.iterator();
            iHash5 = 0;
            while (it5.hasNext()) {
                iHash5 += ((DivFunction) it5.next()).hash();
            }
        } else {
            iHash5 = 0;
        }
        int iHash14 = iHash13 + iHash5 + getHeight().hash();
        String id = getId();
        int iHashCode5 = iHash14 + (id != null ? id.hashCode() : 0) + this.o.hashCode() + this.p.hashCode();
        DivLayoutProvider divLayoutProviderV = v();
        int iHash15 = iHashCode5 + (divLayoutProviderV != null ? divLayoutProviderV.hash() : 0);
        DivEdgeInsets divEdgeInsetsD = d();
        int iHash16 = iHash15 + (divEdgeInsetsD != null ? divEdgeInsetsD.hash() : 0);
        Expression expression = this.s;
        int iHashCode6 = iHash16 + (expression != null ? expression.hashCode() : 0);
        DivEdgeInsets divEdgeInsetsT = t();
        int iHash17 = iHashCode6 + (divEdgeInsetsT != null ? divEdgeInsetsT.hash() : 0);
        Expression expressionF = f();
        int iHashCode7 = iHash17 + (expressionF != null ? expressionF.hashCode() : 0);
        Expression expressionE = e();
        int iHashCode8 = iHashCode7 + (expressionE != null ? expressionE.hashCode() : 0);
        List listU = u();
        if (listU != null) {
            Iterator it6 = listU.iterator();
            iHash6 = 0;
            while (it6.hasNext()) {
                iHash6 += ((DivAction) it6.next()).hash();
            }
        } else {
            iHash6 = 0;
        }
        int i5 = iHashCode8 + iHash6;
        List listH = h();
        if (listH != null) {
            Iterator it7 = listH.iterator();
            iHash7 = 0;
            while (it7.hasNext()) {
                iHash7 += ((DivTooltip) it7.next()).hash();
            }
        } else {
            iHash7 = 0;
        }
        int i6 = i5 + iHash7;
        DivTransform divTransformM = m();
        int iHash18 = i6 + (divTransformM != null ? divTransformM.hash() : 0);
        DivChangeTransition divChangeTransitionJ = j();
        int iHash19 = iHash18 + (divChangeTransitionJ != null ? divChangeTransitionJ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionZ = z();
        int iHash20 = iHash19 + (divAppearanceTransitionZ != null ? divAppearanceTransitionZ.hash() : 0);
        DivAppearanceTransition divAppearanceTransitionI = i();
        int iHash21 = iHash20 + (divAppearanceTransitionI != null ? divAppearanceTransitionI.hash() : 0);
        List listN = n();
        int iHashCode9 = iHash21 + (listN != null ? listN.hashCode() : 0);
        List listW = w();
        if (listW != null) {
            Iterator it8 = listW.iterator();
            iHash8 = 0;
            while (it8.hasNext()) {
                iHash8 += ((DivTrigger) it8.next()).hash();
            }
        } else {
            iHash8 = 0;
        }
        int i7 = iHashCode9 + iHash8;
        List listC = c();
        if (listC != null) {
            Iterator it9 = listC.iterator();
            iHash9 = 0;
            while (it9.hasNext()) {
                iHash9 += ((DivVariable) it9.next()).hash();
            }
        } else {
            iHash9 = 0;
        }
        int iHashCode10 = i7 + iHash9 + getVisibility().hashCode();
        DivVisibilityAction divVisibilityActionX = x();
        int iHash22 = iHashCode10 + (divVisibilityActionX != null ? divVisibilityActionX.hash() : 0);
        List listA2 = a();
        if (listA2 != null) {
            Iterator it10 = listA2.iterator();
            while (it10.hasNext()) {
                iHash10 += ((DivVisibilityAction) it10.next()).hash();
            }
        }
        int iHash23 = iHash22 + iHash10 + getWidth().hash();
        this.J = Integer.valueOf(iHash23);
        return iHash23;
    }

    @Override
    public DivAppearanceTransition i() {
        return this.B;
    }

    @Override
    public DivChangeTransition j() {
        return this.z;
    }

    @Override
    public List k() {
        return this.i;
    }

    @Override
    public DivTransform m() {
        return this.y;
    }

    @Override
    public List n() {
        return this.C;
    }

    @Override
    public Expression o() {
        return this.c;
    }

    @Override
    public Expression p() {
        return this.d;
    }

    @Override
    public DivFocus q() {
        return this.k;
    }

    @Override
    public DivAccessibility r() {
        return this.a;
    }

    @Override
    public JSONObject s() {
        return ((DivSwitchJsonParser.b) ml0.a().I7().getValue()).b(ml0.b(), this);
    }

    @Override
    public DivEdgeInsets t() {
        return this.t;
    }

    @Override
    public List u() {
        return this.w;
    }

    @Override
    public DivLayoutProvider v() {
        return this.q;
    }

    @Override
    public List w() {
        return this.D;
    }

    @Override
    public DivVisibilityAction x() {
        return this.G;
    }

    @Override
    public List y() {
        return this.l;
    }

    @Override
    public DivAppearanceTransition z() {
        return this.A;
    }
}
