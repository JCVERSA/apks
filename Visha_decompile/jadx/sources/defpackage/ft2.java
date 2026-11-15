package defpackage;

import android.animation.TimeInterpolator;
import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.widget.PopupWindow;
import com.yandex.div.json.expressions.Expression;
import com.yandex.div2.DivAnimation;
import com.yandex.div2.DivAnimationInterpolator;
import com.yandex.div2.DivTooltip;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public abstract class ft2 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivAnimation.Name.values().length];
            try {
                iArr[DivAnimation.Name.FADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivAnimation.Name.TRANSLATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivAnimation.Name.SCALE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivAnimation.Name.SET.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivAnimation.Name.NATIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DivAnimation.Name.NO_ANIMATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    public static final void a(PopupWindow popupWindow) {
        y45.j(popupWindow, "<this>");
        c(popupWindow);
    }

    public static final TransitionSet b(DivTooltip divTooltip, oj3 oj3Var) {
        return new TransitionSet().addTransition(new Fade()).addTransition(new w7b((DivTooltip.Position) divTooltip.j.b(oj3Var), null, 2, null)).setInterpolator((TimeInterpolator) new lv9());
    }

    public static final void c(PopupWindow popupWindow) {
        popupWindow.setEnterTransition(null);
        popupWindow.setExitTransition(null);
    }

    public static final void d(PopupWindow popupWindow, DivTooltip divTooltip, oj3 oj3Var) {
        y45.j(popupWindow, "<this>");
        y45.j(divTooltip, "divTooltip");
        y45.j(oj3Var, "resolver");
        DivAnimation divAnimation = divTooltip.a;
        popupWindow.setEnterTransition(divAnimation != null ? e(divAnimation, (DivTooltip.Position) divTooltip.j.b(oj3Var), true, oj3Var) : b(divTooltip, oj3Var));
        DivAnimation divAnimation2 = divTooltip.b;
        popupWindow.setExitTransition(divAnimation2 != null ? e(divAnimation2, (DivTooltip.Position) divTooltip.j.b(oj3Var), false, oj3Var) : b(divTooltip, oj3Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.transition.Fade] */
    /* JADX WARN: Type inference failed for: r0v6, types: [w7b] */
    /* JADX WARN: Type inference failed for: r0v7, types: [o19] */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.transition.TransitionSet] */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.transition.Transition] */
    public static final Transition e(DivAnimation divAnimation, DivTooltip.Position position, boolean z, oj3 oj3Var) {
        ?? fade;
        Transition duration;
        switch (a.a[((DivAnimation.Name) divAnimation.e.b(oj3Var)).ordinal()]) {
            case 1:
                fade = new Fade();
                break;
            case 2:
                Expression expression = z ? divAnimation.h : divAnimation.b;
                fade = new w7b(position, expression != null ? Float.valueOf((float) ((Number) expression.b(oj3Var)).doubleValue()) : null);
                break;
            case 3:
                Expression expression2 = z ? divAnimation.h : divAnimation.b;
                fade = new o19(expression2 != null ? (float) ((Number) expression2.b(oj3Var)).doubleValue() : 1.0f);
                break;
            case 4:
                fade = new TransitionSet();
                List list = divAnimation.d;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        fade.addTransition(e((DivAnimation) it.next(), position, z, oj3Var));
                    }
                }
                break;
            case 5:
            case 6:
                fade = 0;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        if (fade == 0 || (duration = fade.setDuration(((Number) divAnimation.a.b(oj3Var)).longValue())) == null) {
            return null;
        }
        return duration.setInterpolator(eu2.d((DivAnimationInterpolator) divAnimation.c.b(oj3Var)));
    }
}
