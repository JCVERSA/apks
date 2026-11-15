package defpackage;

public final class zti implements oti {
    public final rti a;
    public final String b;
    public final Object[] c;
    public final int d;

    public zti(rti rtiVar, String str, Object[] objArr) {
        this.a = rtiVar;
        this.b = str;
        this.c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.d = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char cCharAt2 = str.charAt(i2);
            if (cCharAt2 < 55296) {
                this.d = i | (cCharAt2 << i3);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    public final String a() {
        return this.b;
    }

    public final Object[] b() {
        return this.c;
    }

    @Override
    public final rti zza() {
        return this.a;
    }

    @Override
    public final boolean zzb() {
        return (this.d & 2) == 2;
    }

    @Override
    public final int zzc() {
        int i = this.d;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
