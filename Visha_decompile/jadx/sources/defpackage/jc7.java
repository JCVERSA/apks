package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public abstract class jc7 {

    public static final class a {
        public final List a;
        public final Object b;

        public a(Object obj, byte[] bArr) {
            wd8.l(obj);
            this.b = obj;
            this.a = new ArrayList();
        }

        public a a(String str, Object obj) {
            wd8.l(str);
            int length = str.length();
            String strValueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(length + 1 + strValueOf.length());
            sb.append(str);
            sb.append("=");
            sb.append(strValueOf);
            this.a.add(sb.toString());
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.b.getClass().getSimpleName());
            sb.append('{');
            List list = this.a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append((String) list.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a c(Object obj) {
        return new a(obj, null);
    }
}
