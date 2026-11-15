package com.transsion.upgradesdk.bean;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.s;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonObject;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tencent.mmkv.MMKV;
import com.transsion.push.PushConstants;
import com.transsion.upgradesdk.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.TimeZone;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import nu.d;
import pu.a;
import qu.f;
import tu.g;
import tu.h;
import tu.i;
import tu.n;

@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b(\n\u0002\u0010\u000b\n\u0002\b\"\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001Bé\u0001\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003\u0012\u0006\u0010\r\u001a\u00020\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\b\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0010\u0012\u0006\u0010\u001a\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u001b\u001a\u00020\b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u001eJ\u0006\u0010?\u001a\u00020@J\u0006\u0010A\u001a\u00020@J\u0006\u0010B\u001a\u00020@J\u0016\u0010C\u001a\u00020@2\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010D\u001a\u00020@J\u0006\u0010E\u001a\u00020@J\u0006\u0010F\u001a\u00020@J\u000e\u0010G\u001a\u00020@2\u0006\u0010H\u001a\u00020\u0010J\u000e\u0010I\u001a\u00020@2\u0006\u0010H\u001a\u00020\u0010J\u000f\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010K\u001a\u00020\u0010HÆ\u0003J\t\u0010L\u001a\u00020\u0010HÆ\u0003J\t\u0010M\u001a\u00020\bHÆ\u0003J\t\u0010N\u001a\u00020\bHÆ\u0003J\t\u0010O\u001a\u00020\bHÆ\u0003J\t\u0010P\u001a\u00020\u0004HÆ\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0017HÆ\u0003J\t\u0010R\u001a\u00020\u0004HÆ\u0003J\t\u0010S\u001a\u00020\u0010HÆ\u0003J\t\u0010T\u001a\u00020\u0010HÆ\u0003J\u000f\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010V\u001a\u00020\bHÆ\u0003J\t\u0010W\u001a\u00020\bHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u000f\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010Z\u001a\u00020\bHÆ\u0003J\t\u0010[\u001a\u00020\bHÆ\u0003J\u000f\u0010\\\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0011\u0010]\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003HÆ\u0003J\t\u0010^\u001a\u00020\u0004HÆ\u0003J\t\u0010_\u001a\u00020\u0004HÆ\u0003J\u0089\u0002\u0010`\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\b2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00032\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\b2\b\b\u0002\u0010\u0013\u001a\u00020\b2\b\b\u0002\u0010\u0014\u001a\u00020\b2\b\b\u0002\u0010\u0015\u001a\u00020\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u00102\b\b\u0002\u0010\u001a\u001a\u00020\u00102\b\b\u0002\u0010\u001b\u001a\u00020\b2\b\b\u0002\u0010\u001c\u001a\u00020\b2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010a\u001a\u00020@2\b\u0010b\u001a\u0004\u0018\u00010cHÖ\u0003J\u000e\u0010d\u001a\u00020\u00042\u0006\u0010e\u001a\u00020fJ\u0006\u0010g\u001a\u00020\u0004J\t\u0010h\u001a\u00020\bHÖ\u0001J\u0006\u0010i\u001a\u00020@J\b\u0010j\u001a\u00020\u0004H\u0016R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u001a\u0010\u001c\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010 R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b'\u0010#R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b(\u0010#R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010 R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010 R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0011\u0010\u0011\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u0011\u0010\u000f\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b/\u0010.R\u0011\u0010\u000e\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010,R\u0011\u0010\u0012\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b1\u0010#R\u0011\u0010\u0013\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b2\u0010#R\u001a\u0010\u001b\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010#\"\u0004\b4\u0010%R\u0011\u0010\u0014\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b5\u0010#R\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b6\u0010,R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010,\"\u0004\b8\u00109R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0017¢\u0006\b\n\u0000\u001a\u0004\b:\u0010;R\u0011\u0010\u0018\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b<\u0010,R\u0011\u0010\u0019\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b=\u0010.R\u0011\u0010\u001a\u001a\u00020\u0010¢\u0006\b\n\u0000\u001a\u0004\b>\u0010.¨\u0006k"}, d2 = {"Lcom/transsion/upgradesdk/bean/UpgradeData;", "Ljava/io/Serializable;", "androidVerList", "", "", "brandList", "countryCodeList", "directDwl", "", "hoverBtn", "modelList", "oldPkgVersion", "Lcom/transsion/upgradesdk/bean/OldPkgVersion;", PushConstants.PROVIDER_FIELD_PKG, "pkgVersionName", "pkgVersion", "", "pkgSize", "popUpCnt", "popUpInterval", "sdkRefreshTime", "taskStatus", "upgradeContent", "Lcom/google/gson/JsonObject;", "upgradeType", "validEndDate", "validStartDate", "reqInterval", "cdnRequestIntervalHours", "updateTime", "(Ljava/util/List;Ljava/util/List;Ljava/util/List;IILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JJIIILjava/lang/String;Lcom/google/gson/JsonObject;Ljava/lang/String;JJIILjava/lang/String;)V", "getAndroidVerList", "()Ljava/util/List;", "getBrandList", "getCdnRequestIntervalHours", "()I", "setCdnRequestIntervalHours", "(I)V", "getCountryCodeList", "getDirectDwl", "getHoverBtn", "getModelList", "getOldPkgVersion", "getPkg", "()Ljava/lang/String;", "getPkgSize", "()J", "getPkgVersion", "getPkgVersionName", "getPopUpCnt", "getPopUpInterval", "getReqInterval", "setReqInterval", "getSdkRefreshTime", "getTaskStatus", "getUpdateTime", "setUpdateTime", "(Ljava/lang/String;)V", "getUpgradeContent", "()Lcom/google/gson/JsonObject;", "getUpgradeType", "getValidEndDate", "getValidStartDate", "checkAndroidVersion", "", "checkBrand", "checkCountry", "checkDateRange", "checkDialogPopInterval", "checkDialogPopTimes", "checkModel", "checkNeedUpgrade", "currentVersion", "checkVersionRange", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "getCancelButtonText", "context", "Landroid/content/Context;", "getUpgradeMessage", "hashCode", "isForceUpdate", "toString", "upgradesdk_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UpgradeData implements Serializable {
    private final List<String> androidVerList;
    private final List<String> brandList;
    private int cdnRequestIntervalHours;
    private final List<String> countryCodeList;
    private final int directDwl;
    private final int hoverBtn;
    private final List<String> modelList;
    private final List<OldPkgVersion> oldPkgVersion;
    private final String pkg;
    private final long pkgSize;
    private final long pkgVersion;
    private final String pkgVersionName;
    private final int popUpCnt;
    private final int popUpInterval;
    private int reqInterval;
    private final int sdkRefreshTime;
    private final String taskStatus;
    private String updateTime;
    private final JsonObject upgradeContent;
    private final String upgradeType;
    private final long validEndDate;
    private final long validStartDate;

    public UpgradeData(List<String> androidVerList, List<String> brandList, List<String> countryCodeList, int i10, int i11, List<String> modelList, List<OldPkgVersion> list, String pkg, String pkgVersionName, long j10, long j11, int i12, int i13, int i14, String taskStatus, JsonObject jsonObject, String upgradeType, long j12, long j13, int i15, int i16, String str) {
        Intrinsics.h(androidVerList, "androidVerList");
        Intrinsics.h(brandList, "brandList");
        Intrinsics.h(countryCodeList, "countryCodeList");
        Intrinsics.h(modelList, "modelList");
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(pkgVersionName, "pkgVersionName");
        Intrinsics.h(taskStatus, "taskStatus");
        Intrinsics.h(upgradeType, "upgradeType");
        this.androidVerList = androidVerList;
        this.brandList = brandList;
        this.countryCodeList = countryCodeList;
        this.directDwl = i10;
        this.hoverBtn = i11;
        this.modelList = modelList;
        this.oldPkgVersion = list;
        this.pkg = pkg;
        this.pkgVersionName = pkgVersionName;
        this.pkgVersion = j10;
        this.pkgSize = j11;
        this.popUpCnt = i12;
        this.popUpInterval = i13;
        this.sdkRefreshTime = i14;
        this.taskStatus = taskStatus;
        this.upgradeContent = jsonObject;
        this.upgradeType = upgradeType;
        this.validEndDate = j12;
        this.validStartDate = j13;
        this.reqInterval = i15;
        this.cdnRequestIntervalHours = i16;
        this.updateTime = str;
    }

    public final boolean checkAndroidVersion() {
        List<String> list = this.androidVerList;
        if (list == null || list.isEmpty() || this.androidVerList.contains("ALL")) {
            return true;
        }
        return this.androidVerList.contains(n.h());
    }

    public final boolean checkBrand() {
        if (this.brandList.isEmpty()) {
            return true;
        }
        List<String> list = this.brandList;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            for (String str : list) {
                if (StringsKt.H(str, Build.BRAND, true) | StringsKt.H(str, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, true)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean checkCountry() {
        String simCountryIso;
        List<String> list = this.countryCodeList;
        if (list == null || list.isEmpty()) {
            return true;
        }
        Application application = a.f69263a;
        if (application == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        try {
            Object systemService = application.getSystemService("phone");
            Intrinsics.f(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
            simCountryIso = ((TelephonyManager) systemService).getSimCountryIso();
            Intrinsics.g(simCountryIso, "getSimCountryIso(...)");
        } catch (Exception unused) {
            simCountryIso = "";
        }
        if (TextUtils.isEmpty(simCountryIso)) {
            return true;
        }
        List<String> list2 = this.countryCodeList;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            for (String str : list2) {
                if (StringsKt.H(str, simCountryIso, true) | StringsKt.H(str, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, true)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean checkDateRange(long validStartDate, long validEndDate) {
        if (validEndDate == 0) {
            return true;
        }
        long timeInMillis = Calendar.getInstance(TimeZone.getTimeZone("GMT")).getTimeInMillis();
        long jA = d.a("UpgradeSdkManager", "tag", "当前的时间戳： " + timeInMillis + "    服务端： start: " + validStartDate + "  --   end: " + validEndDate, NotificationCompat.CATEGORY_MESSAGE);
        if (!g.f72839a && jA - g.f72840b >= 5000) {
            g.f72840b = jA;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
            boolean z10 = g.f72839a;
        }
        boolean z11 = f.f70259o.a().f70264d;
        return validStartDate <= timeInMillis && timeInMillis <= validEndDate;
    }

    public final boolean checkDialogPopInterval() {
        if (isForceUpdate()) {
            return true;
        }
        h hVar = i.f72841b;
        Application application = a.f69263a;
        if (application == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        i iVarA = hVar.a(application);
        Intrinsics.h("KV_UPGRADE_POPUP_LAST_TIME", "key");
        MMKV mmkv = iVarA.f72843a;
        return System.currentTimeMillis() - (mmkv != null ? mmkv.h("KV_UPGRADE_POPUP_LAST_TIME", 0L) : 0L) > ((long) (this.popUpInterval * 86400)) * 1000;
    }

    public final boolean checkDialogPopTimes() {
        if (isForceUpdate()) {
            return true;
        }
        h hVar = i.f72841b;
        Application application = a.f69263a;
        if (application == null) {
            Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            application = null;
        }
        i iVarA = hVar.a(application);
        Intrinsics.h("KV_UPGRADE_POPUP_TIMES", "key");
        MMKV mmkv = iVarA.f72843a;
        return (mmkv != null ? mmkv.g("KV_UPGRADE_POPUP_TIMES", 0) : 0) < this.popUpCnt;
    }

    public final boolean checkModel() {
        List<String> list = this.modelList;
        if (list == null || list.isEmpty()) {
            return true;
        }
        String str = f.f70259o.a().e().f67368j;
        List<String> list2 = this.modelList;
        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
            for (String str2 : list2) {
                if (StringsKt.H(str2, str, true) | StringsKt.H(str2, IntegrationConstants.NAVIGATION_BAR_ALL_ACTION, true)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean checkNeedUpgrade(long currentVersion) {
        return currentVersion < this.pkgVersion;
    }

    public final boolean checkVersionRange(long currentVersion) {
        List<OldPkgVersion> list = this.oldPkgVersion;
        if (list == null || list.isEmpty()) {
            return true;
        }
        for (OldPkgVersion oldPkgVersion : this.oldPkgVersion) {
            if (currentVersion >= oldPkgVersion.getOldPkgVersionStart() && currentVersion <= oldPkgVersion.getOldPkgVersionEnd()) {
                List<Long> oldPkgVersionExclude = oldPkgVersion.getOldPkgVersionExclude();
                return oldPkgVersionExclude == null || oldPkgVersionExclude.isEmpty() || !oldPkgVersion.getOldPkgVersionExclude().contains(Long.valueOf(currentVersion));
            }
        }
        return false;
    }

    public final List<String> component1() {
        return this.androidVerList;
    }

    public final long getPkgVersion() {
        return this.pkgVersion;
    }

    public final long getPkgSize() {
        return this.pkgSize;
    }

    public final int getPopUpCnt() {
        return this.popUpCnt;
    }

    public final int getPopUpInterval() {
        return this.popUpInterval;
    }

    public final int getSdkRefreshTime() {
        return this.sdkRefreshTime;
    }

    public final String getTaskStatus() {
        return this.taskStatus;
    }

    public final JsonObject getUpgradeContent() {
        return this.upgradeContent;
    }

    public final String getUpgradeType() {
        return this.upgradeType;
    }

    public final long getValidEndDate() {
        return this.validEndDate;
    }

    public final long getValidStartDate() {
        return this.validStartDate;
    }

    public final List<String> component2() {
        return this.brandList;
    }

    public final int getReqInterval() {
        return this.reqInterval;
    }

    public final int getCdnRequestIntervalHours() {
        return this.cdnRequestIntervalHours;
    }

    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final List<String> component3() {
        return this.countryCodeList;
    }

    public final int getDirectDwl() {
        return this.directDwl;
    }

    public final int getHoverBtn() {
        return this.hoverBtn;
    }

    public final List<String> component6() {
        return this.modelList;
    }

    public final List<OldPkgVersion> component7() {
        return this.oldPkgVersion;
    }

    public final String getPkg() {
        return this.pkg;
    }

    public final String getPkgVersionName() {
        return this.pkgVersionName;
    }

    public final UpgradeData copy(List<String> androidVerList, List<String> brandList, List<String> countryCodeList, int directDwl, int hoverBtn, List<String> modelList, List<OldPkgVersion> oldPkgVersion, String pkg, String pkgVersionName, long pkgVersion, long pkgSize, int popUpCnt, int popUpInterval, int sdkRefreshTime, String taskStatus, JsonObject upgradeContent, String upgradeType, long validEndDate, long validStartDate, int reqInterval, int cdnRequestIntervalHours, String updateTime) {
        Intrinsics.h(androidVerList, "androidVerList");
        Intrinsics.h(brandList, "brandList");
        Intrinsics.h(countryCodeList, "countryCodeList");
        Intrinsics.h(modelList, "modelList");
        Intrinsics.h(pkg, "pkg");
        Intrinsics.h(pkgVersionName, "pkgVersionName");
        Intrinsics.h(taskStatus, "taskStatus");
        Intrinsics.h(upgradeType, "upgradeType");
        return new UpgradeData(androidVerList, brandList, countryCodeList, directDwl, hoverBtn, modelList, oldPkgVersion, pkg, pkgVersionName, pkgVersion, pkgSize, popUpCnt, popUpInterval, sdkRefreshTime, taskStatus, upgradeContent, upgradeType, validEndDate, validStartDate, reqInterval, cdnRequestIntervalHours, updateTime);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpgradeData)) {
            return false;
        }
        UpgradeData upgradeData = (UpgradeData) other;
        return Intrinsics.c(this.androidVerList, upgradeData.androidVerList) && Intrinsics.c(this.brandList, upgradeData.brandList) && Intrinsics.c(this.countryCodeList, upgradeData.countryCodeList) && this.directDwl == upgradeData.directDwl && this.hoverBtn == upgradeData.hoverBtn && Intrinsics.c(this.modelList, upgradeData.modelList) && Intrinsics.c(this.oldPkgVersion, upgradeData.oldPkgVersion) && Intrinsics.c(this.pkg, upgradeData.pkg) && Intrinsics.c(this.pkgVersionName, upgradeData.pkgVersionName) && this.pkgVersion == upgradeData.pkgVersion && this.pkgSize == upgradeData.pkgSize && this.popUpCnt == upgradeData.popUpCnt && this.popUpInterval == upgradeData.popUpInterval && this.sdkRefreshTime == upgradeData.sdkRefreshTime && Intrinsics.c(this.taskStatus, upgradeData.taskStatus) && Intrinsics.c(this.upgradeContent, upgradeData.upgradeContent) && Intrinsics.c(this.upgradeType, upgradeData.upgradeType) && this.validEndDate == upgradeData.validEndDate && this.validStartDate == upgradeData.validStartDate && this.reqInterval == upgradeData.reqInterval && this.cdnRequestIntervalHours == upgradeData.cdnRequestIntervalHours && Intrinsics.c(this.updateTime, upgradeData.updateTime);
    }

    public final List<String> getAndroidVerList() {
        return this.androidVerList;
    }

    public final List<String> getBrandList() {
        return this.brandList;
    }

    public final String getCancelButtonText(Context context) {
        Intrinsics.h(context, "context");
        if (isForceUpdate()) {
            String string = context.getResources().getString(R$string.upgrade_sdk_text_later_force);
            Intrinsics.e(string);
            return string;
        }
        String string2 = context.getResources().getString(R$string.upgrade_sdk_text_later);
        Intrinsics.e(string2);
        return string2;
    }

    public final int getCdnRequestIntervalHours() {
        return this.cdnRequestIntervalHours;
    }

    public final List<String> getCountryCodeList() {
        return this.countryCodeList;
    }

    public final int getDirectDwl() {
        return this.directDwl;
    }

    public final int getHoverBtn() {
        return this.hoverBtn;
    }

    public final List<String> getModelList() {
        return this.modelList;
    }

    public final List<OldPkgVersion> getOldPkgVersion() {
        return this.oldPkgVersion;
    }

    public final String getPkg() {
        return this.pkg;
    }

    public final long getPkgSize() {
        return this.pkgSize;
    }

    public final long getPkgVersion() {
        return this.pkgVersion;
    }

    public final String getPkgVersionName() {
        return this.pkgVersionName;
    }

    public final int getPopUpCnt() {
        return this.popUpCnt;
    }

    public final int getPopUpInterval() {
        return this.popUpInterval;
    }

    public final int getReqInterval() {
        return this.reqInterval;
    }

    public final int getSdkRefreshTime() {
        return this.sdkRefreshTime;
    }

    public final String getTaskStatus() {
        return this.taskStatus;
    }

    public final String getUpdateTime() {
        return this.updateTime;
    }

    public final JsonObject getUpgradeContent() {
        return this.upgradeContent;
    }

    public final String getUpgradeMessage() {
        JsonObject jsonObject = this.upgradeContent;
        if (jsonObject != null && jsonObject.size() != 0) {
            Application application = a.f69263a;
            if (application == null) {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                application = null;
            }
            String strA = n.a(application);
            if (this.upgradeContent.has(strA)) {
                String asString = this.upgradeContent.get(strA).getAsString();
                Intrinsics.g(asString, "getAsString(...)");
                return asString;
            }
            if (this.upgradeContent.has("EN")) {
                String asString2 = this.upgradeContent.get("EN").getAsString();
                Intrinsics.g(asString2, "getAsString(...)");
                return asString2;
            }
        }
        return "";
    }

    public final String getUpgradeType() {
        return this.upgradeType;
    }

    public final long getValidEndDate() {
        return this.validEndDate;
    }

    public final long getValidStartDate() {
        return this.validStartDate;
    }

    public int hashCode() {
        int iHashCode = (this.modelList.hashCode() + ((this.hoverBtn + ((this.directDwl + ((this.countryCodeList.hashCode() + ((this.brandList.hashCode() + (this.androidVerList.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        List<OldPkgVersion> list = this.oldPkgVersion;
        int iA = nu.a.a(this.taskStatus, (this.sdkRefreshTime + ((this.popUpInterval + ((this.popUpCnt + ((s.a(this.pkgSize) + ((s.a(this.pkgVersion) + nu.a.a(this.pkgVersionName, nu.a.a(this.pkg, (iHashCode + (list == null ? 0 : list.hashCode())) * 31, 31), 31)) * 31)) * 31)) * 31)) * 31)) * 31, 31);
        JsonObject jsonObject = this.upgradeContent;
        int iA2 = (this.cdnRequestIntervalHours + ((this.reqInterval + ((s.a(this.validStartDate) + ((s.a(this.validEndDate) + nu.a.a(this.upgradeType, (iA + (jsonObject == null ? 0 : jsonObject.hashCode())) * 31, 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.updateTime;
        return iA2 + (str != null ? str.hashCode() : 0);
    }

    public final boolean isForceUpdate() {
        return TextUtils.equals(this.upgradeType, "force");
    }

    public final void setCdnRequestIntervalHours(int i10) {
        this.cdnRequestIntervalHours = i10;
    }

    public final void setReqInterval(int i10) {
        this.reqInterval = i10;
    }

    public final void setUpdateTime(String str) {
        this.updateTime = str;
    }

    public String toString() {
        return "UpgradeData(androidVerList=" + this.androidVerList + ", brandList=" + this.brandList + ", countryCodeList=" + this.countryCodeList + ", directDwl=" + this.directDwl + ", hoverBtn=" + this.hoverBtn + ", modelList=" + this.modelList + ", oldPkgVersion=" + this.oldPkgVersion + ", pkg='" + this.pkg + "', pkgVersion='" + this.pkgVersion + "', pkgSize=" + this.pkgSize + ", popUpCnt=" + this.popUpCnt + ", popUpInterval=" + this.popUpInterval + ", sdkRefreshTime=" + this.sdkRefreshTime + ", taskStatus='" + this.taskStatus + "', upgradeContent=" + this.upgradeContent + ", upgradeType='" + this.upgradeType + "', validEndDate='" + this.validEndDate + "', validStartDate='" + this.validStartDate + "')";
    }

    public UpgradeData(List list, List list2, List list3, int i10, int i11, List list4, List list5, String str, String str2, long j10, long j11, int i12, int i13, int i14, String str3, JsonObject jsonObject, String str4, long j12, long j13, int i15, int i16, String str5, int i17, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, list2, list3, (i17 & 8) != 0 ? 1 : i10, (i17 & 16) != 0 ? 0 : i11, list4, (i17 & 64) != 0 ? null : list5, str, str2, j10, j11, i12, i13, (i17 & 8192) != 0 ? 3 : i14, str3, (32768 & i17) != 0 ? null : jsonObject, str4, j12, j13, (524288 & i17) != 0 ? 0 : i15, (1048576 & i17) != 0 ? 0 : i16, (i17 & 2097152) != 0 ? null : str5);
    }
}
