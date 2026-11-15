package com.transsion.hubsdk.aosp.os;

import com.transsion.hubsdk.common.reflect.TranDoorMan;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranThubVersionUtil;
import com.transsion.hubsdk.interfaces.os.ITranBuildAdapter;
import java.lang.reflect.Method;

public class TranAospBuild implements ITranBuildAdapter {
    private static final String TAG = "TranAospBuild";
    private static Class<?> sClassName = TranDoorMan.getClass("android.os.Build");
    private TranAospSystemProperties mTranAospSystemProperties = new TranAospSystemProperties();

    @Override
    public int getAicoreOfflineLlmSupport() {
        return getPropertyByInt("ro.aicore.offline_llm_support", "ro.tr_aiservice.aisettings_offlinellm.feature.support", 0);
    }

    @Override
    public int getApmLimitBlockModeSupport() {
        return getPropertyByInt("sys.apm.limit_block_mode", "tr_apm.limit_block_mode", 1);
    }

    @Override
    public String getBoardPlatform() {
        try {
            return this.mTranAospSystemProperties.get("ro.board.platform", "");
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getBoardPlatform fail: " + e);
            return "";
        }
    }

    @Override
    public String getBuildDisplayId() {
        try {
            return this.mTranAospSystemProperties.get("ro.build.display.id", "");
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getBuildDisplayId fail: " + e);
            return "";
        }
    }

    @Override
    public String getBuildNumber() {
        return getPropertyByString("ro.build_number", "ro.tr_build.build_number", "");
    }

    @Override
    public int getChargingAnimationSupport() {
        return getPropertyByInt("ro.os_charging_animation_support", "ro.tr_charging.animation.support", 0);
    }

    @Override
    public int getChargingAnimationWirePowerSupport() {
        return getPropertyByInt("ro.os.charging_animation_wire_power", "ro.tr_charging.animation_wire_power", 0);
    }

    @Override
    public int getChargingAnimationWirelessPowerSupport() {
        return getPropertyByInt("ro.os.charging_animation_wireless_power", "ro.tr_charging.animation_wireless_power", 0);
    }

    @Override
    public int getChargingPowerHideSupport() {
        return getPropertyByInt("ro.os_charging_power_hide", "ro.tr_charging.power_hide", 0);
    }

    @Override
    public int getChildModeOpenSupport() {
        return getPropertyByInt("sys.child_mode_open", "tr_childmode.open.status", 0);
    }

    @Override
    public int getChildmodeSupport() {
        return getPropertyByInt("ro.childmode.support", "ro.tr_childmode.feature.support", 0);
    }

    @Override
    public int getDynamicallyStkIconSupport() {
        return getPropertyByInt("ro.dynamically_stk_icon_support", "ro.tr_stk.dynamic_icon.feature.support", 1);
    }

    @Override
    public int getFansOnSaleSupport() {
        return getPropertyByInt("persist.sys.fans.onsale", "persist.tr_build.onsale", 0);
    }

    @Override
    public int getGeniexEntranceSupport() {
        return getPropertyByInt("ro.tran_geniex_entrance_support", "ro.tr_telephony.vsim_geniex_entrance.support", 1);
    }

    @Override
    public int getGeniexSupport() {
        return getPropertyByInt("ro.tran_geniex_support", "ro.tr_telephony.vsim.support", 1);
    }

    @Override
    public int getGotiiEntranceSupport() {
        return getPropertyByInt("ro.tran_gotii_entrance_support", "ro.tr_telephony.vsim_gotii_entrance.support", 1);
    }

    @Override
    public int getKeyguardPovaThemeSupport() {
        return getPropertyByInt("ro.os.keyguard_pova_theme_support", "ro.tr_keyguard.pova_theme.support", 0);
    }

    @Override
    public int getKeyguardThemeSupport() {
        return getPropertyByInt("ro.os_keyguard_theme_support", "ro.tr_keyguard.theme.support", 1);
    }

    @Override
    public int getKolunGoSupport() {
        return getPropertyByInt("ro.os_kolun_go_support", "ro.tr_aiservice.kolungo.feature.support", 0);
    }

    @Override
    public int getKolunSupport() {
        return getPropertyByInt("ro.os_kolun_support", "ro.tr_aiservice.kolun.feature.support", 1);
    }

    @Override
    public int getNoteAiBgSupport() {
        return getPropertyByInt("ro.os_note_ai_bg_support", "ro.tr_note.ai_bg.support", 0);
    }

    @Override
    public int getNoteAiDrawSupport() {
        return getPropertyByInt("ro.os_note_ai_draw_support", "ro.tr_note.ai_draw.support", 0);
    }

