package kotlin.reflect.jvm.internal.impl.name;

import defpackage.g1a;
import defpackage.o54;
import defpackage.y45;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public abstract class a {

    public class C0399a {
        public static final int[] a;

        static {
            int[] iArr = new int[State.values().length];
            try {
                iArr[State.BEGINNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[State.AFTER_DOT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[State.MIDDLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public static final Object a(o54 o54Var, Map map) {
        Object next;
        y45.j(o54Var, "<this>");
        y45.j(map, "values");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            o54 o54Var2 = (o54) entry.getKey();
            if (y45.e(o54Var, o54Var2) || b(o54Var, o54Var2)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        if (linkedHashMap.isEmpty()) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            return null;
        }
        Iterator it = linkedHashMap.entrySet().iterator();
        if (it.hasNext()) {
            next = it.next();
            if (it.hasNext()) {
                int length = g((o54) ((Map.Entry) next).getKey(), o54Var).b().length();
                do {
                    Object next2 = it.next();
                    int length2 = g((o54) ((Map.Entry) next2).getKey(), o54Var).b().length();
                    if (length > length2) {
                        next = next2;
                        length = length2;
                    }
                } while (it.hasNext());
            }
        } else {
            next = null;
        }
        Map.Entry entry2 = (Map.Entry) next;
        if (entry2 != null) {
            return entry2.getValue();
        }
        return null;
    }

    public static final boolean b(o54 o54Var, o54 o54Var2) {
        y45.j(o54Var, "<this>");
        y45.j(o54Var2, "packageName");
        return y45.e(f(o54Var), o54Var2);
    }

    public static final boolean c(o54 o54Var, o54 o54Var2) {
        y45.j(o54Var, "<this>");
        y45.j(o54Var2, "packageName");
        if (y45.e(o54Var, o54Var2) || o54Var2.d()) {
            return true;
        }
        String strB = o54Var.b();
        y45.i(strB, "this.asString()");
        String strB2 = o54Var2.b();
        y45.i(strB2, "packageName.asString()");
        return d(strB, strB2);
    }

    public static final boolean d(String str, String str2) {
        return g1a.R(str, str2, false, 2, null) && str.charAt(str2.length()) == '.';
    }

    public static final boolean e(String str) {
        if (str == null) {
            return false;
        }
        State state = State.BEGINNING;
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            int i2 = C0399a.a[state.ordinal()];
            if (i2 == 1 || i2 == 2) {
                if (!Character.isJavaIdentifierStart(cCharAt)) {
                    return false;
                }
                state = State.MIDDLE;
            } else if (i2 != 3) {
                continue;
            } else if (cCharAt == '.') {
                state = State.AFTER_DOT;
            } else if (!Character.isJavaIdentifierPart(cCharAt)) {
                return false;
            }
        }
        return state != State.AFTER_DOT;
    }

    public static final o54 f(o54 o54Var) {
        y45.j(o54Var, "<this>");
        if (o54Var.d()) {
            return null;
        }
        return o54Var.e();
    }

    public static final o54 g(o54 o54Var, o54 o54Var2) {
        y45.j(o54Var, "<this>");
        y45.j(o54Var2, "prefix");
        if (!c(o54Var, o54Var2) || o54Var2.d()) {
            return o54Var;
        }
        if (y45.e(o54Var, o54Var2)) {
            o54 o54Var3 = o54.c;
            y45.i(o54Var3, "ROOT");
            return o54Var3;
        }
        String strB = o54Var.b();
        y45.i(strB, "asString()");
        String strSubstring = strB.substring(o54Var2.b().length() + 1);
        y45.i(strSubstring, "this as java.lang.String).substring(startIndex)");
        return new o54(strSubstring);
    }
}
