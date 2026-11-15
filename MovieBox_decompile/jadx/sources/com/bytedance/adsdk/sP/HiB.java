package com.bytedance.adsdk.sP;

import android.content.Context;
import android.os.Trace;
import java.io.File;

public class HiB {
    private static int Dq = 0;
    private static boolean EjP = true;
    private static String[] HiB = null;
    private static int Jcg = 0;
    public static boolean Sj = false;
    private static com.bytedance.adsdk.sP.EjP.HiB TEQ = null;
    private static boolean TKC = true;
    private static volatile com.bytedance.adsdk.sP.EjP.Dq Ym = null;

    private static volatile com.bytedance.adsdk.sP.EjP.Jcg f20151aa = null;
    private static boolean sP = false;
    private static com.bytedance.adsdk.sP.EjP.vS uA;
    private static long[] vS;

    public static void Sj(String str) {
        if (sP) {
            int i10 = Jcg;
            if (i10 == 20) {
                Dq++;
                return;
            }
            HiB[i10] = str;
            vS[i10] = System.nanoTime();
            Trace.beginSection(str);
            Jcg++;
        }
    }

    public static float sP(String str) {
        int i10 = Dq;
        if (i10 > 0) {
            Dq = i10 - 1;
            return 0.0f;
        }
        if (!sP) {
            return 0.0f;
        }
        int i11 = Jcg - 1;
        Jcg = i11;
        if (i11 == -1) {
            throw new IllegalStateException("Can't end trace section. There are none.");
        }
        if (str.equals(HiB[i11])) {
            Trace.endSection();
            return (System.nanoTime() - vS[Jcg]) / 1000000.0f;
        }
        throw new IllegalStateException("Unbalanced trace call " + str + ". Expected " + HiB[Jcg] + ".");
    }

    public static com.bytedance.adsdk.sP.EjP.Dq Sj(Context context) {
        com.bytedance.adsdk.sP.EjP.Dq dq2;
        com.bytedance.adsdk.sP.EjP.Dq dq3 = Ym;
        if (dq3 != null) {
            return dq3;
        }
        synchronized (com.bytedance.adsdk.sP.EjP.Dq.class) {
            try {
                dq2 = Ym;
                if (dq2 == null) {
                    com.bytedance.adsdk.sP.EjP.Jcg jcgSP = sP(context);
                    com.bytedance.adsdk.sP.EjP.vS sPVar = uA;
                    if (sPVar == null) {
                        sPVar = new com.bytedance.adsdk.sP.EjP.sP();
                    }
                    dq2 = new com.bytedance.adsdk.sP.EjP.Dq(jcgSP, sPVar);
                    Ym = dq2;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return dq2;
    }

    public static com.bytedance.adsdk.sP.EjP.Jcg sP(Context context) {
        com.bytedance.adsdk.sP.EjP.Jcg jcg;
        if (!TKC) {
            return null;
        }
        final Context applicationContext = context.getApplicationContext();
        com.bytedance.adsdk.sP.EjP.Jcg jcg2 = f20151aa;
        if (jcg2 != null) {
            return jcg2;
        }
        synchronized (com.bytedance.adsdk.sP.EjP.Jcg.class) {
            try {
                jcg = f20151aa;
                if (jcg == null) {
                    com.bytedance.adsdk.sP.EjP.HiB hiB = TEQ;
                    if (hiB == null) {
                        hiB = new com.bytedance.adsdk.sP.EjP.HiB() {
                            @Override
                            public File Sj() {
                                return new File(applicationContext.getCacheDir(), "lottie_network_cache");
                            }
                        };
                    }
                    jcg = new com.bytedance.adsdk.sP.EjP.Jcg(hiB);
                    f20151aa = jcg;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return jcg;
    }

    public static boolean Sj() {
        return EjP;
    }
}
