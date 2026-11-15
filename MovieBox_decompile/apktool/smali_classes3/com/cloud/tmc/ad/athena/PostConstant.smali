.class public Lcom/cloud/tmc/ad/athena/PostConstant;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "ad_ssp_show"

.field public static final EVENT_AD_FILLING_RESULT:Ljava/lang/String; = "ad_filling_result"

.field public static final EVENT_AD_PS_POPUP_CLICK:Ljava/lang/String; = "popup_click"

.field public static final EVENT_AD_PS_POPUP_IMP:Ljava/lang/String; = "popup_imp"

.field public static final EVENT_AD_SSP_CLICK:Ljava/lang/String; = "ad_ssp_click"

.field public static final EVENT_AD_SSP_CLOSE_AD:Ljava/lang/String; = "ad_ssp_close_ad"

.field public static final EVENT_AD_SSP_REQUEST:Ljava/lang/String; = "ad_ssp_request"

.field public static final EVENT_AD_SSP_REQUEST_PS:Ljava/lang/String; = "ad_ssp_request_ps_material"

.field public static final EVENT_AD_SSP_RETURN:Ljava/lang/String; = "ad_ssp_return"

.field public static final EVENT_AD_SSP_RETURN_PS:Ljava/lang/String; = "ad_ssp_return_ps_material"

.field public static final EVENT_AD_WEB_COMPLETE:Ljava/lang/String; = "ad_web_complete"

.field public static final EVENT_CLD_REQUEST:Ljava/lang/String; = "ad_cld_request"

.field public static final EVENT_CLD_RETURN:Ljava/lang/String; = "ad_cld_return"

.field public static final EVENT_DEEPLINK:Ljava/lang/String; = "deeplink"

.field public static final EVENT_FORM_INFO_SET:Ljava/lang/String; = "form_infor_set"

.field public static final EVENT_IMG:Ljava/lang/String; = "material_load"

.field public static final EVENT_MEDIA_CALL_REQUEST:Ljava/lang/String; = "media_call_request"

.field public static final EVENT_WEBVIEW_REDIRECT:Ljava/lang/String; = "ad_web_callback"

.field private static brand:Ljava/lang/String; = null

.field private static make:Ljava/lang/String; = null

.field private static mcc:Ljava/lang/String; = null

.field private static mccInteger:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static mnc:Ljava/lang/String; = null

.field private static mncInteger:Ljava/util/concurrent/atomic/AtomicInteger; = null

.field private static model:Ljava/lang/String; = null

.field private static osVersion:Ljava/lang/String; = null

.field private static screenDensity:I = -0x1

.field private static screenHeight:I = -0x1

.field private static screenWidth:I = -0x1

.field private static sdkVersion:Ljava/lang/String; = null

.field private static sdkVersionCode:I = 0x0

.field private static sessionId:Ljava/lang/String; = null

.field private static type:I = -0x1

.field private static userAgent:Ljava/lang/String;

.field private static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mccInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mncInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->brand:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->brand:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->brand:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getMake()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->make:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->make:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->make:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getMcc()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mcc:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/tmc/ad/athena/PostConstant;->mccInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mcc:Ljava/lang/String;

    .line 35
    .line 36
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mcc:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method

.method public static getMnc()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mnc:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Lcom/cloud/tmc/ad/athena/PostConstant;->mncInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->checkCanRetryInTimes(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x3

    .line 27
    if-lt v1, v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mnc:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->mnc:Ljava/lang/String;

    .line 36
    .line 37
    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->model:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->model:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->model:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->osVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getSystemVersion()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->osVersion:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->osVersion:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static getScreenDensity()I
    .locals 2

    .line 1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenDensity:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/core/utils/e;->b()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    float-to-int v0, v0

    .line 11
    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenDensity:I

    .line 12
    .line 13
    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenDensity:I

    .line 14
    .line 15
    return v0
.end method

.method public static getScreenHeight()I
    .locals 2

    .line 1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenHeight:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/core/utils/e;->e()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenHeight:I

    .line 11
    .line 12
    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenHeight:I

    .line 13
    .line 14
    return v0
.end method

.method public static getScreenWidth()I
    .locals 2

    .line 1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenWidth:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/core/utils/e;->f()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenWidth:I

    .line 11
    .line 12
    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->screenWidth:I

    .line 13
    .line 14
    return v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "1.0.61.06"

    .line 10
    .line 11
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersion:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersion:Ljava/lang/String;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getSdkVersionCode()I
    .locals 1

    .line 1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersionCode:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x425

    .line 6
    .line 7
    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersionCode:I

    .line 8
    .line 9
    :cond_0
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sdkVersionCode:I

    .line 10
    .line 11
    return v0
.end method

.method public static getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sessionId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/integration/utils/DeviceUtil;->getUUID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sessionId:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->sessionId:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static getType()I
    .locals 2

    .line 1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->type:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/core/deviceinfo/DeviceInfo;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    sput v0, Lcom/cloud/tmc/ad/athena/PostConstant;->type:I

    .line 16
    .line 17
    :cond_1
    sget v0, Lcom/cloud/tmc/ad/athena/PostConstant;->type:I

    .line 18
    .line 19
    return v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->userAgent:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/cloud/tmc/ad/utils/UserAgentUtil;->getUserAgent()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->userAgent:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->userAgent:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->versionName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/transsion/core/utils/a;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->versionName:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    sget-object v0, Lcom/cloud/tmc/ad/athena/PostConstant;->versionName:Ljava/lang/String;

    .line 20
    .line 21
    return-object v0
.end method
