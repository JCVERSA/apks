.class public Lcom/transsion/hubsdk/core/os/TranThubBuild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAicoreOfflineLlmSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AICORE_OFFLINE_LLM_SUPPORT:I

    return p0
.end method

.method public getApmLimitBlockModeSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_APM_LIMIT_BLOCK_MODE:I

    return p0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->BOARD_PLATFORM:Ljava/lang/String;

    return-object p0
.end method

.method public getBuildDisplayId()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->BUILD_DISPLAY_ID:Ljava/lang/String;

    return-object p0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->BUILD_NUMBER:Ljava/lang/String;

    return-object p0
.end method

.method public getChargingAnimationSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_ANIMATION_SUPPORT:I

    return p0
.end method

.method public getChargingAnimationWirePowerSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_ANIMATION_WIRE_POWER_SUPPORT:I

    return p0
.end method

.method public getChargingAnimationWirelessPowerSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_ANIMATION_WIRELESS_POWER_SUPPORT:I

    return p0
.end method

.method public getChargingPowerHideSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHARGING_POWER_HIDE_SUPPORT:I

    return p0
.end method

.method public getChildModeOpenSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHILD_MODE_OPEN:I

    return p0
.end method

.method public getChildmodeSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHILDMODE_SUPPORT:I

    return p0
.end method

.method public getDynamicallyStkIconSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DYNAMICALLY_STK_ICON_SUPPORT:I

    return p0
.end method

.method public getFansOnSaleSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->SYS_FANS_ONSALE:I

    return p0
.end method

.method public getGeniexEntranceSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GENIEX_ENTRANCE_SUPPORT:I

    return p0
.end method

.method public getGeniexSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GENIEX_SUPPORT:I

    return p0
.end method

.method public getGotiiEntranceSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GOTII_ENTRANCE_SUPPORT:I

    return p0
.end method

.method public getKeyguardPovaThemeSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KEYGUARD_POVA_THEME_SUPPORT:I

    return p0
.end method

.method public getKeyguardThemeSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KEYGUARD_THEME_SUPPORT:I

    return p0
.end method

.method public getKolunGoSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KOLUN_GO_SUPPORT:I

    return p0
.end method

.method public getKolunSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_KOLUN_SUPPORT:I

    return p0
.end method

.method public getNoteAiBgSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_AI_BG_SUPPORT:I

    return p0
.end method

.method public getNoteAiDrawSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_AI_DRAW_SUPPORT:I

    return p0
.end method

.method public getNoteCanvasSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_CANVAS_SUPPORT:I

    return p0
.end method

.method public getNoteFansLinkSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_FANS_LINK_SUPPORT:I

    return p0
.end method

.method public getNoteSuniaPenSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_NOTE_SUNIA_PEN_SUPPORT:I

    return p0
.end method

.method public getOsCustomizedSplitScreenSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CUSTOMIZED_SPLIT_SCREEN_SUPPORT:I

    return p0
.end method

.method public getProductBrand()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->PRODUCT_BRAND:Ljava/lang/String;

    return-object p0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 0

    invoke-static {}, Lcom/transsion/hubsdk/os/TranBuild;->getSerial()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysOobeCountry()Ljava/lang/String;
    .locals 0

    new-instance p0, Lcom/transsion/hubsdk/os/TranBuild;

    invoke-direct {p0}, Lcom/transsion/hubsdk/os/TranBuild;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/TranBuild;->getOOBECountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysUserExperience()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->SYS_USER_EXPERIRNCE:Ljava/lang/String;

    return-object p0
.end method

.method public getTranAiKeySupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AI_KEY_SUPPORT:I

    return p0
.end method

.method public getTranAiSubtitlesSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AICORE_SUBTITLES_SUPPORT:I

    return p0
.end method

.method public getTranAicoreLlmSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AICORE_LLM_SUPPORT:I

    return p0
.end method

