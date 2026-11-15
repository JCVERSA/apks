package defpackage;

import androidx.media3.common.C;
import java.util.Arrays;
import java.util.List;

public final class hre {
    public final iqe[] a;

    public hre(long j, iqe... iqeVarArr) {
        this.a = iqeVarArr;
    }

    public final int a() {
        return this.a.length;
    }

    public final iqe b(int i) {
        return this.a[i];
    }

    public final hre c(iqe... iqeVarArr) {
        int length = iqeVarArr.length;
        if (length == 0) {
            return this;
        }
        iqe[] iqeVarArr2 = this.a;
        int i = kfh.a;
        int length2 = iqeVarArr2.length;
        Object[] objArrCopyOf = Arrays.copyOf(iqeVarArr2, length2 + length);
        System.arraycopy(iqeVarArr, 0, objArrCopyOf, length2, length);
        return new hre(C.TIME_UNSET, (iqe[]) objArrCopyOf);
    }

    public final hre d(hre hreVar) {
        return hreVar == null ? this : c(hreVar.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && hre.class == obj.getClass() && Arrays.equals(this.a, ((hre) obj).a);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.a) * 31) + ((int) (-9223372034707292159L));
    }

    public final String toString() {
        return "entries=" + Arrays.toString(this.a) + "";
    }

    public hre(List list) {
        this.a = (iqe[]) list.toArray(new iqe[0]);
    }
}
