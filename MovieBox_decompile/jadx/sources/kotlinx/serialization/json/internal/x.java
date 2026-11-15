package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.jvm.internal.Intrinsics;

public final class x {

    private Object[] f65377a = new Object[8];

    private int[] f65378b;

    private int f65379c;

    private static final class a {

        public static final a f65380a = new a();

        private a() {
        }
    }

    public x() {
        int[] iArr = new int[8];
        for (int i10 = 0; i10 < 8; i10++) {
            iArr[i10] = -1;
        }
        this.f65378b = iArr;
        this.f65379c = -1;
    }

    private final void e() {
        int i10 = this.f65379c * 2;
        Object[] objArrCopyOf = Arrays.copyOf(this.f65377a, i10);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        this.f65377a = objArrCopyOf;
        int[] iArrCopyOf = Arrays.copyOf(this.f65378b, i10);
        Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
        this.f65378b = iArrCopyOf;
    }

    public final String a() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("$");
        int i10 = this.f65379c + 1;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = this.f65377a[i11];
            if (obj instanceof kotlinx.serialization.descriptors.f) {
                kotlinx.serialization.descriptors.f fVar = (kotlinx.serialization.descriptors.f) obj;
                if (!Intrinsics.c(fVar.d(), kotlinx.serialization.descriptors.i.b.f65102a)) {
                    int i12 = this.f65378b[i11];
                    if (i12 >= 0) {
                        sb2.append(".");
                        sb2.append(fVar.f(i12));
                    }
                } else if (this.f65378b[i11] != -1) {
                    sb2.append("[");
                    sb2.append(this.f65378b[i11]);
                    sb2.append("]");
                }
            } else if (obj != a.f65380a) {
                sb2.append("[");
                sb2.append("'");
                sb2.append(obj);
                sb2.append("'");
                sb2.append("]");
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final void b() {
        int i10 = this.f65379c;
        int[] iArr = this.f65378b;
        if (iArr[i10] == -2) {
            iArr[i10] = -1;
            this.f65379c = i10 - 1;
        }
        int i11 = this.f65379c;
        if (i11 != -1) {
            this.f65379c = i11 - 1;
        }
    }

    public final void c(kotlinx.serialization.descriptors.f sd2) {
        Intrinsics.h(sd2, "sd");
        int i10 = this.f65379c + 1;
        this.f65379c = i10;
        if (i10 == this.f65377a.length) {
            e();
        }
        this.f65377a[i10] = sd2;
    }

    public final void d() {
        int[] iArr = this.f65378b;
        int i10 = this.f65379c;
        if (iArr[i10] == -2) {
            this.f65377a[i10] = a.f65380a;
        }
    }

    public final void f(Object obj) {
        int[] iArr = this.f65378b;
        int i10 = this.f65379c;
        if (iArr[i10] != -2) {
            int i11 = i10 + 1;
            this.f65379c = i11;
            if (i11 == this.f65377a.length) {
                e();
            }
        }
        Object[] objArr = this.f65377a;
        int i12 = this.f65379c;
        objArr[i12] = obj;
        this.f65378b[i12] = -2;
    }

    public final void g(int i10) {
        this.f65378b[this.f65379c] = i10;
    }

    public String toString() {
        return a();
    }
}
