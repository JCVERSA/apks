.class public Lcom/transsion/hubsdk/api/service/dream/TranDreamService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;,
        Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranRemoteCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDreamService"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;

.field private final mHandler:Landroid/os/Handler;

.field private mThubService:Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 1
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x1
    .end annotation

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;->finishSelf(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDreamService"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mThubService:Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mThubService:Lcom/transsion/hubsdk/core/service/dream/TranThubDreamService;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDreamService"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mAospService:Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->mAospService:Lcom/transsion/hubsdk/aosp/service/dream/TranAospDreamService;

    :cond_2
    return-object p1
.end method

.method public getTranDreamServiceWrapper(Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)Landroid/os/IBinder;
    .locals 2

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;

    move-result-object v0

    new-instance v1, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService$1;-><init>(Lcom/transsion/hubsdk/api/service/dream/TranDreamService;Lcom/transsion/hubsdk/api/service/dream/TranDreamService$ITranDreamService;)V

    invoke-interface {v0, v1}, Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;->getTranDreamServiceWrapper(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;->startDozing(Landroid/os/IBinder;II)V

    return-void
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33181:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/service/dream/TranDreamService;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/service/dream/ITranDreamServiceAdapter;->stopDozing(Landroid/os/IBinder;)V

    return-void
.end method
