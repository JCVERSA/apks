package com.yandex.div.core.util;

import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAbsoluteEdgeInsets;
import com.yandex.div2.DivBackground;
import com.yandex.div2.DivBorder;
import com.yandex.div2.DivCornersRadius;
import com.yandex.div2.DivDimension;
import com.yandex.div2.DivDrawable;
import com.yandex.div2.DivEdgeInsets;
import com.yandex.div2.DivFilter;
import com.yandex.div2.DivFixedSize;
import com.yandex.div2.DivInput;
import com.yandex.div2.DivLinearGradient;
import com.yandex.div2.DivPivot;
import com.yandex.div2.DivPoint;
import com.yandex.div2.DivRadialGradientCenter;
import com.yandex.div2.DivRadialGradientRadius;
import com.yandex.div2.DivShadow;
import com.yandex.div2.DivShape;
import com.yandex.div2.DivSize;
import com.yandex.div2.DivStroke;
import com.yandex.div2.DivTransform;
import com.yandex.div2.DivWrapContentSize;
import defpackage.i81;
import defpackage.nj3;
import defpackage.oj3;
import defpackage.uj3;
import defpackage.y45;
import defpackage.y71;
import defpackage.y91;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.comparisons.a;

public abstract class DivDataExtensionsKt {
    public static final boolean A(DivEdgeInsets divEdgeInsets) {
        if (divEdgeInsets == null) {
            return true;
        }
        return uj3.d(divEdgeInsets.c) && uj3.d(divEdgeInsets.f) && uj3.d(divEdgeInsets.d) && uj3.d(divEdgeInsets.a) && uj3.f(divEdgeInsets.e) && uj3.f(divEdgeInsets.b);
    }

