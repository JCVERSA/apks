package defpackage;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

public final class qc5 implements zb7, mnb {
    public qc5 a = null;
    public boolean b = true;
    public final JsonWriter c;
    public final Map d;
    public final Map e;
    public final yb7 f;
    public final boolean g;

    public qc5(Writer writer, Map map, Map map2, yb7 yb7Var, boolean z) {
        this.c = new JsonWriter(writer);
        this.d = map;
        this.e = map2;
        this.f = yb7Var;
        this.g = z;
    }

    @Override
    public zb7 c(vp3 vp3Var, int i) {
        return j(vp3Var.b(), i);
    }

    @Override
    public zb7 d(vp3 vp3Var, long j) {
        return k(vp3Var.b(), j);
    }

    @Override
    public zb7 e(vp3 vp3Var, Object obj) {
        return l(vp3Var.b(), obj);
    }

    public qc5 f(int i) throws IOException {
        t();
        this.c.value(i);
        return this;
    }

    public qc5 g(long j) throws IOException {
        t();
        this.c.value(j);
        return this;
    }

    public qc5 h(Object obj, boolean z) {
        if (z && o(obj)) {
            throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        }
        if (obj == null) {
            this.c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.c.value((Number) obj);
            return this;
        }
        int i = 0;
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    h(it.next(), false);
                }
                this.c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        l((String) key, entry.getValue());
                    } catch (ClassCastException e) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e);
                    }
                }
                this.c.endObject();
                return this;
            }
            yb7 yb7Var = (yb7) this.d.get(obj.getClass());
            if (yb7Var != null) {
                return q(yb7Var, obj, z);
            }
            lnb lnbVar = (lnb) this.e.get(obj.getClass());
            if (lnbVar != null) {
                lnbVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return q(this.f, obj, z);
            }
            a(((Enum) obj).name());
            return this;
        }
        if (obj instanceof byte[]) {
            return n((byte[]) obj);
        }
        this.c.beginArray();
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i < length) {
                this.c.value(iArr[i]);
                i++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i < length2) {
                g(jArr[i]);
                i++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i < length3) {
                this.c.value(dArr[i]);
                i++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i < length4) {
                this.c.value(zArr[i]);
                i++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                h(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                h(obj2, false);
            }
        }
        this.c.endArray();
        return this;
    }

    @Override
    public qc5 a(String str) throws IOException {
        t();
        this.c.value(str);
        return this;
    }

    public qc5 j(String str, int i) throws IOException {
        t();
        this.c.name(str);
        return f(i);
    }

    public qc5 k(String str, long j) throws IOException {
        t();
        this.c.name(str);
        return g(j);
    }

    public qc5 l(String str, Object obj) {
        return this.g ? s(str, obj) : r(str, obj);
    }

    @Override
    public qc5 b(boolean z) throws IOException {
        t();
        this.c.value(z);
        return this;
    }

    public qc5 n(byte[] bArr) throws IOException {
        t();
        if (bArr == null) {
            this.c.nullValue();
        } else {
            this.c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    public final boolean o(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    public void p() {
        t();
        this.c.flush();
    }

    public qc5 q(yb7 yb7Var, Object obj, boolean z) throws IOException {
        if (!z) {
            this.c.beginObject();
        }
        yb7Var.a(obj, this);
        if (!z) {
            this.c.endObject();
        }
        return this;
    }

    public final qc5 r(String str, Object obj) throws IOException {
        t();
        this.c.name(str);
        if (obj != null) {
            return h(obj, false);
        }
        this.c.nullValue();
        return this;
    }

    public final qc5 s(String str, Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        t();
        this.c.name(str);
        return h(obj, false);
    }

    public final void t() throws IOException {
        if (!this.b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        qc5 qc5Var = this.a;
        if (qc5Var != null) {
            qc5Var.t();
            this.a.b = false;
            this.a = null;
            this.c.endObject();
        }
    }
}
