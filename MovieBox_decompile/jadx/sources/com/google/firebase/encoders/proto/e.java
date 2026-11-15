package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.e;
import dc.d;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

public class e {

    private final Map f31007a;

    private final Map f31008b;

    private final dc.c f31009c;

    public static final class a implements ec.b {

        private static final dc.c f31010d = new dc.c() {
            @Override
            public final void a(Object obj, Object obj2) {
                e.a.e(obj, (d) obj2);
            }
        };

        private final Map f31011a = new HashMap();

        private final Map f31012b = new HashMap();

        private dc.c f31013c = f31010d;

        public static void e(Object obj, dc.d dVar) {
            throw new EncodingException("Couldn't find encoder for type " + obj.getClass().getCanonicalName());
        }

        public e c() {
            return new e(new HashMap(this.f31011a), new HashMap(this.f31012b), this.f31013c);
        }

        public a d(ec.a aVar) {
            aVar.a(this);
            return this;
        }

        @Override
        public a a(Class cls, dc.c cVar) {
            this.f31011a.put(cls, cVar);
            this.f31012b.remove(cls);
            return this;
        }
    }

    e(Map map, Map map2, dc.c cVar) {
        this.f31007a = map;
        this.f31008b = map2;
        this.f31009c = cVar;
    }

    public static a a() {
        return new a();
    }

    public void b(Object obj, OutputStream outputStream) {
        new d(outputStream, this.f31007a, this.f31008b, this.f31009c).t(obj);
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
