package com.mgmi.trace;

import android.os.SystemClock;
import android.text.TextUtils;
import com.mgadplus.mgutil.SourceKitLogger;
import com.mgadplus.netlib.json.b;
import com.mgmi.net.bean.BootAdBean;
import java.lang.reflect.Type;

public class a {
    private volatile long a;
    private volatile long b;
    private volatile long c;
    private volatile long d;
    private volatile String e;

    public static class C0172a {
        private static final a a = new a();
    }

    public static a a() {
        return C0172a.a;
    }

    private synchronized void e() {
        SourceKitLogger.c("lyzzzzzz", "release");
        this.a = 0L;
        this.b = 0L;
        this.c = 0L;
        this.d = 0L;
        this.e = "";
    }

    public void b() {
        this.d = SystemClock.elapsedRealtime();
        SourceKitLogger.c("lyzzzzzz", "endInitialize");
    }

    public synchronized void c() {
        SourceKitLogger.c("lyzzzzzz", "endRequestAd");
    }

    public synchronized void d() {
        e();
    }

    public void a(long j) {
        this.a = j;
        this.c = SystemClock.elapsedRealtime();
        SourceKitLogger.c("lyzzzzzz", "startApplicationInitialize");
    }

    public synchronized void b(long j) {
        SourceKitLogger.c("lyzzzzzz", "recordSelfLogic：" + (System.currentTimeMillis() - j));
    }

    private boolean b(BootAdBean bootAdBean) {
        com.mgmi.net.bean.a aVar;
        SourceKitLogger.c("lyzzzzzz", "checkData");
        if (this.d - this.c >= 0 && bootAdBean != null && (aVar = bootAdBean.reportCreativeTrackInfo) != null && aVar.b > 0) {
            SourceKitLogger.c("lyzzzzzz", "checkData:truebootAdBean:" + bootAdBean.reportCreativeTrackInfo.toString());
            return true;
        }
        SourceKitLogger.c("lyzzzzzz", "checkData:false");
        return false;
    }

    public synchronized void a(String str) {
        this.e = str;
        SourceKitLogger.c("lyzzzzzz", "requestAd");
    }

    public synchronized void a(BootAdBean bootAdBean) {
        if (!TextUtils.isEmpty(this.e) && bootAdBean != null && bootAdBean.reportCreativeTrackInfo != null && TextUtils.equals(this.e, bootAdBean.uniqueId)) {
            bootAdBean.reportCreativeTrackInfo.d();
        }
    }

