.class public final Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;
.super Lcom/cloud/tmc/kernel/node/NodeInstance;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/structure/AppManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAppStack:Ljava/util/Stack;
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
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;-><init>(Landroid/os/Parcel;)V

    .line 4
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public declared-synchronized exitApp(Lcom/cloud/tmc/integration/structure/App;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-interface {p1}, Lcom/cloud/tmc/integration/structure/App;->exit()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->removeChild(Lcom/cloud/tmc/kernel/node/Node;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void
.end method

.method public declared-synchronized findApp(J)Lcom/cloud/tmc/integration/structure/App;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChild(J)Lcom/cloud/tmc/kernel/node/Node;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/integration/structure/App;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->getAppStack()Ljava/util/Stack;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    .line 5
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 6
    monitor-exit p0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized findAppByToken(J)Lcom/cloud/tmc/integration/structure/App;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildCount()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/kernel/node/NodeInstance;->getChildAt(I)Lcom/cloud/tmc/kernel/node/Node;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/cloud/tmc/integration/structure/App;

    .line 14
    .line 15
    invoke-interface {v2}, Lcom/cloud/tmc/integration/structure/App;->getStartToken()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    cmp-long v3, v3, p1

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-object v2

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    monitor-exit p0

    .line 31
    const/4 p1, 0x0

    .line 32
    return-object p1

    .line 33
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
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
    iget-object v1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

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
    const-string v0, "App"

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
    invoke-interface {v0}, Lcom/cloud/tmc/integration/proxy/AppFactory;->createApp()Lcom/cloud/tmc/integration/structure/node/AppNode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/structure/App;->init(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/kernel/node/NodeInstance;->pushChild(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 p2, 0x1

    .line 34
    if-le p1, p2, :cond_0

    .line 35
    .line 36
    const-string p1, "mAppStack size > 1 !!!"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cloud/tmc/integration/structure/impl/AppManagerImpl;->mAppStack:Ljava/util/Stack;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-object v0

    .line 51
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/kernel/node/NodeInstance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
