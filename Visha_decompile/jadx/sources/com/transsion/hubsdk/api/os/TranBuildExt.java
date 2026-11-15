package com.transsion.hubsdk.api.os;

import com.transsion.hubsdk.aosp.os.TranAospBuild;
import com.transsion.hubsdk.common.util.TranGenericReflectionHelper;
import com.transsion.hubsdk.common.util.TranSdkLog;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.os.TranThubBuild;
import com.transsion.hubsdk.interfaces.os.ITranBuildAdapter;

public class TranBuildExt {
    private static final String TAG = "TranBuildExt";
    protected static ITranBuildAdapter sAospService;
    protected static ITranBuildAdapter sThubService;
    private TranGenericReflectionHelper mReflectionHelper = new TranGenericReflectionHelper("com.transsion.hubsdk.os.TranBuild");

    public static String getSerial() {
        return getService(TranVersion.Core.VERSION_33151).getSerial();
    }

    public static ITranBuildAdapter getService(String str) {
        if (TranVersion.isIntegratedThubCore(str)) {
            ITranBuildAdapter iTranBuildAdapter = sThubService;
            if (iTranBuildAdapter != null) {
                return iTranBuildAdapter;
            }
            TranThubBuild tranThubBuild = new TranThubBuild();
            sThubService = tranThubBuild;
            return tranThubBuild;
        }
        TranSdkLog.i(TAG, "TranAospSettings");
        ITranBuildAdapter iTranBuildAdapter2 = sAospService;
        if (iTranBuildAdapter2 != null) {
            return iTranBuildAdapter2;
        }
        TranAospBuild tranAospBuild = new TranAospBuild();
        sAospService = tranAospBuild;
        return tranAospBuild;
    }

    public int getAicoreOfflineLlmSupport() {
        return getService(TranVersion.Core.VERSION_33421).getAicoreOfflineLlmSupport();
    }

    public int getApmLimitBlockModeSupport() {
        return getService(TranVersion.Core.VERSION_33421).getApmLimitBlockModeSupport();
    }

    public String getBoardPlatform() {
        return getService(TranVersion.Core.VERSION_33421).getBoardPlatform();
    }

    public String getBuildDisplayId() {
        return getService(TranVersion.Core.VERSION_33421).getBuildDisplayId();
    }

    public String getBuildNumber() {
        return getService(TranVersion.Core.VERSION_33421).getBuildNumber();
    }

    public int getChargingAnimationSupport() {
        return getService(TranVersion.Core.VERSION_33421).getChargingAnimationSupport();
    }

    public int getChargingAnimationWirePowerSupport() {
        return getService(TranVersion.Core.VERSION_33421).getChargingAnimationWirePowerSupport();
    }

    public int getChargingAnimationWirelessPowerSupport() {
        return getService(TranVersion.Core.VERSION_33421).getChargingAnimationWirelessPowerSupport();
    }

    public int getChargingPowerHideSupport() {
        return getService(TranVersion.Core.VERSION_33421).getChargingPowerHideSupport();
    }

    public int getChildModeOpenSupport() {
        return getService(TranVersion.Core.VERSION_33421).getChildModeOpenSupport();
    }

    public int getChildmodeSupport() {
        return getService(TranVersion.Core.VERSION_33421).getChildmodeSupport();
    }

    public int getDynamicallyStkIconSupport() {
        return getService(TranVersion.Core.VERSION_33421).getDynamicallyStkIconSupport();
    }

    public ITranBuildAdapter getExistenceService(String str) {
        if (TranVersion.isIntegratedThubCore(TranVersion.Core.VERSION_33421) && this.mReflectionHelper.isFieldExists(str)) {
            ITranBuildAdapter iTranBuildAdapter = sThubService;
            if (iTranBuildAdapter != null) {
                return iTranBuildAdapter;
            }
            TranThubBuild tranThubBuild = new TranThubBuild();
            sThubService = tranThubBuild;
            return tranThubBuild;
        }
        TranSdkLog.i(TAG, "TranAospSettings");
        ITranBuildAdapter iTranBuildAdapter2 = sAospService;
        if (iTranBuildAdapter2 != null) {
            return iTranBuildAdapter2;
        }
        TranAospBuild tranAospBuild = new TranAospBuild();
        sAospService = tranAospBuild;
        return tranAospBuild;
    }

