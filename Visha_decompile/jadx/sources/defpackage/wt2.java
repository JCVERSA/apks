package defpackage;

import com.yandex.div2.DivData;
import com.yandex.div2.DivState;
import com.yandex.div2.DivTransitionSelector;
import com.yandex.div2.DivTransitionTrigger;
import java.util.List;

public abstract class wt2 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivTransitionSelector.values().length];
            try {
                iArr[DivTransitionSelector.DATA_CHANGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivTransitionSelector.ANY_CHANGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivTransitionSelector.STATE_CHANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final boolean a(DivData divData, oj3 oj3Var) {
        y45.j(divData, "<this>");
        y45.j(oj3Var, "resolver");
        return b((DivTransitionSelector) divData.e.b(oj3Var));
    }

    public static final boolean b(DivTransitionSelector divTransitionSelector) {
        y45.j(divTransitionSelector, "<this>");
        int i = a.a[divTransitionSelector.ordinal()];
        return i == 1 || i == 2;
    }

    public static final boolean c(List list) {
        y45.j(list, "<this>");
        return list.contains(DivTransitionTrigger.DATA_CHANGE);
    }

    public static final boolean d(DivState divState, oj3 oj3Var) {
        y45.j(divState, "<this>");
        y45.j(oj3Var, "resolver");
        return e((DivTransitionSelector) divState.B.b(oj3Var));
    }

    public static final boolean e(DivTransitionSelector divTransitionSelector) {
        y45.j(divTransitionSelector, "<this>");
        int i = a.a[divTransitionSelector.ordinal()];
        return i == 2 || i == 3;
    }

    public static final boolean f(List list) {
        y45.j(list, "<this>");
        return list.contains(DivTransitionTrigger.STATE_CHANGE);
    }

    public static final boolean g(List list) {
        y45.j(list, "<this>");
        return list.contains(DivTransitionTrigger.VISIBILITY_CHANGE);
    }
}