.method public getTranAirTransferSupport()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIR_TRANSFER_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranAssistVoiceprint()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOICEPRINT_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranBom()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_BOM:Ljava/lang/String;

    return-object p0
.end method

.method public getTranChooserPrivacySupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CHOOSER_PRIVACY_SUPPORT:I

    return p0
.end method

.method public getTranCloudserverSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CLOUDSERVER_SUPPORT:I

    return p0
.end method

.method public getTranCutepetSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_CUTEPET_SUPPORT:I

    return p0
.end method

.method public getTranDualSysSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DUAL_SYS_SUPPORT:I

    return p0
.end method

.method public getTranDynamicbarSupport()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DYNAMICBAR_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranEyeCareSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_EYE_CARE_SUPPORT:I

    return p0
.end method

.method public getTranFlipScreenSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_FLIP_SCREEN_SUPPORT:I

    return p0
.end method

.method public getTranFoldableScreenSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_FOLDABLE_SCREEN_SUPPORT:I

    return p0
.end method

.method public getTranGameTpEsports10Support()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GAME_TP_ESPORTS10_SUPPORT:I

    return p0
.end method

.method public getTranGameTpEsports20Support()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GAME_TP_ESPORTS20_SUPPORT:I

    return p0
.end method

.method public getTranGameTpEsports30Support()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GAME_TP_ESPORTS30_SUPPORT:I

    return p0
.end method

.method public getTranGlobalguideSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_GLOBALGUIDE_SUPPORT:I

    return p0
.end method

.method public getTranHrSpo2Support()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_HR_SPO2_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranHrvStressSupport()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_HRV_STRESS_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranLedCamonSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_CAMON_SUPPORT:I

    return p0
.end method

.method public getTranLedControlCenterSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_CONTROL_CENTER_SUPPORT:I

    return p0
.end method

.method public getTranLedEllaSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_ELLA_SUPPORT:I

    return p0
.end method

.method public getTranLedGtSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_GT_SUPPORT:I

    return p0
.end method

.method public getTranLedHotSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_HOT_SUPPORT:I

    return p0
.end method

.method public getTranLedItelsSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_ITELS_SUPPORT:I

    return p0
.end method

.method public getTranLedNoteSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_NOTE_SUPPORT:I

    return p0
.end method

.method public getTranLedPovaSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_POVA_SUPPORT:I

    return p0
.end method

.method public getTranLedSparkSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_SPARK_SUPPORT:I

    return p0
.end method

.method public getTranLedSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LED_SUPPORT:I

    return p0
.end method

.method public getTranLightningMultiWindowSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_LIGHTNING_MULTI_WINDOW_SUPPORT:I

    return p0
.end method

.method public getTranMistouchSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_MISTOUCH_SUPPORT:I

    return p0
.end method

.method public getTranOpenwithSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OPENWITH_SUPPORT:I

    return p0
.end method

.method public getTranOperatorBookmarkSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OPERATORBOOKMARK_SUPPORT:I

    return p0
.end method

.method public getTranOsType()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OS_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getTranOsVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_OS_VERSION:Ljava/lang/String;

    return-object p0
.end method

.method public getTranPalmFind()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PALM_FIND_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranPalmFind120()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PALM_FIND_120_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranPrivacyHubSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PRIVACY_HUB_SUPPORT:I

    return p0
.end method

.method public getTranProductPersonalizedDisplayFlipSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PRODUCT_PERSONALIZED_DISPLAY_FLIP_SUPPORT:I

    return p0
.end method

.method public getTranPtRemoteLockSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_PT_REMOTE_LOCK_SUPPORT:I

    return p0
.end method

.method public getTranRepairModeSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_REPAIR_MODE_SUPPORT:I

    return p0
.end method

.method public getTranScreenrecordMicScaleLevel()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SCREENRECORD_MIC_SCALE_LEVEL:I

    return p0
.end method

.method public getTranScreenrecordSrSaSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SCREENRECORD_SR_SA_SUPPORT:I

    return p0
