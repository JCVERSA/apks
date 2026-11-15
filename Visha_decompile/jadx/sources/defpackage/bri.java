package defpackage;

import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

public final class bri implements o9i {
    public static final byte[] e = {0};
    public final qmi a;
    public final int b;
    public final byte[] c;
    public final byte[] d;

    public bri(kki kkiVar) {
        this.a = new yqi(kkiVar.e().d(a9i.a()));
        this.b = kkiVar.d().b();
        this.c = kkiVar.b().d();
        if (kkiVar.d().f().equals(qki.d)) {
            this.d = Arrays.copyOf(e, 1);
        } else {
            this.d = new byte[0];
        }
    }

    public static o9i a(kki kkiVar) {
        return new bri(kkiVar);
    }

    public static o9i b(zki zkiVar) {
        return new bri(zkiVar);
    }

    public final byte[] c(byte[] bArr) {
        byte[] bArr2 = this.d;
        return bArr2.length > 0 ? cqi.b(this.c, this.a.a(cqi.b(bArr, bArr2), this.b)) : cqi.b(this.c, this.a.a(bArr, this.b));
    }

    public bri(zki zkiVar) {
        String strValueOf = String.valueOf(zkiVar.d().f());
        this.a = new ari("HMAC".concat(strValueOf), new SecretKeySpec(zkiVar.e().d(a9i.a()), "HMAC"));
        this.b = zkiVar.d().b();
        this.c = zkiVar.b().d();
        if (zkiVar.d().g().equals(hli.d)) {
            this.d = Arrays.copyOf(e, 1);
        } else {
            this.d = new byte[0];
        }
    }

    public bri(qmi qmiVar, int i) {
        this.a = qmiVar;
        this.b = i;
        this.c = new byte[0];
        this.d = new byte[0];
        qmiVar.a(new byte[0], i);
    }
}
