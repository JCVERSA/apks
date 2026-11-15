package k2;

public final class o {

    public final int f63659a;

    public final int f63660b;

    public final String f63661c;

    private o(int i10, int i11, String str) {
        this.f63659a = i10;
        this.f63660b = i11;
        this.f63661c = str;
    }

    public static o a(androidx.media3.common.util.j0 j0Var) {
        String str;
        j0Var.X(2);
        int iH = j0Var.H();
        int i10 = iH >> 1;
        int iH2 = ((j0Var.H() >> 3) & 31) | ((iH & 1) << 5);
        if (i10 == 4 || i10 == 5 || i10 == 7 || i10 == 8) {
            str = "dvhe";
        } else if (i10 == 9) {
            str = "dvav";
        } else {
            if (i10 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(i10 < 10 ? ".0" : ".");
        sb2.append(i10);
        sb2.append(iH2 < 10 ? ".0" : ".");
        sb2.append(iH2);
        return new o(i10, iH2, sb2.toString());
    }
}
