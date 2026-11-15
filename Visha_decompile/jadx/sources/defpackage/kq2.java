package defpackage;

import androidx.transition.Transition;
import com.yandex.div.core.view2.animations.Fade;
import com.yandex.div.core.view2.animations.Scale;
import com.yandex.div.core.view2.animations.VerticalTranslation;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAnimation;

public abstract class kq2 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivAnimation.Name.values().length];
            try {
                iArr[DivAnimation.Name.TRANSLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivAnimation.Name.SCALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivAnimation.Name.NO_ANIMATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final Float b(Double d) {
        if (d != null) {
            return Float.valueOf(wn8.j((float) d.doubleValue(), 0.0f, 1.0f));
        }
        return null;
    }

    public static final Float c(Double d) {
        if (d != null) {
            return Float.valueOf(wn8.c((float) d.doubleValue(), 0.0f));
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    public static final Transition d(DivAnimation divAnimation, boolean z, oj3 oj3Var) {
        Float fE;
        Float fE2;
        Float fC;
        Float fB;
        int i = a.a[((DivAnimation.Name) divAnimation.e.b(oj3Var)).ordinal()];
        Transition verticalTranslation = null;
        if (i != 1) {
            if (i == 2) {
                if (z) {
                    Expression expression = divAnimation.h;
                    fC = c(expression != null ? (Double) expression.b(oj3Var) : null);
                } else {
                    Expression expression2 = divAnimation.b;
                    fC = c(expression2 != null ? (Double) expression2.b(oj3Var) : null);
                }
                verticalTranslation = new Scale(fC != null ? fC.floatValue() : 1.0f, 0.0f, 0.0f, 6, null);
            } else if (i != 3) {
                if (z) {
                    Expression expression3 = divAnimation.h;
                    fB = b(expression3 != null ? (Double) expression3.b(oj3Var) : null);
                } else {
                    Expression expression4 = divAnimation.b;
                    fB = b(expression4 != null ? (Double) expression4.b(oj3Var) : null);
                }
                Fade fade = new Fade(fB != null ? fB.floatValue() : 1.0f);
                fade.setMode(z ? 1 : 2);
                verticalTranslation = fade;
            }
        } else {
            if (z) {
                Expression expression5 = divAnimation.h;
                if (expression5 != null) {
                    fE = e(Double.valueOf(((Number) expression5.b(oj3Var)).doubleValue()));
                } else {
                    fE = null;
                }
            } else {
                Expression expression6 = divAnimation.b;
                if (expression6 != null) {
                    fE = e(Double.valueOf(((Number) expression6.b(oj3Var)).doubleValue()));
                } else {
                    fE = null;
                }
            }
            if (z) {
                Expression expression7 = divAnimation.b;
                fE2 = e(expression7 != null ? (Double) expression7.b(oj3Var) : null);
            } else {
                Expression expression8 = divAnimation.h;
                fE2 = e(expression8 != null ? (Double) expression8.b(oj3Var) : null);
            }
            verticalTranslation = new VerticalTranslation(fE != null ? fE.floatValue() : -1.0f, fE2 != null ? fE2.floatValue() : 0.0f);
        }
        return verticalTranslation;
    }

    public static final Float e(Double d) {
        if (d != null) {
            return Float.valueOf(wn8.j((float) d.doubleValue(), -1.0f, 1.0f));
        }
        return null;
    }
}
