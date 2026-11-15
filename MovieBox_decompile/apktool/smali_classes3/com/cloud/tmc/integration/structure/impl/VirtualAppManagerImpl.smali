.class public final Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;
.super Lcom/cloud/tmc/kernel/node/NodeInstance;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/structure/VirtualAppManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0015\u001a\u00020\u0011H\u0016J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J&\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u000bH\u0016R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;",
        "Lcom/cloud/tmc/kernel/node/NodeInstance;",
        "Lcom/cloud/tmc/integration/structure/VirtualAppManager;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "()V",
        "mVirtualAppStack",
        "Ljava/util/Stack;",
        "Lcom/cloud/tmc/integration/structure/App;",
        "describeContents",
        "",
        "exitApp",
        "",
        "targetApp",
        "findApp",
        "id",
        "",
        "appId",
        "",
        "findAppByToken",
        "startToken",
        "getAppStack",
        "startApp",
        "startParams",
        "Landroid/os/Bundle;",
        "sceneParams",
        "updateAppInfo",
        "app",
        "writeToParcel",
        "flags",
        "CREATOR",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl$CREATOR;


# instance fields
.field private final mVirtualAppStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/structure/App;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->CREATOR:Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl$CREATOR;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public declared-synchronized exitApp(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1

    .line 13
    :cond_0
    :goto_0
    monitor-exit p0

    .line 14
    return-void
.end method

.method public declared-synchronized findApp(J)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    monitor-enter p0

    .line 1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->getAppStack()Ljava/util/Stack;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/tmc/integration/structure/App;

    .line 5
    invoke-interface {v1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 6
    monitor-exit p0

    return-object v1

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findAppByToken(J)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    monitor-exit p0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1
.end method

.method public declared-synchronized getAppStack()Ljava/util/Stack;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/cloud/tmc/integration/structure/App;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/Stack;

    .line 3
    .line 4
    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    return-object v0

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw v0
.end method

.method public declared-synchronized startApp(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Lcom/cloud/tmc/integration/structure/App;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "VirtualApp"

    .line 3
    .line 4
    const-string v1, "Start create app"

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->printPerformanceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/cloud/tmc/integration/proxy/AppFactory;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/tmc/integration/proxy/AppFactory;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/AppFactory;->createVirtualApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "get(AppFactory::class.java).createVirtualApp()"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/App;->init(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p1
.end method

.method public declared-synchronized updateAppInfo(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "app"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    if-ltz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    .line 26
    .line 27
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/cloud/tmc/integration/structure/impl/VirtualAppManagerImpl;->mVirtualAppStack:Ljava/util/Stack;

    .line 42
    .line 43
    invoke-virtual {v2, v0, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :cond_0
    :goto_1
    if-gez v1, :cond_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    move v0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_2
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    const-string v0, "parcel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
