package com.bytedance.sdk.openadsdk.vS;

import com.bytedance.sdk.openadsdk.core.TKC;
import com.bytedance.sdk.openadsdk.core.sef;
import com.cloud.tmc.kernel.utils.UrlUtils;

public class Sj {
    private static volatile Sj Sj;
    private int[] Dq;
    private boolean EjP;
    private boolean Fmk;
    private int[] HiB;
    private int[] Jcg;
    private boolean TEQ;
    private boolean TKC;
    private boolean Ym;
    private int Zq;

    private int[] f20525aa;
    private boolean dNu;
    private boolean sP;
    private boolean sef;
    private int[] uA;
    private boolean uvD;
    private int[] vS;

    private Sj() {
        sP();
    }

    public int[] Fmk() {
        return this.uA;
    }

    public int[] TEQ() {
        return this.vS;
    }

    public boolean TzV() {
        return this.dNu;
    }

    public int[] Ym() {
        return this.Jcg;
    }

    public boolean Zq() {
        return this.Ym;
    }

    public int[] aa() {
        return this.Dq;
    }

    public boolean dNu() {
        return this.Fmk;
    }

    public boolean sef() {
        return this.TEQ;
    }

    public int[] uvD() {
        return this.f20525aa;
    }

    public boolean Dq() {
        return this.EjP;
    }

    public boolean Jcg() {
        return this.TKC;
    }

    public int[] uA() {
        return this.HiB;
    }

    public int EjP() {
        return this.Zq;
    }

    public boolean HiB() {
        return this.uvD;
    }

    public boolean vS() {
        return this.sP;
    }

    public int[] TKC(String[] strArr) {
        int length = strArr.length;
        int[] iArr = new int[length];
        int i10 = 0;
        for (String str : strArr) {
            try {
                int i11 = Integer.parseInt(str);
                iArr[i10] = i11;
                if (i11 > 0) {
                    i10++;
                }
            } catch (NumberFormatException unused) {
            }
        }
        if (i10 == length) {
            return iArr;
        }
        int[] iArr2 = new int[i10];
        System.arraycopy(iArr, 0, iArr2, 0, i10);
        return iArr2;
    }

    public void sP() {
        sef.sP().post(new Runnable() {
            @Override
            public void run() {
                Sj.this.sef = com.bytedance.sdk.openadsdk.dx.Sj.Sj("feature_switch", false);
                if (Sj.this.sef) {
                    try {
                        Sj.this.dNu = com.bytedance.sdk.openadsdk.dx.Sj.Sj("exclude_banner_native", false);
                        Sj.this.Zq = com.bytedance.sdk.openadsdk.dx.Sj.Sj("feature_timer_interval", 10000);
                        Sj.this.uvD = com.bytedance.sdk.openadsdk.dx.Sj.Sj("enable_feature_cids", true);
                        String[] strArrSplit = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_ad_show_cnt", "1,3,5&session").split(UrlUtils.AND_MARK);
                        String[] strArrSplit2 = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_ad_click_cnt", "1,3,5&session").split(UrlUtils.AND_MARK);
                        String[] strArrSplit3 = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_video_play_cnt", "1,3,5&session").split(UrlUtils.AND_MARK);
                        String[] strArrSplit4 = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_dislike_cnt", "1,3,5session").split(",");
                        Sj sj2 = Sj.this;
                        sj2.sP = sj2.Sj(strArrSplit);
                        Sj sj3 = Sj.this;
                        sj3.TKC = sj3.Sj(strArrSplit2);
                        Sj sj4 = Sj.this;
                        sj4.EjP = sj4.Sj(strArrSplit3);
                        Sj sj5 = Sj.this;
                        sj5.HiB = sj5.sP(strArrSplit);
                        Sj sj6 = Sj.this;
                        sj6.vS = sj6.sP(strArrSplit2);
                        Sj sj7 = Sj.this;
                        sj7.Jcg = sj7.sP(strArrSplit3);
                        Sj sj8 = Sj.this;
                        sj8.f20525aa = sj8.TKC(strArrSplit4);
                        String[] strArrSplit5 = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_landingPage_stay_time", "1,3,5&session").split(UrlUtils.AND_MARK);
                        String[] strArrSplit6 = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_video_stay_time", "1,3,5&session").split(UrlUtils.AND_MARK);
                        Sj sj9 = Sj.this;
                        sj9.TEQ = sj9.Sj(strArrSplit5);
                        Sj sj10 = Sj.this;
                        sj10.Ym = sj10.Sj(strArrSplit6);
                        Sj sj11 = Sj.this;
                        sj11.Dq = sj11.sP(strArrSplit5);
                        Sj sj12 = Sj.this;
                        sj12.uA = sj12.sP(strArrSplit6);
                        Sj.this.Fmk = com.bytedance.sdk.openadsdk.dx.Sj.Sj("pag_video_30p_session", true);
                    } catch (Throwable unused) {
                    }
                }
            }
        });
    }

    public int[] sP(String[] strArr) {
        if (strArr.length > 0) {
            return TKC(strArr[0].split(","));
        }
        return new int[0];
    }

    public static Sj Sj() {
        if (Sj == null) {
            synchronized (TKC.class) {
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

    public boolean TKC() {
        return this.sef;
    }

    public boolean Sj(String[] strArr) {
        if (strArr.length == 2) {
            return "session".equals(strArr[1]);
        }
        if (strArr.length == 1) {
            return "session".equals(strArr[0]);
        }
        return false;
    }
}
