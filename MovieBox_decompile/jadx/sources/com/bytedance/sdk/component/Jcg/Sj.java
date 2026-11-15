package com.bytedance.sdk.component.Jcg;

import android.os.Bundle;
import com.bytedance.sdk.component.Jcg.TKC.TKC;
import com.bytedance.sdk.component.Jcg.sP.EjP;
import com.bytedance.sdk.component.sP.Sj.Dq;
import com.bytedance.sdk.component.sP.Sj.Ym;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public class Sj {
    private Ym Sj;

    public static final class C0194Sj {
        private Set<String> HiB;
        private Bundle vS;
        final List<Dq> EjP = new ArrayList();
        int Sj = 10000;
        int sP = 10000;
        int TKC = 10000;

        public C0194Sj Sj(boolean z10) {
            return this;
        }

        public C0194Sj TKC(long j10, TimeUnit timeUnit) {
            this.TKC = Sj("timeout", j10, timeUnit);
            return this;
        }

        public C0194Sj sP(long j10, TimeUnit timeUnit) {
            this.sP = Sj("timeout", j10, timeUnit);
            return this;
        }

        public C0194Sj Sj(long j10, TimeUnit timeUnit) {
            this.Sj = Sj("timeout", j10, timeUnit);
            return this;
        }

        public C0194Sj Sj(Dq dq2) {
            this.EjP.add(dq2);
            return this;
        }

        private static int Sj(String str, long j10, TimeUnit timeUnit) {
            if (j10 < 0) {
                throw new IllegalArgumentException(str + " < 0");
            }
            if (timeUnit != null) {
                long millis = timeUnit.toMillis(j10);
                if (millis > 2147483647L) {
                    throw new IllegalArgumentException(str + " too large.");
                }
                if (millis != 0 || j10 <= 0) {
                    return (int) millis;
                }
                throw new IllegalArgumentException(str + " too small.");
            }
            throw new NullPointerException("unit == null");
        }

        public Sj Sj() {
            return new Sj(this);
        }
    }

    public static void Sj() {
        TKC.Sj(TKC.Sj.DEBUG);
    }

    public com.bytedance.sdk.component.Jcg.sP.Sj EjP() {
        return new com.bytedance.sdk.component.Jcg.sP.Sj(this.Sj);
    }

    public Ym HiB() {
        return this.Sj;
    }

    public com.bytedance.sdk.component.Jcg.sP.sP TKC() {
        return new com.bytedance.sdk.component.Jcg.sP.sP(this.Sj);
    }

    public EjP sP() {
        return new EjP(this.Sj);
    }

    private Sj(C0194Sj c0194Sj) {
        Ym.Sj sj2 = new Ym.Sj();
        long j10 = c0194Sj.Sj;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Ym.Sj sjSP = sj2.Sj(j10, timeUnit).TKC(c0194Sj.TKC, timeUnit).sP(c0194Sj.sP, timeUnit);
        List<Dq> list = c0194Sj.EjP;
        if (list != null && list.size() > 0) {
            Iterator<Dq> it = c0194Sj.EjP.iterator();
            while (it.hasNext()) {
                sjSP.Sj(it.next());
            }
        }
        if (c0194Sj.vS != null) {
            Bundle unused = c0194Sj.vS;
        }
        Set unused2 = c0194Sj.HiB;
        this.Sj = sjSP.Sj();
    }
}
