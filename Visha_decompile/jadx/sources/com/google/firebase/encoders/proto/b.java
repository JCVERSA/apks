package com.google.firebase.encoders.proto;

import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.proto.b;
import defpackage.fj8;
import defpackage.hk5;
import defpackage.lnb;
import defpackage.mj8;
import defpackage.vp3;
import defpackage.yb7;
import defpackage.zb7;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.mozilla.javascript.ES6Iterator;

public final class b implements zb7 {
    public static final Charset f = Charset.forName("UTF-8");
    public static final vp3 g = vp3.a("key").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();
    public static final vp3 h = vp3.a(ES6Iterator.VALUE_PROPERTY).b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();
    public static final yb7 i = new yb7() {
        @Override
        public final void a(Object obj, Object obj2) {
            b.t((Map.Entry) obj, (zb7) obj2);
        }
    };
    public OutputStream a;
    public final Map b;
    public final Map c;
    public final yb7 d;
    public final mj8 e = new mj8(this);

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Protobuf.IntEncoding.values().length];
            a = iArr;
            try {
                iArr[Protobuf.IntEncoding.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Protobuf.IntEncoding.SIGNED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Protobuf.IntEncoding.FIXED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public b(OutputStream outputStream, Map map, Map map2, yb7 yb7Var) {
        this.a = outputStream;
        this.b = map;
        this.c = map2;
        this.d = yb7Var;
    }

    public static ByteBuffer m(int i2) {
        return ByteBuffer.allocate(i2).order(ByteOrder.LITTLE_ENDIAN);
    }

    public static Protobuf r(vp3 vp3Var) {
        Protobuf protobuf = (Protobuf) vp3Var.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf;
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    public static int s(vp3 vp3Var) {
        Protobuf protobuf = (Protobuf) vp3Var.c(Protobuf.class);
        if (protobuf != null) {
            return protobuf.tag();
        }
        throw new EncodingException("Field has no @Protobuf config");
    }

    public static void t(Map.Entry entry, zb7 zb7Var) {
        zb7Var.e(g, entry.getKey());
        zb7Var.e(h, entry.getValue());
    }

    public zb7 b(vp3 vp3Var, double d, boolean z) throws IOException {
        if (z && d == 0.0d) {
            return this;
        }
        u((s(vp3Var) << 3) | 1);
        this.a.write(m(8).putDouble(d).array());
        return this;
    }

    @Override
    public zb7 e(vp3 vp3Var, Object obj) {
        return g(vp3Var, obj, true);
    }

    public zb7 f(vp3 vp3Var, float f2, boolean z) throws IOException {
        if (z && f2 == 0.0f) {
            return this;
        }
        u((s(vp3Var) << 3) | 5);
        this.a.write(m(4).putFloat(f2).array());
        return this;
    }

    public zb7 g(vp3 vp3Var, Object obj, boolean z) {
        if (obj == null) {
            return this;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return this;
            }
            u((s(vp3Var) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            u(bytes.length);
            this.a.write(bytes);
            return this;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                g(vp3Var, it.next(), false);
            }
            return this;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                o(i, vp3Var, (Map.Entry) it2.next(), false);
            }
            return this;
        }
        if (obj instanceof Double) {
            return b(vp3Var, ((Double) obj).doubleValue(), z);
        }
        if (obj instanceof Float) {
            return f(vp3Var, ((Float) obj).floatValue(), z);
        }
        if (obj instanceof Number) {
            return k(vp3Var, ((Number) obj).longValue(), z);
        }
        if (obj instanceof Boolean) {
            return l(vp3Var, ((Boolean) obj).booleanValue(), z);
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return this;
            }
            u((s(vp3Var) << 3) | 2);
            u(bArr.length);
            this.a.write(bArr);
            return this;
        }
        yb7 yb7Var = (yb7) this.b.get(obj.getClass());
        if (yb7Var != null) {
            return o(yb7Var, vp3Var, obj, z);
        }
        lnb lnbVar = (lnb) this.c.get(obj.getClass());
        if (lnbVar != null) {
            return p(lnbVar, vp3Var, obj, z);
        }
        if (obj instanceof fj8) {
            return c(vp3Var, ((fj8) obj).getNumber());
        }
        return obj instanceof Enum ? c(vp3Var, ((Enum) obj).ordinal()) : o(this.d, vp3Var, obj, z);
    }

    @Override
    public b c(vp3 vp3Var, int i2) {
        return i(vp3Var, i2, true);
    }

    public b i(vp3 vp3Var, int i2, boolean z) throws IOException {
        if (z && i2 == 0) {
            return this;
        }
        Protobuf protobufR = r(vp3Var);
        int i3 = a.a[protobufR.intEncoding().ordinal()];
        if (i3 == 1) {
            u(protobufR.tag() << 3);
            u(i2);
        } else if (i3 == 2) {
            u(protobufR.tag() << 3);
            u((i2 << 1) ^ (i2 >> 31));
        } else if (i3 == 3) {
            u((protobufR.tag() << 3) | 5);
            this.a.write(m(4).putInt(i2).array());
        }
        return this;
    }

    @Override
    public b d(vp3 vp3Var, long j) {
        return k(vp3Var, j, true);
    }

    public b k(vp3 vp3Var, long j, boolean z) throws IOException {
        if (z && j == 0) {
            return this;
        }
        Protobuf protobufR = r(vp3Var);
        int i2 = a.a[protobufR.intEncoding().ordinal()];
        if (i2 == 1) {
            u(protobufR.tag() << 3);
            v(j);
        } else if (i2 == 2) {
            u(protobufR.tag() << 3);
            v((j >> 63) ^ (j << 1));
        } else if (i2 == 3) {
            u((protobufR.tag() << 3) | 1);
            this.a.write(m(8).putLong(j).array());
        }
        return this;
    }

    public b l(vp3 vp3Var, boolean z, boolean z2) {
        return i(vp3Var, z ? 1 : 0, z2);
    }

    public final long n(yb7 yb7Var, Object obj) throws IOException {
        hk5 hk5Var = new hk5();
        try {
            OutputStream outputStream = this.a;
            this.a = hk5Var;
            try {
                yb7Var.a(obj, this);
                this.a = outputStream;
                long jB = hk5Var.b();
                hk5Var.close();
                return jB;
            } catch (Throwable th) {
                this.a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                hk5Var.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final b o(yb7 yb7Var, vp3 vp3Var, Object obj, boolean z) throws IOException {
        long jN = n(yb7Var, obj);
        if (z && jN == 0) {
            return this;
        }
        u((s(vp3Var) << 3) | 2);
        v(jN);
        yb7Var.a(obj, this);
        return this;
    }

    public final b p(lnb lnbVar, vp3 vp3Var, Object obj, boolean z) {
        this.e.d(vp3Var, z);
        lnbVar.a(obj, this.e);
        return this;
    }

    public b q(Object obj) {
        if (obj == null) {
            return this;
        }
        yb7 yb7Var = (yb7) this.b.get(obj.getClass());
        if (yb7Var != null) {
            yb7Var.a(obj, this);
            return this;
        }
        throw new EncodingException("No encoder for " + obj.getClass());
    }

    public final void u(int i2) throws IOException {
        while ((i2 & (-128)) != 0) {
            this.a.write((i2 & 127) | 128);
            i2 >>>= 7;
        }
        this.a.write(i2 & 127);
    }

    public final void v(long j) throws IOException {
        while (((-128) & j) != 0) {
            this.a.write((((int) j) & 127) | 128);
            j >>>= 7;
        }
        this.a.write(((int) j) & 127);
    }
}
