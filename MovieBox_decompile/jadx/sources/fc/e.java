package fc;

import android.util.Base64;
import android.util.JsonWriter;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;
import java.io.Writer;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;

final class e implements dc.d, dc.f {

    private e f60120a = null;

    private boolean f60121b = true;

    private final JsonWriter f60122c;

    private final Map f60123d;

    private final Map f60124e;

    private final dc.c f60125f;

    private final boolean f60126g;

    e(Writer writer, Map map, Map map2, dc.c cVar, boolean z10) {
        this.f60122c = new JsonWriter(writer);
        this.f60123d = map;
        this.f60124e = map2;
        this.f60125f = cVar;
        this.f60126g = z10;
    }

    private boolean t(Object obj) {
        return obj == null || obj.getClass().isArray() || (obj instanceof Collection) || (obj instanceof Date) || (obj instanceof Enum) || (obj instanceof Number);
    }

    private e w(String str, Object obj) throws IOException {
        y();
        this.f60122c.name(str);
        if (obj != null) {
            return k(obj, false);
        }
        this.f60122c.nullValue();
        return this;
    }

    private e x(String str, Object obj) throws IOException {
        if (obj == null) {
            return this;
        }
        y();
        this.f60122c.name(str);
        return k(obj, false);
    }

    private void y() throws IOException {
        if (!this.f60121b) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
        e eVar = this.f60120a;
        if (eVar != null) {
            eVar.y();
            this.f60120a.f60121b = false;
            this.f60120a = null;
            this.f60122c.endObject();
        }
    }

    @Override
    public dc.d a(dc.b bVar, Object obj) {
        return p(bVar.b(), obj);
    }

    @Override
    public dc.d c(dc.b bVar, boolean z10) {
        return q(bVar.b(), z10);
    }

    @Override
    public dc.d d(dc.b bVar, long j10) {
        return o(bVar.b(), j10);
    }

    @Override
    public dc.d e(dc.b bVar, int i10) {
        return n(bVar.b(), i10);
    }

    @Override
    public dc.d f(dc.b bVar, double d10) {
        return m(bVar.b(), d10);
    }

    public e h(double d10) throws IOException {
        y();
        this.f60122c.value(d10);
        return this;
    }

    public e i(int i10) throws IOException {
        y();
        this.f60122c.value(i10);
        return this;
    }

    public e j(long j10) throws IOException {
        y();
        this.f60122c.value(j10);
        return this;
    }

    e k(Object obj, boolean z10) {
        int i10 = 0;
        if (z10 && t(obj)) {
            throw new EncodingException(String.format("%s cannot be encoded inline", obj == null ? null : obj.getClass()));
        }
        if (obj == null) {
            this.f60122c.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            this.f60122c.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                this.f60122c.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    k(it.next(), false);
                }
                this.f60122c.endArray();
                return this;
            }
            if (obj instanceof Map) {
                this.f60122c.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        p((String) key, entry.getValue());
                    } catch (ClassCastException e10) {
                        throw new EncodingException(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e10);
                    }
                }
                this.f60122c.endObject();
                return this;
            }
            dc.c cVar = (dc.c) this.f60123d.get(obj.getClass());
            if (cVar != null) {
                return v(cVar, obj, z10);
            }
            dc.e eVar = (dc.e) this.f60124e.get(obj.getClass());
            if (eVar != null) {
                eVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                return v(this.f60125f, obj, z10);
            }
            if (obj instanceof f) {
                i(((f) obj).getNumber());
            } else {
                b(((Enum) obj).name());
            }
            return this;
        }
        if (obj instanceof byte[]) {
            return s((byte[]) obj);
        }
        this.f60122c.beginArray();
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            int length = iArr.length;
            while (i10 < length) {
                this.f60122c.value(iArr[i10]);
                i10++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i10 < length2) {
                j(jArr[i10]);
                i10++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i10 < length3) {
                this.f60122c.value(dArr[i10]);
                i10++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i10 < length4) {
                this.f60122c.value(zArr[i10]);
                i10++;
            }
        } else if (obj instanceof Number[]) {
            for (Number number : (Number[]) obj) {
                k(number, false);
            }
        } else {
            for (Object obj2 : (Object[]) obj) {
                k(obj2, false);
            }
        }
        this.f60122c.endArray();
        return this;
    }

    @Override
    public e b(String str) throws IOException {
        y();
        this.f60122c.value(str);
        return this;
    }

    public e m(String str, double d10) throws IOException {
        y();
        this.f60122c.name(str);
        return h(d10);
    }

    public e n(String str, int i10) throws IOException {
        y();
        this.f60122c.name(str);
        return i(i10);
    }

    public e o(String str, long j10) throws IOException {
        y();
        this.f60122c.name(str);
        return j(j10);
    }

    public e p(String str, Object obj) {
        return this.f60126g ? x(str, obj) : w(str, obj);
    }

    public e q(String str, boolean z10) throws IOException {
        y();
        this.f60122c.name(str);
        return g(z10);
    }

    @Override
    public e g(boolean z10) throws IOException {
        y();
        this.f60122c.value(z10);
        return this;
    }

    public e s(byte[] bArr) throws IOException {
        y();
        if (bArr == null) {
            this.f60122c.nullValue();
        } else {
            this.f60122c.value(Base64.encodeToString(bArr, 2));
        }
        return this;
    }

    void u() {
        y();
        this.f60122c.flush();
    }

    e v(dc.c cVar, Object obj, boolean z10) throws IOException {
        if (!z10) {
            this.f60122c.beginObject();
        }
        cVar.a(obj, this);
        if (!z10) {
            this.f60122c.endObject();
        }
        return this;
    }
}
