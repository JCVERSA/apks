package defpackage;

import com.yandex.div.evaluable.EvaluableType;
import com.yandex.div2.DivEvaluableType;
import com.yandex.div2.DivFunction;
import com.yandex.div2.DivFunctionArgument;
import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

public abstract class k84 {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[DivEvaluableType.values().length];
            try {
                iArr[DivEvaluableType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DivEvaluableType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DivEvaluableType.NUMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[DivEvaluableType.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[DivEvaluableType.DATETIME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[DivEvaluableType.COLOR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[DivEvaluableType.URL.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[DivEvaluableType.DICT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[DivEvaluableType.ARRAY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            a = iArr;
        }
    }

    public static final EvaluableType a(DivEvaluableType divEvaluableType) {
        switch (a.a[divEvaluableType.ordinal()]) {
            case 1:
                return EvaluableType.STRING;
            case 2:
                return EvaluableType.INTEGER;
            case 3:
                return EvaluableType.NUMBER;
            case 4:
                return EvaluableType.BOOLEAN;
            case 5:
                return EvaluableType.DATETIME;
            case 6:
                return EvaluableType.COLOR;
            case 7:
                return EvaluableType.URL;
            case 8:
                return EvaluableType.DICT;
            case 9:
                return EvaluableType.ARRAY;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final List b(List list) {
        y45.j(list, "<this>");
        List<DivFunction> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (DivFunction divFunction : list2) {
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (DivFunctionArgument divFunctionArgument : divFunction.a) {
                arrayList2.add(divFunctionArgument.a);
                arrayList3.add(new f84(a(divFunctionArgument.b), false, 2, null));
            }
            arrayList.add(new rn5(divFunction.c, arrayList3, a(divFunction.d), arrayList2, divFunction.b));
        }
        return arrayList;
    }
}
