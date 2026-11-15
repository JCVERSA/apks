package defpackage;

import com.google.android.gms.internal.ads.l6;

public abstract class h3i extends c2i {
    public final CharSequence d;
    public int e = 0;
    public int f = Integer.MAX_VALUE;

    public h3i(l6 l6Var, CharSequence charSequence) {
        this.d = charSequence;
    }

    @Override
    public final Object a() {
        int iC;
        int i = this.e;
        while (true) {
            int i2 = this.e;
            if (i2 == -1) {
                b();
                return null;
            }
            int iD = d(i2);
            if (iD == -1) {
                iD = this.d.length();
                this.e = -1;
                iC = -1;
            } else {
                iC = c(iD);
                this.e = iC;
            }
            if (iC != i) {
                if (i < iD) {
                    this.d.charAt(i);
                }
                if (i < iD) {
                    this.d.charAt(iD - 1);
                }
                int i3 = this.f;
                if (i3 == 1) {
                    CharSequence charSequence = this.d;
                    int length = charSequence.length();
                    this.e = -1;
                    if (length > i) {
                        charSequence.charAt(length - 1);
                    }
                    iD = length;
                } else {
                    this.f = i3 - 1;
                }
                return this.d.subSequence(i, iD).toString();
            }
            int i4 = iC + 1;
            this.e = i4;
            if (i4 > this.d.length()) {
                this.e = -1;
            }
        }
    }

    public abstract int c(int i);

    public abstract int d(int i);
}
