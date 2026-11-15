package defpackage;

import freemarker.ext.beans.b;
import java.lang.reflect.Array;

public class dh extends rd0 implements bfa, nga {
    public static final fq6 i = new ch();
    public final int h;

    public dh(Object obj, b bVar) {
        super(obj, bVar);
        if (obj.getClass().isArray()) {
            this.h = Array.getLength(obj);
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Object is not an array, it's ");
        stringBuffer.append(obj.getClass().getName());
        throw new IllegalArgumentException(stringBuffer.toString());
    }

    @Override
    public zfa get(int i2) {
        try {
            return o(Array.get(this.b, i2));
        } catch (IndexOutOfBoundsException unused) {
            return null;
        }
    }

    @Override
    public boolean isEmpty() {
        return this.h == 0;
    }

    @Override
    public bga iterator() {
        return new a(this, null);
    }

    @Override
    public int size() {
        return this.h;
    }

    public class a implements nga, bga {
        public int b;

        public a() {
            this.b = 0;
        }

        @Override
        public zfa get(int i) {
            return dh.this.get(i);
        }

        @Override
        public boolean hasNext() {
            return this.b < dh.this.h;
        }

        @Override
        public zfa next() {
            if (this.b >= dh.this.h) {
                return null;
            }
            int i = this.b;
            this.b = i + 1;
            return get(i);
        }

        @Override
        public int size() {
            return dh.this.size();
        }

        public a(dh dhVar, ch chVar) {
            this();
        }
    }
}
