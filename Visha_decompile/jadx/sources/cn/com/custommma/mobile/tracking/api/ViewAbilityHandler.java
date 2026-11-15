package cn.com.custommma.mobile.tracking.api;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import cn.com.custommma.mobile.tracking.util.DeviceInfoUtil;
import cn.com.custommma.mobile.tracking.util.SdkConfigUpdateUtil;
import cn.com.custommma.mobile.tracking.viewability.origin.CallBack;
import cn.com.custommma.mobile.tracking.viewability.origin.ViewAbilityStats;
import cn.com.custommma.mobile.tracking.viewability.origin.sniffer.ViewAbilityConfig;
import cn.com.custommma.mobile.tracking.viewability.webjs.ViewAbilityJsService;
import defpackage.na1;
import defpackage.oe5;
import defpackage.qx8;
import defpackage.rq5;
import defpackage.sbc;
import defpackage.tbc;
import defpackage.va1;
import defpackage.zf;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ViewAbilityHandler {
    public Context a;
    public tbc b;
    public HashMap c;
    public qx8 d;
    public ViewAbilityConfig e = i();
    public ViewAbilityJsService f;

    public enum MonitorType {
        CLICK,
        IMPRESSION,
        EXPOSEWITHABILITY,
        VIDEOEXPOSEWITHABILITY,
        VIEWABLE,
        NONVIEWABLE,
        UNMEASURED
    }

    public ViewAbilityHandler(Context context, tbc tbcVar, qx8 qx8Var) {
        this.c = null;
        this.a = context;
        this.b = tbcVar;
        this.c = new HashMap();
        this.d = qx8Var;
        this.f = new ViewAbilityJsService(context);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005a  */
    public static String b(Context context, String str, va1 va1Var) {
        String upperCase;
        String strL;
        byte b;
        try {
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (zf zfVar : va1Var.g.a) {
                if (zfVar.d && !TextUtils.isEmpty(zfVar.a)) {
                    String str2 = zfVar.a;
                    int iHashCode = str2.hashCode();
                    if (iHashCode != -376671318) {
                        if (iHashCode != 76079) {
                            if (iHashCode == 2250952 && str2.equals("IMEI")) {
                                b = 1;
                            } else {
                                b = -1;
                            }
                        } else if (str2.equals("MAC")) {
                            b = 0;
                        } else {
                            b = -1;
                        }
                    } else if (str2.equals("ANDROIDID")) {
                        b = 2;
                    } else {
                        b = -1;
                    }
                    if (b == 0) {
                        z = true;
                    } else if (b == 1) {
                        z2 = true;
                    } else if (b == 2) {
                        z3 = true;
                    }
                }
            }
            String strD = "";
            if (z) {
                if (SdkConfigUpdateUtil.e(a.g, "MAC")) {
                    a.f.put("MAC", DeviceInfoUtil.m(context).replace(StringUtils.PROCESS_POSTFIX_DELIMITER, "").toUpperCase());
                    a.g.put("MAC", Long.valueOf(System.currentTimeMillis()));
                }
                upperCase = (String) a.f.get("MAC");
                if (TextUtils.isEmpty(upperCase)) {
                    upperCase = DeviceInfoUtil.m(context).replace(StringUtils.PROCESS_POSTFIX_DELIMITER, "").toUpperCase();
                    a.f.put("MAC", upperCase);
                    a.g.put("MAC", Long.valueOf(System.currentTimeMillis()));
                }
            } else {
                upperCase = "";
            }
            if (z2) {
                if (SdkConfigUpdateUtil.e(a.g, "IMEI")) {
                    a.f.put("IMEI", DeviceInfoUtil.l(context));
                    a.g.put("IMEI", Long.valueOf(System.currentTimeMillis()));
                }
                strL = (String) a.f.get("IMEI");
                if (TextUtils.isEmpty(strL)) {
                    strL = DeviceInfoUtil.l(context);
                    a.f.put("IMEI", strL);
                    a.g.put("IMEI", Long.valueOf(System.currentTimeMillis()));
                }
            } else {
                strL = "";
            }
            if (z3) {
                if (SdkConfigUpdateUtil.e(a.g, "ANDROIDID")) {
                    a.f.put("ANDROIDID", DeviceInfoUtil.d(context));
                    a.g.put("ANDROIDID", Long.valueOf(System.currentTimeMillis()));
                }
                strD = (String) a.f.get("ANDROIDID");
                if (TextUtils.isEmpty(strD)) {
                    strD = DeviceInfoUtil.d(context);
                    a.f.put("ANDROIDID", strD);
                    a.g.put("ANDROIDID", Long.valueOf(System.currentTimeMillis()));
                }
            }
            return na1.j(strL + strD + upperCase + str + String.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
            return null;
        }
    }

    public final String a(va1 va1Var, ViewAbilityStats viewAbilityStats, String str) {
        try {
            HashMap map = va1Var.g.d;
            String str2 = va1Var.h;
            String str3 = va1Var.i;
            if (map == null) {
                return str;
            }
            String strReplaceAll = str;
            String str4 = "";
            String str5 = str4;
            for (String str6 : map.keySet()) {
                if (!TextUtils.isEmpty(str6)) {
                    String str7 = ((zf) map.get(str6)).b;
                    if (!TextUtils.isEmpty(str7) && !str6.equals(ViewAbilityStats.ADVIEWABILITY_RECORD) && !str6.equals(ViewAbilityStats.ADVIEWABILITY_VIDEO_DURATION) && !str6.equals(ViewAbilityStats.ADVIEWABILITY_VIDEO_PROGRESSPOINT)) {
                        if (str6.equals(ViewAbilityStats.ADVIEWABILITY_CONFIG_THRESHOLD)) {
                            try {
                                int uRLExposeDuration = viewAbilityStats.getURLExposeDuration();
                                str4 = str7 + str3 + String.valueOf(uRLExposeDuration > 0 ? uRLExposeDuration / 1000 : (viewAbilityStats.isVideoExpose() ? this.e.getVideoExposeValidDuration() : this.e.getExposeValidDuration()) / 1000);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else if (str6.equals(ViewAbilityStats.ADVIEWABILITY_CONFIG_AREA)) {
                            try {
                                str5 = str7 + str3 + String.valueOf((int) ((viewAbilityStats.getURLShowCoverRate() > 0.0f ? viewAbilityStats.getURLShowCoverRate() : this.e.getCoverRateScale()) * 100.0f));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                        if (strReplaceAll.contains(str2 + str7 + str3)) {
                            strReplaceAll = strReplaceAll.replaceAll(str2 + str7 + str3 + "[^" + str2 + "]*", "");
                        }
                    }
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(strReplaceAll);
            if (!TextUtils.isEmpty(str4)) {
                stringBuffer.append(str2);
                stringBuffer.append(str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                stringBuffer.append(str2);
                stringBuffer.append(str5);
            }
            return stringBuffer.toString();
        } catch (Exception e3) {
            e3.printStackTrace();
            return str;
        }
    }

    public final String c(va1 va1Var, String str) {
        String strD = d(va1Var);
        for (String str2 : str.split(va1Var.h)) {
            if (str2.startsWith(strD)) {
                return str2.replaceFirst(strD + va1Var.i, "");
            }
        }
        return "";
    }

    public final String d(va1 va1Var) {
        zf zfVar;
        HashMap map = va1Var.g.c;
        return (map == null || (zfVar = (zf) map.get(ViewAbilityStats.ADPLACEMENT)) == null) ? "" : zfVar.b;
    }

    public final va1 e(String str) {
        qx8 qx8Var = this.d;
        if (qx8Var == null || qx8Var.b == null) {
            this.d = SdkConfigUpdateUtil.g(this.a);
            return null;
        }
        String strC = na1.c(str);
        for (va1 va1Var : this.d.b) {
            if (strC.endsWith(va1Var.b.a)) {
                return va1Var;
            }
        }
        return null;
    }

    public final String f(va1 va1Var, MonitorType monitorType, String str) {
        String str2 = va1Var.b.a + str;
        if (monitorType != MonitorType.CLICK) {
            String strB = b(this.a, str, va1Var);
            this.c.put(str2, strB);
            return strB;
        }
        for (String str3 : this.c.keySet()) {
            if (str2.equals(str3)) {
                return (String) this.c.get(str3);
            }
        }
        return "";
    }

    public final String g(va1 va1Var) {
        List<zf> list = va1Var.g.a;
        if (list != null) {
            for (zf zfVar : list) {
                if (zfVar != null && !TextUtils.isEmpty(zfVar.a) && zfVar.a.equals("REDIRECTURL")) {
                    return zfVar.b;
                }
            }
        }
        return "u";
    }

    public final void h(String str, MonitorType monitorType, View view, int i, int i2, CallBack callBack) {
        String string;
        String str2;
        String strF;
        va1 va1VarE = e(str);
        if (va1VarE == null) {
            rq5.d("监测链接:" + str + " 没有对应的配置项,请检查sdkconfig.xml是否存在链接域名对应的Company配置!");
            return;
        }
        String str3 = g(va1VarE) + va1VarE.i;
        Matcher matcher = Pattern.compile(va1VarE.h + str3 + ".*").matcher(str);
        String strGroup = matcher.find() ? matcher.group(0) : "";
        StringBuilder sb = new StringBuilder();
        try {
            for (String str4 : str.split(va1VarE.h)) {
                if (str4.startsWith(str3)) {
                    break;
                }
                sb.append(str4);
                sb.append(va1VarE.h);
            }
            sb.deleteCharAt(sb.length() - 1);
            string = sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            string = str;
        }
        StringBuffer stringBuffer = new StringBuffer();
        try {
            ViewAbilityStats viewAbilityStats = new ViewAbilityStats();
            viewAbilityStats.setSeparator(va1VarE.h);
            viewAbilityStats.setEqualizer(va1VarE.i);
            viewAbilityStats.setViewabilityarguments(va1VarE.g.d);
            String strC = c(va1VarE, string);
            String str5 = viewAbilityStats.get(ViewAbilityStats.IMPRESSIONID);
            if (TextUtils.isEmpty(str5)) {
                str2 = "";
                strF = str2;
            } else {
                strF = f(va1VarE, monitorType, strC);
                str2 = va1VarE.h + str5 + va1VarE.i + strF;
            }
            String str6 = viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_RENDER);
            String str7 = strF;
            if (monitorType != MonitorType.EXPOSEWITHABILITY && monitorType != MonitorType.VIDEOEXPOSEWITHABILITY) {
                String str8 = va1VarE.b.a;
                if (i2 == 0 && monitorType != MonitorType.CLICK) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(string);
                    sb2.append(va1VarE.h + str6 + va1VarE.i + "0");
                    string = sb2.toString();
                } else if (i2 == 1 && monitorType != MonitorType.CLICK) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(string);
                    sb3.append(va1VarE.h + str6 + va1VarE.i + "1");
                    string = sb3.toString();
                }
                if (TextUtils.isEmpty(str2)) {
                    stringBuffer.append(string);
                } else {
                    stringBuffer.append(string.replaceAll(va1VarE.h + str5 + va1VarE.i + "[^" + va1VarE.h + "]*", ""));
                    stringBuffer.append(str2);
                }
            } else if (view != null) {
                viewAbilityStats.setViewabilityTrackPolicy(va1VarE.f.d);
                viewAbilityStats.setURLExposeDuration(string);
                viewAbilityStats.setURLShowCoverRate(string);
                if (monitorType == MonitorType.VIDEOEXPOSEWITHABILITY) {
                    viewAbilityStats.setVideoExpose(true);
                    viewAbilityStats.setVideoPlayType(i);
                    viewAbilityStats.setURLVideoDuration(string);
                    viewAbilityStats.setURLVideoProgressTracks(string);
                }
                stringBuffer.append(a(va1VarE, viewAbilityStats, string));
                stringBuffer.append(str2);
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append(stringBuffer);
                String str9 = viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY);
                if (!TextUtils.isEmpty(str9)) {
                    stringBuffer.append(va1VarE.h + str9);
                }
                String str10 = viewAbilityStats.get(ViewAbilityStats.ADVIEWABILITY_RESULT);
                if (!TextUtils.isEmpty(str10)) {
                    stringBuffer.append(va1VarE.h + str10 + va1VarE.i + "0");
                }
                String str11 = va1VarE.h + str6 + va1VarE.i + "1";
                stringBuffer.append(str11);
                stringBuffer2.append(str11);
            } else {
                String str12 = va1VarE.h + str6 + va1VarE.i + "0";
                stringBuffer.append(string);
                stringBuffer.append(str12);
            }
            stringBuffer.append(strGroup);
            if (Countly.n) {
                this.a.sendBroadcast(new Intent(Countly.o));
                oe5.d("********************************************");
                oe5.d("originURL:" + str);
                oe5.d("monitiorType:" + monitorType);
                oe5.d("REDIRECT_STR:" + strGroup);
                oe5.d("withoutRedirectURL:" + string);
                oe5.d("adAreaID:" + strC);
                oe5.d("imressionID:" + str7);
                oe5.d("trackURL:" + stringBuffer.toString());
                oe5.d("adView:" + view);
                oe5.d("eventListener:" + this.b);
                oe5.d("********************************************");
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.b.a(stringBuffer.toString(), callBack, monitorType);
    }

    public final ViewAbilityConfig i() {
        sbc sbcVar;
        ViewAbilityConfig viewAbilityConfig = new ViewAbilityConfig();
        try {
            qx8 qx8Var = this.d;
            if (qx8Var != null && (sbcVar = qx8Var.c) != null) {
                viewAbilityConfig.setInspectInterval(sbcVar.a);
                viewAbilityConfig.setExposeValidDuration(this.d.c.c);
                viewAbilityConfig.setCoverRateScale(1.0f - (this.d.c.b / 100.0f));
                viewAbilityConfig.setMaxDuration(this.d.c.e);
                viewAbilityConfig.setMaxUploadAmount(this.d.c.f);
                viewAbilityConfig.setVideoExposeValidDuration(this.d.c.d);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return viewAbilityConfig;
    }

    public void j(String str, CallBack callBack) {
        h(str, MonitorType.CLICK, null, 0, 0, callBack);
    }

    public void k(String str, View view, int i, CallBack callBack) {
        h(str, MonitorType.IMPRESSION, view, 0, i, callBack);
    }

    public void l(String str, View view, CallBack callBack) {
        h(str, MonitorType.EXPOSEWITHABILITY, view, 0, 0, callBack);
    }

    public void m(String str, View view, int i, CallBack callBack) {
        h(str, MonitorType.VIDEOEXPOSEWITHABILITY, view, i, 0, callBack);
    }

    public void n() {
    }

    public void o() {
    }
}
