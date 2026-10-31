package com.bytedance.sdk.openadsdk.mediation.Zd.bTk;

import android.text.TextUtils;
import android.util.Pair;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class dms {
    private Map<String, Long> EW;
    private Map<String, Pair<String, String>> NP;

    public class AnonymousClass1 implements Runnable {
        final String EW;

        public AnonymousClass1(String str) {
            this.EW = str;
        }

        @Override
        public void run() {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "updateShowPacingTime ritId = " + this.EW);
            seu seuVarOA = dms.this.oA(this.EW);
            if (seuVarOA == null || !seuVarOA.dZO()) {
                return;
            }
            Date date = new Date();
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "updateShowPacingTime save time = " + bTk.NP(date.getTime()));
            dms.this.EW(this.EW, date.getTime());
        }
    }

    public class AnonymousClass2 implements Runnable {
        final String EW;

        public AnonymousClass2(String str) {
            this.EW = str;
        }

        @Override
        public void run() {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "addShowFreqctlCount ritId = " + this.EW);
            oIF oifAJB = dms.this.AJB(this.EW);
            if (oifAJB == null || !oifAJB.dZO()) {
                return;
            }
            for (oA oAVar : oifAJB.dms()) {
                if (oAVar.oA() < oAVar.EW()) {
                    dms.EW(dms.this, oifAJB, oAVar.lc(), oAVar.oA() + 1);
                }
            }
        }
    }

    public static class EW {
        private static dms EW = new dms(null);

        public static dms EW() {
            return EW;
        }
    }

    private dms() {
        NP();
    }

    public dms(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static dms EW() {
        return EW.EW();
    }

    public static void EW(dms dmsVar, oIF oif, String str, int i) {
        dmsVar.EW(oif, str, i);
    }

    private void EW(oIF oif, String str, int i) {
        dZO.EW().EW(oif, str, i);
    }

    private void EW(oIF oif, String str, long j) {
        dZO.EW().EW(oif, str, j);
    }

    public oIF AJB(String str) {
        return dZO.EW().NP(str);
    }

    public long EW(String str) {
        Long l = this.EW.get(str);
        if (l == null) {
            return -2L;
        }
        return l.longValue();
    }

    public void EW(String str, long j) {
        AJB.EW().EW(str, j);
    }

    public boolean EW(oIF oif) {
        if (oif == null) {
            return false;
        }
        oIF oifAJB = AJB(oif.NP());
        if (oifAJB == null) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "freqctl rule is empty direct storage");
            return true;
        }
        if (TextUtils.isEmpty(oif.oA())) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "freqctl version Empty Clear local data ");
            seu(oifAJB.NP());
            return false;
        }
        if (TextUtils.equals(oifAJB.oA(), oif.oA())) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "freqctl version unanimous version = " + oifAJB.oA() + "No need to deal with");
            return false;
        }
        com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "freqctl version Inconsistent, cache new rules old version = " + oifAJB.oA() + "  new version " + oif.oA());
        return true;
    }

    public boolean EW(seu seuVar) {
        if (seuVar == null) {
            return false;
        }
        seu seuVarOA = oA(seuVar.NP());
        if (seuVarOA == null) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "pacing rule is empty direct storage");
            return true;
        }
        if (TextUtils.isEmpty(seuVar.ypP())) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "pacing ruleId Empty Clear local data ");
            Zd(seuVar.Zd());
            return false;
        }
        if (TextUtils.equals(seuVarOA.ypP(), seuVar.ypP())) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "pacing ruleId unanimous ruleId = " + seuVarOA.ypP() + " No need to deal with");
            return false;
        }
        com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "pacing ruleId Inconsistent, cache new rules old ruleId = " + seuVarOA.ypP() + "  new ruleId = " + seuVar.ypP());
        StringBuilder sb = new StringBuilder("pacing delete ritId = ");
        sb.append(seuVar.Zd());
        com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", sb.toString());
        Zd(seuVar.Zd());
        return true;
    }

    public void NP() {
        this.NP = new ConcurrentHashMap();
        this.EW = new ConcurrentHashMap();
    }

    public void NP(oIF oif) {
        dZO.EW().EW(oif);
    }

    public void NP(seu seuVar) {
        AJB.EW().EW(seuVar);
    }

    public void NP(String str) {
        com.bytedance.sdk.openadsdk.mediation.EW.lc.lc.EW(new AnonymousClass1(str));
    }

    public void Zd(String str) {
        AJB.EW().EW(str);
    }

    public Pair<String, String> bTk(String str) {
        return this.NP.get(str);
    }

    public boolean dZO(String str) {
        oIF oifAJB = AJB(str);
        if (oifAJB != null && oifAJB.dZO()) {
            for (oA oAVar : oifAJB.dms()) {
                Date date = new Date();
                com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "checkFreqctl date = " + date.getTime() + " item.getEffectiveTime() = " + oAVar.Zd());
                if (oAVar.EW() == 0) {
                    return true;
                }
                if (!oifAJB.AJB() && date.getTime() > oAVar.Zd()) {
                    EW(oifAJB, oAVar.lc(), 0);
                    EW(oifAJB, oAVar.lc(), bTk.EW(oAVar.NP()));
                    com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "checkFreqctl The count outside the validity period needs to be cleared to 0, and the expiration time needs to be updated = " + oAVar.lc());
                } else {
                    if (oAVar.oA() >= oAVar.EW()) {
                        com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "checkFreqctl It cannot be displayed when it is online ruleId = " + oAVar.lc() + " count = " + oAVar.oA());
                        Map<String, Pair<String, String>> map = this.NP;
                        String strLc = oAVar.lc();
                        StringBuilder sb = new StringBuilder();
                        sb.append(oAVar.oA());
                        map.put(str, new Pair<>(strLc, sb.toString()));
                        return false;
                    }
                    com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "checkFreqctl Can be displayed before it is online ruleId = " + oAVar.lc() + " count = " + oAVar.oA());
                }
            }
        }
        return true;
    }

    public boolean lc(String str) {
        seu seuVarOA = oA(str);
        if (seuVarOA != null && seuVarOA.dZO() && seuVarOA.Wd()) {
            long time = new Date().getTime();
            long jDms = seuVarOA.dms();
            long jDms2 = seuVarOA.dms() + seuVarOA.YB();
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW("PAGMediationSDK_IntervalShowControl", "checkPacing currentTime = " + bTk.NP(time) + " showTime = " + bTk.NP(jDms) + " pacingBean.getPacing() = " + seuVarOA.YB() + " pacingTime = " + bTk.NP(jDms2));
            if (time <= jDms2) {
                this.EW.put(str, Long.valueOf(time - jDms));
                return false;
            }
        }
        return true;
    }

    public seu oA(String str) {
        return AJB.EW().NP(str);
    }

    public void oIF(String str) {
        com.bytedance.sdk.openadsdk.mediation.EW.lc.lc.EW(new AnonymousClass2(str));
    }

    public void seu(String str) {
        dZO.EW().EW(str);
    }
}
