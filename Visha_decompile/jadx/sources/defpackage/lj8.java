package defpackage;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.b;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

public class lj8 {
    public final Map a;
    public final Map b;
    public final yb7 c;

    public static final class a implements fa3 {
        public static final yb7 d = new yb7() {
            @Override
            public final void a(Object obj, Object obj2) {
                lj8.a.e(obj, (zb7) obj2);
            }
        };
        public final Map a = new HashMap();
        public final Map b = new HashMap();
        public yb7 c = d;

        public static void e(Object obj, zb7 zb7Var) {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public lj8 c() {
            return new lj8(new HashMap(this.a), new HashMap(this.b), this.c);
        }

        public a d(ze1 ze1Var) {
            ze1Var.a(this);
            return this;
        }

        @Override
        public a a(Class cls, yb7 yb7Var) {
            this.a.put(cls, yb7Var);
            this.b.remove(cls);
            return this;
        }
    }

    public lj8(Map map, Map map2, yb7 yb7Var) {
        this.a = map;
        this.b = map2;
        this.c = yb7Var;
    }

    public static a a() {
        return new a();
    }

    public void b(Object obj, OutputStream outputStream) {
        new b(outputStream, this.a, this.b, this.c).q(obj);
    }

    public byte[] c(Object obj) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            b(obj, byteArrayOutputStream);
        } catch (IOException unused) {
        }
        return byteArrayOutputStream.toByteArray();
    }
}