    @Override
    public int getNoteCanvasSupport() {
        return getPropertyByInt("ro.os_note_canvas_support", "ro.tr_note.canvas.support", 1);
    }

    @Override
    public int getNoteFansLinkSupport() {
        return getPropertyByInt("ro.os_note_fans_link_support", "ro.tr_note.fans_link.support", 1);
    }

    @Override
    public int getNoteSuniaPenSupport() {
        return getPropertyByInt("ro.os_note_sunia_pen_support", "ro.tr_note.sunia_pen.support", 0);
    }

    @Override
    public int getOsCustomizedSplitScreenSupport() {
        return getPropertyByInt("ro.os_customized_split_screen_support", "ro.tr_splitscreen.customized.feature.support", 1);
    }

    @Override
    public String getProductBrand() {
        try {
            return this.mTranAospSystemProperties.get("ro.product.brand", "");
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getProductBrand fail: " + e);
            return "";
        }
    }

    public boolean getPropertyByBool(String str, String str2, boolean z) {
        try {
            return TranThubVersionUtil.isRecentAndroidW() ? this.mTranAospSystemProperties.getBoolean(str2, z) : this.mTranAospSystemProperties.getBoolean(str, z);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getPropertyByBool fail: " + e);
            return false;
        }
    }

    public int getPropertyByInt(String str, String str2, int i) {
        try {
            return TranThubVersionUtil.isRecentAndroidW() ? this.mTranAospSystemProperties.getInt(str2, i) : this.mTranAospSystemProperties.getInt(str, i);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getPropertyByInt fail: " + e);
            return 0;
        }
    }

    public String getPropertyByString(String str, String str2, String str3) {
        try {
            return TranThubVersionUtil.isRecentAndroidW() ? this.mTranAospSystemProperties.get(str2, str3) : this.mTranAospSystemProperties.get(str, str3);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getPropertyByString fail: " + e);
            return "";
        }
    }

