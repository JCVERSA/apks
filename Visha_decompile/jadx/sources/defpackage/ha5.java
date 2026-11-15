package defpackage;

import com.google.firebase.encoders.EncodingException;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class ha5 implements fa3 {
    public static final yb7 e = new yb7() {
        @Override
        public final void a(Object obj, Object obj2) {
            ha5.l(obj, (zb7) obj2);
        }
    };
    public static final lnb f = new lnb() {
        @Override
        public final void a(Object obj, Object obj2) {
            ((mnb) obj2).a((String) obj);
        }
    };
    public static final lnb g = new lnb() {
        @Override
        public final void a(Object obj, Object obj2) {
            ha5.n((Boolean) obj, (mnb) obj2);
        }
    };
    public static final b h = new b(null);
    public final Map a = new HashMap();
    public final Map b = new HashMap();
    public yb7 c = e;
    public boolean d = false;

    public class a implements bs1 {
        public a() {
        }

        @Override
        public void a(Object obj, Writer writer) {
            qc5 qc5Var = new qc5(writer, ha5.this.a, ha5.this.b, ha5.this.c, ha5.this.d);
            qc5Var.h(obj, false);
            qc5Var.p();
        }
    }

    public static final class b implements lnb {
        public static final DateFormat a;

        static {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            a = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        }

        public b() {
        }

        @Override
        public void a(Date date, mnb mnbVar) {
            mnbVar.a(a.format(date));
        }

        public b(a aVar) {
            this();
        }
    }

    public ha5() {
        p(String.class, f);
        p(Boolean.class, g);
        p(Date.class, h);
    }

    public static void l(Object obj, zb7 zb7Var) {
        throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
    }

    public static void n(Boolean bool, mnb mnbVar) {
        mnbVar.b(bool.booleanValue());
    }

    public bs1 i() {
        return new a();
    }

    public ha5 j(ze1 ze1Var) {
        ze1Var.a(this);
        return this;
    }

    public ha5 k(boolean z) {
        this.d = z;
        return this;
    }

    @Override
    public ha5 a(Class cls, yb7 yb7Var) {
        this.a.put(cls, yb7Var);
        this.b.remove(cls);
        return this;
    }

    public ha5 p(Class cls, lnb lnbVar) {
        this.b.put(cls, lnbVar);
        this.a.remove(cls);
        return this;
    }
}
