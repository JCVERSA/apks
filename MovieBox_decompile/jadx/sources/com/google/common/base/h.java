package com.google.common.base;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;

public abstract class h {

    public static final class b {

        private final String f29411a;

        private final C0378b f29412b;

        private C0378b f29413c;

        private boolean f29414d;

        private boolean f29415e;

        private static final class a extends C0378b {
            private a() {
            }
        }

        static class C0378b {

            String f29416a;

            Object f29417b;

            C0378b f29418c;

            C0378b() {
            }
        }

        private C0378b e() {
            C0378b c0378b = new C0378b();
            this.f29413c.f29418c = c0378b;
            this.f29413c = c0378b;
            return c0378b;
        }

        private b f(Object obj) {
            e().f29417b = obj;
            return this;
        }

        private b g(String str, Object obj) {
            C0378b c0378bE = e();
            c0378bE.f29417b = obj;
            c0378bE.f29416a = (String) m.o(str);
            return this;
        }

        private a h() {
            a aVar = new a();
            this.f29413c.f29418c = aVar;
            this.f29413c = aVar;
            return aVar;
        }

        private b i(String str, Object obj) {
            a aVarH = h();
            aVarH.f29417b = obj;
            aVarH.f29416a = (String) m.o(str);
            return this;
        }

        private static boolean k(Object obj) {
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

        public b a(String str, double d10) {
            return i(str, String.valueOf(d10));
        }

        public b b(String str, int i10) {
            return i(str, String.valueOf(i10));
        }

        public b c(String str, long j10) {
            return i(str, String.valueOf(j10));
        }

        public b d(String str, Object obj) {
            return g(str, obj);
        }

        public b j(Object obj) {
            return f(obj);
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0031  */
        /* JADX WARN: Code duplicated, block: B:14:0x0038  */
        /* JADX WARN: Code duplicated, block: B:16:0x0042  */
        /* JADX WARN: Code duplicated, block: B:19:0x005e  */
        public String toString() {
            String str;
            boolean z10 = this.f29414d;
            boolean z11 = this.f29415e;
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append(this.f29411a);
            sb2.append('{');
            String str2 = "";
            for (C0378b c0378b = this.f29412b.f29418c; c0378b != null; c0378b = c0378b.f29418c) {
                Object obj = c0378b.f29417b;
                if (c0378b instanceof a) {
                    sb2.append(str2);
                    str = c0378b.f29416a;
                    if (str != null) {
                        sb2.append(str);
                        sb2.append('=');
                    }
                    if (obj == null && obj.getClass().isArray()) {
                        String strDeepToString = Arrays.deepToString(new Object[]{obj});
                        sb2.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                    } else {
                        sb2.append(obj);
                    }
                    str2 = ", ";
                } else if (obj == null) {
                    if (!z10) {
                        sb2.append(str2);
                        str = c0378b.f29416a;
                        if (str != null) {
                            sb2.append(str);
                            sb2.append('=');
                        }
                        if (obj == null) {
                            sb2.append(obj);
                        } else {
                            sb2.append(obj);
                        }
                        str2 = ", ";
                    }
                } else if (!z11 || !k(obj)) {
                    sb2.append(str2);
                    str = c0378b.f29416a;
                    if (str != null) {
                        sb2.append(str);
                        sb2.append('=');
                    }
                    if (obj == null) {
                        sb2.append(obj);
                    } else {
                        sb2.append(obj);
                    }
                    str2 = ", ";
                }
            }
            sb2.append('}');
            return sb2.toString();
        }

        private b(String str) {
            C0378b c0378b = new C0378b();
            this.f29412b = c0378b;
            this.f29413c = c0378b;
            this.f29414d = false;
            this.f29415e = false;
            this.f29411a = (String) m.o(str);
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
