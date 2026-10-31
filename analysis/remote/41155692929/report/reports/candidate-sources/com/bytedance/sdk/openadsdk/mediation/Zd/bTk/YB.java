package com.bytedance.sdk.openadsdk.mediation.Zd.bTk;

import android.text.TextUtils;
import android.util.Pair;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class YB {
    private static final String EW = "PAGMediationSDK_" + YB.class.getSimpleName();
    private Map<String, Pair<String, String>> NP;

    public class AnonymousClass1 implements Runnable {
        final String EW;
        final String NP;

        public AnonymousClass1(String str, String str2) {
            this.EW = str;
            this.NP = str2;
        }

        @Override
        public void run() {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(YB.NP(), "adn addShowFreqctlCount ritId = " + this.EW + " adnSlotId = " + this.NP);
            oIF oifEW = YB.EW(YB.this, this.EW, this.NP);
            if (oifEW == null || !oifEW.dZO()) {
                return;
            }
            for (oA oAVar : oifEW.dms()) {
                if (oAVar.oA() < oAVar.EW()) {
                    YB.EW(YB.this, oifEW, oAVar.lc(), oAVar.oA() + 1);
                }
            }
        }
    }

    public static class EW {
        private static YB EW = new YB(null);

        public static YB EW() {
            return EW;
        }
    }

    private YB() {
        this.NP = new ConcurrentHashMap();
    }

    public YB(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static YB EW() {
        return EW.EW();
    }

    public static oIF EW(YB yb, String str, String str2) {
        return yb.oA(str, str2);
    }

    public static void EW(YB yb, oIF oif, String str, int i) {
        yb.EW(oif, str, i);
    }

    private void EW(oIF oif, String str, int i) {
        dZO.EW().EW(oif, str, i);
    }

    private void EW(oIF oif, String str, long j) {
        dZO.EW().EW(oif, str, j);
    }

    public static String NP() {
        return EW;
    }

    private oIF oA(String str, String str2) {
        return dZO.EW().NP(str, str2);
    }

    public Pair<String, String> EW(String str, String str2) {
        return this.NP.get(str + "_" + str2);
    }

    public boolean EW(oIF oif) {
        if (oif == null) {
            return false;
        }
        oIF oifOA = oA(oif.NP(), oif.lc());
        if (oifOA == null) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(EW, "adn freqctl rule is empty direct storage");
            return true;
        }
        if (TextUtils.isEmpty(oif.bTk())) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(EW, "adn freqctl version Empty Clear local data ");
            Zd(oifOA.NP(), oifOA.lc());
            return false;
        }
        if (TextUtils.equals(oifOA.bTk(), oif.bTk())) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(EW, "adn freqctl version unanimous version = " + oifOA.bTk() + " No need to deal with");
            return false;
        }
        com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(EW, "adn freqctl version Inconsistent, cache new rules old version = " + oifOA.bTk() + "  new version " + oif.bTk());
        return true;
    }

    public void NP(oIF oif) {
        dms.EW().NP(oif);
    }

    public void NP(String str, String str2) {
        com.bytedance.sdk.openadsdk.mediation.EW.lc.lc.EW(new AnonymousClass1(str, str2));
    }

    public void Zd(String str, String str2) {
        dZO.EW().EW(str, str2);
    }

    public boolean lc(String str, String str2) {
        oIF oifOA = oA(str, str2);
        if (oifOA == null || !oifOA.dZO()) {
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(EW, "check adn FreqControl ritId = " + str + " adnSlotId = " + str2 + ", adn FreqControl not activated");
            return true;
        }
        for (oA oAVar : oifOA.dms()) {
            Date date = new Date();
            String str3 = EW;
            com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(str3, "check adn FreqControl ritId = " + str + " adnSlotId = " + str2 + "  date = " + date.getTime() + " item.getEffectiveTime() = " + oAVar.Zd());
            if (date.getTime() > oAVar.Zd()) {
                EW(oifOA, oAVar.lc(), 0);
                EW(oifOA, oAVar.lc(), bTk.EW(oAVar.NP()));
                com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(str3, "check adn FreqControl expired count needs to be cleared to 0, expiration time needs to be updated = " + oAVar.lc());
            } else {
                if (oAVar.oA() >= oAVar.EW()) {
                    com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(str3, "check adn FreqControl can't display showCount>=limitCount ,ritId = " + str + " adnSlotId = " + str2 + " ruleId = " + oAVar.lc() + " count = " + oAVar.oA() + " showFreCount = " + oAVar.EW());
                    Map<String, Pair<String, String>> map = this.NP;
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append("_");
                    sb.append(str2);
                    String string = sb.toString();
                    String strLc = oAVar.lc();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(oAVar.oA());
                    map.put(string, new Pair<>(strLc, sb2.toString()));
                    return false;
                }
                com.bytedance.sdk.openadsdk.mediation.EW.lc.EW.EW(str3, "check adn FreqControl can display showCount<limitCount ,ritId = " + str + " adnSlotId = " + str2 + " ruleId = " + oAVar.lc() + " count = " + oAVar.oA() + " showFreCount = " + oAVar.EW());
            }
        }
        return true;
    }
}
