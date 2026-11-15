package defpackage;

import com.google.android.exoplayer2.k;
import java.util.Arrays;
import java.util.Comparator;

public abstract class ad0 implements qi3 {
    public final zua a;
    public final int b;
    public final int[] c;
    public final int d;
    public final k[] e;
    public final long[] f;
    public int g;

    public ad0(zua zuaVar, int[] iArr, int i) {
        int i2 = 0;
        zi.g(iArr.length > 0);
        this.d = i;
        this.a = (zua) zi.e(zuaVar);
        int length = iArr.length;
        this.b = length;
        this.e = new k[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.e[i3] = zuaVar.c(iArr[i3]);
        }
        Arrays.sort(this.e, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return ad0.b((k) obj, (k) obj2);
            }
        });
        this.c = new int[this.b];
        while (true) {
            int i4 = this.b;
            if (i2 >= i4) {
                this.f = new long[i4];
                return;
            } else {
                this.c[i2] = zuaVar.d(this.e[i2]);
                i2++;
            }
        }
    }

    public static int b(k kVar, k kVar2) {
        return kVar2.i - kVar.i;
    }

    @Override
    public void disable() {
    }

    @Override
    public void enable() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ad0 ad0Var = (ad0) obj;
        return this.a == ad0Var.a && Arrays.equals(this.c, ad0Var.c);
    }

    @Override
    public final k getFormat(int i) {
        return this.e[i];
    }

    @Override
    public final int getIndexInTrackGroup(int i) {
        return this.c[i];
    }

    @Override
    public final k getSelectedFormat() {
        return this.e[getSelectedIndex()];
    }

    @Override
    public final zua getTrackGroup() {
        return this.a;
    }

    public int hashCode() {
        if (this.g == 0) {
            this.g = (System.identityHashCode(this.a) * 31) + Arrays.hashCode(this.c);
        }
        return this.g;
    }

    @Override
    public final int indexOf(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override
    public final int length() {
        return this.c.length;
    }

    @Override
    public void onPlaybackSpeed(float f) {
    }
}
