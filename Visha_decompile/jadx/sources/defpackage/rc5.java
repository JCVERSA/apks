package defpackage;

import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.h;
import java.io.Closeable;
import java.io.Flushable;
import java.util.Arrays;
import okio.BufferedSink;

public abstract class rc5 implements Closeable, Flushable {
    public String f;
    public boolean g;
    public boolean h;
    public boolean i;
    public int b = 0;
    public int[] c = new int[32];
    public String[] d = new String[32];
    public int[] e = new int[32];
    public int j = -1;

    public static rc5 F(BufferedSink bufferedSink) {
        return new jc5(bufferedSink);
    }

    public abstract rc5 D(String str);

    public abstract rc5 E();

    public final int G() {
        int i = this.b;
        if (i != 0) {
            return this.c[i - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void H() {
        int iG = G();
        if (iG != 5 && iG != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.i = true;
    }

    public final void I(int i) {
        int[] iArr = this.c;
        int i2 = this.b;
        this.b = i2 + 1;
        iArr[i2] = i;
    }

    public final void J(int i) {
        this.c[this.b - 1] = i;
    }

    public void K(String str) {
        if (str.isEmpty()) {
            str = null;
        }
        this.f = str;
    }

    public final void L(boolean z) {
        this.g = z;
    }

    public final void M(boolean z) {
        this.h = z;
    }

    public abstract rc5 N(double d);

    public abstract rc5 O(long j);

    public abstract rc5 P(Number number);

    public abstract rc5 Q(String str);

    public abstract rc5 R(boolean z);

    public abstract rc5 b();

    public abstract rc5 d();

    public final boolean e() {
        int i = this.b;
        int[] iArr = this.c;
        if (i != iArr.length) {
            return false;
        }
        if (i == 256) {
            throw new JsonDataException("Nesting too deep at " + getPath() + ": circular reference?");
        }
        this.c = Arrays.copyOf(iArr, iArr.length * 2);
        String[] strArr = this.d;
        this.d = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        int[] iArr2 = this.e;
        this.e = Arrays.copyOf(iArr2, iArr2.length * 2);
        if (!(this instanceof h)) {
            return true;
        }
        h hVar = (h) this;
        Object[] objArr = hVar.k;
        hVar.k = Arrays.copyOf(objArr, objArr.length * 2);
        return true;
    }

    public abstract rc5 g();

    public final String getPath() {
        return wb5.a(this.b, this.c, this.d, this.e);
    }

    public abstract rc5 h();

    public final String k() {
        String str = this.f;
        return str != null ? str : "";
    }

    public final boolean n() {
        return this.h;
    }

    public final boolean o() {
        return this.g;
    }
}
