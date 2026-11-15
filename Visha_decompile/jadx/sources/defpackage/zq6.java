package defpackage;

import com.google.common.base.Optional;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

public abstract class zq6 {

    public static final class b {
        public final String a;
        public final C0465b b;
        public C0465b c;
        public boolean d;
        public boolean e;

        public static final class a extends C0465b {
            public a() {
            }
        }

        public static class C0465b {
            public String a;
            public Object b;
            public C0465b c;
        }

        public static boolean k(Object obj) {
            if (obj instanceof CharSequence) {
                return ((CharSequence) obj).length() == 0;
            }
            if (obj instanceof Collection) {
                return ((Collection) obj).isEmpty();
            }
            if (obj instanceof Map) {
                return ((Map) obj).isEmpty();
            }
            if (obj instanceof Optional) {
                return !((Optional) obj).isPresent();
            }
            return obj.getClass().isArray() && Array.getLength(obj) == 0;
        }

        public b a(String str, double d) {
            return i(str, String.valueOf(d));
        }

        public b b(String str, int i) {
            return i(str, String.valueOf(i));
        }

        public b c(String str, long j) {
            return i(str, String.valueOf(j));
        }

        public b d(String str, Object obj) {
            return g(str, obj);
        }

        public final C0465b e() {
            C0465b c0465b = new C0465b();
            this.c.c = c0465b;
            this.c = c0465b;
            return c0465b;
        }

        public final b f(Object obj) {
            e().b = obj;
            return this;
        }

        public final b g(String str, Object obj) {
            C0465b c0465bE = e();
            c0465bE.b = obj;
            c0465bE.a = (String) xd8.o(str);
            return this;
        }

        public final a h() {
            a aVar = new a();
            this.c.c = aVar;
            this.c = aVar;
            return aVar;
        }

        public final b i(String str, Object obj) {
            a aVarH = h();
            aVarH.b = obj;
            aVarH.a = (String) xd8.o(str);
            return this;
        }

        public b j(Object obj) {
            return f(obj);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0030  */
        /* JADX WARN: Code duplicated, block: B:14:0x0037  */
        /* JADX WARN: Code duplicated, block: B:16:0x0041  */
        /* JADX WARN: Code duplicated, block: B:19:0x005d  */
        public String toString() {
            String str;
            boolean z = this.d;
            boolean z2 = this.e;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.a);
            sb.append('{');
            String str2 = "";
            for (C0465b c0465b = this.b.c; c0465b != null; c0465b = c0465b.c) {
                Object obj = c0465b.b;
                if (c0465b instanceof a) {
                    sb.append(str2);
                    str = c0465b.a;
                    if (str != null) {
                        sb.append(str);
                        sb.append('=');
                    }
                    if (obj == null && obj.getClass().isArray()) {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    } else {
                        sb.append(obj);
                    }
                    str2 = ", ";
                } else if (obj == null) {
                    if (!z) {
                        sb.append(str2);
                        str = c0465b.a;
                        if (str != null) {
                            sb.append(str);
                            sb.append('=');
                        }
                        if (obj == null) {
                            sb.append(obj);
                        } else {
                            sb.append(obj);
                        }
                        str2 = ", ";
                    }
                } else if (!z2 || !k(obj)) {
                    sb.append(str2);
                    str = c0465b.a;
                    if (str != null) {
                        sb.append(str);
                        sb.append('=');
                    }
                    if (obj == null) {
                        sb.append(obj);
                    } else {
                        sb.append(obj);
                    }
                    str2 = ", ";
                }
            }
            sb.append('}');
            return sb.toString();
        }

        public b(String str) {
            C0465b c0465b = new C0465b();
            this.b = c0465b;
            this.c = c0465b;
            this.d = false;
            this.e = false;
            this.a = (String) xd8.o(str);
        }
    }

    public static Object a(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        if (obj2 != null) {
            return obj2;
        }
        throw new NullPointerException("Both parameters are null");
    }

    public static b b(Object obj) {
        return new b(obj.getClass().getSimpleName());
    }
}
