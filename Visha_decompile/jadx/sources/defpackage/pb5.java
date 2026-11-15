package defpackage;

import com.alibaba.android.arouter.utils.Consts;
import java.util.Arrays;
import kotlinx.serialization.descriptors.b;

public final class pb5 {
    public Object[] a = new Object[8];
    public int[] b;
    public int c;

    public static final class a {
        public static final a a = new a();
    }

    public pb5() {
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        this.b = iArr;
        this.c = -1;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        sb.append("$");
        int i = this.c + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = this.a[i2];
            if (obj instanceof kotlinx.serialization.descriptors.a) {
                kotlinx.serialization.descriptors.a aVar = (kotlinx.serialization.descriptors.a) obj;
                if (!y45.e(aVar.getKind(), b.C0418b.a)) {
                    int i3 = this.b[i2];
                    if (i3 >= 0) {
                        sb.append(Consts.DOT);
                        sb.append(aVar.f(i3));
                    }
                } else if (this.b[i2] != -1) {
                    sb.append("[");
                    sb.append(this.b[i2]);
                    sb.append("]");
                }
            } else if (obj != a.a) {
                sb.append("[");
                sb.append("'");
                sb.append(obj);
                sb.append("'");
                sb.append("]");
            }
        }
        String string = sb.toString();
        y45.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void b() {
        int i = this.c;
        int[] iArr = this.b;
        if (iArr[i] == -2) {
            iArr[i] = -1;
            this.c = i - 1;
        }
        int i2 = this.c;
        if (i2 != -1) {
            this.c = i2 - 1;
        }
    }

    public final void c(kotlinx.serialization.descriptors.a aVar) {
        y45.j(aVar, "sd");
        int i = this.c + 1;
        this.c = i;
        if (i == this.a.length) {
            e();
        }
        this.a[i] = aVar;
    }

    public final void d() {
        int[] iArr = this.b;
        int i = this.c;
        if (iArr[i] == -2) {
            this.a[i] = a.a;
        }
    }

    public final void e() {
        int i = this.c * 2;
        Object[] objArrCopyOf = Arrays.copyOf(this.a, i);
        y45.i(objArrCopyOf, "copyOf(this, newSize)");
        this.a = objArrCopyOf;
        int[] iArrCopyOf = Arrays.copyOf(this.b, i);
        y45.i(iArrCopyOf, "copyOf(this, newSize)");
        this.b = iArrCopyOf;
    }

    public final void f(Object obj) {
        int[] iArr = this.b;
        int i = this.c;
        if (iArr[i] != -2) {
            int i2 = i + 1;
            this.c = i2;
            if (i2 == this.a.length) {
                e();
            }
        }
        Object[] objArr = this.a;
        int i3 = this.c;
        objArr[i3] = obj;
        this.b[i3] = -2;
    }

    public final void g(int i) {
        this.b[this.c] = i;
    }

    public String toString() {
        return a();
    }
}
