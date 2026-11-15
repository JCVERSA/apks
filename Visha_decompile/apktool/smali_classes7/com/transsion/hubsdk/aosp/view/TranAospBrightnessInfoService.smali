.class public Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranBrightnessInfoAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospBrightnessInfoService"

.field private static sBrightnessInfoClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sClassName:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.view.Display"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sClassName:Ljava/lang/Class;

    const-string v0, "android.hardware.display.BrightnessInfo"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBrightnessInfo()Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;
    .locals 10

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;-><init>()V

    sget-object v1, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sClassName:Ljava/lang/Class;

    const-string v2, "getBrightnessInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v3, "brightness"

    invoke-static {v2, v3}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v2

    sget-object v3, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v4, "adjustedBrightness"

    invoke-static {v3, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    sget-object v4, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v5, "brightnessMinimum"

    invoke-static {v4, v5}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v4

    sget-object v5, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v6, "brightnessMaximum"

    invoke-static {v5, v6}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v5

    sget-object v6, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v7, "highBrightnessTransitionPoint"

    invoke-static {v6, v7}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v6

    sget-object v7, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v8, "highBrightnessMode"

    invoke-static {v7, v8}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    sget-object v8, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->sBrightnessInfoClassName:Ljava/lang/Class;

    const-string v9, "brightnessMaxReason"

    invoke-static {v8, v9}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iput v2, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    iput v3, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    iput v4, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    iput v5, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    iput v6, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    iput v7, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    sget-object v1, Lcom/transsion/hubsdk/aosp/view/TranAospBrightnessInfoService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrightnessInfo fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
