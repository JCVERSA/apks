.class public Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;
.super Landroid/service/dreams/IDreamService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranDreamServiceWrapper"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;)V
    .locals 2

    invoke-direct {p0}, Landroid/service/dreams/IDreamService$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->lambda$attach$1(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->lambda$detach$2()V

    return-void
.end method

.method public static synthetic c(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->lambda$attach$0(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->lambda$wakeUp$3()V

    return-void
.end method

.method private static synthetic lambda$attach$0(Landroid/os/IRemoteCallback;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "TranAospDreamServiceWrapperExt"

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResult started:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IRemoteCallback  sendResult fail"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$attach$1(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    new-instance v0, Lgwa;

    invoke-direct {v0, p3}, Lgwa;-><init>(Landroid/os/IRemoteCallback;)V

    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;->attach(Landroid/os/IBinder;ZLcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranRemoteCallback;)V

    return-void
.end method

.method private synthetic lambda$detach$2()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;->detach()V

    return-void
.end method

.method private synthetic lambda$wakeUp$3()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;->wakeUp()V

    return-void
.end method


# virtual methods
.method public attach(Landroid/os/IBinder;ZZLandroid/os/IRemoteCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "attach started:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TranAospDreamServiceWrapperExt"

    invoke-static {v0, p3}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lewa;

    invoke-direct {v0, p0, p1, p2, p4}, Lewa;-><init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public comeToFront()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public detach()V
    .locals 2

    const-string v0, "TranAospDreamServiceWrapperExt"

    const-string v1, "detach"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lfwa;

    invoke-direct {v1, p0}, Lfwa;-><init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 2

    const-string v0, "TranAospDreamServiceWrapperExt"

    const-string v1, "wakeUp"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mTranDreamService:Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$ITranDreamService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Ldwa;

    invoke-direct {v1, p0}, Ldwa;-><init>(Lcom/transsion/hubsdk/aosp/dream/TranAospDreamServiceWrapperExt$TranDreamServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