    public int getFansOnSaleSupport() {
        return getService(TranVersion.Core.VERSION_33421).getFansOnSaleSupport();
    }

    public int getGeniexEntranceSupport() {
        return getService(TranVersion.Core.VERSION_33421).getGeniexEntranceSupport();
    }

    public int getGeniexSupport() {
        return getService(TranVersion.Core.VERSION_33421).getGeniexSupport();
    }

    public int getGotiiEntranceSupport() {
        return getService(TranVersion.Core.VERSION_33421).getGotiiEntranceSupport();
    }

    public int getKeyguardPovaThemeSupport() {
        return getService(TranVersion.Core.VERSION_33421).getKeyguardPovaThemeSupport();
    }

    public int getKeyguardThemeSupport() {
        return getService(TranVersion.Core.VERSION_33421).getKeyguardThemeSupport();
    }

    public int getKolunGoSupport() {
        return getService(TranVersion.Core.VERSION_33421).getKolunGoSupport();
    }

    public int getKolunSupport() {
        return getService(TranVersion.Core.VERSION_33421).getKolunSupport();
    }

    public int getNoteAiBgSupport() {
        return getService(TranVersion.Core.VERSION_33421).getNoteAiBgSupport();
    }

    public int getNoteAiDrawSupport() {
        return getService(TranVersion.Core.VERSION_33421).getNoteAiDrawSupport();
    }

    public int getNoteCanvasSupport() {
        return getService(TranVersion.Core.VERSION_33421).getNoteCanvasSupport();
    }

    public int getNoteFansLinkSupport() {
        return getService(TranVersion.Core.VERSION_33421).getNoteFansLinkSupport();
    }

    public int getNoteSuniaPenSupport() {
        return getService(TranVersion.Core.VERSION_33421).getNoteSuniaPenSupport();
    }

    public int getOsCustomizedSplitScreenSupport() {
        return getService(TranVersion.Core.VERSION_33421).getOsCustomizedSplitScreenSupport();
    }

    public String getProductBrand() {
        return getService(TranVersion.Core.VERSION_33421).getProductBrand();
    }

    public String getSysOobeCountry() {
        return getService(TranVersion.Core.VERSION_33421).getSysOobeCountry();
    }

    public String getSysUserExperience() {
        return getService(TranVersion.Core.VERSION_33421).getSysUserExperience();
    }

