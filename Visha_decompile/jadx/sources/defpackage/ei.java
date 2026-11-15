package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class ei extends di {
    public static String c(Object[] objArr) {
        if (objArr == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder((wn8.g(objArr.length, 429496729) * 5) + 2);
        d(objArr, sb, new ArrayList());
        return sb.toString();
    }

    public static final void d(Object[] objArr, StringBuilder sb, List list) {
        if (list.contains(objArr)) {
            sb.append("[...]");
            return;
        }
        list.add(objArr);
        sb.append('[');
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                sb.append(", ");
            }
            Object obj = objArr[i];
            if (obj == null) {
                sb.append("null");
            } else if (obj instanceof Object[]) {
                d((Object[]) obj, sb, list);
                zfb zfbVar = zfb.a;
            } else if (obj instanceof byte[]) {
                String string = Arrays.toString((byte[]) obj);
                y45.i(string, "toString(...)");
                sb.append(string);
            } else if (obj instanceof short[]) {
                String string2 = Arrays.toString((short[]) obj);
                y45.i(string2, "toString(...)");
                sb.append(string2);
            } else if (obj instanceof int[]) {
                String string3 = Arrays.toString((int[]) obj);
                y45.i(string3, "toString(...)");
                sb.append(string3);
            } else if (obj instanceof long[]) {
                String string4 = Arrays.toString((long[]) obj);
                y45.i(string4, "toString(...)");
                sb.append(string4);
            } else if (obj instanceof float[]) {
                String string5 = Arrays.toString((float[]) obj);
                y45.i(string5, "toString(...)");
                sb.append(string5);
            } else if (obj instanceof double[]) {
                String string6 = Arrays.toString((double[]) obj);
                y45.i(string6, "toString(...)");
                sb.append(string6);
            } else if (obj instanceof char[]) {
                String string7 = Arrays.toString((char[]) obj);
                y45.i(string7, "toString(...)");
                sb.append(string7);
            } else if (obj instanceof boolean[]) {
                String string8 = Arrays.toString((boolean[]) obj);
                y45.i(string8, "toString(...)");
                sb.append(string8);
            } else if (obj instanceof aeb) {
                sb.append(rdb.a(((aeb) obj).w()));
            } else if (obj instanceof cfb) {
                sb.append(rdb.c(((cfb) obj).w()));
            } else if (obj instanceof leb) {
                sb.append(rdb.b(((leb) obj).w()));
            } else if (obj instanceof reb) {
                sb.append(rdb.d(((reb) obj).w()));
            } else {
                sb.append(obj.toString());
            }
        }
        sb.append(']');
        list.remove(y71.m(list));
    }
}
