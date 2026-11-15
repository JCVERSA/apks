package defpackage;

import androidx.media3.common.MimeTypes;
import java.util.Arrays;
import java.util.Objects;

public final class jce implements iqe {
    public final String a;
    public final String b;
    public final long c;
    public final long d;
    public final byte[] e;
    public int f;

    static {
        gpj gpjVar = new gpj();
        gpjVar.E(MimeTypes.APPLICATION_ID3);
        gpjVar.K();
        gpj gpjVar2 = new gpj();
        gpjVar2.E(MimeTypes.APPLICATION_SCTE35);
        gpjVar2.K();
    }

    public jce(String str, String str2, long j, long j2, byte[] bArr) {
        this.a = str;
        this.b = str2;
        this.c = j;
        this.d = j2;
        this.e = bArr;
    }

    @Override
    public final void a(une uneVar) {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && jce.class == obj.getClass()) {
            jce jceVar = (jce) obj;
            if (this.c == jceVar.c && this.d == jceVar.d && Objects.equals(this.a, jceVar.a) && Objects.equals(this.b, jceVar.b) && Arrays.equals(this.e, jceVar.e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((this.a.hashCode() + 527) * 31) + this.b.hashCode();
        long j = this.c;
        int iHashCode2 = (((((iHashCode * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) this.d)) * 31) + Arrays.hashCode(this.e);
        this.f = iHashCode2;
        return iHashCode2;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.a + ", id=" + this.d + ", durationMs=" + this.c + ", value=" + this.b;
    }
}