    public int getTranAiKeySupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranAiKeySupport();
    }

    public int getTranAiSubtitlesSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranAiSubtitlesSupport();
    }

    public int getTranAicoreLlmSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranAicoreLlmSupport();
    }

    public String getTranAirTransferSupport() {
        return getExistenceService("TRAN_AIR_TRANSFER_SUPPORT").getTranAirTransferSupport();
    }

    public String getTranAssistVoiceprint() {
        return getService(TranVersion.Core.VERSION_33421).getTranAssistVoiceprint();
    }

    public String getTranBom() {
        return getService(TranVersion.Core.VERSION_33421).getTranBom();
    }

    public int getTranChooserPrivacySupport() {
        return getExistenceService("TRAN_CHOOSER_PRIVACY_SUPPORT").getTranChooserPrivacySupport();
    }

    public int getTranCloudserverSupport() {
        return getExistenceService("TRAN_CLOUDSERVER_SUPPORT").getTranCloudserverSupport();
    }

    public int getTranCutepetSupport() {
        return getExistenceService("TRAN_CUTEPET_SUPPORT").getTranCutepetSupport();
    }

    public int getTranDualSysSupport() {
        return getExistenceService("TRAN_DUAL_SYS_SUPPORT").getTranDualSysSupport();
    }

    public String getTranDynamicbarSupport() {
        return getExistenceService("TRAN_DYNAMICBAR_SUPPORT").getTranDynamicbarSupport();
    }

    public int getTranEyeCareSupport() {
        return getExistenceService("TRAN_EYE_CARE_SUPPORT").getTranEyeCareSupport();
    }

    public int getTranFlipScreenSupport() {
        return getExistenceService("TRAN_FLIP_SCREEN_SUPPORT").getTranFlipScreenSupport();
    }

    public int getTranFoldableScreenSupport() {
        return getExistenceService("TRAN_FOLDABLE_SCREEN_SUPPORT").getTranFoldableScreenSupport();
    }

    public int getTranGameTpEsports10Support() {
        return getExistenceService("TRAN_GAME_TP_ESPORTS10_SUPPORT").getTranGameTpEsports10Support();
    }

    public int getTranGameTpEsports20Support() {
        return getExistenceService("TRAN_GAME_TP_ESPORTS20_SUPPORT").getTranGameTpEsports20Support();
    }

    public int getTranGameTpEsports30Support() {
        return getExistenceService("TRAN_GAME_TP_ESPORTS30_SUPPORT").getTranGameTpEsports30Support();
    }

    public int getTranGlobalguideSupport() {
        return getExistenceService("TRAN_GLOBALGUIDE_SUPPORT").getTranGlobalguideSupport();
    }

    public String getTranHrSpo2Support() {
        return getExistenceService("TRAN_HR_SPO2_SUPPORT").getTranHrSpo2Support();
    }

    public String getTranHrvStressSupport() {
        return getExistenceService("TRAN_HRV_STRESS_SUPPORT").getTranHrvStressSupport();
    }

    public int getTranLedCamonSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedCamonSupport();
    }

    public int getTranLedControlCenterSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedControlCenterSupport();
    }

    public int getTranLedEllaSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedEllaSupport();
    }

    public int getTranLedGtSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedGtSupport();
    }

    public int getTranLedHotSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedHotSupport();
    }

    public int getTranLedItelsSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedItelsSupport();
    }

    public int getTranLedNoteSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedNoteSupport();
    }

    public int getTranLedPovaSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedPovaSupport();
    }

    public int getTranLedSparkSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedSparkSupport();
    }

    public int getTranLedSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranLedSupport();
    }

    public int getTranLightningMultiWindowSupport() {
        return getExistenceService("TRAN_LIGHTNING_MULTI_WINDOW_SUPPORT").getTranLightningMultiWindowSupport();
    }

    public int getTranMistouchSupport() {
        return getExistenceService("TRAN_MISTOUCH_SUPPORT").getTranMistouchSupport();
    }

    public int getTranOpenwithSupport() {
        return getExistenceService("TRAN_OPENWITH_SUPPORT").getTranOpenwithSupport();
    }

    public int getTranOperatorBookmarkSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranOperatorBookmarkSupport();
    }

    public String getTranOsType() {
        return getService(TranVersion.Core.VERSION_33421).getTranOsType();
    }

    public String getTranOsVersion() {
        return getService(TranVersion.Core.VERSION_33421).getTranOsVersion();
    }

    public String getTranPalmFind() {
        return getService(TranVersion.Core.VERSION_33421).getTranPalmFind();
    }

    public String getTranPalmFind120() {
        return getService(TranVersion.Core.VERSION_33421).getTranPalmFind120();
    }

    public int getTranPrivacyHubSupport() {
        return getExistenceService("TRAN_PRIVACY_HUB_SUPPORT").getTranPrivacyHubSupport();
    }

    public int getTranProductPersonalizedDisplayFlipSupport() {
        return getExistenceService("TRAN_PRODUCT_PERSONALIZED_DISPLAY_FLIP_SUPPORT").getTranProductPersonalizedDisplayFlipSupport();
    }

    public int getTranPtRemoteLockSupport() {
        return getExistenceService("TRAN_PT_REMOTE_LOCK_SUPPORT").getTranPtRemoteLockSupport();
    }

    public int getTranRepairModeSupport() {
        return getExistenceService("TRAN_REPAIR_MODE_SUPPORT").getTranRepairModeSupport();
    }

    public int getTranScreenrecordMicScaleLevel() {
        return getExistenceService("TRAN_SCREENRECORD_MIC_SCALE_LEVEL").getTranScreenrecordMicScaleLevel();
    }

    public int getTranScreenrecordSrSaSupport() {
        return getExistenceService("TRAN_SCREENRECORD_SR_SA_SUPPORT").getTranScreenrecordSrSaSupport();
    }

    public int getTranScreenshotSupport() {
        return getExistenceService("TRAN_SCREENSHOT_SUPPORT").getTranScreenshotSupport();
    }

    public String getTranSensorIrLedBack() {
        return getExistenceService("TRAN_SENSOR_IR_LED_BACK").getTranSensorIrLedBack();
    }

    public String getTranSliderPanelSupport() {
        return getExistenceService("TRAN_SLIDER_PANEL_SUPPORT").getTranSliderPanelSupport();
    }

    public int getTranSmartRecognitionSupport() {
        return getExistenceService("TRAN_SMART_RECOGNITION_SUPPORT").getTranSmartRecognitionSupport();
    }

    public String getTranSmartpanelSupport() {
        return getExistenceService("TRAN_SMARTPANEL_SUPPORT").getTranSmartpanelSupport();
    }

    public String getTranSpaceSaver() {
        return getService(TranVersion.Core.VERSION_33421).getTranSpaceSaver();
    }

    public int getTranSplitScreenSnapModeSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranSplitScreenSnapModeSupport();
    }

    public int getTranSplitScreenTBSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranSplitScreenTBSupport();
    }

    public int getTranStkAthenaSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranStkAthenaSupport();
    }

    public int getTranStkMpesaSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTranStkMpesaSupport();
    }

    public String getTranSwMarket() {
        return getService(TranVersion.Core.VERSION_33421).getTranSwMarket();
    }

    public int getTranUltraPowerSaveSupport() {
        return getExistenceService("TRAN_ULTRA_POWER_SAVE_SUPPORT").getTranUltraPowerSaveSupport();
    }

    public String getTranVendorHrSpo2Timemillis() {
        return getExistenceService("TRAN_VENDOR_HR_SPO2_TIMEMILLIS").getTranVendorHrSpo2Timemillis();
    }

    public String getTranVendorVib30Support() {
        return getExistenceService("TRAN_VENDOR_VIB30_SUPPORT").getTranVendorVib30Support();
    }

    public int getTranVibrate10Support() {
        return getExistenceService("TRAN_VIBRATE10_SUPPORT").getTranVibrate10Support();
    }

    public int getTranVibrate20Support() {
        return getExistenceService("TRAN_VIBRATE20_SUPPORT").getTranVibrate20Support();
    }

    public int getTrancareUxdetectorRestSupport() {
        return getService(TranVersion.Core.VERSION_33421).getTrancareUxdetectorRestSupport();
    }

    public boolean isAssistOnlineSupport() {
        return getService(TranVersion.Core.VERSION_33421).isAssistOnlineSupport();
    }

    public boolean isFaceIdHalSupport() {
        return getService(TranVersion.Core.VERSION_33421).isFaceIdHalSupport();
    }

    public boolean isOmdHifiSupport() {
        return getService(TranVersion.Core.VERSION_33421).isOmdHifiSupport();
    }

    public boolean isTranAiphoneAnimation60hzSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAiphoneAnimation60hzSupport();
    }

    public boolean isTranAiphoneSummarySupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAiphoneSummarySupport();
    }

    public boolean isTranAiphoneSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAiphoneSupport();
    }

    public boolean isTranAssistHighpowerWakeupSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAssistHighpowerWakeupSupport();
    }

    public boolean isTranAssistPowerWakeupSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAssistPowerWakeupSupport();
    }

    public boolean isTranAssistSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAssistSupport();
    }

    public boolean isTranAssistVoiceprintDynamicHotwordSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAssistVoiceprintDynamicHotwordSupport();
    }

    public boolean isTranAssistVowDualmicSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAssistVowDualmicSupport();
    }

    public boolean isTranAssistVowSupport() {
        return getService(TranVersion.Core.VERSION_33421).isTranAssistVowSupport();
    }

    public boolean isTranDragdropSupport() {
        return getExistenceService("TRAN_DRAGDROP_SUPPORT").isTranDragdropSupport();
    }

    public boolean isTranRealvib05Support() {
        return getExistenceService("TRAN_REALVIB05_SUPPORT").isTranRealvib05Support();
    }

    public boolean isTranVibrate30ZSupport() {
        return getExistenceService("TRAN_VIBRATE30_Z_SUPPORT").isTranVibrate30ZSupport();
    }

    public boolean isVendorHifiSupport() {
        return getService(TranVersion.Core.VERSION_33421).isVendorHifiSupport();
    }
}
