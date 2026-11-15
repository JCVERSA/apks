.class public Lcom/transsion/hubsdk/aosp/os/TranAospBuild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranBuildAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospBuild"

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.os.Build"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->sClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    return-void
.end method


# virtual methods
.method public getAicoreOfflineLlmSupport()I
    .locals 3

    const-string v0, "ro.tr_aiservice.aisettings_offlinellm.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.aicore.offline_llm_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getApmLimitBlockModeSupport()I
    .locals 3

    const-string v0, "tr_apm.limit_block_mode"

    const/4 v1, 0x1

    const-string v2, "sys.apm.limit_block_mode"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBoardPlatform()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.board.platform"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBoardPlatform fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getBuildDisplayId()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.build.display.id"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBuildDisplayId fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getBuildNumber()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_build.build_number"

    const-string v1, ""

    const-string v2, "ro.build_number"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChargingAnimationSupport()I
    .locals 3

    const-string v0, "ro.tr_charging.animation.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_charging_animation_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getChargingAnimationWirePowerSupport()I
    .locals 3

    const-string v0, "ro.tr_charging.animation_wire_power"

    const/4 v1, 0x0

    const-string v2, "ro.os.charging_animation_wire_power"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getChargingAnimationWirelessPowerSupport()I
    .locals 3

    const-string v0, "ro.tr_charging.animation_wireless_power"

    const/4 v1, 0x0

    const-string v2, "ro.os.charging_animation_wireless_power"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getChargingPowerHideSupport()I
    .locals 3

    const-string v0, "ro.tr_charging.power_hide"

    const/4 v1, 0x0

    const-string v2, "ro.os_charging_power_hide"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getChildModeOpenSupport()I
    .locals 3

    const-string v0, "tr_childmode.open.status"

    const/4 v1, 0x0

    const-string v2, "sys.child_mode_open"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getChildmodeSupport()I
    .locals 3

    const-string v0, "ro.tr_childmode.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.childmode.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDynamicallyStkIconSupport()I
    .locals 3

    const-string v0, "ro.tr_stk.dynamic_icon.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.dynamically_stk_icon_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getFansOnSaleSupport()I
    .locals 3

    const-string v0, "persist.tr_build.onsale"

    const/4 v1, 0x0

    const-string v2, "persist.sys.fans.onsale"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGeniexEntranceSupport()I
    .locals 3

    const-string v0, "ro.tr_telephony.vsim_geniex_entrance.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_geniex_entrance_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGeniexSupport()I
    .locals 3

    const-string v0, "ro.tr_telephony.vsim.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_geniex_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGotiiEntranceSupport()I
    .locals 3

    const-string v0, "ro.tr_telephony.vsim_gotii_entrance.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_gotii_entrance_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getKeyguardPovaThemeSupport()I
    .locals 3

    const-string v0, "ro.tr_keyguard.pova_theme.support"

    const/4 v1, 0x0

    const-string v2, "ro.os.keyguard_pova_theme_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getKeyguardThemeSupport()I
    .locals 3

    const-string v0, "ro.tr_keyguard.theme.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_keyguard_theme_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getKolunGoSupport()I
    .locals 3

    const-string v0, "ro.tr_aiservice.kolungo.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_kolun_go_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getKolunSupport()I
    .locals 3

    const-string v0, "ro.tr_aiservice.kolun.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_kolun_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNoteAiBgSupport()I
    .locals 3

    const-string v0, "ro.tr_note.ai_bg.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_note_ai_bg_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNoteAiDrawSupport()I
    .locals 3

    const-string v0, "ro.tr_note.ai_draw.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_note_ai_draw_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNoteCanvasSupport()I
    .locals 3

    const-string v0, "ro.tr_note.canvas.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_note_canvas_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNoteFansLinkSupport()I
    .locals 3

    const-string v0, "ro.tr_note.fans_link.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_note_fans_link_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getNoteSuniaPenSupport()I
    .locals 3

    const-string v0, "ro.tr_note.sunia_pen.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_note_sunia_pen_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getOsCustomizedSplitScreenSupport()I
    .locals 3

    const-string v0, "ro.tr_splitscreen.customized.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_customized_split_screen_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getProductBrand()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.product.brand"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProductBrand fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPropertyByBool fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPropertyByInt fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/transsion/hubsdk/common/version/TranThubVersionUtil;->isRecentAndroidW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {p0, p2, p3}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    sget-object p1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getPropertyByString fail: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 4

    sget-object p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->sClassName:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "getSerial"

    invoke-static {p0, v1, v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSerial fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getSysOobeCountry()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.tr_oobe.country"

    const-string v1, ""

    const-string v2, "persist.sys.oobe_country"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSysUserExperience()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "persist.sys.user_experience"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSysUserExperience fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getTranAiKeySupport()I
    .locals 3

    const-string v0, "ro.tr_aiassistant.aikey.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.tran.ai.key.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranAiSubtitlesSupport()I
    .locals 3

    const-string v0, "ro.tr_aiservice.aicorespeech_subtitle.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.ai_subtitles_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranAicoreLlmSupport()I
    .locals 3

    const-string v0, "ro.tr_aiservice.aicorellm.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.sys.tran.aicore_llm_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranAirTransferSupport()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_airtransfer.feature.support"

    const-string v1, ""

    const-string v2, "ro.product.tran_air_transfer_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranAssistVoiceprint()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_aiassistant.vow.solution"

    const-string v1, "aispeech"

    const-string v2, "ro.sys.tran.assist_voiceprint_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranBom()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_build.bom"

    const-string v1, ""

    const-string v2, "ro.tran.bom"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranChooserPrivacySupport()I
    .locals 3

    const-string v0, "ro.tr_sharevia.chooser.privacy.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_share_privacy_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranCloudserverSupport()I
    .locals 3

    const-string v0, "ro.tr_cloudserver.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_cloud_server_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranCutepetSupport()I
    .locals 3

    const-string v0, "ro.tr_cutepet.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_cutepet_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranDualSysSupport()I
    .locals 3

    const-string v0, "ro.tr_privacy.dual_sys.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran.dual_sys_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranDynamicbarSupport()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_dynamicbar.support"

    const-string v1, ""

    const-string v2, "ro.os_dynamicbar_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranEyeCareSupport()I
    .locals 3

    const-string v0, "ro.tr_game.eye_care.support"

    const/4 v1, 0x0

    const-string v2, "ro.tran_eye_care_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranFlipScreenSupport()I
    .locals 3

    const-string v0, "ro.tr_project.flip_screen.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_flip_screen_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranFoldableScreenSupport()I
    .locals 3

    const-string v0, "ro.tr_project.foldable_screen.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_foldable_screen_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports10Support()I
    .locals 3

    const-string v0, "ro.tr_game.tp_esports10.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_game_tp_esports10.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports20Support()I
    .locals 3

    const-string v0, "ro.tr_game.tp_esports20.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_game_tp_esports20.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranGameTpEsports30Support()I
    .locals 3

    const-string v0, "ro.tr_game.tp_esports30.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_game_tp_esports30.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranGlobalguideSupport()I
    .locals 3

    const-string v0, "ro.tr_globalguide.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_globalguide_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranHrSpo2Support()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.odm.tr_sensor.hr_spo2.support"

    const-string v1, ""

    const-string v2, "ro.vendor.tran.hr_spo2.option"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranHrvStressSupport()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.odm.tr_sensor.hrv_stress.support"

    const-string v1, ""

    invoke-virtual {p0, v0, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranLedCamonSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.camon.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_camon_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedControlCenterSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.controlcenter.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_control_center_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedEllaSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.ella.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_ella_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedGtSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.gt.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_gt_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedHotSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.hot.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_hot_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedItelsSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.itels.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_itels_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedNoteSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.note.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_note_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedPovaSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.pova.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_pova_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedSparkSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.spark.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_spark_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLedSupport()I
    .locals 3

    const-string v0, "persist.tr_lighting.feature.support"

    const/4 v1, 0x0

    const-string v2, "persist.sys.tran_led_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranLightningMultiWindowSupport()I
    .locals 3

    const-string v0, "ro.tr_multiwindow.lightning_multi_window.support"

    const/4 v1, 0x1

    const-string v2, "ro.product.lightning_multi_window.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranMistouchSupport()I
    .locals 3

    const-string v0, "ro.tr_mistouch.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.vendor.tran_mistouch_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranOpenwithSupport()I
    .locals 3

    const-string v0, "ro.tr_sharevia.openwith.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_openwith_wps_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranOperatorBookmarkSupport()I
    .locals 3

    const-string v0, "ro.tr_tocc.bookmark.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_operatorbookmark_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranOsType()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.tranos.type"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTranOsType fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getTranOsVersion()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.tranos.version"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTranOsVersion fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getTranPalmFind()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_palm_find.feature.support"

    const-string v1, "1"

    const-string v2, "ro.tran_palm_find_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPalmFind120()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_palm_find.bluetooth_headset.feature.support"

    const-string v1, "1"

    const-string v2, "ro.tran_palm_find_1.2.0_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranPrivacyHubSupport()I
    .locals 3

    const-string v0, "ro.tr_privacy.privacy_hub.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_privacy_hub_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranProductPersonalizedDisplayFlipSupport()I
    .locals 3

    const-string v0, "ro.tr_build.personalized_display_flip.support"

    const/4 v1, 0x0

    const-string v2, "ro.product.personalized_display_flip.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranPtRemoteLockSupport()I
    .locals 3

    const-string v0, "ro.tr_telephony.pt.remote.lock.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_pt.remote_lock.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranRepairModeSupport()I
    .locals 3

    const-string v0, "ro.tr_privacy.repair_mode.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_repair_mode_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranScreenrecordMicScaleLevel()I
    .locals 3

    const-string v0, "ro.tr_screenrecord.mic_scale_level"

    const/4 v1, 0x1

    const-string v2, "ro.os_screenrecord_mic_scale_level"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranScreenrecordSrSaSupport()I
    .locals 3

    const-string v0, "ro.tr_screenrecord.sr_sa_0019_009.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_screenrecord_sr_sa_0019_009_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranScreenshotSupport()I
    .locals 3

    const-string v0, "ro.tr_screenshot.support"

    const/4 v1, 0x1

    const-string v2, "ro.os_supershot_apk"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranSensorIrLedBack()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.odm.tr_sensor.ir_led_back.support"

    const-string v1, ""

    const-string v2, "ro.vendor.tran.ir.led.back"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSliderPanelSupport()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_smartpanel.os_slider_panel.support"

    const-string v1, ""

    const-string v2, "ro.os_slider_panel_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSmartRecognitionSupport()I
    .locals 3

    const-string v0, "ro.tr_smartrecognition.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_kolun_exocr_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranSmartpanelSupport()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_smartpanel.os_smartpanel.support"

    const-string v1, ""

    const-string v2, "ro.os_smartpanel_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSpaceSaver()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_spacesaver.feature.support"

    const-string v1, "1"

    const-string v2, "ro.transsion_spacesaver.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranSplitScreenSnapModeSupport()I
    .locals 3

    const-string v0, "ro.tr_splitscreen.snapmode.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_split_screen_snap_mode.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranSplitScreenTBSupport()I
    .locals 3

    const-string v0, "ro.tr_splitscreen.topbottom.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_split_screen.top_bottom"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranStkAthenaSupport()I
    .locals 3

    const-string v0, "ro.tr_stk.athena.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_stk_athena_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranStkMpesaSupport()I
    .locals 3

    const-string v0, "ro.tr_stk.mpesa.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.tran_stk_mpesa_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranSwMarket()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_build.sw_market"

    const-string v1, ""

    const-string v2, "ro.tran.sw.market"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranUltraPowerSaveSupport()I
    .locals 3

    const-string v0, "ro.tr_battery.ultra_power_save.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.tran.ultra.power.save.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranVendorHrSpo2Timemillis()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.odm.tr_sensor.hr_spo2.timeoutmillis"

    const-string v1, ""

    const-string v2, "ro.vendor.tran.hr_spo2.test_time"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranVendorVib30Support()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.tr_vibrate.vibrate30.feature.support"

    const-string v1, ""

    const-string v2, "ro.vendor.tran_vib3_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTranVibrate10Support()I
    .locals 3

    const-string v0, "ro.tr_vibrate.vibrate10.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.tran_vibrate_ontouch.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTranVibrate20Support()I
    .locals 3

    const-string v0, "ro.tr_vibrate.vibrate20.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.tran_vibrate_ontouch2.0.support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getTrancareUxdetectorRestSupport()I
    .locals 3

    const-string v0, "ro.tr_aiservice.uxdetector_rest.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.vendor.trancare.uxdetectorrest"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isAssistOnlineSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.online.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.product.assist_online"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isFaceIdHalSupport()Z
    .locals 3

    :try_start_0
    const-string v0, "1"

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.faceid.hal.support"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFaceIdHalSupport fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOmdHifiSupport()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.odm.tr_audio_hifi.feature.support"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOmdHifiSupport fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isTranAiphoneAnimation60hzSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.aiphone_animation_60hz.feature.config"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.aiphone_animation_60hz"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneSummarySupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.aiphone_summany.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.aiphone_summary_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAiphoneSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.aiphone.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.aiphone_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAssistHighpowerWakeupSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.vow.highpower.support"

    const/4 v1, 0x1

    const-string v2, "ro.sys.tran.assist_highpower_wakeup"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAssistPowerWakeupSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.power_wakeup.feature.support"

    const/4 v1, 0x1

    const-string v2, "ro.sys.tran.assist_power_wakeup_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAssistSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.assist_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAssistVoiceprintDynamicHotwordSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.vow.dynamicswitch.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.assist_voiceprint_dynamic_hotword"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAssistVowDualmicSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.vow.dualmic.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.assist_vow_dualmic"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranAssistVowSupport()Z
    .locals 3

    const-string v0, "ro.tr_aiassistant.vow.support"

    const/4 v1, 0x0

    const-string v2, "ro.sys.tran.assist_vow_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranDragdropSupport()Z
    .locals 3

    const-string v0, "ro.tr_dragdrop.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.os_dragdrop_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranRealvib05Support()Z
    .locals 3

    const-string v0, "ro.tr_vibrate.realvib05.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.vendor.tran_0012ir"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isTranVibrate30ZSupport()Z
    .locals 3

    const-string v0, "ro.tr_vibrate.vibrate30_z.feature.support"

    const/4 v1, 0x0

    const-string v2, "ro.vendor.tran_vib3_z_support"

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->getPropertyByBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isVendorHifiSupport()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->mTranAospSystemProperties:Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;

    const-string v1, "ro.vendor.tran.hifiaudio_support"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/hubsdk/aosp/os/TranAospSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/hubsdk/aosp/os/TranAospBuild;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVendorHifiSupport fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
