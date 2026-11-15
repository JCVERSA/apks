package com.squareup.moshi;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class g extends JsonReader {
    public static final Object i = new Object();
    public Object[] h;

    public static final class a implements Iterator, Cloneable {
        public final JsonReader.Token b;
        public final Object[] c;
        public int d;

        public a(JsonReader.Token token, Object[] objArr, int i) {
            this.b = token;
            this.c = objArr;
            this.d = i;
        }

        public a clone() {
            return new a(this.b, this.c, this.d);
        }

        @Override
        public boolean hasNext() {
            return this.d < this.c.length;
        }

        @Override
        public Object next() {
            Object[] objArr = this.c;
            int i = this.d;
            this.d = i + 1;
            return objArr[i];
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public g(Object obj) {
        int[] iArr = this.c;
        int i2 = this.b;
        iArr[i2] = 7;
        Object[] objArr = new Object[32];
        this.h = objArr;
        this.b = i2 + 1;
        objArr[i2] = obj;
    }

    @Override
    public double D() throws JsonEncodingException {
        double dDoubleValue;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object objY = Y(Object.class, token);
        if (objY instanceof Number) {
            dDoubleValue = ((Number) objY).doubleValue();
        } else {
            if (!(objY instanceof String)) {
                throw V(objY, token);
            }
            try {
                dDoubleValue = Double.parseDouble((String) objY);
            } catch (NumberFormatException unused) {
                throw V(objY, JsonReader.Token.NUMBER);
            }
        }
        if (this.f || !(Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            X();
            return dDoubleValue;
        }
        throw new JsonEncodingException("JSON forbids NaN and infinities: " + dDoubleValue + " at path " + getPath());
    }

    @Override
    public int E() {
        int iIntValueExact;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object objY = Y(Object.class, token);
        if (objY instanceof Number) {
            iIntValueExact = ((Number) objY).intValue();
        } else {
            if (!(objY instanceof String)) {
                throw V(objY, token);
            }
            try {
                try {
                    iIntValueExact = Integer.parseInt((String) objY);
                } catch (NumberFormatException unused) {
                    throw V(objY, JsonReader.Token.NUMBER);
                }
            } catch (NumberFormatException unused2) {
                iIntValueExact = new BigDecimal((String) objY).intValueExact();
            }
        }
        X();
        return iIntValueExact;
    }

    @Override
    public long F() {
        long jLongValueExact;
        JsonReader.Token token = JsonReader.Token.NUMBER;
        Object objY = Y(Object.class, token);
        if (objY instanceof Number) {
            jLongValueExact = ((Number) objY).longValue();
        } else {
            if (!(objY instanceof String)) {
                throw V(objY, token);
            }
            try {
                try {
                    jLongValueExact = Long.parseLong((String) objY);
                } catch (NumberFormatException unused) {
                    throw V(objY, JsonReader.Token.NUMBER);
                }
            } catch (NumberFormatException unused2) {
                jLongValueExact = new BigDecimal((String) objY).longValueExact();
            }
        }
        X();
        return jLongValueExact;
    }

    @Override
    public String G() {
        Map.Entry entry = (Map.Entry) Y(Map.Entry.class, JsonReader.Token.NAME);
        String strZ = Z(entry);
        this.h[this.b - 1] = entry.getValue();
        this.d[this.b - 2] = strZ;
        return strZ;
    }

    @Override
    public Object H() {
        Y(Void.class, JsonReader.Token.NULL);
        X();
        return null;
    }

    @Override
    public String I() {
        int i2 = this.b;
        Object obj = i2 != 0 ? this.h[i2 - 1] : null;
        if (obj instanceof String) {
            X();
            return (String) obj;
        }
        if (obj instanceof Number) {
            X();
            return obj.toString();
        }
        if (obj == i) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw V(obj, JsonReader.Token.STRING);
    }

    @Override
    public JsonReader.Token K() {
        int i2 = this.b;
        if (i2 == 0) {
            return JsonReader.Token.END_DOCUMENT;
        }
        Object obj = this.h[i2 - 1];
        if (obj instanceof a) {
            return ((a) obj).b;
        }
        if (obj instanceof List) {
            return JsonReader.Token.BEGIN_ARRAY;
        }
        if (obj instanceof Map) {
            return JsonReader.Token.BEGIN_OBJECT;
        }
        if (obj instanceof Map.Entry) {
            return JsonReader.Token.NAME;
        }
        if (obj instanceof String) {
            return JsonReader.Token.STRING;
        }
        if (obj instanceof Boolean) {
            return JsonReader.Token.BOOLEAN;
        }
        if (obj instanceof Number) {
            return JsonReader.Token.NUMBER;
        }
        if (obj == null) {
            return JsonReader.Token.NULL;
        }
        if (obj == i) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw V(obj, "a JSON value");
    }

    @Override
    public void L() {
        if (k()) {
            W(G());
        }
    }

    @Override
    public int O(JsonReader.b bVar) {
        Map.Entry entry = (Map.Entry) Y(Map.Entry.class, JsonReader.Token.NAME);
        String strZ = Z(entry);
        int length = bVar.a.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (bVar.a[i2].equals(strZ)) {
                this.h[this.b - 1] = entry.getValue();
                this.d[this.b - 2] = strZ;
                return i2;
            }
        }
        return -1;
    }

    @Override
    public int P(JsonReader.b bVar) {
        int i2 = this.b;
        Object obj = i2 != 0 ? this.h[i2 - 1] : null;
        if (!(obj instanceof String)) {
            if (obj != i) {
                return -1;
            }
            throw new IllegalStateException("JsonReader is closed");
        }
        String str = (String) obj;
        int length = bVar.a.length;
        for (int i3 = 0; i3 < length; i3++) {
            if (bVar.a[i3].equals(str)) {
                X();
                return i3;
            }
        }
        return -1;
    }

    @Override
    public void S() {
        if (!this.g) {
            this.h[this.b - 1] = ((Map.Entry) Y(Map.Entry.class, JsonReader.Token.NAME)).getValue();
            this.d[this.b - 2] = "null";
            return;
        }
        JsonReader.Token tokenK = K();
        G();
        throw new JsonDataException("Cannot skip unexpected " + tokenK + " at " + getPath());
    }

    @Override
    public void T() {
        if (this.g) {
            throw new JsonDataException("Cannot skip unexpected " + K() + " at " + getPath());
        }
        int i2 = this.b;
        if (i2 > 1) {
            this.d[i2 - 2] = "null";
        }
        Object obj = i2 != 0 ? this.h[i2 - 1] : null;
        if (obj instanceof a) {
            throw new JsonDataException("Expected a value but was " + K() + " at path " + getPath());
        }
        if (obj instanceof Map.Entry) {
            Object[] objArr = this.h;
            objArr[i2 - 1] = ((Map.Entry) objArr[i2 - 1]).getValue();
        } else {
            if (i2 > 0) {
                X();
                return;
            }
            throw new JsonDataException("Expected a value but was " + K() + " at path " + getPath());
        }
    }

    public final void W(Object obj) {
        int i2 = this.b;
        if (i2 == this.h.length) {
            if (i2 == 256) {
                throw new JsonDataException("Nesting too deep at " + getPath());
            }
            int[] iArr = this.c;
            this.c = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.d;
            this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] iArr2 = this.e;
            this.e = Arrays.copyOf(iArr2, iArr2.length * 2);
            Object[] objArr = this.h;
            this.h = Arrays.copyOf(objArr, objArr.length * 2);
        }
        Object[] objArr2 = this.h;
        int i3 = this.b;
        this.b = i3 + 1;
        objArr2[i3] = obj;
    }

    public final void X() {
        int i2 = this.b;
        int i3 = i2 - 1;
        this.b = i3;
        Object[] objArr = this.h;
        objArr[i3] = null;
        this.c[i3] = 0;
        if (i3 > 0) {
            int[] iArr = this.e;
            int i4 = i2 - 2;
            iArr[i4] = iArr[i4] + 1;
            Object obj = objArr[i2 - 2];
            if (obj instanceof Iterator) {
                Iterator it = (Iterator) obj;
                if (it.hasNext()) {
                    W(it.next());
                }
            }
        }
    }

    public final Object Y(Class cls, JsonReader.Token token) {
        int i2 = this.b;
        Object obj = i2 != 0 ? this.h[i2 - 1] : null;
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        if (obj == null && token == JsonReader.Token.NULL) {
            return null;
        }
        if (obj == i) {
            throw new IllegalStateException("JsonReader is closed");
        }
        throw V(obj, token);
    }

    public final String Z(Map.Entry entry) {
        Object key = entry.getKey();
        if (key instanceof String) {
            return (String) key;
        }
        throw V(key, JsonReader.Token.NAME);
    }

    @Override
    public void b() {
        List list = (List) Y(List.class, JsonReader.Token.BEGIN_ARRAY);
        a aVar = new a(JsonReader.Token.END_ARRAY, list.toArray(new Object[list.size()]), 0);
        Object[] objArr = this.h;
        int i2 = this.b;
        objArr[i2 - 1] = aVar;
        this.c[i2 - 1] = 1;
        this.e[i2 - 1] = 0;
        if (aVar.hasNext()) {
            W(aVar.next());
        }
    }

    @Override
    public void close() {
        Arrays.fill(this.h, 0, this.b, (Object) null);
        this.h[0] = i;
        this.c[0] = 8;
        this.b = 1;
    }

    @Override
    public void d() {
        Map map = (Map) Y(Map.class, JsonReader.Token.BEGIN_OBJECT);
        a aVar = new a(JsonReader.Token.END_OBJECT, map.entrySet().toArray(new Object[map.size()]), 0);
        Object[] objArr = this.h;
        int i2 = this.b;
        objArr[i2 - 1] = aVar;
        this.c[i2 - 1] = 3;
        if (aVar.hasNext()) {
            W(aVar.next());
        }
    }

    @Override
    public void e() {
        JsonReader.Token token = JsonReader.Token.END_ARRAY;
        a aVar = (a) Y(a.class, token);
        if (aVar.b != token || aVar.hasNext()) {
            throw V(aVar, token);
        }
        X();
    }

    @Override
    public void g() {
        JsonReader.Token token = JsonReader.Token.END_OBJECT;
        a aVar = (a) Y(a.class, token);
        if (aVar.b != token || aVar.hasNext()) {
            throw V(aVar, token);
        }
        this.d[this.b - 1] = null;
        X();
    }

    @Override
    public boolean k() {
        int i2 = this.b;
        if (i2 == 0) {
            return false;
        }
        Object obj = this.h[i2 - 1];
        return !(obj instanceof Iterator) || ((Iterator) obj).hasNext();
    }

    @Override
    public boolean o() {
        Boolean bool = (Boolean) Y(Boolean.class, JsonReader.Token.BOOLEAN);
        X();
        return bool.booleanValue();
    }
}
