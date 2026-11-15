package com.bytedance.sdk.openadsdk.core.Jcg;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.settings.vS;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;

public class Sj {
    private static volatile Sj Sj;
    private static volatile long TKC;
    private static volatile boolean sP;
    private Handler HiB;
    private final Queue<C0236Sj> EjP = new LinkedList();
    private final vS vS = dNu.EjP();

    private static class C0236Sj {
        private final long Sj;
        private final String sP;

        private C0236Sj(long j10, String str) {
            this.Sj = j10;
            this.sP = str;
        }
    }

    private Sj() {
    }

    private synchronized boolean sP(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iZR = this.vS.zR();
        long jDx = this.vS.dx();
        if (this.EjP.size() <= 0 || this.EjP.size() < iZR) {
            this.EjP.offer(new C0236Sj(jCurrentTimeMillis, str));
        } else {
            long jAbs = Math.abs(jCurrentTimeMillis - this.EjP.peek().Sj);
            if (jAbs <= jDx) {
                sP(jDx - jAbs);
                return true;
            }
            this.EjP.poll();
            this.EjP.offer(new C0236Sj(jCurrentTimeMillis, str));
        }
        return false;
    }

    public synchronized String TKC() {
        String str;
        try {
            HashMap map = new HashMap();
            for (C0236Sj c0236Sj : this.EjP) {
                if (map.containsKey(c0236Sj.sP)) {
                    map.put(c0236Sj.sP, Integer.valueOf(((Integer) map.get(c0236Sj.sP)).intValue() + 1));
                } else {
                    map.put(c0236Sj.sP, 1);
                }
            }
            str = "";
            int i10 = Integer.MIN_VALUE;
            for (String str2 : map.keySet()) {
                int iIntValue = ((Integer) map.get(str2)).intValue();
                if (i10 < iIntValue) {
                    str = str2;
                    i10 = iIntValue;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return str;
    }

    public static Sj Sj() {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public synchronized boolean Sj(String str) {
        try {
            if (sP(str)) {
                Sj(true);
                Sj(TKC);
            } else {
                Sj(false);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return sP;
    }

    private synchronized void Sj(long j10) {
        try {
            if (this.HiB == null) {
                this.HiB = new Handler(Looper.getMainLooper());
            }
            this.HiB.postDelayed(new Runnable() {
                @Override
                public void run() {
                    Sj.this.Sj(false);
                }
            }, j10);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean sP() {
        return sP;
    }

    private synchronized void sP(long j10) {
        TKC = j10;
    }

    public synchronized void Sj(boolean z10) {
        sP = z10;
    }
}
