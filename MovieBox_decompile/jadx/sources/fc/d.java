package fc;

import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class d implements ec.b {

    private static final dc.c f60110e = new dc.c() {
        @Override
        public final void a(Object obj, Object obj2) {
            d.l(obj, (dc.d) obj2);
        }
    };

    private static final dc.e f60111f = new dc.e() {
        @Override
        public final void a(Object obj, Object obj2) {
            ((dc.f) obj2).b((String) obj);
        }
    };

    private static final dc.e f60112g = new dc.e() {
        @Override
        public final void a(Object obj, Object obj2) {
            d.n((Boolean) obj, (dc.f) obj2);
        }
    };

    private static final b f60113h = new b(null);

    private final Map f60114a = new HashMap();

    private final Map f60115b = new HashMap();

    private dc.c f60116c = f60110e;

    private boolean f60117d = false;

    class a implements dc.a {
        a() {
        }

        @Override
        public void a(Object obj, Writer writer) {
            e eVar = new e(writer, d.this.f60114a, d.this.f60115b, d.this.f60116c, d.this.f60117d);
            eVar.k(obj, false);
            eVar.u();
        }

        @Override
        public String b(Object obj) {
            StringWriter stringWriter = new StringWriter();
            try {
                a(obj, stringWriter);
            } catch (IOException unused) {
            }
            return stringWriter.toString();
        }
    }

    private static final class b implements dc.e {

        private static final DateFormat f60119a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            f60119a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        private b() {
        }

        @Override
        public void a(Date date, dc.f fVar) {
            fVar.b(f60119a.format(date));
        }

        b(a aVar) {
            this();
        }
    }

    public d() {
        p(String.class, f60111f);
        p(Boolean.class, f60112g);
        p(Date.class, f60113h);
    }

    public static void l(Object obj, dc.d dVar) {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public static void n(Boolean bool, dc.f fVar) {
        fVar.g(bool.booleanValue());
    }

    public dc.a i() {
        return new a();
    }

    public d j(ec.a aVar) {
        aVar.a(this);
        return this;
    }

    public d k(boolean z10) {
        this.f60117d = z10;
        return this;
    }

    @Override
    public d a(Class cls, dc.c cVar) {
        this.f60114a.put(cls, cVar);
        this.f60115b.remove(cls);
        return this;
    }

    public d p(Class cls, dc.e eVar) {
        this.f60115b.put(cls, eVar);
        this.f60114a.remove(cls);
        return this;
    }
}
