.class public Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;
.super Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/Sj;
.source "source.java"


# static fields
.field private static final Sj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->Sj:Ljava/util/HashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/Sj;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Sj()Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->sP:Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public broadcastPermissionListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->Sj:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/os/RemoteCallbackList;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_3

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    if-nez p2, :cond_1

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onGranted()V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v2, p2}, Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;->onDenied(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public registerPermissionListener(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ICommonPermissionListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 10
    .line 11
    .line 12
    sget-object p2, Lcom/bytedance/sdk/openadsdk/multipro/aidl/Sj/TKC;->Sj:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method
