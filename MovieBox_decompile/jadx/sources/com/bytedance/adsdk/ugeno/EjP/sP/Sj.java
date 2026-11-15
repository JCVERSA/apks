package com.bytedance.adsdk.ugeno.EjP.sP;

import com.bytedance.adsdk.ugeno.EjP.vS;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;

public abstract class Sj {
    public static final HashSet<String> Sj = new HashSet<>(Arrays.asList("convert", "dislike", "openAppPermission", "openAppPolicy", "openPrivacy", "openAppFunction", "close", "skip", "videoControl", "pauseVideo", "resumeVideo", "muteVideo", "preventEvent"));
    protected String EjP;
    protected String HiB;
    protected String Jcg;
    protected com.bytedance.adsdk.ugeno.sP.TKC TKC;
    protected vS.Sj sP;
    protected Map<String, String> vS;

    public static class C0178Sj {
        public static Sj Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
            if (sj2 == null) {
                return null;
            }
            com.bytedance.adsdk.ugeno.EjP.sP sPVarSj = com.bytedance.adsdk.ugeno.EjP.EjP.Sj(sj2.sP());
            if (sPVarSj == null) {
                return new TKC(tkc, str, sj2);
            }
            Sj Sj = sPVarSj.Sj(tkc, str, sj2);
            return Sj == null ? new TKC(tkc, str, sj2) : Sj;
        }
    }

    public Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, String str, vS.Sj sj2) {
        this.TKC = tkc;
        this.sP = sj2;
        this.Jcg = str;
        sP();
    }

    private void sP() {
        vS.Sj sj2 = this.sP;
        if (sj2 == null) {
            return;
        }
        this.EjP = sj2.Sj();
        this.HiB = this.sP.sP();
        this.vS = this.sP.TKC();
    }

    public abstract void Sj();
}
