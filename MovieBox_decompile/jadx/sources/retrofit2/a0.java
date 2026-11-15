package retrofit2;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import okhttp3.Headers;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;

abstract class a0 {

    class a extends a0 {
        a() {
        }

        @Override
        public void a(h0 h0Var, Iterable iterable) {
            if (iterable == null) {
                return;
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a0.this.a(h0Var, it.next());
            }
        }
    }

    class b extends a0 {
        b() {
        }

        @Override
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                return;
            }
            int length = Array.getLength(obj);
            for (int i10 = 0; i10 < length; i10++) {
                a0.this.a(h0Var, Array.get(obj, i10));
            }
        }
    }

    static final class c extends a0 {

        private final Method f70987a;

        private final int f70988b;

        private final retrofit2.k f70989c;

        c(Method method, int i10, retrofit2.k kVar) {
            this.f70987a = method;
            this.f70988b = i10;
            this.f70989c = kVar;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                throw o0.p(this.f70987a, this.f70988b, "Body parameter value must not be null.", new Object[0]);
            }
            try {
                h0Var.l((RequestBody) this.f70989c.convert(obj));
            } catch (IOException e10) {
                throw o0.q(this.f70987a, e10, this.f70988b, "Unable to convert " + obj + " to RequestBody", new Object[0]);
            }
        }
    }

    static final class d extends a0 {

        private final String f70990a;

        private final retrofit2.k f70991b;

        private final boolean f70992c;

        d(String str, retrofit2.k kVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f70990a = str;
            this.f70991b = kVar;
            this.f70992c = z10;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f70991b.convert(obj)) == null) {
                return;
            }
            h0Var.a(this.f70990a, str, this.f70992c);
        }
    }

    static final class e extends a0 {

        private final Method f70993a;

        private final int f70994b;

        private final retrofit2.k f70995c;

        private final boolean f70996d;

        e(Method method, int i10, retrofit2.k kVar, boolean z10) {
            this.f70993a = method;
            this.f70994b = i10;
            this.f70995c = kVar;
            this.f70996d = z10;
        }

        @Override
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f70993a, this.f70994b, "Field map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f70993a, this.f70994b, "Field map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f70993a, this.f70994b, "Field map contained null value for key '" + str + "'.", new Object[0]);
                }
                String str2 = (String) this.f70995c.convert(value);
                if (str2 == null) {
                    throw o0.p(this.f70993a, this.f70994b, "Field map value '" + value + "' converted to null by " + this.f70995c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                h0Var.a(str, str2, this.f70996d);
            }
        }
    }

    static final class f extends a0 {

        private final String f70997a;

        private final retrofit2.k f70998b;

        private final boolean f70999c;

        f(String str, retrofit2.k kVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f70997a = str;
            this.f70998b = kVar;
            this.f70999c = z10;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f70998b.convert(obj)) == null) {
                return;
            }
            h0Var.b(this.f70997a, str, this.f70999c);
        }
    }

    static final class g extends a0 {

        private final Method f71000a;

        private final int f71001b;

        private final retrofit2.k f71002c;

        private final boolean f71003d;

        g(Method method, int i10, retrofit2.k kVar, boolean z10) {
            this.f71000a = method;
            this.f71001b = i10;
            this.f71002c = kVar;
            this.f71003d = z10;
        }

        @Override
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f71000a, this.f71001b, "Header map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f71000a, this.f71001b, "Header map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f71000a, this.f71001b, "Header map contained null value for key '" + str + "'.", new Object[0]);
                }
                h0Var.b(str, (String) this.f71002c.convert(value), this.f71003d);
            }
        }
    }

    static final class h extends a0 {

        private final Method f71004a;

        private final int f71005b;

        h(Method method, int i10) {
            this.f71004a = method;
            this.f71005b = i10;
        }

        @Override
        public void a(h0 h0Var, Headers headers) {
            if (headers == null) {
                throw o0.p(this.f71004a, this.f71005b, "Headers parameter must not be null.", new Object[0]);
            }
            h0Var.c(headers);
        }
    }

    static final class i extends a0 {

        private final Method f71006a;

        private final int f71007b;

        private final Headers f71008c;

        private final retrofit2.k f71009d;

        i(Method method, int i10, Headers headers, retrofit2.k kVar) {
            this.f71006a = method;
            this.f71007b = i10;
            this.f71008c = headers;
            this.f71009d = kVar;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                return;
            }
            try {
                h0Var.d(this.f71008c, (RequestBody) this.f71009d.convert(obj));
            } catch (IOException e10) {
                throw o0.p(this.f71006a, this.f71007b, "Unable to convert " + obj + " to RequestBody", e10);
            }
        }
    }

    static final class j extends a0 {

        private final Method f71010a;

        private final int f71011b;

        private final retrofit2.k f71012c;

        private final String f71013d;

        j(Method method, int i10, retrofit2.k kVar, String str) {
            this.f71010a = method;
            this.f71011b = i10;
            this.f71012c = kVar;
            this.f71013d = str;
        }

        @Override
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f71010a, this.f71011b, "Part map was null.", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f71010a, this.f71011b, "Part map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f71010a, this.f71011b, "Part map contained null value for key '" + str + "'.", new Object[0]);
                }
                h0Var.d(Headers.of(HttpHeaders.CONTENT_DISPOSITION, "form-data; name=\"" + str + "\"", "Content-Transfer-Encoding", this.f71013d), (RequestBody) this.f71012c.convert(value));
            }
        }
    }

    static final class k extends a0 {

        private final Method f71014a;

        private final int f71015b;

        private final String f71016c;

        private final retrofit2.k f71017d;

        private final boolean f71018e;

        k(Method method, int i10, String str, retrofit2.k kVar, boolean z10) {
            this.f71014a = method;
            this.f71015b = i10;
            Objects.requireNonNull(str, "name == null");
            this.f71016c = str;
            this.f71017d = kVar;
            this.f71018e = z10;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            if (obj != null) {
                h0Var.f(this.f71016c, (String) this.f71017d.convert(obj), this.f71018e);
                return;
            }
            throw o0.p(this.f71014a, this.f71015b, "Path parameter \"" + this.f71016c + "\" value must not be null.", new Object[0]);
        }
    }

    static final class l extends a0 {

        private final String f71019a;

        private final retrofit2.k f71020b;

        private final boolean f71021c;

        l(String str, retrofit2.k kVar, boolean z10) {
            Objects.requireNonNull(str, "name == null");
            this.f71019a = str;
            this.f71020b = kVar;
            this.f71021c = z10;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            String str;
            if (obj == null || (str = (String) this.f71020b.convert(obj)) == null) {
                return;
            }
            h0Var.g(this.f71019a, str, this.f71021c);
        }
    }

    static final class m extends a0 {

        private final Method f71022a;

        private final int f71023b;

        private final retrofit2.k f71024c;

        private final boolean f71025d;

        m(Method method, int i10, retrofit2.k kVar, boolean z10) {
            this.f71022a = method;
            this.f71023b = i10;
            this.f71024c = kVar;
            this.f71025d = z10;
        }

        @Override
        public void a(h0 h0Var, Map map) {
            if (map == null) {
                throw o0.p(this.f71022a, this.f71023b, "Query map was null", new Object[0]);
            }
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw o0.p(this.f71022a, this.f71023b, "Query map contained null key.", new Object[0]);
                }
                Object value = entry.getValue();
                if (value == null) {
                    throw o0.p(this.f71022a, this.f71023b, "Query map contained null value for key '" + str + "'.", new Object[0]);
                }
                String str2 = (String) this.f71024c.convert(value);
                if (str2 == null) {
                    throw o0.p(this.f71022a, this.f71023b, "Query map value '" + value + "' converted to null by " + this.f71024c.getClass().getName() + " for key '" + str + "'.", new Object[0]);
                }
                h0Var.g(str, str2, this.f71025d);
            }
        }
    }

    static final class n extends a0 {

        private final retrofit2.k f71026a;

        private final boolean f71027b;

        n(retrofit2.k kVar, boolean z10) {
            this.f71026a = kVar;
            this.f71027b = z10;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                return;
            }
            h0Var.g((String) this.f71026a.convert(obj), null, this.f71027b);
        }
    }

    static final class o extends a0 {

        static final o f71028a = new o();

        private o() {
        }

        @Override
        public void a(h0 h0Var, MultipartBody.Part part) {
            if (part != null) {
                h0Var.e(part);
            }
        }
    }

    static final class p extends a0 {

        private final Method f71029a;

        private final int f71030b;

        p(Method method, int i10) {
            this.f71029a = method;
            this.f71030b = i10;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            if (obj == null) {
                throw o0.p(this.f71029a, this.f71030b, "@Url parameter is null.", new Object[0]);
            }
            h0Var.m(obj);
        }
    }

    static final class q extends a0 {

        final Class f71031a;

        q(Class cls) {
            this.f71031a = cls;
        }

        @Override
        void a(h0 h0Var, Object obj) {
            h0Var.h(this.f71031a, obj);
        }
    }

    a0() {
    }

    abstract void a(h0 h0Var, Object obj);

    final a0 b() {
        return new b();
    }

    final a0 c() {
        return new a();
    }
}
