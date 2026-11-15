.class public Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/content/pm/ITranApplicationInfoManagerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubApplicationInfo"


# instance fields
.field private mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

.field private mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    const-string v0, "application_info"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    return-void
.end method

.method private getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;
    .locals 2

    iget-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    invoke-static {}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mTranApplicationInfo:Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    return-object p0
.end method


# virtual methods
.method public getIconRes(Landroid/content/pm/ApplicationInfo;)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->getIconRes(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    return p0
.end method

.method public isDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isInstantApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isInstantApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isPartiallyDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isPartiallyDirectBootAware(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isPrivilegedApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->getTranApplicationInfo()Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/content/pm/TranApplicationInfo;->isPrivilegedApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public isProduct(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isProduct(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProduct exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProduct res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSignedWithPlatformKey(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isSignedWithPlatformKey(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSignedWithPlatformKey exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSignedWithPlatformKey res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemApp exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemApp res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSystemExt(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;->isSystemExt(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSystemExt exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSystemExt res:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setService(Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/transsion/hubsdk/core/content/pm/TranThubApplicationInfo;->mService:Lcom/transsion/hubsdk/content/pm/ITranApplicationInfoManager;

    return-void
.end method