    @Override
    public String getSerial() {
        Method method = TranDoorMan.getMethod(sClassName, "getSerial", new Class[0]);
        try {
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, null);
            if (objInvoke == null || !(objInvoke instanceof String)) {
                return null;
            }
            return (String) objInvoke;
        } catch (Throwable th) {
            TranSdkLog.e(TAG, "getSerial fail " + th);
            return null;
        }
    }

    @Override
    public String getSysOobeCountry() {
        return getPropertyByString("persist.sys.oobe_country", "persist.tr_oobe.country", "");
    }

    @Override
    public String getSysUserExperience() {
        try {
            return this.mTranAospSystemProperties.get("persist.sys.user_experience", "");
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getSysUserExperience fail: " + e);
            return "";
        }
    }

    @Override
    public int getTranAiKeySupport() {
        return getPropertyByInt("ro.tran.ai.key.support", "ro.tr_aiassistant.aikey.feature.support", 0);
    }

    @Override
    public int getTranAiSubtitlesSupport() {
        return getPropertyByInt("ro.sys.tran.ai_subtitles_support", "ro.tr_aiservice.aicorespeech_subtitle.feature.support", 0);
    }

    @Override
    public int getTranAicoreLlmSupport() {
        return getPropertyByInt("ro.sys.tran.aicore_llm_support", "ro.tr_aiservice.aicorellm.feature.support", 1);
    }

    @Override
    public String getTranAirTransferSupport() {
        return getPropertyByString("ro.product.tran_air_transfer_support", "ro.tr_airtransfer.feature.support", "");
    }

    @Override
    public String getTranAssistVoiceprint() {
        return getPropertyByString("ro.sys.tran.assist_voiceprint_support", "ro.tr_aiassistant.vow.solution", "aispeech");
    }

    @Override
    public String getTranBom() {
        return getPropertyByString("ro.tran.bom", "ro.tr_build.bom", "");
    }

    @Override
    public int getTranChooserPrivacySupport() {
        return getPropertyByInt("ro.os_share_privacy_support", "ro.tr_sharevia.chooser.privacy.feature.support", 1);
    }

    @Override
    public int getTranCloudserverSupport() {
        return getPropertyByInt("ro.os_cloud_server_support", "ro.tr_cloudserver.feature.support", 0);
    }

    @Override
    public int getTranCutepetSupport() {
        return getPropertyByInt("ro.os_cutepet_support", "ro.tr_cutepet.feature.support", 0);
    }

    @Override
    public int getTranDualSysSupport() {
        return getPropertyByInt("ro.tran.dual_sys_support", "ro.tr_privacy.dual_sys.feature.support", 1);
    }

    @Override
    public String getTranDynamicbarSupport() {
        return getPropertyByString("ro.os_dynamicbar_support", "ro.tr_dynamicbar.support", "");
    }

    @Override
    public int getTranEyeCareSupport() {
        return getPropertyByInt("ro.tran_eye_care_support", "ro.tr_game.eye_care.support", 0);
    }

    @Override
    public int getTranFlipScreenSupport() {
        return getPropertyByInt("ro.os_flip_screen_support", "ro.tr_project.flip_screen.support", 0);
    }

    @Override
    public int getTranFoldableScreenSupport() {
        return getPropertyByInt("ro.os_foldable_screen_support", "ro.tr_project.foldable_screen.support", 0);
    }

    @Override
    public int getTranGameTpEsports10Support() {
        return getPropertyByInt("ro.os_game_tp_esports10.support", "ro.tr_game.tp_esports10.feature.support", 0);
    }

    @Override
    public int getTranGameTpEsports20Support() {
        return getPropertyByInt("ro.os_game_tp_esports20.support", "ro.tr_game.tp_esports20.feature.support", 0);
    }

    @Override
    public int getTranGameTpEsports30Support() {
        return getPropertyByInt("ro.os_game_tp_esports30.support", "ro.tr_game.tp_esports30.feature.support", 0);
    }

    @Override
    public int getTranGlobalguideSupport() {
        return getPropertyByInt("ro.os_globalguide_support", "ro.tr_globalguide.feature.support", 0);
    }

    @Override
    public String getTranHrSpo2Support() {
        return getPropertyByString("ro.vendor.tran.hr_spo2.option", "ro.odm.tr_sensor.hr_spo2.support", "");
    }

    @Override
    public String getTranHrvStressSupport() {
        return getPropertyByString("ro.odm.tr_sensor.hrv_stress.support", "ro.odm.tr_sensor.hrv_stress.support", "");
    }

    @Override
    public int getTranLedCamonSupport() {
        return getPropertyByInt("persist.sys.tran_led_camon_support", "persist.tr_lighting.camon.feature.support", 0);
    }

    @Override
    public int getTranLedControlCenterSupport() {
        return getPropertyByInt("persist.sys.tran_led_control_center_support", "persist.tr_lighting.controlcenter.feature.support", 0);
    }

    @Override
    public int getTranLedEllaSupport() {
        return getPropertyByInt("persist.sys.tran_led_ella_support", "persist.tr_lighting.ella.feature.support", 0);
    }

    @Override
    public int getTranLedGtSupport() {
        return getPropertyByInt("persist.sys.tran_led_gt_support", "persist.tr_lighting.gt.feature.support", 0);
    }

    @Override
    public int getTranLedHotSupport() {
        return getPropertyByInt("persist.sys.tran_led_hot_support", "persist.tr_lighting.hot.feature.support", 0);
    }

    @Override
    public int getTranLedItelsSupport() {
        return getPropertyByInt("persist.sys.tran_led_itels_support", "persist.tr_lighting.itels.feature.support", 0);
    }

    @Override
    public int getTranLedNoteSupport() {
        return getPropertyByInt("persist.sys.tran_led_note_support", "persist.tr_lighting.note.feature.support", 0);
    }

    @Override
    public int getTranLedPovaSupport() {
        return getPropertyByInt("persist.sys.tran_led_pova_support", "persist.tr_lighting.pova.support", 0);
    }

    @Override
    public int getTranLedSparkSupport() {
        return getPropertyByInt("persist.sys.tran_led_spark_support", "persist.tr_lighting.spark.feature.support", 0);
    }

    @Override
    public int getTranLedSupport() {
        return getPropertyByInt("persist.sys.tran_led_support", "persist.tr_lighting.feature.support", 0);
    }

    @Override
    public int getTranLightningMultiWindowSupport() {
        return getPropertyByInt("ro.product.lightning_multi_window.support", "ro.tr_multiwindow.lightning_multi_window.support", 1);
    }

    @Override
    public int getTranMistouchSupport() {
        return getPropertyByInt("ro.vendor.tran_mistouch_support", "ro.tr_mistouch.feature.support", 0);
    }

    @Override
    public int getTranOpenwithSupport() {
        return getPropertyByInt("ro.os_openwith_wps_support", "ro.tr_sharevia.openwith.feature.support", 1);
    }

    @Override
    public int getTranOperatorBookmarkSupport() {
        return getPropertyByInt("ro.tran_operatorbookmark_support", "ro.tr_tocc.bookmark.support", 1);
    }

    @Override
    public String getTranOsType() {
        try {
            return this.mTranAospSystemProperties.get("ro.tranos.type", "");
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getTranOsType fail: " + e);
            return "";
        }
    }

    @Override
    public String getTranOsVersion() {
        try {
            return this.mTranAospSystemProperties.get("ro.tranos.version", "");
        } catch (Exception e) {
            TranSdkLog.e(TAG, "getTranOsVersion fail: " + e);
            return "";
        }
    }

    @Override
    public String getTranPalmFind() {
        return getPropertyByString("ro.tran_palm_find_support", "ro.tr_palm_find.feature.support", "1");
    }

    @Override
    public String getTranPalmFind120() {
        return getPropertyByString("ro.tran_palm_find_1.2.0_support", "ro.tr_palm_find.bluetooth_headset.feature.support", "1");
    }

    @Override
    public int getTranPrivacyHubSupport() {
        return getPropertyByInt("ro.os_privacy_hub_support", "ro.tr_privacy.privacy_hub.feature.support", 1);
    }

    @Override
    public int getTranProductPersonalizedDisplayFlipSupport() {
        return getPropertyByInt("ro.product.personalized_display_flip.support", "ro.tr_build.personalized_display_flip.support", 0);
    }

    @Override
    public int getTranPtRemoteLockSupport() {
        return getPropertyByInt("ro.tran_pt.remote_lock.support", "ro.tr_telephony.pt.remote.lock.support", 1);
    }

    @Override
    public int getTranRepairModeSupport() {
        return getPropertyByInt("ro.os_repair_mode_support", "ro.tr_privacy.repair_mode.feature.support", 1);
    }

    @Override
    public int getTranScreenrecordMicScaleLevel() {
        return getPropertyByInt("ro.os_screenrecord_mic_scale_level", "ro.tr_screenrecord.mic_scale_level", 1);
    }

    @Override
    public int getTranScreenrecordSrSaSupport() {
        return getPropertyByInt("ro.os_screenrecord_sr_sa_0019_009_support", "ro.tr_screenrecord.sr_sa_0019_009.support", 1);
    }

    @Override
    public int getTranScreenshotSupport() {
        return getPropertyByInt("ro.os_supershot_apk", "ro.tr_screenshot.support", 1);
    }

    @Override
    public String getTranSensorIrLedBack() {
        return getPropertyByString("ro.vendor.tran.ir.led.back", "ro.odm.tr_sensor.ir_led_back.support", "");
    }

    @Override
    public String getTranSliderPanelSupport() {
        return getPropertyByString("ro.os_slider_panel_support", "ro.tr_smartpanel.os_slider_panel.support", "");
    }

    @Override
    public int getTranSmartRecognitionSupport() {
        return getPropertyByInt("ro.os_kolun_exocr_support", "ro.tr_smartrecognition.feature.support", 0);
    }

    @Override
    public String getTranSmartpanelSupport() {
        return getPropertyByString("ro.os_smartpanel_support", "ro.tr_smartpanel.os_smartpanel.support", "");
    }

    @Override
    public String getTranSpaceSaver() {
        return getPropertyByString("ro.transsion_spacesaver.support", "ro.tr_spacesaver.feature.support", "1");
    }

    @Override
    public int getTranSplitScreenSnapModeSupport() {
        return getPropertyByInt("ro.tran_split_screen_snap_mode.support", "ro.tr_splitscreen.snapmode.feature.support", 1);
    }

    @Override
    public int getTranSplitScreenTBSupport() {
        return getPropertyByInt("ro.tran_split_screen.top_bottom", "ro.tr_splitscreen.topbottom.feature.support", 1);
    }

    @Override
    public int getTranStkAthenaSupport() {
        return getPropertyByInt("ro.tran_stk_athena_support", "ro.tr_stk.athena.feature.support", 1);
    }

    @Override
    public int getTranStkMpesaSupport() {
        return getPropertyByInt("ro.tran_stk_mpesa_support", "ro.tr_stk.mpesa.feature.support", 1);
    }

    @Override
    public String getTranSwMarket() {
        return getPropertyByString("ro.tran.sw.market", "ro.tr_build.sw_market", "");
    }

    @Override
    public int getTranUltraPowerSaveSupport() {
        return getPropertyByInt("ro.tran.ultra.power.save.support", "ro.tr_battery.ultra_power_save.feature.support", 0);
    }

    @Override
    public String getTranVendorHrSpo2Timemillis() {
        return getPropertyByString("ro.vendor.tran.hr_spo2.test_time", "ro.odm.tr_sensor.hr_spo2.timeoutmillis", "");
    }

    @Override
    public String getTranVendorVib30Support() {
        return getPropertyByString("ro.vendor.tran_vib3_support", "ro.tr_vibrate.vibrate30.feature.support", "");
    }

    @Override
    public int getTranVibrate10Support() {
        return getPropertyByInt("ro.tran_vibrate_ontouch.support", "ro.tr_vibrate.vibrate10.feature.support", 0);
    }

    @Override
    public int getTranVibrate20Support() {
        return getPropertyByInt("ro.tran_vibrate_ontouch2.0.support", "ro.tr_vibrate.vibrate20.feature.support", 0);
    }

    @Override
    public int getTrancareUxdetectorRestSupport() {
        return getPropertyByInt("ro.vendor.trancare.uxdetectorrest", "ro.tr_aiservice.uxdetector_rest.feature.support", 1);
    }

    @Override
    public boolean isAssistOnlineSupport() {
        return getPropertyByBool("ro.product.assist_online", "ro.tr_aiassistant.online.feature.support", false);
    }

    @Override
    public boolean isFaceIdHalSupport() {
        try {
            return "1".equals(this.mTranAospSystemProperties.get("ro.faceid.hal.support", "0"));
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isFaceIdHalSupport fail: " + e);
            return false;
        }
    }

    @Override
    public boolean isOmdHifiSupport() {
        try {
            return this.mTranAospSystemProperties.getBoolean("ro.odm.tr_audio_hifi.feature.support", false);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isOmdHifiSupport fail: " + e);
            return false;
        }
    }

    @Override
    public boolean isTranAiphoneAnimation60hzSupport() {
        return getPropertyByBool("ro.sys.tran.aiphone_animation_60hz", "ro.tr_aiassistant.aiphone_animation_60hz.feature.config", false);
    }

    @Override
    public boolean isTranAiphoneSummarySupport() {
        return getPropertyByBool("ro.sys.tran.aiphone_summary_support", "ro.tr_aiassistant.aiphone_summany.feature.support", false);
    }

    @Override
    public boolean isTranAiphoneSupport() {
        return getPropertyByBool("ro.sys.tran.aiphone_support", "ro.tr_aiassistant.aiphone.feature.support", false);
    }

    @Override
    public boolean isTranAssistHighpowerWakeupSupport() {
        return getPropertyByBool("ro.sys.tran.assist_highpower_wakeup", "ro.tr_aiassistant.vow.highpower.support", true);
    }

    @Override
    public boolean isTranAssistPowerWakeupSupport() {
        return getPropertyByBool("ro.sys.tran.assist_power_wakeup_support", "ro.tr_aiassistant.power_wakeup.feature.support", true);
    }

    @Override
    public boolean isTranAssistSupport() {
        return getPropertyByBool("ro.sys.tran.assist_support", "ro.tr_aiassistant.feature.support", false);
    }

    @Override
    public boolean isTranAssistVoiceprintDynamicHotwordSupport() {
        return getPropertyByBool("ro.sys.tran.assist_voiceprint_dynamic_hotword", "ro.tr_aiassistant.vow.dynamicswitch.support", false);
    }

    @Override
    public boolean isTranAssistVowDualmicSupport() {
        return getPropertyByBool("ro.sys.tran.assist_vow_dualmic", "ro.tr_aiassistant.vow.dualmic.support", false);
    }

    @Override
    public boolean isTranAssistVowSupport() {
        return getPropertyByBool("ro.sys.tran.assist_vow_support", "ro.tr_aiassistant.vow.support", false);
    }

    @Override
    public boolean isTranDragdropSupport() {
        return getPropertyByBool("ro.os_dragdrop_support", "ro.tr_dragdrop.feature.support", false);
    }

    @Override
    public boolean isTranRealvib05Support() {
        return getPropertyByBool("ro.vendor.tran_0012ir", "ro.tr_vibrate.realvib05.feature.support", false);
    }

    @Override
    public boolean isTranVibrate30ZSupport() {
        return getPropertyByBool("ro.vendor.tran_vib3_z_support", "ro.tr_vibrate.vibrate30_z.feature.support", false);
    }

    @Override
    public boolean isVendorHifiSupport() {
        try {
            return this.mTranAospSystemProperties.getBoolean("ro.vendor.tran.hifiaudio_support", false);
        } catch (Exception e) {
            TranSdkLog.e(TAG, "isVendorHifiSupport fail: " + e);
            return false;
        }
    }
}
