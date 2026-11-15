.class public Lcom/hisavana/common/bean/AdSourceConfig;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static handler:Landroid/os/Handler; = null

.field public static isUseMediaView:Z = true


# instance fields
.field public appIconId:I

.field public appId:Ljava/lang/String;

.field public defaultMaterialMaxSize:I

.field public defaultVersion:J

.field public isClosePangleWebFileLock:Z

.field public isDebug:Z

.field public isEnableRewardedToast:Z

.field public isEnableWebRecommendFeature:Z

.field public isInitAdMob:Z

.field public isInitAlliance:Z

.field public isLite:Z

.field public pangleAppId:Ljava/lang/String;

.field public pkgEvn:Z

.field public shouldOptimizeImageLoading:Z

.field public testDevice:Z

.field public vidAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isInitAdMob:Z

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    iput-object v1, p0, Lcom/hisavana/common/bean/AdSourceConfig;->vidAppId:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->shouldOptimizeImageLoading:Z

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableRewardedToast:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isEnableWebRecommendFeature:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/hisavana/common/bean/AdSourceConfig;->isClosePangleWebFileLock:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public createHandler()V
    .locals 2

    .line 1
    sget-object v0, Lcom/hisavana/common/bean/AdSourceConfig;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 7
    .line 8
    const-string v1, "loadad_handler_thread"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lcom/hisavana/common/bean/AdSourceConfig;->handler:Landroid/os/Handler;

    .line 26
    .line 27
    return-void
.end method
