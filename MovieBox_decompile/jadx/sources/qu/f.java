package qu;

import android.app.Application;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.upgradesdk.bean.RequestBean;
import com.transsion.upgradesdk.bean.UpgradeData;
import com.transsion.upgradesdk.bean.UpgradeInfo;
import com.transsion.upgradesdk.manager.UpgradeDialogCallback;
import com.transsion.upgradesdk.manager.UpgradeInfoCallback;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import su.i;
import tu.g;
import tu.h;
import tu.l;

public final class f {

    public static final d f70259o = new d();

    public static volatile f f70260p;

    public nu.b f70261a;

    public UpgradeData f70262b;

    public boolean f70263c;

    public boolean f70264d;

    public boolean f70265e;

    public UpgradeInfoCallback f70266f;

    public UpgradeDialogCallback f70267g;

    public boolean f70268h = true;

    public com.transsion.upgradesdk.page.f f70269i;

    public i f70270j;

    public long f70271k;

    public boolean f70272l;

    public List f70273m;

    public long f70274n;

    public final void a() {
        h hVar = tu.i.f72841b;
        Application application = pu.a.f69263a;
        Application application2 = null;
        if (application == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        tu.i iVarA = hVar.a(application);
        Intrinsics.h("KV_UPGRADE_LAST_SUCCESS_VERSION", "key");
        MMKV mmkv = iVarA.f72843a;
        long jH = mmkv != null ? mmkv.h("KV_UPGRADE_LAST_SUCCESS_VERSION", 0L) : 0L;
        long j10 = e().f67362d;
        if (jH != j10) {
            Application application3 = pu.a.f69263a;
            if (application3 == null) {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application3 = null;
            }
            tu.i iVarA2 = hVar.a(application3);
            Intrinsics.h("KV_UPGRADE_LAST_SUCCESS_VERSION", "key");
            MMKV mmkv2 = iVarA2.f72843a;
            if (mmkv2 != null) {
                mmkv2.t("KV_UPGRADE_LAST_SUCCESS_VERSION", j10);
            }
            Application application4 = pu.a.f69263a;
            if (application4 != null) {
                application2 = application4;
            } else {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            }
            tu.i iVarA3 = hVar.a(application2);
            Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
            MMKV mmkv3 = iVarA3.f72843a;
            if (mmkv3 != null) {
                mmkv3.s("KV_UPGRADE_POPUP_TIMES", 0);
            }
            String msg = "检测到版本变化，更新存储版本: " + jH + " -> " + j10;
            Intrinsics.h("UpgradeSdkManager", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!g.f72839a && jCurrentTimeMillis - g.f72840b >= 5000) {
                g.f72840b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
            }
            boolean z10 = f70259o.a().f70264d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        if (r2.isConnected() == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(int i10) {
        retrofit2.d<List<UpgradeData>> dVarC;
        if (i10 == 1) {
            Application application = pu.a.f69263a;
            if (application == null) {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            if (application != null) {
                Object systemService = application.getSystemService("connectivity");
                Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
                try {
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                    }
                } catch (Exception unused) {
                }
            }
            long jA = nu.d.a("UpgradeSdkManager", "tag", "requestCdnConfig error: 网络未链接", NotificationCompat.CATEGORY_MESSAGE);
            if (!g.f72839a && jA - g.f72840b >= 5000) {
                g.f72840b = jA;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
                boolean z10 = g.f72839a;
            }
            boolean z11 = f70259o.a().f70264d;
            l.a(2, 4, null, "1", 20);
            UpgradeInfoCallback upgradeInfoCallback = this.f70266f;
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestFail("INTERNET_ERROR");
                return;
            }
            return;
        }
        l.c(2, 1, String.valueOf(i10), "1", null, null, null, 112);
        nu.b bVarE = e();
        g.b("UpgradeSdkManager", "requestCdnConfig 开始请求CDN配置");
        ru.d dVar = (ru.d) ru.d.f71350d.getValue();
        String pkgName = bVarE.f67359a;
        com.transsion.upgradesdk.manager.g callback = new com.transsion.upgradesdk.manager.g(this, i10);
        dVar.getClass();
        Intrinsics.h(pkgName, "pkgName");
        Intrinsics.h(callback, "callback");
        dVar.f71353c = 1;
        a aVar = c.f70252d;
        String str = aVar.a().f70255b;
        d dVar2 = f70259o;
        g.b("UpgradeSdkManager", "CDN - gslbCountryCode1 : " + str);
        if (TextUtils.isEmpty(str)) {
            str = dVar2.a().e().f67366h;
        }
        aVar.a().f70256c = str;
        g.b("UpgradeSdkManager", "CDN - gslbCountryCode2 : " + str);
        if (str != null && StringsKt.H(str, "IN", true)) {
            g.b("UpgradeSdkManager", "使用印度CDN接口");
            dVarC = dVar.f71351a.a(pkgName, System.currentTimeMillis());
        } else if (str == null || !StringsKt.H(str, "RU", true)) {
            g.b("UpgradeSdkManager", "使用默认CDN接口");
            dVarC = dVar.f71351a.c(pkgName, System.currentTimeMillis());
        } else {
            g.b("UpgradeSdkManager", "使用EE1CDN接口");
            dVarC = dVar.f71351a.b(pkgName, System.currentTimeMillis());
        }
        dVarC.f(new ru.b(dVar, callback));
    }

    public final void c(List obj) {
        String str;
        String str2;
        String str3;
        String str4;
        String tag;
        Application application;
        String str5;
        char c10;
        String str6 = "toJson(...)";
        String str7 = "obj";
        String str8 = MimeTypes.BASE_TYPE_APPLICATION;
        String str9 = "UpgradeSdkManager";
        String str10 = NotificationCompat.CATEGORY_MESSAGE;
        if (obj != null) {
            h hVar = tu.i.f72841b;
            Application application2 = pu.a.f69263a;
            if (application2 != null) {
                application = application2;
            } else {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            tu.i iVarA = hVar.a(application);
            Gson gson = tu.f.f72838a;
            Intrinsics.h(obj, "obj");
            String json = tu.f.f72838a.toJson(obj);
            Intrinsics.g(json, "toJson(...)");
            iVarA.b("KV_UPGRADE_LOCAL_CDN_DATA", json);
            String msg = "CDN数据开始校验  step1-1: " + obj;
            Intrinsics.h("UpgradeSdkManager", "tag");
            Intrinsics.h(msg, "msg");
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (!g.f72839a && jCurrentTimeMillis - g.f72840b >= 5000) {
                g.f72840b = jCurrentTimeMillis;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
                boolean z10 = g.f72839a;
            }
            boolean z11 = f70259o.a().f70264d;
            Iterator it = obj.iterator();
            while (true) {
                if (it.hasNext()) {
                    UpgradeData upgradeData = (UpgradeData) it.next();
                    if (upgradeData != null) {
                        d dVar = f70259o;
                        if (dVar.a().f70265e) {
                            str = str6;
                            str2 = str7;
                            if (upgradeData.checkNeedUpgrade(dVar.a().e().f67362d)) {
                                str3 = str10;
                                str4 = str8;
                                str5 = str9;
                            } else {
                                long jA = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 当前版本已是最新版本", str10);
                                if (!g.f72839a && jA - g.f72840b >= 5000) {
                                    g.f72840b = jA;
                                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                                        g.f72839a = true;
                                    }
                                    boolean z12 = g.f72839a;
                                }
                                boolean z13 = dVar.a().f70264d;
                                dVar.a().f70265e = false;
                                h hVar2 = tu.i.f72841b;
                                Application application3 = pu.a.f69263a;
                                if (application3 == null) {
                                    Intrinsics.y(str8);
                                    application3 = null;
                                }
                                tu.i iVarA2 = hVar2.a(application3);
                                Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                                MMKV mmkv = iVarA2.f72843a;
                                if (mmkv != null) {
                                    mmkv.x("KV_UPGRADE_IS_FORCE", false);
                                }
                                str6 = str;
                                str7 = str2;
                            }
                        } else {
                            str = str6;
                            str2 = str7;
                            if (TextUtils.equals("1", upgradeData.getTaskStatus())) {
                                str3 = str10;
                                str4 = str8;
                                str5 = str9;
                                if (upgradeData.checkDateRange(upgradeData.getValidStartDate(), upgradeData.getValidEndDate())) {
                                    if (!upgradeData.checkNeedUpgrade(dVar.a().e().f67362d)) {
                                        long jA2 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 当前版本已是最新版本", str3);
                                        if (!g.f72839a && jA2 - g.f72840b >= 5000) {
                                            g.f72840b = jA2;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f72839a = true;
                                            }
                                            boolean z14 = g.f72839a;
                                        }
                                        boolean z15 = dVar.a().f70264d;
                                        String updateTime = upgradeData.getUpdateTime();
                                        c10 = 3;
                                        l.a(3, 9, updateTime, null, 24);
                                    } else if (!upgradeData.checkBrand()) {
                                        long jA3 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 品牌", str3);
                                        if (!g.f72839a && jA3 - g.f72840b >= 5000) {
                                            g.f72840b = jA3;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f72839a = true;
                                            }
                                            boolean z16 = g.f72839a;
                                        }
                                        boolean z17 = dVar.a().f70264d;
                                        String updateTime2 = upgradeData.getUpdateTime();
                                        c10 = 3;
                                        l.a(3, 4, updateTime2, null, 24);
                                    } else if (!upgradeData.checkModel()) {
                                        long jA4 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 机型", str3);
                                        if (!g.f72839a && jA4 - g.f72840b >= 5000) {
                                            g.f72840b = jA4;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f72839a = true;
                                            }
                                            boolean z18 = g.f72839a;
                                        }
                                        boolean z19 = dVar.a().f70264d;
                                        String updateTime3 = upgradeData.getUpdateTime();
                                        c10 = 3;
                                        l.a(3, 5, updateTime3, null, 24);
                                    } else if (!upgradeData.checkAndroidVersion()) {
                                        long jA5 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 安卓版本", str3);
                                        if (!g.f72839a && jA5 - g.f72840b >= 5000) {
                                            g.f72840b = jA5;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f72839a = true;
                                            }
                                            boolean z20 = g.f72839a;
                                        }
                                        boolean z21 = dVar.a().f70264d;
                                        String updateTime4 = upgradeData.getUpdateTime();
                                        c10 = 3;
                                        l.a(3, 6, updateTime4, null, 24);
                                    } else if (upgradeData.checkCountry()) {
                                        nu.b bVarE = dVar.a().e();
                                        if (!upgradeData.checkVersionRange(bVarE != null ? bVarE.f67362d : 0L)) {
                                            long jA6 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 版本范围", str3);
                                            if (!g.f72839a && jA6 - g.f72840b >= 5000) {
                                                g.f72840b = jA6;
                                                if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                    g.f72839a = true;
                                                }
                                                boolean z22 = g.f72839a;
                                            }
                                            boolean z23 = dVar.a().f70264d;
                                            String updateTime5 = upgradeData.getUpdateTime();
                                            c10 = 3;
                                            l.a(3, 8, updateTime5, null, 24);
                                        }
                                    } else {
                                        long jA7 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 国家", str3);
                                        if (!g.f72839a && jA7 - g.f72840b >= 5000) {
                                            g.f72840b = jA7;
                                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                                g.f72839a = true;
                                            }
                                            boolean z24 = g.f72839a;
                                        }
                                        boolean z25 = dVar.a().f70264d;
                                        String updateTime6 = upgradeData.getUpdateTime();
                                        c10 = 3;
                                        l.a(3, 7, updateTime6, null, 24);
                                    }
                                    str10 = str3;
                                    str8 = str4;
                                    str6 = str;
                                    str7 = str2;
                                    str9 = str5;
                                } else {
                                    long jA8 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> validStartDate or validEndDate", str3);
                                    if (!g.f72839a && jA8 - g.f72840b >= 5000) {
                                        g.f72840b = jA8;
                                        if (Log.isLoggable("upgradeSdkLog", 3)) {
                                            g.f72839a = true;
                                        }
                                        boolean z26 = g.f72839a;
                                    }
                                    boolean z27 = dVar.a().f70264d;
                                    l.a(3, 3, upgradeData.getUpdateTime(), null, 24);
                                    str8 = str4;
                                    str7 = str2;
                                    str9 = str5;
                                    str10 = str3;
                                    str6 = str;
                                }
                            } else {
                                long jA9 = nu.d.a("ValidateCheckUtils", "tag", "filter  ->> 开关 taskStatus", str10);
                                if (!g.f72839a && jA9 - g.f72840b >= 5000) {
                                    g.f72840b = jA9;
                                    if (Log.isLoggable("upgradeSdkLog", 3)) {
                                        g.f72839a = true;
                                    }
                                    boolean z28 = g.f72839a;
                                }
                                boolean z29 = dVar.a().f70264d;
                                l.a(3, 2, upgradeData.getUpdateTime(), null, 24);
                                str6 = str;
                                str7 = str2;
                            }
                        }
                        this.f70262b = upgradeData;
                        String str11 = "CDN数据 匹配成功 step1-2: " + this.f70262b;
                        tag = str5;
                        Intrinsics.h(tag, "tag");
                        Intrinsics.h(str11, str3);
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        if (!g.f72839a && jCurrentTimeMillis2 - g.f72840b >= 5000) {
                            g.f72840b = jCurrentTimeMillis2;
                            if (Log.isLoggable("upgradeSdkLog", 3)) {
                                g.f72839a = true;
                            }
                            boolean z30 = g.f72839a;
                        }
                        boolean z31 = dVar.a().f70264d;
                    }
                } else {
                    str = str6;
                    str2 = str7;
                    str3 = str10;
                    str4 = str8;
                    tag = str9;
                }
            }
        } else {
            str = str6;
            str2 = str7;
            str3 = str10;
            str4 = str8;
            tag = str9;
        }
        UpgradeData upgradeData2 = this.f70262b;
        if (upgradeData2 == null) {
            l.c(3, 10, null, null, null, null, null, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
            UpgradeInfoCallback upgradeInfoCallback = this.f70266f;
            if (upgradeInfoCallback != null) {
                upgradeInfoCallback.onRequestSuccess(new UpgradeInfo(false, false, false, null));
                return;
            }
            return;
        }
        l.c(3, 1, upgradeData2.getUpdateTime(), null, null, null, null, 120);
        UpgradeData upgradeData3 = this.f70262b;
        if (upgradeData3 == null) {
            UpgradeInfoCallback upgradeInfoCallback2 = this.f70266f;
            if (upgradeInfoCallback2 != null) {
                upgradeInfoCallback2.onRequestSuccess(new UpgradeInfo(false, false, false, null));
                return;
            }
            return;
        }
        if (this.f70265e) {
            long jA10 = nu.d.a(tag, "tag", "requestUpgradeStatus : 强更任务进行中，不请求服务端配置", str3);
            if (!g.f72839a && jA10 - g.f72840b >= 5000) {
                g.f72840b = jA10;
                if (Log.isLoggable("upgradeSdkLog", 3)) {
                    g.f72839a = true;
                }
                boolean z32 = g.f72839a;
            }
            boolean z33 = f70259o.a().f70264d;
            UpgradeInfoCallback upgradeInfoCallback3 = this.f70266f;
            if (upgradeInfoCallback3 != null) {
                UpgradeData upgradeData4 = this.f70262b;
                upgradeInfoCallback3.onRequestSuccess(new UpgradeInfo(true, true, true, upgradeData4 != null ? upgradeData4.getPkgVersionName() : null));
                return;
            }
            return;
        }
        if (upgradeData3.getReqInterval() > 0) {
            g.b(tag, "requestUpgradeStatus : 上次弹窗 - ReqInterval - " + upgradeData3.getReqInterval());
            if (this.f70271k <= 0) {
                h hVar3 = tu.i.f72841b;
                Application application4 = pu.a.f69263a;
                if (application4 == null) {
                    Intrinsics.y(str4);
                    application4 = null;
                }
                tu.i iVarA3 = hVar3.a(application4);
                Intrinsics.h("KV_UPGRADE_LAST_REQUEST_SERVER", "key");
                MMKV mmkv2 = iVarA3.f72843a;
                this.f70271k = mmkv2 != null ? mmkv2.h("KV_UPGRADE_LAST_REQUEST_SERVER", 0L) : 0L;
            }
            if (System.currentTimeMillis() - this.f70271k <= ((long) (upgradeData3.getReqInterval() * 3600)) * 1000) {
                g.b(tag, "requestUpgradeStatus : 上次弹窗范围内，不请求接口");
                l.a(2, 5, null, "2", 20);
                UpgradeInfoCallback upgradeInfoCallback4 = this.f70266f;
                if (upgradeInfoCallback4 != null) {
                    boolean z34 = this.f70263c;
                    upgradeInfoCallback4.onRequestSuccess(new UpgradeInfo(z34, z34 && ou.a.a(upgradeData3), false, upgradeData3.getPkgVersionName()));
                    return;
                }
                return;
            }
        }
        Application application5 = pu.a.f69263a;
        if (application5 == null) {
            Intrinsics.y(str4);
            application5 = null;
        }
        if (application5 != null) {
            Object systemService = application5.getSystemService("connectivity");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            try {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    l.c(2, 1, null, "2", null, null, null, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE);
                    ru.d dVar2 = (ru.d) ru.d.f71350d.getValue();
                    com.transsion.upgradesdk.manager.h callback = new com.transsion.upgradesdk.manager.h(this);
                    dVar2.getClass();
                    Intrinsics.h(callback, "callback");
                    dVar2.f71353c = 4;
                    RequestBean requestBeanA = nu.c.a();
                    Gson gson2 = tu.f.f72838a;
                    Intrinsics.h(requestBeanA, str2);
                    String json2 = tu.f.f72838a.toJson(requestBeanA);
                    Intrinsics.g(json2, str);
                    long jA11 = nu.d.a(tag, "tag", "请求服务端接口 开始请求， 参数： " + json2, str3);
                    if (!g.f72839a && jA11 - g.f72840b >= 5000) {
                        g.f72840b = jA11;
                        if (Log.isLoggable("upgradeSdkLog", 3)) {
                            g.f72839a = true;
                        }
                        boolean z35 = g.f72839a;
                    }
                    boolean z36 = f70259o.a().f70264d;
                    dVar2.f71352b.a(requestBeanA, requestBeanA.getAppKey()).f(new ru.c(dVar2, callback));
                    return;
                }
            } catch (Exception unused) {
            }
        }
        long jA12 = nu.d.a(tag, r7, "requestServer error: 网络未链接", str3);
        if (!g.f72839a && jA12 - g.f72840b >= 5000) {
            g.f72840b = jA12;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
            boolean z37 = g.f72839a;
        }
        boolean z38 = f70259o.a().f70264d;
        l.a(2, 4, null, "2", 20);
        UpgradeInfoCallback upgradeInfoCallback5 = this.f70266f;
        if (upgradeInfoCallback5 != null) {
            upgradeInfoCallback5.onRequestFail("INTERNET_ERROR");
        }
    }

    public final void d() {
        com.transsion.upgradesdk.page.f fVar = this.f70269i;
        if (fVar != null && fVar.isVisible()) {
            fVar.dismiss();
        }
        i iVar = this.f70270j;
        if (iVar == null || !iVar.isVisible()) {
            return;
        }
        iVar.dismiss();
    }

    public final nu.b e() {
        nu.b bVar = this.f70261a;
        if (bVar != null) {
            return bVar;
        }
        Intrinsics.y("currentPackageInfo");
        return null;
    }

    public final List f() {
        h hVar = tu.i.f72841b;
        Application application = pu.a.f69263a;
        if (application == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        String strA = hVar.a(application).a("KV_UPGRADE_LOCAL_CDN_DATA", "");
        g.b("UpgradeSdkManager", "getLocalUpgradeInfo step1 : 请求本地CDN数据");
        if (TextUtils.isEmpty(strA)) {
            g.b("UpgradeSdkManager", "getLocalUpgradeInfo step1-1: 本地无数据");
            return null;
        }
        Gson gson = tu.f.f72838a;
        Type type = new TypeToken<List<? extends UpgradeData>>() {
        }.getType();
        Intrinsics.g(type, "getType(...)");
        List<UpgradeData> upgradeData = (List) tu.f.f72838a.fromJson(strA, type);
        if (upgradeData == null || upgradeData.isEmpty()) {
            g.b("UpgradeSdkManager", "getLocalUpgradeInfo step1-2: 本地数据为空");
            return null;
        }
        if (this.f70265e) {
            Intrinsics.h(upgradeData, "upgradeData");
            for (UpgradeData upgradeData2 : upgradeData) {
                if (upgradeData2.isForceUpdate() && !upgradeData2.checkNeedUpgrade(f70259o.a().e().f67362d)) {
                    this.f70265e = false;
                    h hVar2 = tu.i.f72841b;
                    Application application2 = pu.a.f69263a;
                    if (application2 == null) {
                        Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                        application2 = null;
                    }
                    tu.i iVarA = hVar2.a(application2);
                    Intrinsics.h("KV_UPGRADE_IS_FORCE", "key");
                    MMKV mmkv = iVarA.f72843a;
                    if (mmkv == null) {
                        break;
                    }
                    mmkv.x("KV_UPGRADE_IS_FORCE", false);
                    break;
                }
            }
        }
        this.f70273m = upgradeData;
        UpgradeData upgradeData3 = (UpgradeData) upgradeData.get(0);
        h hVar3 = tu.i.f72841b;
        Application application3 = pu.a.f69263a;
        if (application3 == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application3 = null;
        }
        tu.i iVarA2 = hVar3.a(application3);
        Intrinsics.h("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", "key");
        MMKV mmkv2 = iVarA2.f72843a;
        if (System.currentTimeMillis() - (mmkv2 != null ? mmkv2.h("KV_UPGRADE_CDN_DATA_LAST_REQUEST_TIME", 0L) : 0L) < ((long) upgradeData3.getSdkRefreshTime()) * 86400000) {
            return upgradeData;
        }
        long jA = nu.d.a("UpgradeSdkManager", "tag", "getLocalUpgradeInfo step1-3: 本地数据过期", NotificationCompat.CATEGORY_MESSAGE);
        if (!g.f72839a && jA - g.f72840b >= 5000) {
            g.f72840b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
        }
        boolean z10 = f70259o.a().f70264d;
        return null;
    }
}
