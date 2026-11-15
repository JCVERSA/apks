package com.bytedance.sdk.openadsdk.uvD;

import java.util.ArrayList;
import java.util.List;

public class sP {
    public static int EjP = 2;
    public static int HiB = 3;
    public static int Sj = -1;
    public static int TKC = 1;
    public static int sP;
    private int vS = Sj;
    private long Jcg = 0;
    private long Dq = 0;
    private final List<TKC> uA = new ArrayList();
    private long TEQ = 0;

    public void EjP(long j10) {
        int i10 = this.vS;
        if (i10 == Sj || i10 != EjP) {
            return;
        }
        this.vS = TKC;
        this.uA.add(new TKC(this.TEQ, j10));
        this.TEQ = 0L;
    }

    public void Sj(long j10) {
        this.vS = sP;
        this.Jcg = j10;
    }

    public void TKC(long j10) {
        int i10;
        int i11 = this.vS;
        if (i11 == Sj || i11 == (i10 = EjP) || i11 == HiB) {
            return;
        }
        this.vS = i10;
        this.TEQ = j10;
    }

    public void sP(long j10) {
        int i10;
        int i11 = this.vS;
        if (i11 == Sj || i11 == (i10 = HiB)) {
            return;
        }
        this.vS = i10;
        this.Dq = j10;
    }

    public long Sj(long j10, long j11) {
        long j12;
        long j13;
        long jSP;
        long j14 = this.Dq;
        if (j14 != 0 && j10 > j14) {
            return 0L;
        }
        int i10 = 0;
        for (TKC tkc : this.uA) {
            if (tkc.sP() > j10) {
                if (j10 < tkc.Sj()) {
                    j13 = i10;
                    jSP = tkc.sP() - tkc.Sj();
                } else {
                    j13 = i10;
                    jSP = tkc.sP() - j10;
                }
                i10 = (int) (j13 + jSP);
            }
        }
        long j15 = this.Jcg;
        if (j15 < j10) {
            long j16 = this.TEQ;
            if (j16 == 0) {
                j16 = this.Dq;
                if (j16 == 0) {
                    j12 = j11 - j10;
                }
            } else if (j16 <= j10) {
                return 0L;
            }
            return (j16 - j10) - ((long) i10);
        }
        long j17 = this.TEQ;
        if (j17 == 0) {
            j17 = this.Dq;
            if (j17 == 0) {
                j12 = j11 - j15;
            }
        } else if (j17 <= j15) {
            return 0L;
        }
        return (j17 - j15) - ((long) i10);
        return j12 - ((long) i10);
    }

    public int Sj() {
        return this.vS;
    }
}
