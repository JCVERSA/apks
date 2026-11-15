.class public Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranBrightnessInfoAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubBrightnessInfoService"


# instance fields
.field private mService:Lcom/transsion/hubsdk/view/ITranDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tran_display"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/view/ITranDisplay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/view/ITranDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;->mService:Lcom/transsion/hubsdk/view/ITranDisplay;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;->lambda$getBrightnessInfo$0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getBrightnessInfo$0()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;->mService:Lcom/transsion/hubsdk/view/ITranDisplay;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/hubsdk/view/ITranDisplay;->getBrightnessInfo()Lcom/transsion/hubsdk/view/TranBrightnessInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getBrightnessInfo()Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;
    .locals 3

    new-instance v0, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;-><init>()V

    new-instance v1, Lm2b;

    invoke-direct {v1, p0}, Lm2b;-><init>(Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;)V

    const-string p0, "tran_display"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute;->timeOutAndExceptionRun(Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;

    sget-object v0, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBrightnessInfo mTranBrightnessInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;

    invoke-direct {v0}, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;-><init>()V

    iget v1, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->brightness:F

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightness:F

    iget v1, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->adjustedBrightness:F

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mAdjustedBrightness:F

    iget v1, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->brightnessMinimum:F

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMinimum:F

    iget v1, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->brightnessMaximum:F

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaximum:F

    iget v1, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->highBrightnessTransitionPoint:F

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessTransitionPoint:F

    iget v1, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->highBrightnessMode:I

    iput v1, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mHighBrightnessMode:I

    iget p0, p0, Lcom/transsion/hubsdk/view/TranBrightnessInfo;->brightnessMaxReason:I

    iput p0, v0, Lcom/transsion/hubsdk/api/view/TranBrightnessInfo;->mBrightnessMaxReason:I

    return-object v0
.end method

.method public setService(Lcom/transsion/hubsdk/view/ITranDisplay;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/view/TranThubBrightnessInfoService;->mService:Lcom/transsion/hubsdk/view/ITranDisplay;

    return-void
.end method
