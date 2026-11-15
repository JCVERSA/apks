package com.google.firebase.encoders.proto;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class d implements dc.d {

    private static final Charset f30997f = Charset.forName("UTF-8");

    private static final dc.b f30998g = dc.b.a("key").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

    private static final dc.b f30999h = dc.b.a(AppMeasurementSdk.ConditionalUserProperty.VALUE).b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

    private static final dc.c f31000i = new dc.c() {
        @Override
        public final void a(Object obj, Object obj2) {
            d.w((Map.Entry) obj, (dc.d) obj2);
        }
    };

    private OutputStream f31001a;

    private final Map f31002b;

    private final Map f31003c;

    private final dc.c f31004d;

    private final f f31005e = new f(this);

    static class a {

        static final int[] f31006a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            f31006a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f31006a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f31006a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    d(OutputStream outputStream, Map map, Map map2, dc.c cVar) {
        this.f31001a = outputStream;
        this.f31002b = map;
        this.f31003c = map2;
        this.f31004d = cVar;
    }

    private static ByteBuffer p(int i10) {
        return ByteBuffer.allocate(i10).order(ByteOrder.LITTLE_ENDIAN);
    }

    private long q(dc.c cVar, Object obj) throws IOException {
        b bVar = new b();
        try {
            OutputStream outputStream = this.f31001a;
            this.f31001a = bVar;
            try {
                cVar.a(obj, this);
                this.f31001a = outputStream;
                long jD = bVar.d();
                bVar.close();
                return jD;
            } catch (Throwable th2) {
                this.f31001a = outputStream;
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                bVar.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }

    private d r(dc.c cVar, dc.b bVar, Object obj, boolean z10) throws IOException {
        long jQ = q(cVar, obj);
        if (z10 && jQ == 0) {
            return this;
        }
        x((v(bVar) << 3) | 2);
        y(jQ);
        cVar.a(obj, this);
        return this;
    }

    private d s(dc.e eVar, dc.b bVar, Object obj, boolean z10) {
        this.f31005e.c(bVar, z10);
        eVar.a(obj, this.f31005e);
        return this;
    }

    private static Protobuf u(dc.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    private static int v(dc.b bVar) {
        Protobuf protobuf = (Protobuf) bVar.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    public static void w(Map.Entry entry, dc.d dVar) {
        dVar.a(f30998g, entry.getKey());
        dVar.a(f30999h, entry.getValue());
    }

    private void x(int i10) throws IOException {
        while ((i10 & (-128)) != 0) {
            this.f31001a.write((i10 & 127) | 128);
            i10 >>>= 7;
        }
        this.f31001a.write(i10 & 127);
    }

    private void y(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f31001a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f31001a.write(((int) j10) & 127);
    }

    @Override
    public dc.d a(dc.b bVar, Object obj) {
        return o(bVar, obj, true);
    }

    @Override
    public dc.d f(dc.b bVar, double d10) {
        return m(bVar, d10, true);
    }

    @Override
    public d e(dc.b bVar, int i10) {
        return h(bVar, i10, true);
    }

    d h(dc.b bVar, int i10, boolean z10) throws IOException {
        if (z10 && i10 == 0) {
            return this;
        }
        Protobuf protobufU = u(bVar);
        int i11 = a.f31006a[protobufU.intEncoding().ordinal()];
        if (i11 == 1) {
            x(protobufU.tag() << 3);
            x(i10);
        } else if (i11 == 2) {
            x(protobufU.tag() << 3);
            x((i10 << 1) ^ (i10 >> 31));
        } else if (i11 == 3) {
            x((protobufU.tag() << 3) | 5);
            this.f31001a.write(p(4).putInt(i10).array());
        }
        return this;
    }

    @Override
    public d d(dc.b bVar, long j10) {
        return j(bVar, j10, true);
    }

    d j(dc.b bVar, long j10, boolean z10) throws IOException {
        if (z10 && j10 == 0) {
            return this;
        }
        Protobuf protobufU = u(bVar);
        int i10 = a.f31006a[protobufU.intEncoding().ordinal()];
        if (i10 == 1) {
            x(protobufU.tag() << 3);
            y(j10);
        } else if (i10 == 2) {
            x(protobufU.tag() << 3);
            y((j10 >> 63) ^ (j10 << 1));
        } else if (i10 == 3) {
            x((protobufU.tag() << 3) | 1);
            this.f31001a.write(p(8).putLong(j10).array());
        }
        return this;
    }

    @Override
    public d c(dc.b bVar, boolean z10) {
        return l(bVar, z10, true);
    }

    d l(dc.b bVar, boolean z10, boolean z11) {
        return h(bVar, z10 ? 1 : 0, z11);
    }

    dc.d m(dc.b bVar, double d10, boolean z10) throws IOException {
        if (z10 && d10 == 0.0d) {
            return this;
        }
        x((v(bVar) << 3) | 1);
        this.f31001a.write(p(8).putDouble(d10).array());
        return this;
    }

    dc.d n(dc.b bVar, float f10, boolean z10) throws IOException {
        if (z10 && f10 == 0.0f) {
            return this;
        }
        x((v(bVar) << 3) | 5);
        this.f31001a.write(p(4).putFloat(f10).array());
        return this;
    }

    dc.d o(dc.b bVar, Object obj, boolean z10) throws IOException {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z10 && charSequence.length() == 0) {
                return this;
            }
            x((v(bVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f30997f);
            x(bytes.length);
            this.f31001a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                o(bVar, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                r(f31000i, bVar, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return m(bVar, ((Double) obj).doubleValue(), z10);
        }
        if (obj instanceof Float) {
            return n(bVar, ((Float) obj).floatValue(), z10);
        }
        if (obj instanceof Number) {
            return j(bVar, ((Number) obj).longValue(), z10);
        }
        if (obj instanceof Boolean) {
            return l(bVar, ((Boolean) obj).booleanValue(), z10);
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z10 && bArr.length == 0) {
                return this;
            }
            x((v(bVar) << 3) | 2);
            x(bArr.length);
            this.f31001a.write(bArr);
            return this;
        }
        dc.c cVar = (dc.c) this.f31002b.get(obj.getClass());
        if (cVar != null) {
            return r(cVar, bVar, obj, z10);
        }
        dc.e eVar = (dc.e) this.f31003c.get(obj.getClass());
        if (eVar != null) {
            return s(eVar, bVar, obj, z10);
        }
        if (obj instanceof gc.a) {
            return e(bVar, ((gc.a) obj).getNumber());
        }
        return obj instanceof Enum ? e(bVar, ((Enum) obj).ordinal()) : r(this.f31004d, bVar, obj, z10);
    }

    d t(Object obj) {
        if (obj == null) {
            return this;
        }
        dc.c cVar = (dc.c) this.f31002b.get(obj.getClass());
        if (cVar != null) {
            cVar.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }
}
