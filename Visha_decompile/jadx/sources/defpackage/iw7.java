package defpackage;

import com.lzy.okgo.model.HttpHeaders;
import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

public abstract class iw7 {

    public class a extends iw7 {
        public a() {
        }

        @Override
        public void a(at8 at8Var, Iterable iterable) {
            if (iterable == null) {
                return;
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                iw7.this.a(at8Var, it.next());
            }
        }
    }

    public class b extends iw7 {
        public b() {
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i = 0; i < length; i++) {
                iw7.this.a(at8Var, Array.get(obj, i));
            }
        }
    }

    public static final class c extends iw7 {
        public final Method a;
        public final int b;
        public final si1 c;

        public c(Method method, int i, si1 si1Var) {
            this.a = method;
            this.b = i;
            this.c = si1Var;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            if (obj == null) {
                throw ulb.p(this.a, this.b, "Body parameter value must not be null.", new Object[0]);
            }
            try {
                at8Var.l((RequestBody) this.c.convert(obj));
            } catch (IOException e) {
                throw ulb.q(this.a, e, this.b, "Unable to convert " + obj + " to RequestBody", new Object[0]);
            }
        }
    }

    public static final class d extends iw7 {
        public final String a;
        public final si1 b;
        public final boolean c;

        public d(String str, si1 si1Var, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.a = str;
            this.b = si1Var;
            this.c = z;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.b.convert(obj)) == null) {
                return;
            }
            at8Var.a(this.a, str, this.c);
        }
    }

    public static final class e extends iw7 {
        public final Method a;
        public final int b;
        public final si1 c;
        public final boolean d;

        public e(Method method, int i, si1 si1Var, boolean z) {
            this.a = method;
            this.b = i;
            this.c = si1Var;
            this.d = z;
        }

        @Override
        public void a(at8 at8Var, Map map) {
            if (map == null) {
                throw ulb.p(this.a, this.b, "Field map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw ulb.p(this.a, this.b, "Field map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw ulb.p(this.a, this.b, "Field map contained null value for key '" + str + "'.", new Object[0]);
                }
                String str2 = (String) this.c.convert(value);
                if (str2 == null) {
                    throw ulb.p(this.a, this.b, "Field map value '" + value + "' converted to null by " + this.c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                at8Var.a(str, str2, this.d);
            }
        }
    }

    public static final class f extends iw7 {
        public final String a;
        public final si1 b;
        public final boolean c;

        public f(String str, si1 si1Var, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.a = str;
            this.b = si1Var;
            this.c = z;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.b.convert(obj)) == null) {
                return;
            }
            at8Var.b(this.a, str, this.c);
        }
    }

    public static final class g extends iw7 {
        public final Method a;
        public final int b;
        public final si1 c;
        public final boolean d;

        public g(Method method, int i, si1 si1Var, boolean z) {
            this.a = method;
            this.b = i;
            this.c = si1Var;
            this.d = z;
        }

        @Override
        public void a(at8 at8Var, Map map) {
            if (map == null) {
                throw ulb.p(this.a, this.b, "Header map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw ulb.p(this.a, this.b, "Header map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw ulb.p(this.a, this.b, "Header map contained null value for key '" + str + "'.", new Object[0]);
                }
                at8Var.b(str, (String) this.c.convert(value), this.d);
            }
        }
    }

    public static final class h extends iw7 {
        public final Method a;
        public final int b;

        public h(Method method, int i) {
            this.a = method;
            this.b = i;
        }

        @Override
        public void a(at8 at8Var, Headers headers) {
            if (headers == null) {
                throw ulb.p(this.a, this.b, "Headers parameter must not be null.", new Object[0]);
            }
            at8Var.c(headers);
        }
    }

    public static final class i extends iw7 {
        public final Method a;
        public final int b;
        public final Headers c;
        public final si1 d;

        public i(Method method, int i, Headers headers, si1 si1Var) {
            this.a = method;
            this.b = i;
            this.c = headers;
            this.d = si1Var;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            if (obj == null) {
                return;
            }
            try {
                at8Var.d(this.c, (RequestBody) this.d.convert(obj));
            } catch (IOException e) {
                throw ulb.p(this.a, this.b, "Unable to convert " + obj + " to RequestBody", e);
            }
        }
    }

    public static final class j extends iw7 {
        public final Method a;
        public final int b;
        public final si1 c;
        public final String d;

        public j(Method method, int i, si1 si1Var, String str) {
            this.a = method;
            this.b = i;
            this.c = si1Var;
            this.d = str;
        }

        @Override
        public void a(at8 at8Var, Map map) {
            if (map == null) {
                throw ulb.p(this.a, this.b, "Part map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw ulb.p(this.a, this.b, "Part map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw ulb.p(this.a, this.b, "Part map contained null value for key '" + str + "'.", new Object[0]);
                }
                at8Var.d(Headers.of(HttpHeaders.HEAD_KEY_CONTENT_DISPOSITION, "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.d), (RequestBody) this.c.convert(value));
            }
        }
    }

    public static final class k extends iw7 {
        public final Method a;
        public final int b;
        public final String c;
        public final si1 d;
        public final boolean e;

        public k(Method method, int i, String str, si1 si1Var, boolean z) {
            this.a = method;
            this.b = i;
            Objects.requireNonNull(str, "name == null");
            this.c = str;
            this.d = si1Var;
            this.e = z;
        }

        @Override
        public void a(at8 at8Var, Object obj) throws EOFException {
            if (obj != null) {
                at8Var.f(this.c, (String) this.d.convert(obj), this.e);
                return;
            }
            throw ulb.p(this.a, this.b, "Path parameter \"" + this.c + "\" value must not be null.", new Object[0]);
        }
    }

    public static final class l extends iw7 {
        public final String a;
        public final si1 b;
        public final boolean c;

        public l(String str, si1 si1Var, boolean z) {
            Objects.requireNonNull(str, "name == null");
            this.a = str;
            this.b = si1Var;
            this.c = z;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.b.convert(obj)) == null) {
                return;
            }
            at8Var.g(this.a, str, this.c);
        }
    }

    public static final class m extends iw7 {
        public final Method a;
        public final int b;
        public final si1 c;
        public final boolean d;

        public m(Method method, int i, si1 si1Var, boolean z) {
            this.a = method;
            this.b = i;
            this.c = si1Var;
            this.d = z;
        }

        @Override
        public void a(at8 at8Var, Map map) {
            if (map == null) {
                throw ulb.p(this.a, this.b, "Query map was null", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw ulb.p(this.a, this.b, "Query map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw ulb.p(this.a, this.b, "Query map contained null value for key '" + str + "'.", new Object[0]);
                }
                String str2 = (String) this.c.convert(value);
                if (str2 == null) {
                    throw ulb.p(this.a, this.b, "Query map value '" + value + "' converted to null by " + this.c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                at8Var.g(str, str2, this.d);
            }
        }
    }

    public static final class n extends iw7 {
        public final si1 a;
        public final boolean b;

        public n(si1 si1Var, boolean z) {
            this.a = si1Var;
            this.b = z;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            if (obj == null) {
                return;
            }
            at8Var.g((String) this.a.convert(obj), null, this.b);
        }
    }

    public static final class o extends iw7 {
        public static final o a = new o();

        @Override
        public void a(at8 at8Var, MultipartBody.Part part) {
            if (part != null) {
                at8Var.e(part);
            }
        }
    }

    public static final class p extends iw7 {
        public final Method a;
        public final int b;

        public p(Method method, int i) {
            this.a = method;
            this.b = i;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            if (obj == null) {
                throw ulb.p(this.a, this.b, "@Url parameter is null.", new Object[0]);
            }
            at8Var.m(obj);
        }
    }

    public static final class q extends iw7 {
        public final Class a;

        public q(Class cls) {
            this.a = cls;
        }

        @Override
        public void a(at8 at8Var, Object obj) {
            at8Var.h(this.a, obj);
        }
    }

    public abstract void a(at8 at8Var, Object obj);

    public final iw7 b() {
        return new b();
    }

    public final iw7 c() {
        return new a();
    }
}
