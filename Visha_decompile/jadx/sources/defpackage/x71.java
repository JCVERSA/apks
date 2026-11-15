package defpackage;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.collections.builders.ListBuilder;

public abstract class x71 {
    public static List a(List list) {
        y45.j(list, "builder");
        return ((ListBuilder) list).build();
    }

    public static final Object[] b(Object[] objArr, boolean z) {
        y45.j(objArr, "<this>");
        if (z && y45.e(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        y45.i(objArrCopyOf, "copyOf(...)");
        return objArrCopyOf;
    }

    public static List c() {
        return new ListBuilder(0, 1, null);
    }

    public static List d(int i) {
        return new ListBuilder(i);
    }

    public static List e(Object obj) {
        List listSingletonList = Collections.singletonList(obj);
        y45.i(listSingletonList, "singletonList(...)");
        return listSingletonList;
    }

    public static Object[] f(int i, Object[] objArr) {
        y45.j(objArr, "array");
        if (i < objArr.length) {
            objArr[i] = null;
        }
        return objArr;
    }
}