    public synchronized void a(BootAdBean bootAdBean, boolean z) {
        long jE;
        long j;
        ExtraJson extraJson;
        SourceKitLogger.c("lyzzzzzz", "report");
        if (bootAdBean != null && bootAdBean.reportCreativeTrackInfo != null) {
            if (!TextUtils.isEmpty(this.e) && !TextUtils.isEmpty(bootAdBean.uniqueId) && TextUtils.equals(this.e, bootAdBean.uniqueId)) {
                if (bootAdBean.reportCreativeTrackInfo.i) {
                    SourceKitLogger.c("lyzzzzzz", "重复上报");
                    d();
                    return;
                }
                a(bootAdBean);
                String str = bootAdBean.trace;
                boolean z2 = !TextUtils.isEmpty(bootAdBean.reportCreativeTrackInfo.f) && bootAdBean.reportCreativeTrackInfo.f.contains("sdk://");
                if (z2) {
                    jE = bootAdBean.reportCreativeTrackInfo.c;
                } else {
                    jE = bootAdBean.reportCreativeTrackInfo.e();
                }
                if (jE < 0) {
                    return;
                }
                boolean z3 = bootAdBean.isWarmBoot;
                long jA = bootAdBean.reportCreativeTrackInfo.a();
                long jC = bootAdBean.reportCreativeTrackInfo.c() - jA;
                long j2 = jE;
                long j3 = !z3 ? jC : j2;
                if (!TextUtils.isEmpty(str) && b(bootAdBean) && j3 > 0 && jA > 0) {
                    String strReplace = str.replace("[EV_KEY]", "chain_cost_v2").replace("[EV_V1]", j3 + "");
                    SourceKitLogger.c("lyzzzzzz", "[EV_V1]开机流程总耗时（毫秒）解释：从广告请求开始，到广告首帧展示:" + j3 + "");
                    SourceKitLogger.c("lyzzzzzz", "（毫秒）endTime - startReqAdTime:" + jC + "");
                    long j4 = z3 ? 0L : bootAdBean.reportCreativeTrackInfo.b;
                    String strReplace2 = strReplace.replace("[EV_V2]", j4 + "");
                    SourceKitLogger.c("lyzzzzzz", "[EV_V2]芒果广告接口请求耗时（毫秒）:" + j4 + "");
                    String str2 = z2 ? bootAdBean.reportCreativeTrackInfo.f : "";
                    String strReplace3 = strReplace2.replace("[EV_V5]", str2);
                    SourceKitLogger.c("lyzzzzzz", "[EV_V5]第三方SDK请求数据:" + str2);
                    long j5 = !z2 ? 0L : bootAdBean.reportCreativeTrackInfo.c;
                    String strReplace4 = strReplace3.replace("[EV_V3]", j5 + "");
                    SourceKitLogger.c("lyzzzzzz", "[EV_V3]第三方SDK请求耗时（毫秒）无C2S广告上报0:" + j5);
                    long j6 = (z2 || !z) ? 0L : j2;
                    StringBuilder sb = new StringBuilder();
                    sb.append(j6);
                    long j7 = j3;
                    sb.append("");
                    String strReplace5 = strReplace4.replace("[EV_V4]", sb.toString());
                    SourceKitLogger.c("lyzzzzzz", "[EV_V4]素材加载耗时（毫秒）无开机&超级秀广告上报-1 C2S广告上报0:" + j6);
                    if (this.a > 0) {
                        j = (this.a + jA) - this.c;
                    } else {
                        j = this.b;
                    }
                    String strReplace6 = strReplace5.replace("[EV_V6]", j + "");
                    SourceKitLogger.c("lyzzzzzz", "[EV_V6]APP启动到开机广告请求开始之前的时间间隔（毫秒）:" + j + "");
                    long j8 = j;
                    long j9 = this.d - this.c;
                    String strReplace7 = strReplace6.replace("[EV_V7]", j9 + "");
                    SourceKitLogger.c("lyzzzzzz", "[EV_V7]初始化函数耗时（毫秒）:" + j9 + "");
                    if ("online".equalsIgnoreCase(bootAdBean.reportCreativeTrackInfo.g)) {
                        extraJson = new ExtraJson();
                        extraJson.setIs_cache(0);
                    } else if ("local".equalsIgnoreCase(bootAdBean.reportCreativeTrackInfo.g)) {
                        extraJson = new ExtraJson();
                        extraJson.setIs_cache(1);
                    } else {
                        extraJson = null;
                    }
                    if (extraJson != null) {
                        strReplace7 = strReplace7.replace("[EV_V8]", b.a(extraJson, (Type) null) + "");
                    }
                    if (j3 >= 0 && j4 >= 0 && j5 >= 0 && j6 >= 0 && j8 >= 0 && j9 >= 0) {
                        if (j7 < j4 + j6) {
                            SourceKitLogger.c("lyzzzzzz", "数据有误1");
                            d();
                            return;
                        }
                        SourceKitLogger.c("lyzzzzzz", "bootAdBean:" + bootAdBean.reportCreativeTrackInfo.toString());
                        SourceKitLogger.c("lyzzzzzz", "url:" + strReplace7);
                        com.mgmi.net.b.a().b().a(strReplace7);
                        bootAdBean.reportCreativeTrackInfo.i = true;
                    }
                    SourceKitLogger.c("lyzzzzzz", "数据有误");
                    d();
                    return;
                }
                d();
                return;
            }
            SourceKitLogger.c("lyzzzzzz", "此次数据唯一id不一样视为错误数据");
            d();
            return;
        }
        SourceKitLogger.c("lyzzzzzz", "非法数据");
        d();
    }
}
