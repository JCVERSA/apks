package com.mbridge.msdk.foundation.same;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.q0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.io.File;
import java.util.LinkedList;
import java.util.List;

public class d {

    private static final List<String> f34542a = new LinkedList();

    public static int a(CampaignEx campaignEx, String str) {
        if (campaignEx == null) {
            return -1;
        }
        try {
            return !TextUtils.isEmpty(campaignEx.getMof_template_url()) ? t0.b(campaignEx.getMof_template_url()) : t0.b(str);
        } catch (Exception e10) {
            o0.b("SameTools", e10.getMessage());
            return -1;
        }
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.equals(str2, com.mbridge.msdk.foundation.same.net.utils.d.h().f34636d) || TextUtils.equals(str2, com.mbridge.msdk.foundation.same.net.utils.d.h().O)) {
            return false;
        }
        return (TextUtils.equals(str, "download_video") || TextUtils.equals(str, "download_image") || TextUtils.equals(str, "download_template") || TextUtils.equals(str, "") || TextUtils.equals(str, "download_other") || TextUtils.equals(str, "download_html") || TextUtils.equals(str, "applets_model") || TextUtils.equals(str, MBInterstitialActivity.INTENT_CAMAPIGN) || TextUtils.equals(str, "bid_request") || TextUtils.equals(str, "more_offer") || TextUtils.equals(str, "mraid_js") || TextUtils.equals(str, "om_sdk") || TextUtils.equals(str, "roas") || TextUtils.equals(str, "web_env_check_js") || TextUtils.equals(str, "setting")) && q0.a().a("request_track", true);
    }

    public static String a(DownloadRequest<?> downloadRequest) {
        if (downloadRequest == null) {
            return "un_known";
        }
        String str = downloadRequest.get("download_scene", "");
        return TextUtils.isEmpty(str) ? "un_known" : str;
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            String[] strArrSplit = str.split(";");
            if (strArrSplit.length > 0) {
                return strArrSplit[0].trim();
            }
            return str.trim();
        } catch (Exception unused) {
            return "";
        }
    }

    public static void a(String str, File file) {
        Runtime runtime;
        if (file != null) {
            try {
                if (file.exists()) {
                    try {
                        List<String> list = f34542a;
                        if (list.contains(str)) {
                            try {
                                list.add(str);
                                System.gc();
                                Runtime.getRuntime().gc();
                                return;
                            } catch (Throwable unused) {
                                return;
                            }
                        }
                        m0.a(com.mbridge.msdk.omsdk.b.a(oe.b.a(MBridgeConstans.OMID_JS_SERVICE_CONTENT, m0.e(file))).getBytes(), file);
                        list.add(str);
                        System.gc();
                        runtime = Runtime.getRuntime();
                    } catch (Throwable th2) {
                        try {
                            o0.b("SameTools", th2.getMessage());
                            f34542a.add(str);
                            System.gc();
                            runtime = Runtime.getRuntime();
                        } catch (Throwable th3) {
                            try {
                                f34542a.add(str);
                                System.gc();
                                Runtime.getRuntime().gc();
                            } catch (Throwable unused2) {
                            }
                            throw th3;
                        }
                    }
                    runtime.gc();
                }
            } catch (Throwable unused3) {
            }
        }
    }

    public static void a(File file) {
        boolean zDelete;
        if (file != null) {
            try {
                if (file.exists()) {
                    try {
                        zDelete = file.delete();
                    } catch (Throwable unused) {
                        zDelete = false;
                    }
                    if (zDelete) {
                        return;
                    }
                    file.deleteOnExit();
                }
            } catch (Throwable unused2) {
            }
        }
    }
}
