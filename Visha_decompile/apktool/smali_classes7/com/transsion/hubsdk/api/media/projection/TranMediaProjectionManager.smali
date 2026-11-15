.class public Lcom/transsion/hubsdk/api/media/projection/TranMediaProjectionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/media/projection/TranAospMediaProjectionManager;

.field private mThubService:Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPutIBindIntent(ILjava/lang/String;IZ)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/media/projection/TranMediaProjectionManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/projection/ITranMediaProjectionManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/media/projection/ITranMediaProjectionManagerAdapter;->getPutIBindIntent(ILjava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/media/projection/ITranMediaProjectionManagerAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/media/projection/TranMediaProjectionManager;->mThubService:Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/media/projection/TranMediaProjectionManager;->mThubService:Lcom/transsion/hubsdk/core/media/projection/TranThubMediaProjectionManager;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/media/projection/TranMediaProjectionManager;->mAospService:Lcom/transsion/hubsdk/aosp/media/projection/TranAospMediaProjectionManager;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/media/projection/TranAospMediaProjectionManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/media/projection/TranAospMediaProjectionManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/media/projection/TranMediaProjectionManager;->mAospService:Lcom/transsion/hubsdk/aosp/media/projection/TranAospMediaProjectionManager;

    :cond_2
    return-object p1
.end method
