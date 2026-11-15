package com.mgtv.thirdsdk.playcore.c;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.hunantv.imgo.report.d;
import com.hunantv.imgo.util.b;
import com.hunantv.imgo.util.p;
import com.hunantv.media.config.NetPlayConfig;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.mgtv.easydatasource.FlowReporter;
import com.mgtv.ssp.bean.FlowReportBean;

public class a {
    private static int a;

    public static boolean a() {
        int flowReportMode = NetPlayConfig.getFlowReportMode();
        a = flowReportMode;
        if (flowReportMode == 0) {
            return false;
        }
        FlowReporter.enableHttpsReport(true);
        return FlowReporter.init();
    }

    public static boolean b() {
        if (a == 0) {
            return false;
        }
        return FlowReporter.isInited();
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a4  */
    public static void c() {
        byte b;
        String str;
        if (a == 0) {
            return;
        }
        if (!b()) {
            a();
        }
        JsonObject jsonObject = new JsonObject();
        if (b.n() != null) {
            jsonObject.addProperty("uuid", b.n());
        } else {
            jsonObject.addProperty("uuid", "");
        }
        jsonObject.addProperty(DownloadFacadeEnum.USER_DID, b.t());
        jsonObject.addProperty(DownloadFacadeEnum.USER_AVER, b.g());
        jsonObject.addProperty("termid", "9");
        String strC = p.c();
        int iHashCode = strC.hashCode();
        if (iHashCode != 1621) {
            if (iHashCode != 1652) {
                if (iHashCode != 1683) {
                    if (iHashCode != 1714) {
                        if (iHashCode != 2433880) {
                            if (iHashCode == 2664213 && strC.equals("WIFI")) {
                                b = 0;
                            } else {
                                b = -1;
                            }
                        } else if (strC.equals("None")) {
                            b = 5;
                        } else {
                            b = -1;
                        }
                    } else if (strC.equals("5G")) {
                        b = 4;
                    } else {
                        b = -1;
                    }
                } else if (strC.equals("4G")) {
                    b = 3;
                } else {
                    b = -1;
                }
            } else if (strC.equals("3G")) {
                b = 2;
            } else {
                b = -1;
            }
        } else if (strC.equals("2G")) {
            b = 1;
        } else {
            b = -1;
        }
        if (b == 0) {
            str = "1";
        } else if (b == 1) {
            str = "3";
        } else if (b == 2) {
            str = "4";
        } else if (b != 3) {
            str = b != 4 ? "0" : "6";
        } else {
            str = "5";
        }
        jsonObject.addProperty("netType", str);
        jsonObject.addProperty("appid", b.c());
        FlowReporter.setGlobalConfig(jsonObject.toString());
    }

    public static void d() {
        if (!b()) {
            a();
        }
        FlowReporter.setReportCallBack(new FlowReporter.onReportCallBack() {
            @Override
            public void onReportInfo(String str) {
                System.out.println("onReportInfo s = " + str);
                try {
                    a.a((FlowReportBean) new Gson().fromJson(str, FlowReportBean.class));
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static String b(String str) {
        if (a == 0) {
            return str;
        }
        if (!b()) {
            a();
            c();
        }
        String strPackSecondLayerUrl = FlowReporter.packSecondLayerUrl(str, NetPlayConfig.getFlowReportMode());
        return TextUtils.isEmpty(strPackSecondLayerUrl) ? str : strPackSecondLayerUrl;
    }

    public static String a(String str) {
        if (a == 0) {
            return "";
        }
        if (!b()) {
            a();
            c();
        }
        String tsFlowTagWithUrl = FlowReporter.getTsFlowTagWithUrl(str, NetPlayConfig.getFlowReportMode());
        return TextUtils.isEmpty(tsFlowTagWithUrl) ? "" : tsFlowTagWithUrl;
    }

    public static void a(FlowReportBean flowReportBean) {
        String upperCase;
        if (TextUtils.isEmpty(flowReportBean.url) || TextUtils.isEmpty(flowReportBean.data)) {
            return;
        }
        String str = flowReportBean.method;
        if (TextUtils.isEmpty(str)) {
            upperCase = "POST";
        } else {
            upperCase = str.toUpperCase();
        }
        d.a().a(flowReportBean.url, flowReportBean.data, upperCase);
    }

    public static String c(String str) {
        if (a == 0) {
            return str;
        }
        if (!b()) {
            a();
            c();
        }
        String strPackThirdLayerUrl = FlowReporter.packThirdLayerUrl(str, NetPlayConfig.getFlowReportMode());
        return TextUtils.isEmpty(strPackThirdLayerUrl) ? str : strPackThirdLayerUrl;
    }
}