.end method

.method public getTranScreenshotSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SCREENSHOT_SUPPORT:I

    return p0
.end method

.method public getTranSensorIrLedBack()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SENSOR_IR_LED_BACK:Ljava/lang/String;

    return-object p0
.end method

.method public getTranSliderPanelSupport()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SLIDER_PANEL_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranSmartRecognitionSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SMART_RECOGNITION_SUPPORT:I

    return p0
.end method

.method public getTranSmartpanelSupport()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SMARTPANEL_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranSpaceSaver()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SPACESAVER_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranSplitScreenSnapModeSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SPLIT_SCREEN_SNAP_MODE_SUPPORT:I

    return p0
.end method

.method public getTranSplitScreenTBSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SPLIT_SCREEN_TOP_BOTTOM:I

    return p0
.end method

.method public getTranStkAthenaSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_STK_ATHENA_SUPPORT:I

    return p0
.end method

.method public getTranStkMpesaSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_STK_MPESA_SUPPORT:I

    return p0
.end method

.method public getTranSwMarket()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_SW_MARKET:Ljava/lang/String;

    return-object p0
.end method

.method public getTranUltraPowerSaveSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ULTRA_POWER_SAVE_SUPPORT:I

    return p0
.end method

.method public getTranVendorHrSpo2Timemillis()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VENDOR_HR_SPO2_TIMEMILLIS:Ljava/lang/String;

    return-object p0
.end method

.method public getTranVendorVib30Support()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VENDOR_VIB30_SUPPORT:Ljava/lang/String;

    return-object p0
.end method

.method public getTranVibrate10Support()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VIBRATE10_SUPPORT:I

    return p0
.end method

.method public getTranVibrate20Support()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VIBRATE20_SUPPORT:I

    return p0
.end method

.method public getTrancareUxdetectorRestSupport()I
    .locals 0

    sget p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_TRANCARE_UXDETECTOR_REST_SUPPORT:I

    return p0
.end method

.method public isAssistOnlineSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_ONLINE_SUPPORT:Z

    return p0
.end method

.method public isFaceIdHalSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->IS_FACEID_HAL_SUPPORT:Z

    return p0
.end method

.method public isOmdHifiSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->IS_OMD_HIFI_SUPPORT:Z

    return p0
.end method

.method public isTranAiphoneAnimation60hzSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIPHONE_ANIMATION_60HZ_SUPPORT:Z

    return p0
.end method

.method public isTranAiphoneSummarySupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIPHONE_SUMMARY_SUPPORT:Z

    return p0
.end method

.method public isTranAiphoneSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_AIPHONE_SUPPORT:Z

    return p0
.end method

.method public isTranAssistHighpowerWakeupSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_HIGHPOWER_WAKEUP_SUPPORT:Z

    return p0
.end method

.method public isTranAssistPowerWakeupSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_POWER_WAKEUP_SUPPORT:Z

    return p0
.end method

.method public isTranAssistSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_SUPPORT:Z

    return p0
.end method

.method public isTranAssistVoiceprintDynamicHotwordSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOICEPRINT_DYNAMIC_HOTWORD_SUPPORT:Z

    return p0
.end method

.method public isTranAssistVowDualmicSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOW_DUALMIC_SUPPORT:Z

    return p0
.end method

.method public isTranAssistVowSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_ASSIST_VOW_SUPPORT:Z

    return p0
.end method

.method public isTranDragdropSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_DRAGDROP_SUPPORT:Z

    return p0
.end method

.method public isTranRealvib05Support()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_REALVIB05_SUPPORT:Z

    return p0
.end method

.method public isTranVibrate30ZSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->TRAN_VIBRATE30_Z_SUPPORT:Z

    return p0
.end method

.method public isVendorHifiSupport()Z
    .locals 0

    sget-boolean p0, Lcom/transsion/hubsdk/os/TranBuild;->IS_VENDOR_HIFI_SUPPORT:Z

    return p0
.end method
