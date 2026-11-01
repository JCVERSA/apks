package a0;

import ru.zdevs.zarchiver.R;

public final class r0 extends w0.c {

    public final String f99e;

    public final boolean f100f;

    public r0(String str, boolean z2) {
        this.f99e = str;
        this.f100f = z2;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0049 A[PHI: r3
      0x0049: PHI (r3v1 x0.a$a) = (r3v0 x0.a$a), (r3v0 x0.a$a), (r3v0 x0.a$a), (r3v3 x0.a$a), (r3v3 x0.a$a) binds: [B:10:0x0026, B:11:0x0028, B:13:0x002e, B:15:0x0034, B:22:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
    @Override
    public final w0.a.b f() {
        int i2;
        o0.a aVarC = o0.a.c(t0.b.f2092m);
        if (!aVarC.f()) {
            return new z(R.string.OPT_ROOT_NOT_FOUND);
        }
        String str = this.f99e;
        x0.a.C0041a c0041aB = x0.a.b(str, true);
        if (c0041aB != null) {
            str = c0041aB.f2245b;
        }
        boolean z2 = this.f100f;
        int iA = p0.e.a(aVarC, str, c0041aB, z2);
        if (iA != 0 || c0041aB == null || !x0.a.d(aVarC) || (c0041aB = x0.a.b(str, true)) == null) {
            i2 = iA;
        } else {
            String str2 = c0041aB.f2247d;
            if ((str2 != null && str2.contains("rw")) != z2) {
                i2 = -1;
            } else {
                i2 = iA;
            }
        }
        aVarC.close();
        return new t(this.f99e, c0041aB == null ? null : c0041aB.f2244a, this.f100f, i2, aVarC.f1289c);
    }

    @Override
    public final int j() {
        return 100;
    }
}
