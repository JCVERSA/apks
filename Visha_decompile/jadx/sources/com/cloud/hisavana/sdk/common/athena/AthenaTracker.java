package com.cloud.hisavana.sdk.common.athena;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArraySet;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.net.NetGroup;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.DiskTrackingBean;
import com.cloud.hisavana.sdk.common.bean.ProgressData;
import com.cloud.hisavana.sdk.common.bean.SSPWebPageReqInfo;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.request.AdxImpBean;
import com.cloud.hisavana.sdk.data.bean.request.FormBean;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigCodeSeatDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.ClientABTestDTOKt;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigsKt;
import com.cloud.hisavana.sdk.ext.attr.AttrData;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.DeviceUtil;
import com.cloud.sdk.commonutil.util.MitNetUtil;
import com.cloud.sdk.commonutil.util.b;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.ga.AthenaAnalytics;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.bgb;
import defpackage.cy9;
import defpackage.hm4;
import defpackage.ied;
import defpackage.ik;
import defpackage.ikd;
import defpackage.ja3;
import defpackage.md8;
import defpackage.o9;
import defpackage.q1d;
import defpackage.r6;
import defpackage.rd;
import defpackage.spc;
import defpackage.ul4;
import defpackage.vl4;
import defpackage.wj;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AthenaTracker {
    public static boolean a = false;
    public static boolean b = true;
    public static SecureRandom c = new SecureRandom();
    public static String d = "";

    class AnonymousClass10 implements Runnable {
        final int val$errorCode;
        final String val$requestId;

        public AnonymousClass10(String str, int i) {
            this.val$requestId = str;
            this.val$errorCode = i;
        }

        @Override
        public void run() {
            a.O(this.val$requestId, this.val$errorCode);
        }
    }

    class AnonymousClass17 implements Runnable {
        final String val$gplink;
        final AdsDTO val$info;

        public AnonymousClass17(AdsDTO adsDTO, String str) {
            this.val$info = adsDTO;
            this.val$gplink = str;
        }

        @Override
        public void run() {
            a.j0(this.val$info, this.val$gplink);
        }
    }

    class AnonymousClass23 implements Runnable {
        final List val$adsDTOs;
        final String val$defaultAdStatusStr;
        final int val$errorCode;
        final ied val$fetchInfo;
        final int val$localOfflineCount;
        final String val$offlineAdStatusStr;
        final long val$timeConsuming;

        public AnonymousClass23(List list, ied iedVar, String str, int i, long j, String str2, int i2) {
            this.val$adsDTOs = list;
            this.val$fetchInfo = iedVar;
            this.val$offlineAdStatusStr = str;
            this.val$errorCode = i;
            this.val$timeConsuming = j;
            this.val$defaultAdStatusStr = str2;
            this.val$localOfflineCount = i2;
        }

        @Override
        public void run() {
            a.l(this.val$adsDTOs, this.val$fetchInfo.p(), this.val$fetchInfo.q(), this.val$offlineAdStatusStr, String.valueOf(this.val$errorCode), this.val$timeConsuming, this.val$fetchInfo.j(), this.val$fetchInfo.g().isOfflineAdEnable(), this.val$defaultAdStatusStr, this.val$localOfflineCount, new Bundle());
        }
    }

    class AnonymousClass9 implements Runnable {
        final String val$requestId;

        public AnonymousClass9(String str) {
            this.val$requestId = str;
        }

        @Override
        public void run() {
            a.N(this.val$requestId);
        }
    }

    public enum ClickJumpType {
        PS_FULL_SCREEN(0),
        PS_HALF_SCREEN(1),
        GP(3),
        PULL_LIVE(4),
        OTHER(5);

        private final int rawValue;

        ClickJumpType(int i) {
            this.rawValue = i;
        }

        public int rawValue() {
            return this.rawValue;
        }
    }

    public static class a {
        public static void A(Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleN);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_chrome_stay_landing_page") || sSPTrackingHelper.k("ssp_chrome_stay_landing_page")) {
                new wj("ssp_chrome_stay_landing_page", 8765).c(bundleN, null).b();
            }
        }

        public static void B(Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleN);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_chrome_landing_page") || sSPTrackingHelper.k("ssp_chrome_landing_page")) {
                new wj("ssp_chrome_landing_page", 8765).c(bundleN, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void C(String str, AdsDTO adsDTO, Boolean bool) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("event_data_set", str);
            bundleN.putInt("turn_off_per_ads", DeviceUtil.g());
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundleN.putString("ext_info", impBeanRequest.getExtInfoJson());
            }
            if (adsDTO != null) {
                try {
                    if (adsDTO.getTrackUserClickArea() != 0) {
                        bundleN.putInt("user_click_area", adsDTO.getTrackUserClickArea());
                    }
                    if ("I01".equals(adsDTO.getMaterialStyle())) {
                        bundleN.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                    }
                    if (adsDTO.getDownloadArea() != 0) {
                        bundleN.putInt("download_area", adsDTO.getDownloadArea());
                    }
                } catch (Throwable unused) {
                }
            }
            rd.v0(bundleN);
            PackageInfo packageInfoC = cy9.c(ul4.a());
            int i = 1;
            bundleN.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleN.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            if (adsDTO == null) {
                bundleN.putInt("is_ps_type", 0);
            } else {
                bundleN.putInt("is_ps_type", cy9.a(adsDTO) ? 1 : 0);
                bundleN.putString("click_link", adsDTO.getClick_link());
                bundleN.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleN.putInt("material_type", adsDTO.getMaterialType().intValue());
                bundleN.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
                bundleN.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
                if (!r6.q() && !adsDTO.getTestResponse().booleanValue()) {
                    i = 0;
                }
                bundleN.putInt("is_test_request", i);
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
                if (TextUtils.isEmpty(adsDTO.getTemplateHtmlFilePath())) {
                    bundleN.putString("material_style", h(adsDTO));
                } else {
                    bundleN.putString("new_material_style", adsDTO.getTemplateCode());
                }
                bundleN.putInt("close_delay_time", adsDTO.getCloseDelayTime());
                bundleN.putInt("endcard", adsDTO.getEndCardType());
            }
            if (bool != null) {
                bundleN.putInt("is_ps_reporting", bool.booleanValue() ? 1 : 0);
            }
            AthenaTracker.l(adsDTO, bundleN);
            SSPTrackingHelper.a.Z("ssp_cliclk_link_tracking", bundleN);
            AthenaTracker.k(bundleN);
            new wj("ad_ssp_click", 2411).c(bundleN, null).b();
        }

        public static void D(AttrData attrData) {
            if (attrData == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, attrData.getEventTs());
            bundleN.putInt("type", attrData.getType());
            bundleN.putInt("error_code", attrData.getErrorCode());
            bundleN.putInt("ct", attrData.getCount());
            bundleN.putInt("fail_c", attrData.getFailCount());
            bundleN.putString("error_list", attrData.getErrorList());
            bundleN.putString("link_id", attrData.getLinkId());
            bundleN.putString(TrackingKey.AD_CREATE_IDS, attrData.getCreatives());
            new wj("click_sync", 8765).c(bundleN, null).b();
        }

        public static void E(int i, String str) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("app_id", r6.b);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt(TrackingKey.TRIGGER_TYPE, i);
            bundleN.putInt("s_track_event_type", 1);
            bundleN.putString(TrackingKey.CLD_REQUEST_ID, str);
            if (SSPTrackingHelper.a.k("track_cloud_request")) {
                new wj("track_cloud_request", 8765).c(bundleN, null).b();
            }
        }

        public static void F(int i, String str, int i2, int i3, String str2, String str3) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putInt(TrackingKey.TRIGGER_TYPE, i);
            bundleN.putString(TrackingKey.CLD_REQUEST_ID, str);
            bundleN.putString("app_id", r6.b);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt("cld_return_time_interval", i2);
            bundleN.putInt(TrackingKey.CODE, i3);
            bundleN.putString("message", str2);
            bundleN.putString("cld_version", str3);
            bundleN.putInt("s_track_event_type", 2);
            if (SSPTrackingHelper.a.k("track_cloud_request")) {
                new wj("track_cloud_request", 8765).c(bundleN, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void G(AdsDTO adsDTO, String str, ClickJumpType clickJumpType, String str2, Bundle bundle) {
            if (adsDTO == null) {
                return;
            }
            try {
                Bundle bundle2 = new Bundle();
                bundle2.putInt("called_url_type", adsDTO.getCalledUrlType());
                bundle2.putString("app_name", adsDTO.getPslinkAppName());
                bundle2.putInt("material_type", adsDTO.getMaterialType().intValue());
                bundle2.putInt("show_times", adsDTO.getShowTime().intValue());
                bundle2.putString("deep_link_url", str);
                bundle2.putInt("is_inapp_ad", adsDTO.getSource() == 4 ? 1 : 0);
                if (!TextUtils.isEmpty(str2)) {
                    bundle2.putString(TrackingKey.ERROR_MESSAGE, str2);
                }
                bundle2.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundle2.putInt("is_jump_to_halfscreen", clickJumpType.rawValue());
                AthenaTracker.k(bundle2);
                AthenaTracker.l(adsDTO, bundle2);
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
                sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundle2);
                if (sSPTrackingHelper.k("deeplink")) {
                    new wj("deeplink", 8765).c(g(adsDTO, bundle2, bundle), null).b();
                }
            } catch (Throwable unused) {
            }
        }

        public static void H(AdsDTO adsDTO, boolean z) {
            if (adsDTO == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
            bundleN.putString("expired_date", adsDTO.getExpiredDate());
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putString(TrackingKey.ECPM, String.valueOf(bgb.a(adsDTO.getFirstPrice())));
            bundleN.putString("campaignname", adsDTO.getCampaignname());
            bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            String str = impBeanRequest.mSceneId;
            if (!impBeanRequest.isAutoRefresh && !TextUtils.isEmpty(str)) {
                bundleN.putString(TrackingKey.SCENE_ID, str);
            }
            bundleN.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt("is_inapp_ad", 1);
            bundleN.putString("material_style", h(adsDTO));
            bundleN.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundleN.putInt("endcard", adsDTO.getEndCardType());
            SSPTrackingHelper.a.Z("ssp_cliclk_link_tracking", bundleN);
            if (z) {
                bundleN.putInt("s_confirm_dialog", 1);
            }
            try {
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                if (adsDTO.getTrackUserClickArea() != 0) {
                    bundleN.putInt("user_click_area", adsDTO.getTrackUserClickArea());
                }
                if ("I01".equals(adsDTO.getMaterialStyle())) {
                    bundleN.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                }
                if (adsDTO.getDownloadArea() != 0) {
                    bundleN.putInt("download_area", adsDTO.getDownloadArea());
                }
            } catch (Throwable unused) {
            }
            new wj("ssp_click_inapp", 2411).c(bundleN, null).b();
        }

        public static void I(List list, String str, String str2, long j, Bundle bundle) {
            AdxImpBean impBeanRequest;
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putAll(bundle);
            AdsDTO adsDTO = (AdsDTO) list.get(0);
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                AdsDTO adsDTO2 = (AdsDTO) it.next();
                if (adsDTO2 != null) {
                    arrayList.add(adsDTO2.getAdCreativeId());
                }
            }
            bundleN.putString(TrackingKey.TRIGGER_ID, str);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str2);
            bundleN.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(StringUtils.COMMA, arrayList));
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putString("expired_date", adsDTO.getExpiredDate());
            bundleN.putLong("time_consuming", j);
            bundleN.putString(TrackingKey.ECPM, String.valueOf(bgb.a(adsDTO.getFirstPrice())));
            bundleN.putString("campaignname", adsDTO.getCampaignname());
            bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.a0("ssp_material_download", bundleN);
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            new wj("ssp_filling_result_default", 8765).c(bundleN, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void J(AdsDTO adsDTO) {
            try {
                Bundle bundleN = AthenaTracker.n(null);
                if (adsDTO != null) {
                    bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                    bundleN.putString("app_id", r6.b);
                    bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                    bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                    bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                    if (impBeanRequest != null) {
                        bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                        bundleN.putString("request_id", impBeanRequest.requestId);
                        bundleN.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                        String str = impBeanRequest.mSceneId;
                        if (!impBeanRequest.isAutoRefresh && !TextUtils.isEmpty(str)) {
                            bundleN.putString(TrackingKey.SCENE_ID, str);
                        }
                    }
                    bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                }
                AthenaTracker.l(adsDTO, bundleN);
                if (bundleN != null) {
                    SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
                    sSPTrackingHelper.a0("ssp_material_download", bundleN);
                    sSPTrackingHelper.b0("ssp_show_failed", bundleN);
                    AthenaTracker.k(bundleN);
                    if (sSPTrackingHelper.k("ssp_default_trigger_show")) {
                        new wj("ssp_default_trigger_show", 8765).c(bundleN, null).b();
                    }
                }
            } catch (Throwable unused) {
            }
        }

        public static void K(String str) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", str);
            bundleN.putString("app_id", r6.b);
            new wj("ssp_ad_request_default", 8765).c(bundleN, null).b();
        }

        public static void L(String str, int i) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", str);
            bundleN.putString("app_id", r6.b);
            bundleN.putString("error_code", String.valueOf(i));
            new wj("ssp_ad_return_default", 8765).c(bundleN, null).b();
        }

        public static void M(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putInt("popularize_app_install_status", adsDTO.getInstallApk());
            bundleN.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
            bundleN.putString("expired_date", adsDTO.getExpiredDate());
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putString(TrackingKey.ECPM, String.valueOf(bgb.a(adsDTO.getFirstPrice())));
            bundleN.putString("campaignname", adsDTO.getCampaignname());
            bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            String str = impBeanRequest.mSceneId;
            if (!impBeanRequest.isAutoRefresh && !TextUtils.isEmpty(str)) {
                bundleN.putString(TrackingKey.SCENE_ID, str);
            }
            bundleN.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt("is_inapp_ad", 1);
            bundleN.putString("material_style", h(adsDTO));
            bundleN.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundleN.putInt("endcard", adsDTO.getEndCardType());
            try {
                if (adsDTO.getDownloadArea() != 0) {
                    bundleN.putInt("download_area", adsDTO.getDownloadArea());
                }
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt(TrackingKey.AD_TYPE, adsDTO.getAdType());
            } catch (Throwable unused) {
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.a0("ssp_material_download", bundleN);
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            new wj("ssp_show_inapp", 2411).c(bundleN, null).b();
        }

        public static void N(String str) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", str);
            bundleN.putString("app_id", r6.b);
            new wj("ssp_ad_request_zip", 8765).c(bundleN, null).b();
        }

        public static void O(String str, int i) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", str);
            bundleN.putString("app_id", r6.b);
            bundleN.putInt("error_code", i);
            bundleN.putString("error_code", String.valueOf(i));
            new wj("ssp_ad_return_zip", 8765).c(bundleN, null).b();
        }

        public static void P(String str, int i, String str2) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putInt(TrackingKey.IS_OFFLINE, !NetStateManager.checkNetworkState(false) ? 1 : 0);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str2);
            bundleN.putString(TrackingKey.SCENE_ID, str);
            bundleN.putInt(TrackingKey.AD_COUNT, i);
            new wj("ad_ssp_enter_scene", 8765).c(bundleN, null).b();
        }

        public static void Q(AdsDTO adsDTO, FormBean formBean) {
            if (adsDTO == null || formBean == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, 1);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("form_info", GsonUtil.d(formBean));
            bundleN.putInt("material_type", adsDTO.getMaterialType().intValue());
            new wj("form_infor_set", 8765).c(bundleN, null).b();
        }

        public static void R(AdsDTO adsDTO, String str, String str2, int i) {
            AdxImpBean impBeanRequest;
            try {
                JSONObject jSONObject = new JSONObject(str2);
                Bundle bundleN = AthenaTracker.n(null);
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        Object obj = jSONObject.get(next);
                        if (obj != null) {
                            ikd.b().d("ssp", obj.toString());
                            String simpleName = obj.getClass().getSimpleName();
                            if (simpleName.equals("Integer")) {
                                bundleN.putInt(next, ((Integer) jSONObject.get(next)).intValue());
                            } else if (simpleName.equals("Double")) {
                                bundleN.putDouble(next, ((Double) jSONObject.get(next)).doubleValue());
                            } else if (simpleName.equals("Long")) {
                                bundleN.putLong(next, ((Long) jSONObject.get(next)).longValue());
                            } else if (simpleName.equals("String")) {
                                bundleN.putString(next, (String) jSONObject.get(next));
                            } else if (simpleName.equals("Boolean")) {
                                bundleN.putBoolean(next, ((Boolean) jSONObject.get(next)).booleanValue());
                            } else {
                                ikd.b().d("ssp", "type not supported");
                            }
                        }
                    }
                }
                if (adsDTO != null) {
                    bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
                    bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                    bundleN.putString("plan_id", adsDTO.getPlanId());
                    bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
                    bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                    bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                    impBeanRequest = adsDTO.getImpBeanRequest();
                } else {
                    impBeanRequest = null;
                }
                if (impBeanRequest != null) {
                    bundleN.putString("request_id", impBeanRequest.requestId);
                    bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                }
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                new wj(str, i).c(bundleN, null).b();
            } catch (JSONException e) {
                ikd.b().e(Log.getStackTraceString(e));
            }
        }

        public static void S(AttrData attrData) {
            if (attrData == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, attrData.getEventTs());
            bundleN.putInt("error_code", attrData.getErrorCode());
            bundleN.putInt("ct", attrData.getCount());
            bundleN.putInt("fail_c", attrData.getFailCount());
            bundleN.putString("error_list", attrData.getErrorList());
            bundleN.putString("link_id", attrData.getLinkId());
            bundleN.putString(TrackingKey.AD_CREATE_IDS, attrData.getCreatives());
            new wj("imp_sync", 8765).c(bundleN, null).b();
        }

        public static void T() {
            new wj("sdk_initalize", 8765).c(AthenaTracker.n(null), null).b();
        }

        public static void U(AdsDTO adsDTO, int i) {
            if (adsDTO == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putString("request_id", adsDTO.getRid());
            bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putInt("process", i);
            new wj("show_process", 8765).c(bundleN, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void V(ied iedVar, int i) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putInt("offline_ad_enable", iedVar.g().isOfflineAdEnable() ? 1 : 0);
            bundleN.putInt(TrackingKey.AD_TYPE, iedVar.e());
            bundleN.putString(TrackingKey.TRIGGER_ID, iedVar.p());
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, iedVar.j());
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt(TrackingKey.AD_COUNT, iedVar.a());
            bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, iedVar.q());
            if (!TextUtils.isEmpty(iedVar.m())) {
                bundleN.putString(TrackingKey.SCENE_ID, iedVar.m());
            }
            bundleN.putInt(TrackingKey.IS_RETREATAD, 0);
            if (iedVar.n() != null) {
                bundleN.putString(TrackingKey.GAME_NAME, iedVar.n().b());
                bundleN.putString(TrackingKey.GAME_SCENE, iedVar.n().c());
                bundleN.putString("ext_info", iedVar.n().a() == null ? null : GsonUtil.d(iedVar.n().a()));
                try {
                    if (iedVar.r() != null) {
                        bundleN.putInt("s_recommend_req", 1);
                    }
                } catch (Throwable unused) {
                }
            }
            bundleN.putString("error_code", String.valueOf(i));
            if (NetGroup.d() > 0) {
                bundleN.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleN.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused2) {
            }
            q1d q1dVar = q1d.a;
            bundleN.putInt("is_support_dcdn", q1dVar.b());
            bundleN.putLong("dcdn_var_id", q1dVar.a());
            AthenaTracker.k(bundleN);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.a0("ssp_material_download", bundleN);
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            new wj("media_call_request", 8765).c(bundleN, null).b();
        }

        public static void W(AdsDTO adsDTO, int i) {
            Bundle bundleI = i(adsDTO);
            if (bundleI != null) {
                bundleI.putInt("pop_status", i);
                bundleI.putInt("is_skip", i == 4 ? 1 : 0);
                new wj("miniapp_add_homescreen_guide", 8765).c(bundleI, null).b();
            }
        }

        public static void X(AdsDTO adsDTO, int i) {
            Bundle bundleI = i(adsDTO);
            if (bundleI != null) {
                bundleI.putInt("os_pop_status", i);
                new wj("miniapp_sys_add_homescreen", 8765).c(bundleI, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void Y(AdsDTO adsDTO, boolean z) {
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleN.putString("request_id", impBeanRequest.requestId);
                bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                bundleN.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
                String str = impBeanRequest.mSceneId;
                if (!impBeanRequest.isAutoRefresh && !TextUtils.isEmpty(str)) {
                    bundleN.putString(TrackingKey.SCENE_ID, str);
                }
            }
            rd.v0(bundleN);
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundleN.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleN.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            if (adsDTO == null) {
                bundleN.putInt("is_ps_type", 0);
            } else {
                bundleN.putInt("is_ps_type", cy9.a(adsDTO) ? 1 : 0);
                bundleN.putString("click_link", adsDTO.getClick_link());
                bundleN.putString("ps_packagename", adsDTO.getPsPackageName());
                bundleN.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("app_id", r6.b);
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
                bundleN.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
                bundleN.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
                bundleN.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleN.putInt("is_test_request", (r6.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleN.putInt("show_times", adsDTO.getShowTime().intValue());
                bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleN.putInt("platform", adsDTO.getDspType().intValue());
                bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                if (TextUtils.isEmpty(adsDTO.getTemplateHtmlFilePath())) {
                    bundleN.putString("material_style", h(adsDTO));
                } else {
                    bundleN.putString("new_material_style", adsDTO.getTemplateCode());
                }
                bundleN.putInt("close_delay_time", adsDTO.getCloseDelayTime());
                bundleN.putInt("endcard", adsDTO.getEndCardType());
            }
            if (adsDTO != null) {
                try {
                    if (adsDTO.getTrackUserClickArea() != 0) {
                        bundleN.putInt("user_click_area", adsDTO.getTrackUserClickArea());
                    }
                    if ("I01".equals(adsDTO.getMaterialStyle())) {
                        bundleN.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                    }
                    if (adsDTO.getDownloadArea() != 0) {
                        bundleN.putInt("download_area", adsDTO.getDownloadArea());
                    }
                } catch (Throwable unused) {
                }
            }
            AthenaTracker.l(adsDTO, bundleN);
            if (z) {
                bundleN.putInt("s_confirm_dialog", 1);
            }
            SSPTrackingHelper.a.Z("ssp_cliclk_link_tracking", bundleN);
            AthenaTracker.k(bundleN);
            new wj("ssp_new_click", 8765).c(bundleN, null).b();
        }

        public static void Z(String str, int i, int i2) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, i);
            bundleN.putString("error_code", String.valueOf(i2));
            bundleN.putInt("s_track_event_type", 2);
            if (SSPTrackingHelper.a.k("track_offline_request")) {
                new wj("track_offline_request", 8765).c(bundleN, null).b();
            }
        }

        public static void a(AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, String str, int i, String str2, Throwable th) {
            l0(adsDTO, diskTrackingBean, str, i, str2, th);
        }

        public static void a0(Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleN);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_landing_page_tracking") || sSPTrackingHelper.k("ssp_landing_page_tracking")) {
                new wj("ssp_landing_page_tracking", 8765).c(bundleN, null).b();
            }
        }

        public static void b(AdsDTO adsDTO, int i, int i2) {
            v(adsDTO, i, i2);
        }

        public static void b0(AdsDTO adsDTO) {
            AdxImpBean impBeanRequest;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt("platform", adsDTO.getDspType().intValue());
            bundleN.putInt(TrackingKey.AD_TYPE, adsDTO.getAdType());
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putString("gaid", DeviceUtil.f());
            bundleN.putLong("show_duration", adsDTO.getTriggerShowSpend());
            bundleN.putString("sspsdk_version", md8.l());
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
            bundleN.putInt("video_reward_time", adsDTO.getRewardDuration().intValue());
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo != null && videoInfo.getDuration() != null) {
                bundleN.putInt("video_duration", videoInfo.getDuration().intValue());
            }
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putInt("is_inapp_ad", adsDTO.getSource() == 4 ? 1 : 0);
            new wj("ssp_ad_reward", 8765).c(bundleN, null).b();
        }

        public static void c(AdsDTO adsDTO) {
            b0(adsDTO);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void c0(AdsDTO adsDTO, boolean z) {
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleN.putString("request_id", impBeanRequest.requestId);
                bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                bundleN.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, impBeanRequest.mTriggerNetState);
            }
            rd.v0(bundleN);
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundleN.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleN.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            if (adsDTO == null) {
                bundleN.putInt("is_ps_type", 0);
            } else {
                bundleN.putInt("is_ps_type", cy9.a(adsDTO) ? 1 : 0);
                bundleN.putString("click_link", adsDTO.getClick_link());
                bundleN.putString("ps_packagename", adsDTO.getPsPackageName());
                bundleN.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("app_id", r6.b);
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
                bundleN.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
                bundleN.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
                bundleN.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleN.putInt("is_test_request", (r6.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleN.putInt("show_times", adsDTO.getShowTime().intValue());
                bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleN.putInt("platform", adsDTO.getDspType().intValue());
                bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleN.putString("material_style", h(adsDTO));
                bundleN.putInt("close_delay_time", adsDTO.getCloseDelayTime());
                bundleN.putInt("endcard", adsDTO.getEndCardType());
                if ("I01".equals(adsDTO.getMaterialStyle())) {
                    bundleN.putInt("auto_retention_time", adsDTO.getAutoRetentionTime());
                }
            }
            if (z) {
                bundleN.putInt("is_auto_click", 1);
            } else {
                bundleN.putInt("is_auto_click", 0);
            }
            AthenaTracker.l(adsDTO, bundleN);
            SSPTrackingHelper.a.Z("ssp_cliclk_link_tracking", bundleN);
            AthenaTracker.k(bundleN);
            new wj("ssp_secondwindow_click", 8765).c(bundleN, null).b();
        }

        public static void d(int i, Integer num, Integer num2, AdsDTO adsDTO) {
            s(i, num, num2, adsDTO);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void d0(AdsDTO adsDTO, Bundle bundle) {
            if (adsDTO == null) {
                return;
            }
            ikd.b().d("ssp", "currentThread().getId()" + Thread.currentThread().getId());
            Bundle bundle2 = new Bundle();
            bundle2.putInt("popularize_app_install_status", adsDTO.getInstallApk());
            bundle2.putLong("show_duration", bundle.getLong("show_duration"));
            bundle2.putString("show_area", bundle.getString("show_area"));
            bundle2.putLong("show_report_time_type", bundle.getLong("show_report_time_type"));
            bundle2.putInt("is_adm_ad", TextUtils.isEmpty(adsDTO.getAdm()) ? 1 : 2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO.getAdCreativeId());
            bundle2.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(StringUtils.COMMA, arrayList));
            if (adsDTO.isOfflineAd()) {
                bundle2.putLong("ad_expire_time", adsDTO.getOfflineAdExpireTime().longValue());
            }
            bundle2.putInt("show_times", bundle.getInt("show_times"));
            bundle2.putInt("source", adsDTO.getSource());
            bundle2.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : 2);
            if (adsDTO.getImpBeanRequest() != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getImpBeanRequest().triggerId);
            }
            bundle2.putInt("image_width", adsDTO.getAdImageWidth().intValue());
            bundle2.putInt("image_height", adsDTO.getAdImageHeight().intValue());
            bundle2.putString(TrackingKey.PACKAGE_NAME, adsDTO.getPackageName());
            bundle2.putString("click_url", adsDTO.getClickUrl());
            bundle2.putInt(TrackingKey.IS_DEFAULT_AD, 0);
            bundle2.putInt("is_default_ad_first_show", 0);
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundle2.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundle2.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            bundle2.putInt("is_ps_type", cy9.a(adsDTO) ? 1 : 0);
            bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundle2.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            bundle2.putInt("material_type", adsDTO.getMaterialType().intValue());
            bundle2.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
            bundle2.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
            rd.v0(bundle2);
            bundle2.putString("half_screen_type", adsDTO.getHalfScreenType());
            bundle2.putInt("track_type", adsDTO.getTrackType().intValue());
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundle2.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundle2.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundle2.putString("ext_info", impBeanRequest.getExtInfoJson());
                bundle2.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
            }
            if (NetGroup.d() > 0) {
                bundle2.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundle2.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused) {
            }
            AthenaTracker.k(bundle2);
            AthenaTracker.l(adsDTO, bundle2);
            bundle2.putString("material_style", h(adsDTO));
            bundle2.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundle2.putInt("endcard", adsDTO.getEndCardType());
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.b0("ssp_show_failed", bundle2);
            sSPTrackingHelper.a0("ssp_material_download", bundle2);
            new wj("ssp_secondwindow_show", 8765).c(g(adsDTO, bundle2, bundle), null).b();
        }

        public static void e(AttrData attrData) {
            D(attrData);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void e0(AdsDTO adsDTO, Bundle bundle) {
            if (adsDTO == null) {
                return;
            }
            ikd.b().d("ssp", "currentThread().getId()" + Thread.currentThread().getId());
            Bundle bundle2 = new Bundle();
            bundle2.putDouble("price", adsDTO.getFirstPrice().doubleValue());
            bundle2.putString("new_price", adsDTO.getNewPrice());
            bundle2.putInt("popularize_app_install_status", adsDTO.getInstallApk());
            bundle2.putLong("show_duration", bundle.getLong("show_duration"));
            bundle2.putString("show_area", bundle.getString("show_area"));
            bundle2.putLong("show_report_time_type", bundle.getLong("show_report_time_type"));
            bundle2.putInt("is_adm_ad", TextUtils.isEmpty(adsDTO.getAdm()) ? 1 : 2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO.getAdCreativeId());
            bundle2.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(StringUtils.COMMA, arrayList));
            if (adsDTO.isOfflineAd()) {
                bundle2.putLong("ad_expire_time", adsDTO.getOfflineAdExpireTime().longValue());
            }
            bundle2.putInt("show_times", bundle.getInt("show_times"));
            bundle2.putInt("source", adsDTO.getSource());
            if (adsDTO.getImpBeanRequest() != null) {
                bundle2.putString(TrackingKey.TRIGGER_ID, adsDTO.getImpBeanRequest().triggerId);
            }
            bundle2.putInt("image_width", adsDTO.getAdImageWidth().intValue());
            bundle2.putInt("image_height", adsDTO.getAdImageHeight().intValue());
            bundle2.putString(TrackingKey.PACKAGE_NAME, adsDTO.getPackageName());
            bundle2.putString("click_url", adsDTO.getClickUrl());
            bundle2.putInt(TrackingKey.IS_DEFAULT_AD, 0);
            bundle2.putInt("is_default_ad_first_show", 0);
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundle2.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundle2.putString("ps_version", packageInfoC == null ? "" : String.valueOf(packageInfoC.versionCode));
            bundle2.putInt("is_ps_type", cy9.a(adsDTO) ? 1 : 0);
            bundle2.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundle2.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            bundle2.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
            bundle2.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
            bundle2.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
            rd.v0(bundle2);
            bundle2.putString("half_screen_type", adsDTO.getHalfScreenType());
            bundle2.putInt("track_type", adsDTO.getTrackType().intValue());
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundle2.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundle2.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundle2.putString("ext_info", impBeanRequest.getExtInfoJson());
                bundle2.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                String str = impBeanRequest.mSceneId;
                if (!impBeanRequest.isAutoRefresh && !TextUtils.isEmpty(str)) {
                    bundle2.putString(TrackingKey.SCENE_ID, str);
                }
            }
            if (NetGroup.d() > 0) {
                bundle2.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundle2.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused) {
            }
            try {
                if (adsDTO.getDownloadArea() != 0) {
                    bundle2.putInt("download_area", adsDTO.getDownloadArea());
                }
            } catch (Throwable unused2) {
            }
            AthenaTracker.k(bundle2);
            AthenaTracker.l(adsDTO, bundle2);
            if (TextUtils.isEmpty(adsDTO.getTemplateHtmlFilePath())) {
                bundle2.putString("material_style", h(adsDTO));
            } else {
                bundle2.putString("new_material_style", adsDTO.getTemplateCode());
            }
            bundle2.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundle2.putInt("endcard", adsDTO.getEndCardType());
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.b0("ssp_show_failed", bundle2);
            sSPTrackingHelper.a0("ssp_material_download", bundle2);
            new wj("ad_ssp_show", 2411).c(g(adsDTO, bundle2, bundle), null).b();
        }

        public static void f(AttrData attrData) {
            S(attrData);
        }

        public static void f0(String str, int i, int i2, long j) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString(TrackingKey.DOWNLOAD_URL, str);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt("download_way", i);
            bundleN.putInt("m_status", i2);
            bundleN.putLong("file_size", j);
            new wj("material_slice_download", 8765).c(bundleN, null).b();
        }

        public static Bundle g(AdsDTO adsDTO, Bundle bundle, Bundle bundle2) {
            Bundle bundleN = AthenaTracker.n(bundle);
            if (adsDTO == null) {
                return bundleN;
            }
            bundleN.putString("request_id", adsDTO.getRid());
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleN.putInt(TtmlNode.ATTR_ID, adsDTO.getId().intValue());
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("tracking_secret_key", adsDTO.getShowTrackingSecretKey());
            bundleN.putLong("login_time", System.currentTimeMillis());
            bundleN.putInt("actual_show_rate", bundle2 != null ? bundle2.getInt("actual_show_rate") : adsDTO.getActualShowRate().intValue());
            bundleN.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
            bundleN.putInt("is_effective_show", bundle2 != null ? bundle2.getInt("is_effective_show") : adsDTO.getIsEffectiveShow().intValue());
            bundleN.putString("app_id", r6.b);
            if (adsDTO.getStoreDeeplink() != null && adsDTO.getStoreDeeplink().size() > 0) {
                bundleN.putString("click_urls", adsDTO.getStoreDeeplink().toString());
            }
            bundleN.putInt("is_test_request", (r6.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
            if (adsDTO.getAbTest() != null) {
                bundleN.putString(CustomConfigsKt.AB_TEST, GsonUtil.d(adsDTO.getAbTest()));
            }
            bundleN.putString("extInfo", adsDTO.getExtInfo());
            if (adsDTO.getImpBeanRequest() != null) {
                bundleN.putInt(TrackingKey.REQUEST_TYPE, adsDTO.getImpBeanRequest().requestType);
                bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, adsDTO.getImpBeanRequest().mTriggerNetState);
            }
            bundleN.putLong(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1L : 0L);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            return bundleN;
        }

        public static void g0(AdsDTO adsDTO, int i) {
            AdxImpBean impBeanRequest;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putInt("expired_count", i);
            new wj("material_expire", 8765).c(bundleN, null).b();
        }

        public static String h(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return "";
            }
            String materialStyle = adsDTO.getMaterialStyle();
            if (TextUtils.isEmpty(materialStyle)) {
                return "";
            }
            int bannerStyle = adsDTO.getBannerStyle();
            if (bannerStyle == 0) {
                return materialStyle + "-0";
            }
            if (bannerStyle == 1) {
                return materialStyle + "-1";
            }
            if (bannerStyle != 2) {
                return materialStyle;
            }
            return materialStyle + "-2";
        }

        public static void h0(AdsDTO adsDTO, Integer num) {
            if (adsDTO == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleN.putString(TtmlNode.ATTR_ID, adsDTO.getId().toString());
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putLong("show_times", adsDTO.getShowNum().intValue());
            bundleN.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundleN.putString("show_area", adsDTO.getShowArea());
            bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleN.putString("ext_info", impBeanRequest.getExtInfoJson());
            bundleN.putInt(TrackingKey.SLOT_HEIGHT, adsDTO.getViewHeight());
            bundleN.putInt(TrackingKey.SLOT_WIDTH, adsDTO.getViewWidth());
            bundleN.putInt("material_type", adsDTO.getMaterialType().intValue());
            if (num != null) {
                bundleN.putInt("close_type", num.intValue());
            }
            bundleN.putInt("close_delay_time", adsDTO.getCloseDelayTime());
            bundleN.putInt("endcard", adsDTO.getEndCardType());
            new wj("ad_ssp_close_ad", 8765).c(bundleN, null).b();
        }

        public static Bundle i(AdsDTO adsDTO) {
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return null;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("deep_link_url", adsDTO.getDeepLinkUrl());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putString("sspsdk_version", md8.l());
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            return bundleN;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void i0(AdxImpBean adxImpBean) {
            if (adxImpBean == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, adxImpBean.requestType);
            bundleN.putLong(TrackingKey.REQUEST_TS, adxImpBean.getRequestTs().longValue());
            bundleN.putString("request_id", adxImpBean.requestId);
            bundleN.putLong(TrackingKey.EVENT_TS, adxImpBean.getRequestTs().longValue());
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adxImpBean.offlineAd ? 1 : 0);
            bundleN.putInt(TrackingKey.AD_TYPE, adxImpBean.adt);
            bundleN.putString(TrackingKey.TRIGGER_ID, adxImpBean.triggerId);
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adxImpBean.pmid);
            bundleN.putInt(TrackingKey.AD_COUNT, adxImpBean.mAdCount);
            bundleN.putInt(TrackingKey.IS_RETREATAD, 0);
            bundleN.putInt(TrackingKey.REQUEST_NUM, adxImpBean.mAdCount);
            bundleN.putString(TrackingKey.GAME_NAME, adxImpBean.gameName);
            bundleN.putString(TrackingKey.GAME_SCENE, adxImpBean.gameScene);
            bundleN.putString("ext_info", adxImpBean.getExtInfoJson());
            bundleN.putString(TrackingKey.CLD_CONFIGURE_ID, o9.e().j("hisavanaCurrentCloudControlVersion"));
            rd.v0(bundleN);
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundleN.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            String str = "";
            if (packageInfoC != null) {
                str = packageInfoC.versionCode + "";
            }
            bundleN.putString("ps_version", str);
            bundleN.putInt("offline_ad_enable", adxImpBean.offlineAdEnable ? 1 : 0);
            ConfigCodeSeatDTO configCodeSeatDTOG = spc.f().g(adxImpBean.pmid);
            bundleN.putInt("cache_offline_ad_count", configCodeSeatDTOG != null ? configCodeSeatDTOG.getLocalOfflineAdCacheCount() : 0);
            if (NetGroup.d() > 0) {
                bundleN.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleN.putLong("var_id", NetGroup.c());
                }
                if (adxImpBean.webPageReqInfo != null) {
                    bundleN.putInt("s_recommend_req", 1);
                }
            } catch (Throwable unused) {
            }
            q1d q1dVar = q1d.a;
            bundleN.putInt("is_support_dcdn", q1dVar.b());
            bundleN.putLong("dcdn_var_id", q1dVar.a());
            if (!adxImpBean.isAutoRefresh && !TextUtils.isEmpty(adxImpBean.mSceneId)) {
                bundleN.putString(TrackingKey.SCENE_ID, adxImpBean.mSceneId);
            }
            AthenaTracker.k(bundleN);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.a0("ssp_material_download", bundleN);
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            boolean zL = sSPTrackingHelper.l(ClientABTestDTOKt.AB_NETWORK, "ad_ssp_request");
            boolean zL2 = sSPTrackingHelper.l(ClientABTestDTOKt.DCDN_NET, "ad_ssp_request");
            if (zL || zL2 || sSPTrackingHelper.k("ad_ssp_request")) {
                new wj("ad_ssp_request", 8765).c(bundleN, null).b();
            }
        }

        public static void j(AdsDTO adsDTO, long j) {
            if (adsDTO == null || !adsDTO.isOfflineAd()) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            if (impBeanRequest != null) {
                bundleN.putString("request_id", impBeanRequest.requestId);
                bundleN.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            }
            bundleN.putString(VkConstant.URL, adsDTO.getOfflineH5Url());
            bundleN.putLong("web_duration", j);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putInt("material_type", adsDTO.getMaterialType().intValue());
            new wj("ad_web_complete", 8765).c(bundleN, null).b();
        }

        public static void j0(AdsDTO adsDTO, String str) {
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
            if (impBeanRequest == null) {
                return;
            }
            bundleN.putString("gplink", str);
            bundleN.putString("request_id", impBeanRequest.requestId);
            adsDTO.setRequestPsTs(System.currentTimeMillis());
            bundleN.putLong(TrackingKey.REQUEST_TS, adsDTO.getRequestPsTs());
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
            bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
            bundleN.putString("ext_info", impBeanRequest.getExtInfoJson());
            new wj("ad_ssp_request_ps_material", 8765).c(bundleN, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void k(String str, AdsDTO adsDTO, Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            if (str != null && !str.isEmpty()) {
                bundleN.putString("error_code", str);
            }
            if (bundle != null) {
                bundleN.putAll(bundle);
            }
            if (adsDTO != null) {
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("app_id", r6.b);
                bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putInt("source", adsDTO.getSource());
                bundleN.putInt("popularize_app_install_status", adsDTO.getInstallApk());
                bundleN.putInt("is_install_ps", cy9.c(ul4.a()) == null ? 0 : 1);
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt("platform", adsDTO.getDspType().intValue());
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                    bundleN.putString("request_id", impBeanRequest.requestId);
                    bundleN.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                }
                bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.Z("ssp_cliclk_link_tracking", bundleN);
            if (sSPTrackingHelper.l(ClientABTestDTOKt.AB_CUSTOM_TAB, "ssp_cliclk_link_tracking") || sSPTrackingHelper.k("ssp_cliclk_link_tracking")) {
                new wj("ssp_cliclk_link_tracking", 8765).c(bundleN, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void k0(List list, TaErrorCode taErrorCode, AdxImpBean adxImpBean, int i, ArraySet arraySet) {
            AdsDTO adsDTO;
            Bundle bundleN = AthenaTracker.n(null);
            if (list == null || list.size() <= 0) {
                adsDTO = null;
            } else {
                adsDTO = (AdsDTO) list.get(0);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO2 = (AdsDTO) it.next();
                    if (adsDTO2 != null) {
                        arrayList.add(adsDTO2.getAdCreativeId());
                        arrayList2.add(Integer.valueOf(adsDTO2.getPslinkInfoStatus() ? 1 : 0));
                    }
                }
                bundleN.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(StringUtils.COMMA, arrayList));
                bundleN.putString("is_halfscreen_ads", TextUtils.join(StringUtils.COMMA, arrayList2));
                bundleN.putInt(TrackingKey.AD_COUNT, list.size());
            }
            if (arraySet != null) {
                try {
                    if (!arraySet.isEmpty()) {
                        bundleN.putString("ad_return_filter", GsonUtil.d(arraySet));
                    }
                } catch (Throwable unused) {
                }
            }
            if (adsDTO != null && adsDTO.getImpBeanRequest() != null && adxImpBean == null) {
                adxImpBean = adsDTO.getImpBeanRequest();
            }
            if (adxImpBean != null) {
                bundleN.putInt(TrackingKey.REQUEST_TYPE, adxImpBean.requestType);
                bundleN.putLong(TrackingKey.REQUEST_TS, adxImpBean.getRequestTs().longValue());
                bundleN.putString("request_id", adxImpBean.requestId);
                bundleN.putString(TrackingKey.TRIGGER_ID, adxImpBean.triggerId);
                bundleN.putInt(TrackingKey.AD_TYPE, adxImpBean.adt);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, adxImpBean.pmid);
                if (adxImpBean.getRequestTs().longValue() != 0) {
                    bundleN.putInt(TrackingKey.RETURN_TIME, (int) (System.currentTimeMillis() - adxImpBean.getRequestTs().longValue()));
                }
                bundleN.putInt(TrackingKey.IS_TIMEOUT, adxImpBean.isTimeOut);
                bundleN.putInt(TrackingKey.REQUEST_NUM, adxImpBean.mAdCount);
                bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adxImpBean.offlineAd ? 1 : 0);
                bundleN.putLong(TrackingKey.EVENT_TS, adxImpBean.getRequestTs().longValue());
                bundleN.putString(TrackingKey.GAME_NAME, adxImpBean.gameName);
                bundleN.putString(TrackingKey.GAME_SCENE, adxImpBean.gameScene);
                bundleN.putString("ext_info", adxImpBean.getExtInfoJson());
                bundleN.putInt("offline_ad_enable", adxImpBean.offlineAdEnable ? 1 : 0);
                ConfigCodeSeatDTO configCodeSeatDTOG = spc.f().g(adxImpBean.pmid);
                bundleN.putInt("cache_offline_ad_count", configCodeSeatDTOG == null ? 0 : configCodeSeatDTOG.getLocalOfflineAdCacheCount());
                if (!adxImpBean.isAutoRefresh && !TextUtils.isEmpty(adxImpBean.mSceneId)) {
                    bundleN.putString(TrackingKey.SCENE_ID, adxImpBean.mSceneId);
                }
            }
            bundleN.putString("app_id", r6.b);
            bundleN.putLong(TrackingKey.RETURN_TS, System.currentTimeMillis());
            if (taErrorCode != null) {
                bundleN.putString("error_code", taErrorCode.getErrorCode() + "");
                bundleN.putString(TrackingKey.ERROR_MESSAGE, taErrorCode.getErrorMessage());
            }
            if (adsDTO != null) {
                bundleN.putDouble(TrackingKey.BIDDING_PRICE, adsDTO.getFirstPrice().doubleValue());
                bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleN.putString("plan_id", adsDTO.getPlanId());
                bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putInt("is_adm_ad", TextUtils.isEmpty(adsDTO.getAdm()) ? 1 : 2);
                bundleN.putString("pslink", adsDTO.getPsLink());
                bundleN.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleN.putInt("is_test_request", (r6.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleN.putString("material_style", adsDTO.getMaterialStyle());
            }
            bundleN.putInt("return_offline_ad_count", i);
            if (NetGroup.d() > 0) {
                bundleN.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleN.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused2) {
            }
            q1d q1dVar = q1d.a;
            bundleN.putInt("is_support_dcdn", q1dVar.b());
            bundleN.putLong("dcdn_var_id", q1dVar.a());
            rd.v0(bundleN);
            AthenaTracker.l(adsDTO, bundleN);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.a0("ssp_material_download", bundleN);
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            AthenaTracker.k(bundleN);
            boolean zL = sSPTrackingHelper.l(ClientABTestDTOKt.AB_NETWORK, "ad_ssp_return");
            boolean zL2 = sSPTrackingHelper.l(ClientABTestDTOKt.DCDN_NET, "ad_ssp_return");
            if (zL || zL2 || sSPTrackingHelper.k("ad_ssp_return")) {
                new wj("ad_ssp_return", 8765).c(bundleN, null).b();
            }
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void l(List list, String str, int i, String str2, String str3, long j, String str4, boolean z, String str5, int i2, Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putAll(bundle);
            bundleN.putString(TrackingKey.TRIGGER_ID, str);
            bundleN.putInt(TrackingKey.AD_COUNT, list == null ? 0 : list.size());
            bundleN.putString("error_code", str3);
            bundleN.putLong("time_consuming", j);
            bundleN.putInt("offline_ad_enable", z ? 1 : 0);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str4);
            bundleN.putInt("cache_offline_ad_count", i2);
            if (list == null || list.isEmpty()) {
                bundleN.putString("default_ad_status", str5);
                bundleN.putInt("filling_result", 2);
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, i);
                bundleN.putString("offline_ad_status", str2);
                if (r6.p()) {
                    b.b("fill_fail，ad_trigger_status，" + i, 3);
                }
            } else {
                AdsDTO adsDTO = (AdsDTO) list.get(0);
                AdxImpBean impBeanRequest = (adsDTO == null || adsDTO.getImpBeanRequest() == null) ? null : adsDTO.getImpBeanRequest();
                if (impBeanRequest == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    AdsDTO adsDTO2 = (AdsDTO) it.next();
                    if (adsDTO2 != null) {
                        arrayList2.add(adsDTO2.getAdCreativeId());
                        arrayList.add(Integer.valueOf(adsDTO2.getSource()));
                        arrayList3.add(Integer.valueOf(adsDTO2.getPslinkInfoStatus() ? 1 : 0));
                    }
                }
                bundleN.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(StringUtils.COMMA, arrayList2));
                bundleN.putString(TrackingKey.FILLING_SOURCE, TextUtils.join(StringUtils.COMMA, arrayList));
                bundleN.putInt("filling_result", 1);
                bundleN.putInt("source", adsDTO.getSource());
                bundleN.putInt(TrackingKey.AD_TRIGGER_STATUS, i);
                bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleN.putString("request_id", impBeanRequest.requestId);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
                bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleN.putString("plan_id", adsDTO.getPlanId());
                bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putString(TrackingKey.GAME_NAME, impBeanRequest.gameName);
                bundleN.putString(TrackingKey.GAME_SCENE, impBeanRequest.gameScene);
                bundleN.putString("ext_info", impBeanRequest.getExtInfoJson());
                bundleN.putInt("material_type", adsDTO.isInteractiveAd() ? 4 : adsDTO.getMaterialType().intValue());
                bundleN.putInt("is_test_request", (r6.q() || adsDTO.getTestResponse().booleanValue()) ? 1 : 0);
                bundleN.putString("is_halfscreen_ads", TextUtils.join(StringUtils.COMMA, arrayList3));
                bundleN.putString("half_screen_type", adsDTO.getHalfScreenType());
                bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
                AthenaTracker.l(adsDTO, bundleN);
                if (!TextUtils.isEmpty(adsDTO.getTemplateHtmlFilePath())) {
                    bundleN.putString("new_material_style", adsDTO.getTemplateCode());
                }
            }
            if (NetGroup.d() > 0) {
                bundleN.putInt("net_bucket_id", NetGroup.d());
            }
            try {
                if (NetGroup.c() > 0) {
                    bundleN.putLong("var_id", NetGroup.c());
                }
            } catch (Exception unused) {
            }
            q1d q1dVar = q1d.a;
            bundleN.putInt("is_support_dcdn", q1dVar.b());
            bundleN.putLong("dcdn_var_id", q1dVar.a());
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.a0("ssp_material_download", bundleN);
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            AthenaTracker.k(bundleN);
            new wj("ad_filling_result", 8765).c(bundleN, null).b();
        }

        public static void l0(AdsDTO adsDTO, DiskTrackingBean diskTrackingBean, String str, int i, String str2, Throwable th) {
            if (adsDTO == null && diskTrackingBean == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            if (adsDTO != null) {
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
                    bundleN.putString("request_id", impBeanRequest.requestId);
                    bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                }
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleN.putString(TrackingKey.PACKAGE_NAME, TextUtils.isEmpty(adsDTO.getPackageName()) ? adsDTO.getPsPackageName() : adsDTO.getPackageName());
                bundleN.putInt("retry_status", 0);
                bundleN.putInt("retry_num", 0);
            } else {
                bundleN.putString(TrackingKey.TRIGGER_ID, diskTrackingBean.getTriggerId());
                bundleN.putString("request_id", diskTrackingBean.getRequestId());
                bundleN.putString(TrackingKey.CODE_SEAT_ID, diskTrackingBean.getCodeSeatId());
                bundleN.putString("ad_creative_id", diskTrackingBean.getAdCreativeId());
                bundleN.putString(TrackingKey.SHOW_ID, diskTrackingBean.getShowId());
                bundleN.putString("advertiser_id", diskTrackingBean.getAdvertiserId());
                bundleN.putString(TrackingKey.PACKAGE_NAME, diskTrackingBean.getPackageName());
                bundleN.putInt("retry_status", 1);
                bundleN.putInt("retry_num", diskTrackingBean.getRetryTimes().intValue() + 1);
            }
            bundleN.putInt("error_code", i);
            if (i >= 300) {
                bundleN.putString("exception_name", th == null ? "" : th.getClass().getName());
                if (str2 != null) {
                    bundleN.putString("response_info", str2.length() > 200 ? str2.substring(0, 200) : str2);
                }
                bundleN.putString("track_url", str);
            }
            SSPTrackingHelper.a.Z("ssp_cliclk_link_tracking", bundleN);
            new wj("adx_track_result", 8765).c(bundleN, null).b();
        }

        public static void m(String str, String str2, String str3, List list, List list2, boolean z, int i) {
            if (list == null || list2 == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str3);
            bundleN.putString("request_id", str);
            bundleN.putString(TrackingKey.TRIGGER_ID, str2);
            bundleN.putString(TrackingKey.AD_CREATE_IDS, TextUtils.join(StringUtils.COMMA, list));
            bundleN.putString("filter_reason", TextUtils.join(StringUtils.COMMA, list2));
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, z ? 1 : 0);
            bundleN.putInt("source", i);
            if (SSPTrackingHelper.a.k("ad_filter")) {
                new wj("ad_filter", 8765).c(bundleN, null).b();
            }
        }

        public static void m0(String str, int i) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, i);
            bundleN.putInt("s_track_event_type", 1);
            if (SSPTrackingHelper.a.k("track_offline_request")) {
                new wj("track_offline_request", 8765).c(bundleN, null).b();
            }
        }

        public static void n(AdsDTO adsDTO, String str) {
            Bundle bundleN = AthenaTracker.n(null);
            if (adsDTO != null) {
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("app_id", r6.b);
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putString("event_id", str);
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                    bundleN.putString("request_id", impBeanRequest.requestId);
                }
            }
            if (bundleN != null) {
                new wj("interaction_event", 8765).c(bundleN, null).b();
            }
        }

        public static void n0(AdsDTO adsDTO, TaErrorCode taErrorCode, int i, String str) {
            AdxImpBean impBeanRequest;
            int width;
            int height;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("vast_version", str);
            bundleN.putInt("vast_status", i);
            if (taErrorCode != null) {
                bundleN.putString("error_code", String.valueOf(taErrorCode.getErrorCode()));
                bundleN.putString("error_code", taErrorCode.getErrorMessage());
            }
            bundleN.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleN.putString(TtmlNode.ATTR_ID, String.valueOf(adsDTO.getId()));
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            VastData videoInfo = adsDTO.getVideoInfo();
            bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            if (videoInfo != null) {
                VastMedia mainAd = videoInfo.getMainAd();
                if (mainAd != null) {
                    width = mainAd.getWidth();
                    height = mainAd.getHeight();
                } else {
                    width = 0;
                    height = 0;
                }
                bundleN.putInt("image_width", width);
                bundleN.putInt("image_height", height);
            }
            new wj("ad_ssp_vast_analyze", 8765).c(bundleN, null).b();
        }

        public static void o(Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putAll(bundle);
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.Z("ssp_material_download", bundleN);
            if (sSPTrackingHelper.k("ssp_material_download")) {
                new wj("ssp_material_download", 8765).c(bundleN, null).b();
            }
        }

        public static void o0(AdsDTO adsDTO, TaErrorCode taErrorCode, Bundle bundle) {
            AdxImpBean impBeanRequest;
            int width;
            int height;
            if (adsDTO == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt("source", adsDTO.getSource());
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putString("error_code", String.valueOf(taErrorCode.getErrorCode()));
            bundleN.putString(TrackingKey.ERROR_MESSAGE, taErrorCode.getErrorMessage());
            bundleN.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleN.putString(TtmlNode.ATTR_ID, String.valueOf(adsDTO.getId()));
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo != null) {
                VastMedia mainAd = videoInfo.getMainAd();
                if (mainAd != null) {
                    width = mainAd.getWidth();
                    height = mainAd.getHeight();
                } else {
                    width = 0;
                    height = 0;
                }
                bundleN.putInt("image_width", width);
                bundleN.putInt("image_height", height);
            }
            bundleN.putInt("actual_show_rate", bundle.getInt("actual_show_rate"));
            bundleN.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
            bundleN.putInt("is_effective_show", bundle.getInt("is_effective_show"));
            bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleN.putLong("show_duration", bundle.getLong("show_duration"));
            bundleN.putString("show_area", bundle.getString("show_area"));
            bundleN.putInt("show_times", bundle.getInt("show_times"));
            new wj("ad_ssp_video_abnormal", 8765).c(bundleN, null).b();
        }

        public static void p(ied iedVar, String str, String str2) {
            Bundle bundleN = AthenaTracker.n(null);
            if (!str.isEmpty()) {
                bundleN.putString("s_click_word", str);
            }
            if (!str2.isEmpty()) {
                bundleN.putString("s_click_landing_page", str2);
            }
            if (iedVar != null) {
                String strP = iedVar.p();
                String strK = iedVar.k();
                String strJ = iedVar.j();
                bundleN.putString(TrackingKey.TRIGGER_ID, strP);
                bundleN.putString("request_id", strK);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, strJ);
                SSPWebPageReqInfo sSPWebPageReqInfoR = iedVar.r();
                if (sSPWebPageReqInfoR != null) {
                    bundleN.putString("s_recommend_url", sSPWebPageReqInfoR.getUrl());
                }
                bundleN.putString("app_id", r6.b);
            }
            new wj("ssp_new_click_recommend", 8765).c(bundleN, null).b();
        }

        public static void p0(AdsDTO adsDTO, ProgressData progressData, Bundle bundle) {
            AdxImpBean impBeanRequest;
            int width;
            int height;
            if (adsDTO == null || progressData == null || (impBeanRequest = adsDTO.getImpBeanRequest()) == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putInt("source", adsDTO.getSource());
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            Integer videoPlayTimeType = progressData.getVideoPlayTimeType();
            bundleN.putInt("video_play_time_type", videoPlayTimeType == null ? -1 : videoPlayTimeType.intValue());
            Integer progress = progressData.getProgress();
            bundleN.putInt("video_progress", progress == null ? -1 : progress.intValue());
            Integer duration = progressData.getDuration();
            bundleN.putInt("video_duration", duration != null ? duration.intValue() : -1);
            bundleN.putInt("cache_time", adsDTO.getCacheTime().intValue());
            bundleN.putString(TtmlNode.ATTR_ID, String.valueOf(adsDTO.getId()));
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString("plan_id", adsDTO.getPlanId());
            bundleN.putString("ad_group_id", adsDTO.getAdGroupId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            VastData videoInfo = adsDTO.getVideoInfo();
            if (videoInfo != null) {
                VastMedia mainAd = videoInfo.getMainAd();
                if (mainAd != null) {
                    width = mainAd.getWidth();
                    height = mainAd.getHeight();
                } else {
                    width = 0;
                    height = 0;
                }
                bundleN.putInt("image_width", width);
                bundleN.putInt("image_height", height);
            }
            bundleN.putInt("actual_show_rate", bundle.getInt("actual_show_rate"));
            bundleN.putLong(TrackingKey.SHOW_TS, System.currentTimeMillis());
            bundleN.putInt("is_effective_show", bundle.getInt("is_effective_show"));
            bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
            bundleN.putLong("show_duration", bundle.getLong("show_duration"));
            bundleN.putString("show_area", bundle.getString("show_area"));
            bundleN.putLong("ad_expire_time", adsDTO.getOfflineAdExpireTime().longValue());
            bundleN.putInt("show_times", bundle.getInt("show_times"));
            new wj("ad_ssp_video_progress", 8765).c(g(adsDTO, bundleN, bundle), null).b();
        }

        public static void q(ied iedVar, List list, long j, Boolean bool) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("s_recommend_infos", GsonUtil.d(list));
            if (iedVar != null) {
                String strP = iedVar.p();
                String strK = iedVar.k();
                String strJ = iedVar.j();
                bundleN.putString(TrackingKey.TRIGGER_ID, strP);
                bundleN.putString("request_id", strK);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, strJ);
                SSPWebPageReqInfo sSPWebPageReqInfoR = iedVar.r();
                if (sSPWebPageReqInfoR != null) {
                    bundleN.putString("s_recommend_url", sSPWebPageReqInfoR.getUrl());
                }
            }
            bundleN.putLong("time_consuming", j);
            bundleN.putBoolean("s_rec_temp_data", bool.booleanValue());
            bundleN.putString("app_id", r6.b);
            new wj("ad_filling_result_recommend", 8765).c(bundleN, null).b();
        }

        public static void q0(String str, String str2, String str3, int i, String str4, String str5, int i2, long j) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("webId", str);
            bundleN.putString("url", str2);
            bundleN.putString("targetUrl", str3);
            if (i >= 0) {
                bundleN.putInt("redirectType", i);
            }
            bundleN.putString("status", str4);
            bundleN.putString("errorType", str5);
            bundleN.putInt("errorCode", i2);
            if (j >= 0) {
                bundleN.putLong("waitTime", j);
            }
            new wj("webLoadResult", 1814).c(bundleN, null).b();
        }

        public static void r(ied iedVar, List list) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("s_click_show_infos", GsonUtil.d(list));
            if (iedVar != null) {
                String strP = iedVar.p();
                String strK = iedVar.k();
                String strJ = iedVar.j();
                bundleN.putString(TrackingKey.TRIGGER_ID, strP);
                bundleN.putString("request_id", strK);
                bundleN.putString(TrackingKey.CODE_SEAT_ID, strJ);
                bundleN.putString("app_id", r6.b);
                SSPWebPageReqInfo sSPWebPageReqInfoR = iedVar.r();
                if (sSPWebPageReqInfoR != null) {
                    bundleN.putString("s_recommend_url", sSPWebPageReqInfoR.getUrl());
                }
            }
            new wj("ad_ssp_show_recommend", 8765).c(bundleN, null).b();
        }

        public static void r0(String str, String str2, String str3, int i, int i2, long j) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("webId", str);
            bundleN.putString("url", str2);
            bundleN.putString("targetUrl", str3);
            if (i2 >= 0) {
                bundleN.putInt("redirectType", i2);
            }
            bundleN.putInt("progress", i);
            bundleN.putLong("spendTime", j);
            new wj("webLoadTime", 1814).c(bundleN, null).b();
        }

        public static void s(int i, Integer num, Integer num2, AdsDTO adsDTO) {
            String str;
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("app_id", r6.b);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getCodeSeatId());
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            if (num != null) {
                bundleN.putInt("platform", num.intValue());
            }
            if (num2 != null) {
                bundleN.putString("error_code", String.valueOf(num2));
            }
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            if (i == 0) {
                str = "ssp_container_open";
            } else if (i != 1) {
                str = i != 2 ? null : "ssp_container_click";
            } else {
                str = "ssp_container_show";
            }
            if (str != null) {
                new wj(str, 8765).c(bundleN, null).b();
            }
        }

        public static void s0(String str, String str2, String str3, String str4) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("webId", str);
            bundleN.putString("url", str2);
            bundleN.putString("targetUrl", str3);
            bundleN.putString("pageStatus", str4);
            new wj("webPageState", 1814).c(bundleN, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void t(String str, String str2, String str3, AdsDTO adsDTO, Bundle bundle) {
            Bundle bundleN = AthenaTracker.n(null);
            if (bundle != null) {
                bundleN.putAll(bundle);
            }
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            if (str != null && !str.isEmpty()) {
                bundleN.putString("error_code", str);
            }
            if (str2 != null && !str2.isEmpty()) {
                bundleN.putString(TrackingKey.TRIGGER_ID, str2);
            }
            if (str3 != null && !str3.isEmpty()) {
                bundleN.putString(TrackingKey.CODE_SEAT_ID, str3);
            }
            if (adsDTO != null) {
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("app_id", r6.b);
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleN.putString("request_id", impBeanRequest.requestId);
                    bundleN.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                }
                bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
            }
            SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
            sSPTrackingHelper.b0("ssp_show_failed", bundleN);
            sSPTrackingHelper.a0("ad_filling_result", bundleN);
            if (sSPTrackingHelper.k("ssp_show_failed")) {
                new wj("ssp_show_failed", 8765).c(bundleN, null).b();
            }
        }

        public static void t0(AdsDTO adsDTO) {
            if (adsDTO == null) {
                return;
            }
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest() != null ? adsDTO.getImpBeanRequest() : null;
            if (impBeanRequest == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putInt(TrackingKey.REQUEST_TYPE, impBeanRequest.requestType);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putInt("code_seat_type", adsDTO.getCodeSeatType().intValue());
            bundleN.putString(VkConstant.URL, adsDTO.getClickUrl());
            bundleN.putInt("material_type", adsDTO.getMaterialType().intValue());
            if (adsDTO.getClickUrlTs() != 0) {
                bundleN.putInt("web_duration", (int) (System.currentTimeMillis() - adsDTO.getClickUrlTs()));
            }
            new wj("ad_web_callback", 8765).c(bundleN, null).b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public static void u(AdsDTO adsDTO) {
            Bundle bundleN = AthenaTracker.n(null);
            if (adsDTO != null) {
                bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
                bundleN.putString("app_id", r6.b);
                bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
                bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getTriggerId());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
                if (impBeanRequest != null) {
                    bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
                    bundleN.putString("request_id", impBeanRequest.requestId);
                    bundleN.putInt("offline_ad_enable", impBeanRequest.offlineAdEnable ? 1 : 0);
                    String str = impBeanRequest.mSceneId;
                    if (!impBeanRequest.isAutoRefresh && !TextUtils.isEmpty(str)) {
                        bundleN.putString(TrackingKey.SCENE_ID, str);
                    }
                }
                bundleN.putInt("is_halfscreen_ad", adsDTO.getPslinkInfoStatus() ? 1 : 0);
                if (!TextUtils.isEmpty(adsDTO.getTemplateHtmlFilePath())) {
                    bundleN.putString("new_material_style", adsDTO.getTemplateCode());
                }
            }
            AthenaTracker.l(adsDTO, bundleN);
            if (bundleN != null) {
                SSPTrackingHelper sSPTrackingHelper = SSPTrackingHelper.a;
                sSPTrackingHelper.a0("ssp_material_download", bundleN);
                sSPTrackingHelper.b0("ssp_show_failed", bundleN);
                AthenaTracker.k(bundleN);
                if (sSPTrackingHelper.k("ssp_trigger_show")) {
                    new wj("ssp_trigger_show", 8765).c(bundleN, null).b();
                }
            }
        }

        public static void v(AdsDTO adsDTO, int i, int i2) {
            if (adsDTO == null || adsDTO.getImpBeanRequest() == null) {
                return;
            }
            Bundle bundleN = AthenaTracker.n(null);
            AdxImpBean impBeanRequest = adsDTO.getImpBeanRequest();
            bundleN.putString(TrackingKey.TRIGGER_ID, impBeanRequest.triggerId);
            bundleN.putString("request_id", impBeanRequest.requestId);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, impBeanRequest.pmid);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString(TrackingKey.SHOW_ID, adsDTO.getUuid());
            bundleN.putInt("adm_render_status", i);
            bundleN.putInt("error_code", i2);
            new wj("adm_render_process", 8765).c(bundleN, null).b();
        }

        public static void w(String str, String str2, int i) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString(TrackingKey.CODE_SEAT_ID, str);
            bundleN.putString("request_id", str2);
            bundleN.putString("error_code", String.valueOf(i));
            new wj("agent_page_js_warning", 8765).c(bundleN, null).b();
        }

        public static void x(AdsDTO adsDTO, boolean z) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putInt("is_ps_reporting", z ? 1 : 0);
            bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
            bundleN.putString(TrackingKey.TRIGGER_ID, adsDTO.getJsTriggerId());
            bundleN.putString("request_id", adsDTO.getJsRequestId());
            bundleN.putString(TrackingKey.CLD_APP_ID, adsDTO.getJsMediaId());
            bundleN.putString(TrackingKey.CLD_CODE_SEAT_ID, adsDTO.getJsCodeSeatId());
            bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getJsCodeSeatId());
            bundleN.putString("gaid", DeviceUtil.f());
            bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundleN.putString("ps_version", packageInfoC == null ? null : packageInfoC.versionName);
            new wj("h5_ad_click_ps_reporting", 8765).c(bundleN, null).b();
        }

        public static void y(AdsDTO adsDTO, String str, String str2, boolean z) {
            Bundle bundleN = AthenaTracker.n(null);
            if (adsDTO != null) {
                bundleN.putString("js_trigger_id", adsDTO.getJsTriggerId());
                bundleN.putInt(TrackingKey.IS_OFFLINE_AD, adsDTO.isOfflineAd() ? 1 : 0);
                bundleN.putInt("pslink_type", adsDTO.getPslinkInfoStatus() ? 2 : 1);
                bundleN.putInt("track_type", adsDTO.getTrackType().intValue());
                bundleN.putString("request_id", adsDTO.getJsRequestId());
                bundleN.putString("advertiser_id", adsDTO.getAdvertiserId());
                bundleN.putString("ad_creative_id", adsDTO.getAdCreativeId());
                bundleN.putString(TrackingKey.CODE_SEAT_ID, adsDTO.getJsCodeSeatId());
                bundleN.putInt("is_jump_to_halfscreen", adsDTO.isJumpToHalfscreen() ? 1 : 0);
                bundleN.putInt("platform", adsDTO.getDspType().intValue());
            }
            bundleN.putString(TrackingKey.SHOW_ID, str);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putString("sspsdk_version", md8.l());
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundleN.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleN.putString("ps_version", packageInfoC == null ? null : packageInfoC.versionName);
            bundleN.putString("pslink", str2);
            try {
                bundleN.putString("halfscren_type", Uri.parse(str2).getQueryParameter("HalfScreenType"));
            } catch (Throwable th) {
                ikd.b().d("ssp", Log.getStackTraceString(th));
            }
            bundleN.putInt("pslink_result", z ? 1 : 0);
            new wj("js_bridge_result", 8765).c(bundleN, null).b();
        }

        public static void z(String str, String str2, boolean z) {
            Bundle bundleN = AthenaTracker.n(null);
            bundleN.putString("js_trigger_id", str);
            bundleN.putString(TrackingKey.SHOW_ID, str2);
            bundleN.putLong(TrackingKey.EVENT_TS, System.currentTimeMillis());
            bundleN.putString("sspsdk_version", md8.l());
            PackageInfo packageInfoC = cy9.c(ul4.a());
            bundleN.putInt("is_install_ps", packageInfoC == null ? 0 : 1);
            bundleN.putString("ps_version", packageInfoC == null ? null : packageInfoC.versionName);
            bundleN.putInt(TrackingKey.IS_OFFLINE_AD, z ? 1 : 0);
            new wj("js_bridge_trigger", 8765).c(bundleN, null).b();
        }
    }

    public static void A(final String str, final String str2, final String str3, final List list, final List list2, final boolean z, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.m(str, str2, str3, list, list2, z, i);
            }
        });
    }

    public static void B(final AdsDTO adsDTO, final String str) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.n(adsDTO, str);
            }
        });
    }

    public static void C(final int i, final Integer num, final Integer num2, final AdsDTO adsDTO) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.d(i, num, num2, adsDTO);
            }
        });
    }

    public static void D(final AdsDTO adsDTO) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                AdsDTO adsDTO2 = adsDTO;
                if (adsDTO2 == null || adsDTO2.getSource() != 4) {
                    a.u(adsDTO);
                } else {
                    a.J(adsDTO);
                }
            }
        });
    }

    public static void E(final AdsDTO adsDTO, final int i, final int i2) {
        if (adsDTO == null || adsDTO.getExt() == null || !ik.b(adsDTO.getExt().getLogEnable(), "halfScreenLogEnable")) {
            return;
        }
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.b(adsDTO, i, i2);
            }
        });
    }

    public static void F(final String str, final String str2, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.w(str, str2, i);
            }
        });
    }

    public static void G(final AdsDTO adsDTO, final boolean z) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.x(adsDTO, z);
            }
        });
    }

    public static void H(final AdsDTO adsDTO, final String str, final String str2, final boolean z) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.y(adsDTO, str, str2, z);
            }
        });
    }

    public static void I(final String str, final String str2, final boolean z) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.z(str, str2, z);
            }
        });
    }

    public static void J(final String str, final AdsDTO adsDTO, final Boolean bool) {
        if (adsDTO == null || adsDTO.getSource() != 4) {
            if (adsDTO == null || !adsDTO.isFromJs()) {
                ik.c(new Runnable() {
                    @Override
                    public void run() {
                        try {
                            a.C(str, adsDTO, bool);
                        } catch (Throwable th) {
                            ikd.b().e("AthenaTracker", "trackClick error", th);
                        }
                    }
                });
            }
        }
    }

    public static void K(final AttrData attrData) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.e(attrData);
            }
        });
    }

    public static void L(final int i, final String str) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.E(i, str);
            }
        });
    }

    public static void M(final int i, final String str, final int i2, final int i3, final String str2, final String str3) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.F(i, str, i2, i3, str2, str3);
            }
        });
    }

    public static void N(AdsDTO adsDTO, String str, ClickJumpType clickJumpType) {
        O(adsDTO, str, clickJumpType, null);
    }

    public static void O(final AdsDTO adsDTO, final String str, final ClickJumpType clickJumpType, final String str2) {
        final Bundle bundleZ = z(adsDTO);
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.G(adsDTO, str, clickJumpType, str2, bundleZ);
            }
        });
    }

    public static void P(final String str) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.K(str);
            }
        });
    }

    public static void Q(final String str, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.L(str, i);
            }
        });
    }

    public static void R(final AdsDTO adsDTO) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.M(adsDTO);
            }
        });
    }

    public static void S(final String str, final int i, final String str2) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.P(str, i, str2);
            }
        });
    }

    public static void T(final AdsDTO adsDTO, final FormBean formBean) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.Q(adsDTO, formBean);
            }
        });
    }

    public static void U(final AdsDTO adsDTO, final String str, final String str2, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.R(adsDTO, str, str2, i);
            }
        });
    }

    public static void V(final AttrData attrData) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.f(attrData);
            }
        });
    }

    public static void W() {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.T();
            }
        });
    }

    public static void X(final AdsDTO adsDTO, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.U(adsDTO, i);
            }
        });
    }

    public static void Y(final ied iedVar, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.V(iedVar, i);
            }
        });
    }

    public static void Z(final AdsDTO adsDTO, final int i) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.W(adsDTO, i);
            }
        });
    }

    public static void a0(final AdsDTO adsDTO, final int i) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.X(adsDTO, i);
            }
        });
    }

    public static void b0(AdsDTO adsDTO) {
        c0(adsDTO, Boolean.FALSE);
    }

    public static void c0(final AdsDTO adsDTO, final Boolean bool) {
        VastData videoInfo;
        ProgressData progressData;
        if (adsDTO == null || adsDTO.isFromJs()) {
            return;
        }
        if (adsDTO.isVastTypeAd() && (videoInfo = adsDTO.getVideoInfo()) != null && (progressData = videoInfo.getProgressData()) != null) {
            progressData.setVideoPlayTimeType(3);
            s0(adsDTO, progressData);
        }
        ik.c(new Runnable() {
            @Override
            public void run() {
                try {
                    if (adsDTO.getSource() == 4) {
                        a.H(adsDTO, bool.booleanValue());
                    } else {
                        a.Y(adsDTO, bool.booleanValue());
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void d0(final String str, final int i, final int i2) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.Z(str, i, i2);
            }
        });
    }

    public static void e0(final AdsDTO adsDTO) {
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.c(adsDTO);
            }
        });
    }

    public static void f0(final AdsDTO adsDTO, final boolean z) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.c0(adsDTO, z);
            }
        });
    }

    public static void g0(final AdsDTO adsDTO) {
        final Bundle bundleZ = z(adsDTO);
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.d0(adsDTO, bundleZ);
            }
        });
    }

    public static void h0(final AdsDTO adsDTO) {
        if (adsDTO == null || !adsDTO.isFromJs()) {
            final Bundle bundleZ = z(adsDTO);
            ik.c(new Runnable() {
                @Override
                public void run() {
                    a.e0(adsDTO, bundleZ);
                }
            });
        }
    }

    public static void i0(final String str, final int i, final int i2, final long j) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.f0(str, i, i2, j);
            }
        });
    }

    public static void j0(final AdsDTO adsDTO, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.g0(adsDTO, i);
            }
        });
    }

    public static void k(Bundle bundle) {
        bundle.putInt("screen_angular", hm4.f() - 1);
    }

    public static void k0(AdsDTO adsDTO) {
        l0(adsDTO, null);
    }

    public static void l(AdsDTO adsDTO, Bundle bundle) {
        if (adsDTO == null || bundle == null || adsDTO.getDisplayRule() != Constants.AdDisplayRule.RU) {
            return;
        }
        bundle.putString("compliance", "1");
    }

    public static void l0(final AdsDTO adsDTO, final Integer num) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.h0(adsDTO, num);
            }
        });
    }

    public static String m(Context context) {
        if (!TextUtils.isEmpty(d)) {
            return d;
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (!TextUtils.isEmpty(string)) {
                String strTrim = string.trim();
                String strA = TextUtils.isEmpty(strTrim) ? "" : ja3.a(strTrim);
                d = strA;
                return strA;
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static void m0(final AdxImpBean adxImpBean) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                try {
                    a.i0(adxImpBean);
                } catch (Throwable th) {
                    ikd.b().e("AthenaTracker", "trackSspRequest error", th);
                }
            }
        });
    }

    public static Bundle n(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        PackageInfo packageInfoC = cy9.c(ul4.a());
        if (packageInfoC != null) {
            bundle.putString("ps_version", String.valueOf(packageInfoC.versionCode));
        }
        bundle.putInt(DownloadFacadeEnum.USER_NET, MitNetUtil.c(ul4.a()) ? 1 : 0);
        bundle.putString("app_id", r6.b);
        if (vl4.g()) {
            bundle.putInt("is_miniac", 1);
        }
        return ik.a(bundle);
    }

    public static void n0(List list, final TaErrorCode taErrorCode, final AdxImpBean adxImpBean, final int i, final ArraySet arraySet) {
        final ArrayList arrayList = new ArrayList();
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add((AdsDTO) it.next());
            }
        }
        ik.c(new Runnable() {
            @Override
            public void run() {
                try {
                    a.k0(arrayList, taErrorCode, adxImpBean, i, arraySet);
                } catch (Throwable th) {
                    ikd.b().e("AthenaTracker", "trackSspReturn error", th);
                }
            }
        });
    }

    public static boolean o(Context context, int i) {
        if (i == 100) {
            return true;
        }
        String strF = DeviceUtil.f();
        if (TextUtils.isEmpty(strF)) {
            b = true;
        } else {
            b = false;
        }
        if (TextUtils.isEmpty(strF)) {
            strF = m(context);
        }
        if (TextUtils.isEmpty(strF)) {
            return true;
        }
        int iAbs = Math.abs(strF.hashCode()) % 100;
        return iAbs >= 0 && iAbs <= i;
    }

    public static void o0(final AdsDTO adsDTO, final DiskTrackingBean diskTrackingBean, final String str, final int i, final String str2, final Throwable th) {
        if ((adsDTO == null || adsDTO.getExt() == null || !ik.b(adsDTO.getExt().getLogEnable(), "showTrackingUrlsLogEnable")) && (diskTrackingBean == null || !diskTrackingBean.getShowTrackingUrlsLogEnable())) {
            return;
        }
        ik.c(new Runnable() {
            @Override
            public final void run() {
                AthenaTracker.a.a(adsDTO, diskTrackingBean, str, i, str2, th);
            }
        });
    }

    public static void p(boolean z, Context context) {
        if (a) {
            return;
        }
        try {
            AthenaAnalytics.Y(8765, "ssp" + md8.l());
        } catch (Throwable unused) {
        }
        AthenaAnalytics.P(context, "SSP", 2411, z, false);
        AthenaAnalytics.P(context, "SSP", 8765, z, false);
        a = true;
    }

    public static void p0(final String str, final int i) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.m0(str, i);
            }
        });
    }

    public static void q0(final AdsDTO adsDTO, final TaErrorCode taErrorCode, final int i, final String str) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.n0(adsDTO, taErrorCode, i, str);
            }
        });
    }

    public static void r0(final AdsDTO adsDTO, final TaErrorCode taErrorCode) {
        final Bundle bundleZ = z(adsDTO);
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.o0(adsDTO, taErrorCode, bundleZ);
            }
        });
    }

    public static void s0(final AdsDTO adsDTO, final ProgressData progressData) {
        final Bundle bundleZ = z(adsDTO);
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.p0(adsDTO, progressData, bundleZ);
            }
        });
    }

    public static void t0(final String str, final String str2, final String str3, final int i, final String str4, final String str5, final int i2, final long j) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.q0(str, str2, str3, i, str4, str5, i2, j);
            }
        });
    }

    public static void u0(final String str, final String str2, final String str3, final int i, final int i2, final long j) {
        if (i2 == -1 || !TextUtils.isEmpty(str2)) {
            ik.c(new Runnable() {
                @Override
                public void run() {
                    a.r0(str, str2, str3, i, i2, j);
                }
            });
        }
    }

    public static void v0(final String str, final String str2, final String str3, final String str4) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.s0(str, str2, str3, str4);
            }
        });
    }

    public static void w0(final AdsDTO adsDTO) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.t0(adsDTO);
            }
        });
    }

    public static void y(final AdsDTO adsDTO, final long j) {
        ik.c(new Runnable() {
            @Override
            public void run() {
                a.j(adsDTO, j);
            }
        });
    }

    public static Bundle z(AdsDTO adsDTO) {
        Bundle bundle = new Bundle();
        if (adsDTO != null) {
            bundle.putInt("show_times", adsDTO.getShowNum().intValue());
            bundle.putLong("show_duration", adsDTO.getActualShowTime().longValue());
            bundle.putInt("actual_show_rate", adsDTO.getActualShowRate().intValue());
            bundle.putString("show_area", adsDTO.getShowArea());
            bundle.putInt("is_effective_show", adsDTO.getIsEffectiveShow().intValue());
            bundle.putLong("show_report_time_type", adsDTO.getShowReportTimeType().intValue());
        } else {
            bundle.putInt("show_times", 0);
            bundle.putLong("show_duration", 0L);
            bundle.putInt("actual_show_rate", 0);
            bundle.putString("show_area", "");
            bundle.putInt("is_effective_show", 0);
            bundle.putLong("show_report_time_type", 1L);
        }
        return bundle;
    }
}
