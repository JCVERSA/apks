package defpackage;

import android.util.DisplayMetrics;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.Div;
import com.yandex.div2.DivAnimationDirection;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivBorder;
import com.yandex.div2.DivCornersRadius;
import com.yandex.div2.DivImage;
import com.yandex.div2.DivState;
import com.yandex.div2.DivVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public abstract class eu2 {

    public class a {
        public static final int[] a;
        public static final int[] b;

        static {
            int[] iArr = new int[DivAnimationInterpolator.values().length];
            try {
                iArr[DivAnimationInterpolator.LINEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivAnimationInterpolator.EASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivAnimationInterpolator.EASE_IN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivAnimationInterpolator.EASE_OUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivAnimationInterpolator.EASE_IN_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DivAnimationInterpolator.SPRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
            int[] iArr2 = new int[DivAnimationDirection.values().length];
            try {
                iArr2[DivAnimationDirection.REVERSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[DivAnimationDirection.ALTERNATE_REVERSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[DivAnimationDirection.ALTERNATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            b = iArr2;
        }
    }

    public static final Interpolator a(DivAnimationInterpolator divAnimationInterpolator, boolean z) {
        y45.j(divAnimationInterpolator, "<this>");
        return z ? av8.a(d(divAnimationInterpolator)) : d(divAnimationInterpolator);
    }

    public static final boolean b(Div div, Div div2, oj3 oj3Var) {
        y45.j(div, "<this>");
        y45.j(div2, "other");
        y45.j(oj3Var, "resolver");
        if (!y45.e(g(div), g(div2))) {
            return false;
        }
        og2 og2VarB = div.b();
        og2 og2VarB2 = div2.b();
        if ((og2VarB instanceof DivImage) && (og2VarB2 instanceof DivImage)) {
            return y45.e(((DivImage) og2VarB).B.b(oj3Var), ((DivImage) og2VarB2).B.b(oj3Var));
        }
        return og2VarB.getBackground() == og2VarB2.getBackground();
    }

    public static final boolean c(Div div, oj3 oj3Var) {
        y45.j(div, "<this>");
        y45.j(oj3Var, "resolver");
        og2 og2VarB = div.b();
        if (og2VarB.z() != null || og2VarB.j() != null || og2VarB.i() != null) {
            return true;
        }
        if (div instanceof Div.b) {
            List<zl2> listC = bh2.c(((Div.b) div).c(), oj3Var);
            if (!(listC instanceof Collection) || !listC.isEmpty()) {
                for (zl2 zl2Var : listC) {
                    if (c(zl2Var.c(), zl2Var.d())) {
                        return true;
                    }
                }
            }
        } else if (div instanceof Div.f) {
            List listN = bh2.n(((Div.f) div).c());
            if (!(listN instanceof Collection) || !listN.isEmpty()) {
                Iterator it = listN.iterator();
                while (it.hasNext()) {
                    if (c((Div) it.next(), oj3Var)) {
                        return true;
                    }
                }
            }
        } else if (!(div instanceof Div.q) && !(div instanceof Div.g) && !(div instanceof Div.e) && !(div instanceof Div.l) && !(div instanceof Div.h) && !(div instanceof Div.n) && !(div instanceof Div.d) && !(div instanceof Div.j) && !(div instanceof Div.p) && !(div instanceof Div.c) && !(div instanceof Div.k) && !(div instanceof Div.m) && !(div instanceof Div.r) && !(div instanceof Div.i) && !(div instanceof Div.o)) {
            throw new NoWhenBranchMatchedException();
        }
        return false;
    }

    public static final Interpolator d(DivAnimationInterpolator divAnimationInterpolator) {
        y45.j(divAnimationInterpolator, "<this>");
        switch (a.a[divAnimationInterpolator.ordinal()]) {
            case 1:
                return new LinearInterpolator();
            case 2:
                return new w53();
            case 3:
                return new u53();
            case 4:
                return new x53();
            case 5:
                return new v53();
            case 6:
                return new lv9();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final float[] e(DivBorder divBorder, float f, float f2, DisplayMetrics displayMetrics, oj3 oj3Var) {
        Expression expression;
        Expression expression2;
        Expression expression3;
        Expression expression4;
        y45.j(divBorder, "<this>");
        y45.j(displayMetrics, "metrics");
        y45.j(oj3Var, "resolver");
        DivCornersRadius divCornersRadius = divBorder.b;
        if (divCornersRadius == null || (expression = divCornersRadius.c) == null) {
            expression = divBorder.a;
        }
        float fK = BaseDivViewExtensionsKt.K(expression != null ? (Long) expression.b(oj3Var) : null, displayMetrics);
        DivCornersRadius divCornersRadius2 = divBorder.b;
        if (divCornersRadius2 == null || (expression2 = divCornersRadius2.d) == null) {
            expression2 = divBorder.a;
        }
        float fK2 = BaseDivViewExtensionsKt.K(expression2 != null ? (Long) expression2.b(oj3Var) : null, displayMetrics);
        DivCornersRadius divCornersRadius3 = divBorder.b;
        if (divCornersRadius3 == null || (expression3 = divCornersRadius3.a) == null) {
            expression3 = divBorder.a;
        }
        float fK3 = BaseDivViewExtensionsKt.K(expression3 != null ? (Long) expression3.b(oj3Var) : null, displayMetrics);
        DivCornersRadius divCornersRadius4 = divBorder.b;
        if (divCornersRadius4 == null || (expression4 = divCornersRadius4.b) == null) {
            expression4 = divBorder.a;
        }
        float fK4 = BaseDivViewExtensionsKt.K(expression4 != null ? (Long) expression4.b(oj3Var) : null, displayMetrics);
        Float f3 = (Float) Collections.min(y71.n(Float.valueOf(f / (fK + fK2)), Float.valueOf(f / (fK3 + fK4)), Float.valueOf(f2 / (fK + fK3)), Float.valueOf(f2 / (fK2 + fK4))));
        y45.i(f3, "f");
        if (f3.floatValue() > 0.0f && f3.floatValue() < 1.0f) {
            fK *= f3.floatValue();
            fK2 *= f3.floatValue();
            fK3 *= f3.floatValue();
            fK4 *= f3.floatValue();
        }
        return new float[]{fK, fK, fK2, fK2, fK4, fK4, fK3, fK3};
    }

    public static final DivState.State f(DivState divState, oj3 oj3Var) {
        Object next;
        y45.j(divState, "<this>");
        y45.j(oj3Var, "resolver");
        Expression expression = divState.j;
        if (expression != null) {
            Iterator it = divState.y.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((DivState.State) next).d, expression.b(oj3Var)));
            DivState.State state = (DivState.State) next;
            if (state != null) {
                return state;
            }
        }
        return (DivState.State) i81.q0(divState.y);
    }

    public static final String g(Div div) {
        y45.j(div, "<this>");
        if (div instanceof Div.q) {
            return "text";
        }
        if (div instanceof Div.g) {
            return "image";
        }
        if (div instanceof Div.e) {
            return "gif";
        }
        if (div instanceof Div.l) {
            return "separator";
        }
        if (div instanceof Div.h) {
            return "indicator";
        }
        if (div instanceof Div.m) {
            return "slider";
        }
        if (div instanceof Div.i) {
            return "input";
        }
        if (div instanceof Div.r) {
            return "video";
        }
        if (div instanceof Div.b) {
            return TtmlNode.RUBY_CONTAINER;
        }
        if (div instanceof Div.f) {
            return "grid";
        }
        if (div instanceof Div.n) {
            return ICode.CALL.CALL_KEY_STATE;
        }
        if (div instanceof Div.d) {
            return "gallery";
        }
        if (div instanceof Div.j) {
            return "pager";
        }
        if (div instanceof Div.p) {
            return "tabs";
        }
        if (div instanceof Div.c) {
            return "custom";
        }
        if (div instanceof Div.k) {
            return "select";
        }
        if (div instanceof Div.o) {
            return ClientABTestDTOKt.SWITCH;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final boolean h(DivAnimationDirection divAnimationDirection) {
        y45.j(divAnimationDirection, "<this>");
        int i = a.b[divAnimationDirection.ordinal()];
        return i == 2 || i == 3;
    }

    public static final boolean i(Div div) {
        y45.j(div, "<this>");
        boolean z = false;
        if (!(div instanceof Div.q) && !(div instanceof Div.g) && !(div instanceof Div.e) && !(div instanceof Div.l) && !(div instanceof Div.h) && !(div instanceof Div.m) && !(div instanceof Div.i) && !(div instanceof Div.c) && !(div instanceof Div.k) && !(div instanceof Div.r) && !(div instanceof Div.o)) {
            z = true;
            if (!(div instanceof Div.b) && !(div instanceof Div.f) && !(div instanceof Div.d) && !(div instanceof Div.j) && !(div instanceof Div.p) && !(div instanceof Div.n)) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return z;
    }

    public static final boolean j(Div div) {
        y45.j(div, "<this>");
        return !i(div);
    }

    public static final boolean k(DivAnimationDirection divAnimationDirection) {
        y45.j(divAnimationDirection, "<this>");
        int i = a.b[divAnimationDirection.ordinal()];
        return i == 1 || i == 2;
    }

    public static final List l(List list) {
        y45.j(list, "<this>");
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(hu2.a((DivVariable) it.next()));
        }
        return arrayList;
    }
}
