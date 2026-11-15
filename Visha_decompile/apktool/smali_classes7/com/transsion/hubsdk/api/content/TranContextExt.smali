.class public Lcom/transsion/hubsdk/api/content/TranContextExt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

.field private mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    .locals 7

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-ltz p3, :cond_0

    const v0, 0x7fffffff

    if-ge p3, v0, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input flag wrong"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "package name should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableAssetsOverlay()V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->enableAssetsOverlay()V

    return-void
.end method

.method public getDisplayId(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33151:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->getDisplayId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/content/TranThubContext;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/content/TranThubContext;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mThubService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/content/TranAospContext;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/content/TranAospContext;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/content/TranContextExt;->mAospService:Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    :cond_2
    return-object p1
.end method

.method public getUser(Landroid/content/Context;)Landroid/os/UserHandle;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33231:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->getUser(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 8

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->registerReceiverAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->registerReceiverForAllUsers(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "filter should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context should not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p2    # Landroid/content/Intent;
        .annotation build Landroid/annotation/RequiresPermission;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33131:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33331:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/content/TranContextExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/content/ITranContextAdapter;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
