package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import org.mozilla.javascript.ES6Iterator;
import org.slf4j.Marker;

public interface gpa {

    public static final class a implements gpa {
        public final String a;

        public static final class C0349a implements gpa {
            public static final C0349a a = new C0349a();

            public String toString() {
                return StringUtils.COMMA;
            }
        }

        public a(String str) {
            y45.j(str, "name");
            this.a = str;
        }

        public final String a() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof a) && y45.e(this.a, ((a) obj).a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return "Function(name=" + this.a + ')';
        }
    }

    public interface b extends gpa {

        public interface a extends b {

            public static final class C0350a implements a {
                public final boolean a;

                public C0350a(boolean z) {
                    this.a = z;
                }

                public static final C0350a a(boolean z) {
                    return new C0350a(z);
                }

                public static boolean b(boolean z) {
                    return z;
                }

                public static boolean c(boolean z, Object obj) {
                    return (obj instanceof C0350a) && z == ((C0350a) obj).f();
                }

                public static int d(boolean z) {
                    if (z) {
                        return 1;
                    }
                    return z ? 1 : 0;
                }

                public static String e(boolean z) {
                    return "Bool(value=" + z + ')';
                }

                public boolean equals(Object obj) {
                    return c(this.a, obj);
                }

                public final boolean f() {
                    return this.a;
                }

                public int hashCode() {
                    return d(this.a);
                }

                public String toString() {
                    return e(this.a);
                }
            }

            public static final class C0351b implements a {
                public final Number a;

                public C0351b(Number number) {
                    this.a = number;
                }

                public static final C0351b a(Number number) {
                    return new C0351b(number);
                }

                public static Number b(Number number) {
                    y45.j(number, ES6Iterator.VALUE_PROPERTY);
                    return number;
                }

                public static boolean c(Number number, Object obj) {
                    return (obj instanceof C0351b) && y45.e(number, ((C0351b) obj).f());
                }

                public static int d(Number number) {
                    return number.hashCode();
                }

                public static String e(Number number) {
                    return "Num(value=" + number + ')';
                }

                public boolean equals(Object obj) {
                    return c(this.a, obj);
                }

                public final Number f() {
                    return this.a;
                }

                public int hashCode() {
                    return d(this.a);
                }

                public String toString() {
                    return e(this.a);
                }
            }

            public static final class c implements a {
                public final String a;

                public c(String str) {
                    this.a = str;
                }

                public static final c a(String str) {
                    return new c(str);
                }

                public static String b(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    return str;
                }

                public static boolean c(String str, Object obj) {
                    return (obj instanceof c) && y45.e(str, ((c) obj).f());
                }

                public static int d(String str) {
                    return str.hashCode();
                }

                public static String e(String str) {
                    return "Str(value=" + str + ')';
                }

                public boolean equals(Object obj) {
                    return c(this.a, obj);
                }

                public final String f() {
                    return this.a;
                }

                public int hashCode() {
                    return d(this.a);
                }

                public String toString() {
                    return e(this.a);
                }
            }
        }

        public static final class C0352b implements b {
            public final String a;

            public C0352b(String str) {
                this.a = str;
            }

            public static final C0352b a(String str) {
                return new C0352b(str);
            }

            public static String b(String str) {
                y45.j(str, "name");
                return str;
            }

            public static boolean c(String str, Object obj) {
                return (obj instanceof C0352b) && y45.e(str, ((C0352b) obj).g());
            }

            public static final boolean d(String str, String str2) {
                return y45.e(str, str2);
            }

            public static int e(String str) {
                return str.hashCode();
            }

            public static String f(String str) {
                return "Variable(name=" + str + ')';
            }

            public boolean equals(Object obj) {
                return c(this.a, obj);
            }

            public final String g() {
                return this.a;
            }

            public int hashCode() {
                return e(this.a);
            }

            public String toString() {
                return f(this.a);
            }
        }
    }

    public interface c extends gpa {

        public interface a extends c {

            public interface InterfaceC0353a extends a {

                public static final class C0354a implements InterfaceC0353a {
                    public static final C0354a a = new C0354a();

                    public String toString() {
                        return ">";
                    }
                }

                public static final class b implements InterfaceC0353a {
                    public static final b a = new b();

                    public String toString() {
                        return ">=";
                    }
                }

                public static final class C0355c implements InterfaceC0353a {
                    public static final C0355c a = new C0355c();

                    public String toString() {
                        return "<";
                    }
                }

                public static final class d implements InterfaceC0353a {
                    public static final d a = new d();

                    public String toString() {
                        return "<=";
                    }
                }
            }

            public interface b extends a {

                public static final class C0356a implements b {
                    public static final C0356a a = new C0356a();

                    public String toString() {
                        return "==";
                    }
                }

                public static final class C0357b implements b {
                    public static final C0357b a = new C0357b();

                    public String toString() {
                        return "!=";
                    }
                }
            }

            public interface InterfaceC0358c extends a {

                public static final class C0359a implements InterfaceC0358c {
                    public static final C0359a a = new C0359a();

                    public String toString() {
                        return "/";
                    }
                }

                public static final class b implements InterfaceC0358c {
                    public static final b a = new b();

                    public String toString() {
                        return "%";
                    }
                }

                public static final class C0360c implements InterfaceC0358c {
                    public static final C0360c a = new C0360c();

                    public String toString() {
                        return "*";
                    }
                }
            }

            public interface d extends a {

                public static final class C0361a implements d {
                    public static final C0361a a = new C0361a();

                    public String toString() {
                        return "&&";
                    }
                }

                public static final class b implements d {
                    public static final b a = new b();

                    public String toString() {
                        return "||";
                    }
                }
            }

            public static final class e implements a {
                public static final e a = new e();

                public String toString() {
                    return "^";
                }
            }

            public interface f extends a {

                public static final class C0362a implements f {
                    public static final C0362a a = new C0362a();

                    public String toString() {
                        return "-";
                    }
                }

                public static final class b implements f {
                    public static final b a = new b();

                    public String toString() {
                        return Marker.ANY_NON_NULL_MARKER;
                    }
                }
            }
        }

        public static final class b implements c {
            public static final b a = new b();

            public String toString() {
                return Consts.DOT;
            }
        }

        public static final class C0363c implements c {
            public static final C0363c a = new C0363c();

            public String toString() {
                return StringUtils.PROCESS_POSTFIX_DELIMITER;
            }
        }

        public static final class d implements c {
            public static final d a = new d();

            public String toString() {
                return "?";
            }
        }

        public static final class e implements c {
            public static final e a = new e();
        }

        public static final class f implements c {
            public static final f a = new f();

            public String toString() {
                return "!:";
            }
        }

        public interface g extends c {

            public static final class a implements g {
                public static final a a = new a();

                public String toString() {
                    return "-";
                }
            }

            public static final class b implements g {
                public static final b a = new b();

                public String toString() {
                    return "!";
                }
            }

            public static final class C0364c implements g {
                public static final C0364c a = new C0364c();

                public String toString() {
                    return Marker.ANY_NON_NULL_MARKER;
                }
            }
        }
    }
}