    public static final boolean B(DivFilter divFilter) {
        if (divFilter == null || (divFilter instanceof DivFilter.c)) {
            return true;
        }
        if (divFilter instanceof DivFilter.a) {
            return uj3.d(((DivFilter.a) divFilter).c().a);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final boolean C(DivFixedSize divFixedSize) {
        if (divFixedSize == null) {
            return true;
        }
        return uj3.d(divFixedSize.b) && uj3.d(divFixedSize.a);
    }

    public static final boolean D(DivInput.NativeInterface nativeInterface) {
        if (nativeInterface == null) {
            return true;
        }
        return uj3.d(nativeInterface.a);
    }

    public static final boolean E(DivLinearGradient.ColorPoint colorPoint) {
        if (colorPoint == null) {
            return true;
        }
        return uj3.d(colorPoint.a) && uj3.d(colorPoint.b);
    }

    public static final boolean F(DivPivot divPivot) {
        if (divPivot == null) {
            return true;
        }
        if (divPivot instanceof DivPivot.b) {
            DivPivot.b bVar = (DivPivot.b) divPivot;
            return uj3.f(bVar.c().b) && uj3.f(bVar.c().b);
        }
        if (divPivot instanceof DivPivot.c) {
            return uj3.d(((DivPivot.c) divPivot).c().a);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final boolean G(DivPoint divPoint) {
        if (divPoint == null) {
            return true;
        }
        return y(divPoint.a) && y(divPoint.b);
    }

    public static final boolean H(DivRadialGradientCenter divRadialGradientCenter) {
        if (divRadialGradientCenter == null) {
            return true;
        }
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.b) {
            DivRadialGradientCenter.b bVar = (DivRadialGradientCenter.b) divRadialGradientCenter;
            return uj3.d(bVar.c().a) && uj3.d(bVar.c().b);
        }
        if (divRadialGradientCenter instanceof DivRadialGradientCenter.c) {
            return uj3.d(((DivRadialGradientCenter.c) divRadialGradientCenter).c().a);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final boolean I(DivRadialGradientRadius divRadialGradientRadius) {
        if (divRadialGradientRadius == null) {
            return true;
        }
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.b) {
            DivRadialGradientRadius.b bVar = (DivRadialGradientRadius.b) divRadialGradientRadius;
            return uj3.d(bVar.c().a) && uj3.d(bVar.c().b);
        }
        if (divRadialGradientRadius instanceof DivRadialGradientRadius.c) {
            return uj3.d(((DivRadialGradientRadius.c) divRadialGradientRadius).c().a);
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final boolean J(DivShadow divShadow) {
        if (divShadow == null) {
            return true;
        }
        return uj3.d(divShadow.a) && uj3.d(divShadow.b) && uj3.d(divShadow.c) && G(divShadow.d);
    }

    public static final boolean K(DivShape divShape) {
        DivStroke divStroke;
        if (divShape == null) {
            return true;
        }
        if (divShape instanceof DivShape.c) {
            DivShape.c cVar = (DivShape.c) divShape;
            if (uj3.f(cVar.c().a) && M(cVar.c().e) && C(cVar.c().d) && C(cVar.c().c) && C(cVar.c().b)) {
                return true;
            }
        } else {
            if (!(divShape instanceof DivShape.a)) {
                throw new NoWhenBranchMatchedException();
            }
            DivShape.a aVar = (DivShape.a) divShape;
            if (uj3.f(aVar.c().a) && (((divStroke = aVar.c().c) == null || M(divStroke)) && C(aVar.c().b))) {
                return true;
            }
        }
        return false;
    }

    public static final boolean L(DivSize divSize) {
        if (divSize == null) {
            return true;
        }
        if (divSize instanceof DivSize.b) {
            DivSize.b bVar = (DivSize.b) divSize;
            if (uj3.d(bVar.c().b) && uj3.d(bVar.c().a)) {
                return true;
            }
        } else {
            if (divSize instanceof DivSize.c) {
                return uj3.f(((DivSize.c) divSize).c().a);
            }
            if (!(divSize instanceof DivSize.d)) {
                throw new NoWhenBranchMatchedException();
            }
            DivSize.d dVar = (DivSize.d) divSize;
            if (uj3.f(dVar.c().a)) {
                DivWrapContentSize.ConstraintSize constraintSize = dVar.c().c;
                if (uj3.f(constraintSize != null ? constraintSize.b : null)) {
                    DivWrapContentSize.ConstraintSize constraintSize2 = dVar.c().c;
                    if (uj3.f(constraintSize2 != null ? constraintSize2.a : null)) {
                        DivWrapContentSize.ConstraintSize constraintSize3 = dVar.c().b;
                        if (uj3.f(constraintSize3 != null ? constraintSize3.b : null)) {
                            DivWrapContentSize.ConstraintSize constraintSize4 = dVar.c().b;
                            if (uj3.f(constraintSize4 != null ? constraintSize4.a : null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean M(DivStroke divStroke) {
        if (divStroke == null) {
            return true;
        }
        return uj3.d(divStroke.a) && uj3.d(divStroke.d) && uj3.d(divStroke.c);
    }

    public static final boolean N(DivTransform divTransform) {
        if (divTransform == null) {
            return true;
        }
        return uj3.f(divTransform.c) && F(divTransform.a) && F(divTransform.b);
    }

    public static final y91 O(DivLinearGradient divLinearGradient, final oj3 oj3Var) {
        y45.j(divLinearGradient, "<this>");
        y45.j(oj3Var, "resolver");
        List list = divLinearGradient.b;
        List listT0 = list != null ? i81.T0(list, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t, T t2) {
                return a.d((Double) ((DivLinearGradient.ColorPoint) t).b.b(oj3Var), (Double) ((DivLinearGradient.ColorPoint) t2).b.b(oj3Var));
            }
        }) : null;
        nj3 nj3Var = divLinearGradient.c;
        if (listT0 == null) {
            return nj3Var != null ? new y91(i81.a1(nj3Var.a(oj3Var)), null, 2, null) : y91.d;
        }
        int[] iArr = new int[listT0.size()];
        float[] fArr = new float[listT0.size()];
        int size = listT0.size();
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Number) ((DivLinearGradient.ColorPoint) listT0.get(i)).a.b(oj3Var)).intValue();
            fArr[i] = (float) ((Number) ((DivLinearGradient.ColorPoint) listT0.get(i)).b.b(oj3Var)).doubleValue();
        }
        return new y91(iArr, fArr);
    }

    public static final boolean a(DivAbsoluteEdgeInsets divAbsoluteEdgeInsets, DivAbsoluteEdgeInsets divAbsoluteEdgeInsets2) {
        if (divAbsoluteEdgeInsets == null && divAbsoluteEdgeInsets2 == null) {
            return true;
        }
        if (uj3.b(divAbsoluteEdgeInsets != null ? divAbsoluteEdgeInsets.b : null, divAbsoluteEdgeInsets2 != null ? divAbsoluteEdgeInsets2.b : null)) {
            if (uj3.b(divAbsoluteEdgeInsets != null ? divAbsoluteEdgeInsets.d : null, divAbsoluteEdgeInsets2 != null ? divAbsoluteEdgeInsets2.d : null)) {
                if (uj3.b(divAbsoluteEdgeInsets != null ? divAbsoluteEdgeInsets.c : null, divAbsoluteEdgeInsets2 != null ? divAbsoluteEdgeInsets2.c : null)) {
                    if (uj3.b(divAbsoluteEdgeInsets != null ? divAbsoluteEdgeInsets.a : null, divAbsoluteEdgeInsets2 != null ? divAbsoluteEdgeInsets2.a : null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean b(DivBackground divBackground, DivBackground divBackground2) {
        if (divBackground == null) {
            if (divBackground2 != null) {
                return false;
            }
        } else if (divBackground instanceof DivBackground.f) {
            if (!(divBackground2 instanceof DivBackground.f) || !uj3.b(((DivBackground.f) divBackground).c().a, ((DivBackground.f) divBackground2).c().a)) {
                return false;
            }
        } else if (divBackground instanceof DivBackground.b) {
            DivBackground.b bVar = (DivBackground.b) divBackground;
            List listK = bVar.c().d;
            if (listK == null) {
                listK = y71.k();
            }
            if (!(divBackground2 instanceof DivBackground.b)) {
                return false;
            }
            DivBackground.b bVar2 = (DivBackground.b) divBackground2;
            if (!uj3.b(bVar.c().a, bVar2.c().a) || !uj3.b(bVar.c().b, bVar2.c().b) || !uj3.b(bVar.c().c, bVar2.c().c)) {
                return false;
            }
            List listK2 = bVar2.c().d;
            if (listK2 == null) {
                listK2 = y71.k();
            }
            if (listK.size() != listK2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : listK) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!h((DivFilter) obj, (DivFilter) listK2.get(i))) {
                    return false;
                }
                i = i2;
            }
            if (!uj3.b(bVar.c().e, bVar2.c().e) || !uj3.b(bVar.c().f, bVar2.c().f) || !uj3.b(bVar.c().g, bVar2.c().g)) {
                return false;
            }
        } else if (divBackground instanceof DivBackground.c) {
            DivBackground.c cVar = (DivBackground.c) divBackground;
            List listK3 = cVar.c().b;
            if (listK3 == null) {
                listK3 = y71.k();
            }
            if (!(divBackground2 instanceof DivBackground.c)) {
                return false;
            }
            DivBackground.c cVar2 = (DivBackground.c) divBackground2;
            if (!uj3.b(cVar.c().a, cVar2.c().a) || !uj3.a(cVar.c().c, cVar2.c().c)) {
                return false;
            }
            List listK4 = cVar2.c().b;
            if (listK4 == null) {
                listK4 = y71.k();
            }
            if (listK3.size() != listK4.size()) {
                return false;
            }
            int i3 = 0;
            for (Object obj2 : listK3) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    y71.u();
                }
                if (!k((DivLinearGradient.ColorPoint) obj2, (DivLinearGradient.ColorPoint) listK4.get(i3))) {
                    return false;
                }
                i3 = i4;
            }
        } else if (divBackground instanceof DivBackground.e) {
            if (!(divBackground2 instanceof DivBackground.e)) {
                return false;
            }
            DivBackground.e eVar = (DivBackground.e) divBackground;
            DivBackground.e eVar2 = (DivBackground.e) divBackground2;
            if (!n(eVar.c().a, eVar2.c().a) || !n(eVar.c().b, eVar2.c().b) || !uj3.a(eVar.c().d, eVar2.c().d) || !o(eVar.c().e, eVar2.c().e)) {
                return false;
            }
        } else {
            if (!(divBackground instanceof DivBackground.d)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divBackground2 instanceof DivBackground.d)) {
                return false;
            }
            DivBackground.d dVar = (DivBackground.d) divBackground;
            DivBackground.d dVar2 = (DivBackground.d) divBackground2;
            if (!uj3.b(dVar.c().a, dVar2.c().a) || !a(dVar.c().b, dVar2.c().b)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean c(DivBorder divBorder, DivBorder divBorder2) {
        if (divBorder == null && divBorder2 == null) {
            return true;
        }
        if (uj3.b(divBorder != null ? divBorder.a : null, divBorder2 != null ? divBorder2.a : null)) {
            if (d(divBorder != null ? divBorder.b : null, divBorder2 != null ? divBorder2.b : null)) {
                if (uj3.b(divBorder != null ? divBorder.c : null, divBorder2 != null ? divBorder2.c : null)) {
                    if (p(divBorder != null ? divBorder.d : null, divBorder2 != null ? divBorder2.d : null)) {
                        if (s(divBorder != null ? divBorder.e : null, divBorder2 != null ? divBorder2.e : null)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean d(DivCornersRadius divCornersRadius, DivCornersRadius divCornersRadius2) {
        if (divCornersRadius == null && divCornersRadius2 == null) {
            return true;
        }
        if (uj3.b(divCornersRadius != null ? divCornersRadius.c : null, divCornersRadius2 != null ? divCornersRadius2.c : null)) {
            if (uj3.b(divCornersRadius != null ? divCornersRadius.d : null, divCornersRadius2 != null ? divCornersRadius2.d : null)) {
                if (uj3.b(divCornersRadius != null ? divCornersRadius.b : null, divCornersRadius2 != null ? divCornersRadius2.b : null)) {
                    if (uj3.b(divCornersRadius != null ? divCornersRadius.a : null, divCornersRadius2 != null ? divCornersRadius2.a : null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean e(DivDimension divDimension, DivDimension divDimension2) {
        if (divDimension == null && divDimension2 == null) {
            return true;
        }
        if (uj3.b(divDimension != null ? divDimension.a : null, divDimension2 != null ? divDimension2.a : null)) {
            if (uj3.b(divDimension != null ? divDimension.b : null, divDimension2 != null ? divDimension2.b : null)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean f(DivDrawable divDrawable, DivDrawable divDrawable2) {
        if (divDrawable == null) {
            if (divDrawable2 != null) {
                return false;
            }
        } else {
            if (!(divDrawable instanceof DivDrawable.b)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divDrawable2 instanceof DivDrawable.b)) {
                return false;
            }
            DivDrawable.b bVar = (DivDrawable.b) divDrawable;
            DivDrawable.b bVar2 = (DivDrawable.b) divDrawable2;
            if (!uj3.b(bVar.c().a, bVar2.c().a) || !q(bVar.c().b, bVar2.c().b) || !s(bVar.c().c, bVar2.c().c)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean g(DivEdgeInsets divEdgeInsets, DivEdgeInsets divEdgeInsets2) {
        if (divEdgeInsets == null && divEdgeInsets2 == null) {
            return true;
        }
        if (uj3.b(divEdgeInsets != null ? divEdgeInsets.c : null, divEdgeInsets2 != null ? divEdgeInsets2.c : null)) {
            if (uj3.b(divEdgeInsets != null ? divEdgeInsets.f : null, divEdgeInsets2 != null ? divEdgeInsets2.f : null)) {
                if (uj3.b(divEdgeInsets != null ? divEdgeInsets.d : null, divEdgeInsets2 != null ? divEdgeInsets2.d : null)) {
                    if (uj3.b(divEdgeInsets != null ? divEdgeInsets.a : null, divEdgeInsets2 != null ? divEdgeInsets2.a : null)) {
                        if (uj3.b(divEdgeInsets != null ? divEdgeInsets.e : null, divEdgeInsets2 != null ? divEdgeInsets2.e : null)) {
                            if (uj3.b(divEdgeInsets != null ? divEdgeInsets.b : null, divEdgeInsets2 != null ? divEdgeInsets2.b : null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean h(DivFilter divFilter, DivFilter divFilter2) {
        if (divFilter == null) {
            if (divFilter2 != null) {
                return false;
            }
        } else {
            if (divFilter instanceof DivFilter.c) {
                return divFilter2 instanceof DivFilter.c;
            }
            if (!(divFilter instanceof DivFilter.a)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divFilter2 instanceof DivFilter.a) || !uj3.b(((DivFilter.a) divFilter).c().a, ((DivFilter.a) divFilter2).c().a)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean i(DivFixedSize divFixedSize, DivFixedSize divFixedSize2) {
        if (divFixedSize == null && divFixedSize2 == null) {
            return true;
        }
        if (uj3.b(divFixedSize != null ? divFixedSize.b : null, divFixedSize2 != null ? divFixedSize2.b : null)) {
            if (uj3.b(divFixedSize != null ? divFixedSize.a : null, divFixedSize2 != null ? divFixedSize2.a : null)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean j(DivInput.NativeInterface nativeInterface, DivInput.NativeInterface nativeInterface2) {
        if (nativeInterface == null && nativeInterface2 == null) {
            return true;
        }
        return uj3.b(nativeInterface != null ? nativeInterface.a : null, nativeInterface2 != null ? nativeInterface2.a : null);
    }

    public static final boolean k(DivLinearGradient.ColorPoint colorPoint, DivLinearGradient.ColorPoint colorPoint2) {
        if (colorPoint == null && colorPoint2 == null) {
            return true;
        }
        if (uj3.b(colorPoint != null ? colorPoint.a : null, colorPoint2 != null ? colorPoint2.a : null)) {
            if (uj3.b(colorPoint != null ? colorPoint.b : null, colorPoint2 != null ? colorPoint2.b : null)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean l(DivPivot divPivot, DivPivot divPivot2) {
        if (divPivot == null) {
            if (divPivot2 != null) {
                return false;
            }
        } else if (divPivot instanceof DivPivot.b) {
            if (!(divPivot2 instanceof DivPivot.b)) {
                return false;
            }
            DivPivot.b bVar = (DivPivot.b) divPivot;
            DivPivot.b bVar2 = (DivPivot.b) divPivot2;
            if (!uj3.b(bVar.c().b, bVar2.c().b) || !uj3.b(bVar.c().a, bVar2.c().a)) {
                return false;
            }
        } else {
            if (!(divPivot instanceof DivPivot.c)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divPivot2 instanceof DivPivot.c) || !uj3.b(((DivPivot.c) divPivot).c().a, ((DivPivot.c) divPivot2).c().a)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean m(DivPoint divPoint, DivPoint divPoint2) {
        if (divPoint == null && divPoint2 == null) {
            return true;
        }
        if (e(divPoint != null ? divPoint.a : null, divPoint2 != null ? divPoint2.a : null)) {
            if (e(divPoint != null ? divPoint.b : null, divPoint2 != null ? divPoint2.b : null)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean n(DivRadialGradientCenter divRadialGradientCenter, DivRadialGradientCenter divRadialGradientCenter2) {
        if (divRadialGradientCenter == null) {
            if (divRadialGradientCenter2 != null) {
                return false;
            }
        } else if (divRadialGradientCenter instanceof DivRadialGradientCenter.b) {
            if (!(divRadialGradientCenter2 instanceof DivRadialGradientCenter.b)) {
                return false;
            }
            DivRadialGradientCenter.b bVar = (DivRadialGradientCenter.b) divRadialGradientCenter;
            DivRadialGradientCenter.b bVar2 = (DivRadialGradientCenter.b) divRadialGradientCenter2;
            if (!uj3.b(bVar.c().a, bVar2.c().a) || !uj3.b(bVar.c().b, bVar2.c().b)) {
                return false;
            }
        } else {
            if (!(divRadialGradientCenter instanceof DivRadialGradientCenter.c)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divRadialGradientCenter2 instanceof DivRadialGradientCenter.c) || !uj3.b(((DivRadialGradientCenter.c) divRadialGradientCenter).c().a, ((DivRadialGradientCenter.c) divRadialGradientCenter2).c().a)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean o(DivRadialGradientRadius divRadialGradientRadius, DivRadialGradientRadius divRadialGradientRadius2) {
        if (divRadialGradientRadius == null) {
            if (divRadialGradientRadius2 != null) {
                return false;
            }
        } else if (divRadialGradientRadius instanceof DivRadialGradientRadius.b) {
            if (!(divRadialGradientRadius2 instanceof DivRadialGradientRadius.b)) {
                return false;
            }
            DivRadialGradientRadius.b bVar = (DivRadialGradientRadius.b) divRadialGradientRadius;
            DivRadialGradientRadius.b bVar2 = (DivRadialGradientRadius.b) divRadialGradientRadius2;
            if (!uj3.b(bVar.c().a, bVar2.c().a) || !uj3.b(bVar.c().b, bVar2.c().b)) {
                return false;
            }
        } else {
            if (!(divRadialGradientRadius instanceof DivRadialGradientRadius.c)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divRadialGradientRadius2 instanceof DivRadialGradientRadius.c) || !uj3.b(((DivRadialGradientRadius.c) divRadialGradientRadius).c().a, ((DivRadialGradientRadius.c) divRadialGradientRadius2).c().a)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean p(DivShadow divShadow, DivShadow divShadow2) {
        if (divShadow == null && divShadow2 == null) {
            return true;
        }
        if (uj3.b(divShadow != null ? divShadow.a : null, divShadow2 != null ? divShadow2.a : null)) {
            if (uj3.b(divShadow != null ? divShadow.b : null, divShadow2 != null ? divShadow2.b : null)) {
                if (uj3.b(divShadow != null ? divShadow.c : null, divShadow2 != null ? divShadow2.c : null)) {
                    if (m(divShadow != null ? divShadow.d : null, divShadow2 != null ? divShadow2.d : null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final boolean q(DivShape divShape, DivShape divShape2) {
        if (divShape == null) {
            if (divShape2 != null) {
                return false;
            }
        } else if (divShape instanceof DivShape.c) {
            if (!(divShape2 instanceof DivShape.c)) {
                return false;
            }
            DivShape.c cVar = (DivShape.c) divShape;
            DivShape.c cVar2 = (DivShape.c) divShape2;
            if (!uj3.b(cVar.c().a, cVar2.c().a) || !s(cVar.c().e, cVar2.c().e) || !i(cVar.c().d, cVar2.c().d) || !i(cVar.c().c, cVar2.c().c) || !i(cVar.c().b, cVar2.c().b)) {
                return false;
            }
        } else {
            if (!(divShape instanceof DivShape.a)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divShape2 instanceof DivShape.a)) {
                return false;
            }
            DivShape.a aVar = (DivShape.a) divShape;
            DivShape.a aVar2 = (DivShape.a) divShape2;
            if (!uj3.b(aVar.c().a, aVar2.c().a) || !s(aVar.c().c, aVar2.c().c) || !i(aVar.c().b, aVar2.c().b)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean r(DivSize divSize, DivSize divSize2) {
        if (divSize == null) {
            if (divSize2 != null) {
                return false;
            }
        } else if (divSize instanceof DivSize.b) {
            if (!(divSize2 instanceof DivSize.b)) {
                return false;
            }
            DivSize.b bVar = (DivSize.b) divSize;
            DivSize.b bVar2 = (DivSize.b) divSize2;
            if (!uj3.b(bVar.c().b, bVar2.c().b) || !uj3.b(bVar.c().a, bVar2.c().a)) {
                return false;
            }
        } else if (divSize instanceof DivSize.c) {
            if (!(divSize2 instanceof DivSize.c) || !uj3.b(((DivSize.c) divSize).c().a, ((DivSize.c) divSize2).c().a)) {
                return false;
            }
        } else {
            if (!(divSize instanceof DivSize.d)) {
                throw new NoWhenBranchMatchedException();
            }
            if (!(divSize2 instanceof DivSize.d)) {
                return false;
            }
            DivSize.d dVar = (DivSize.d) divSize;
            DivSize.d dVar2 = (DivSize.d) divSize2;
            if (!uj3.b(dVar.c().a, dVar2.c().a)) {
                return false;
            }
            DivWrapContentSize.ConstraintSize constraintSize = dVar.c().c;
            Expression expression = constraintSize != null ? constraintSize.b : null;
            DivWrapContentSize.ConstraintSize constraintSize2 = dVar2.c().c;
            if (!uj3.b(expression, constraintSize2 != null ? constraintSize2.b : null)) {
                return false;
            }
            DivWrapContentSize.ConstraintSize constraintSize3 = dVar.c().c;
            Expression expression2 = constraintSize3 != null ? constraintSize3.a : null;
            DivWrapContentSize.ConstraintSize constraintSize4 = dVar2.c().c;
            if (!uj3.b(expression2, constraintSize4 != null ? constraintSize4.a : null)) {
                return false;
            }
            DivWrapContentSize.ConstraintSize constraintSize5 = dVar.c().b;
            Expression expression3 = constraintSize5 != null ? constraintSize5.b : null;
            DivWrapContentSize.ConstraintSize constraintSize6 = dVar2.c().b;
            if (!uj3.b(expression3, constraintSize6 != null ? constraintSize6.b : null)) {
                return false;
            }
            DivWrapContentSize.ConstraintSize constraintSize7 = dVar.c().b;
            Expression expression4 = constraintSize7 != null ? constraintSize7.a : null;
            DivWrapContentSize.ConstraintSize constraintSize8 = dVar2.c().b;
            if (!uj3.b(expression4, constraintSize8 != null ? constraintSize8.a : null)) {
                return false;
            }
        }
        return true;
    }

    public static final boolean s(DivStroke divStroke, DivStroke divStroke2) {
        if (divStroke == null && divStroke2 == null) {
            return true;
        }
        if (uj3.b(divStroke != null ? divStroke.a : null, divStroke2 != null ? divStroke2.a : null)) {
            if (uj3.b(divStroke != null ? divStroke.d : null, divStroke2 != null ? divStroke2.d : null)) {
                if (uj3.b(divStroke != null ? divStroke.c : null, divStroke2 != null ? divStroke2.c : null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean t(DivTransform divTransform, DivTransform divTransform2) {
        if (divTransform == null && divTransform2 == null) {
            return true;
        }
        if (uj3.b(divTransform != null ? divTransform.c : null, divTransform2 != null ? divTransform2.c : null)) {
            if (l(divTransform != null ? divTransform.a : null, divTransform2 != null ? divTransform2.a : null)) {
                if (l(divTransform != null ? divTransform.b : null, divTransform2 != null ? divTransform2.b : null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean u(DivAbsoluteEdgeInsets divAbsoluteEdgeInsets) {
        if (divAbsoluteEdgeInsets == null) {
            return true;
        }
        return uj3.d(divAbsoluteEdgeInsets.b) && uj3.d(divAbsoluteEdgeInsets.d) && uj3.d(divAbsoluteEdgeInsets.c) && uj3.d(divAbsoluteEdgeInsets.a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0071  */
    /* JADX WARN: Code duplicated, block: B:31:0x007d  */
    public static final boolean v(DivBackground divBackground) {
        if (divBackground == null) {
            return true;
        }
        if (divBackground instanceof DivBackground.f) {
            return uj3.d(((DivBackground.f) divBackground).c().a);
        }
        if (divBackground instanceof DivBackground.b) {
            DivBackground.b bVar = (DivBackground.b) divBackground;
            if (uj3.d(bVar.c().a) && uj3.d(bVar.c().b) && uj3.d(bVar.c().c)) {
                List list = bVar.c().d;
                if (list != null) {
                    List list2 = list;
                    if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                        Iterator it = list2.iterator();
                        while (it.hasNext()) {
                            if (!B((DivFilter) it.next())) {
                            }
                        }
                        if (uj3.d(bVar.c().e) && uj3.d(bVar.c().f) && uj3.d(bVar.c().g)) {
                            return true;
                        }
                    } else if (uj3.d(bVar.c().e)) {
                        return true;
                    }
                } else if (uj3.d(bVar.c().e)) {
                    return true;
                }
            }
        } else if (divBackground instanceof DivBackground.c) {
            DivBackground.c cVar = (DivBackground.c) divBackground;
            if (uj3.d(cVar.c().a) && uj3.e(cVar.c().c)) {
                return true;
            }
        } else if (divBackground instanceof DivBackground.e) {
            DivBackground.e eVar = (DivBackground.e) divBackground;
            if (H(eVar.c().a) && H(eVar.c().b) && uj3.e(eVar.c().d) && I(eVar.c().e)) {
                return true;
            }
        } else {
            if (!(divBackground instanceof DivBackground.d)) {
                throw new NoWhenBranchMatchedException();
            }
            DivBackground.d dVar = (DivBackground.d) divBackground;
            if (uj3.d(dVar.c().a) && u(dVar.c().b)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean w(DivBorder divBorder) {
        if (divBorder == null) {
            return true;
        }
        return uj3.f(divBorder.a) && x(divBorder.b) && uj3.d(divBorder.c) && J(divBorder.d) && M(divBorder.e);
    }

    public static final boolean x(DivCornersRadius divCornersRadius) {
        if (divCornersRadius == null) {
            return true;
        }
        return uj3.f(divCornersRadius.c) && uj3.f(divCornersRadius.d) && uj3.f(divCornersRadius.b) && uj3.f(divCornersRadius.a);
    }

    public static final boolean y(DivDimension divDimension) {
        if (divDimension == null) {
            return true;
        }
        return uj3.d(divDimension.a) && uj3.d(divDimension.b);
    }

    public static final boolean z(DivDrawable divDrawable) {
        if (divDrawable == null) {
            return true;
        }
        if (!(divDrawable instanceof DivDrawable.b)) {
            throw new NoWhenBranchMatchedException();
        }
        DivDrawable.b bVar = (DivDrawable.b) divDrawable;
        return uj3.d(bVar.c().a) && K(bVar.c().b) && M(bVar.c().c);
    }
}
