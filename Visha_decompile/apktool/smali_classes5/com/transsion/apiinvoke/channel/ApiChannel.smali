.class public Lcom/transsion/apiinvoke/channel/ApiChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/channel/ApiChannel$ApiChannelHolder;,
        Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;,
        Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApiChannel"


# instance fields
.field private final channelCreator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;",
            ">;"
        }
    .end annotation
.end field

.field private final localChannelCreator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final localChannelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelMap:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelMap:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/channel/ApiChannel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/apiinvoke/channel/ApiChannel;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->lambda$addLocalChannelCreator$0(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized findLocalChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 3

    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->shouldHandle(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    .line 10
    instance-of v1, v0, Lcom/transsion/apiinvoke/channel/LocalChannel;

    if-nez v1, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object p1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const-string p1, "ApiChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found local channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized findLocalChannelByService(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->findServiceChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/channel/LocalChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized findOtherChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;->shouldHandle(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/transsion/apiinvoke/channel/LocalChannel;

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p1, "ApiChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found remote channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized findOtherChannelByService(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;->findServiceChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findOtherChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/transsion/apiinvoke/channel/ApiChannel;
    .locals 1

    invoke-static {}, Lcom/transsion/apiinvoke/channel/ApiChannel$ApiChannelHolder;->access$000()Lcom/transsion/apiinvoke/channel/ApiChannel;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$addLocalChannelCreator$0(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->getChannel()Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;->getChannel()Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized addChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addLocalChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    new-instance v2, Lsd;

    invoke-direct {v2, p1}, Lsd;-><init>(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public findChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 0

    invoke-static {p1}, Lcom/transsion/apiinvoke/common/router/ApiRouterManager;->findChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/common/router/ChannelEntity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p1, p1, Lcom/transsion/apiinvoke/common/router/ChannelEntity;->channelName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object p0

    return-object p0
.end method

.method public findLocalChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/channel/LocalChannel;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    .line 3
    invoke-direct {p0, v3, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    instance-of p0, v3, Lcom/transsion/apiinvoke/channel/LocalChannel;

    if-eqz p0, :cond_2

    move-object v2, v3

    check-cast v2, Lcom/transsion/apiinvoke/channel/LocalChannel;

    :cond_2
    return-object v2

    .line 6
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public findRemoteChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;

    invoke-direct {p0, v2, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findOtherChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllChannel(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    monitor-enter v1

    .line 17
    :try_start_0
    iget-object v2, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    .line 18
    invoke-direct {p0, v3, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 19
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 20
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object v2, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    monitor-enter v2

    .line 22
    :try_start_1
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;

    .line 23
    invoke-direct {p0, v3, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findOtherChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 24
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 25
    :cond_3
    monitor-exit v2

    return-object v0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 26
    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getAllChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getAllChannel(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    .line 6
    invoke-direct {p0, v2, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannelByService(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 8
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    monitor-enter v1

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;

    .line 11
    invoke-direct {p0, v2, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findOtherChannelByService(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 12
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 13
    :cond_4
    monitor-exit v1

    return-object p1

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 14
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    .line 10
    invoke-direct {p0, v2, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    monitor-enter v1

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;

    .line 15
    invoke-direct {p0, v2, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findOtherChannel(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 16
    monitor-exit v1

    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_0

    .line 17
    :cond_3
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 18
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getChannel(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/transsion/apiinvoke/channel/ApiChannel;->getChannel(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->localChannelCreator:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;

    .line 5
    invoke-direct {p0, v1, p2}, Lcom/transsion/apiinvoke/channel/ApiChannel;->findLocalChannelByService(Lcom/transsion/apiinvoke/channel/ApiChannel$LocalChannelCreator;Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit p1

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeChannel(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeChannelCreator(Lcom/transsion/apiinvoke/channel/ApiChannel$ChannelCreator;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/ApiChannel;->channelCreator:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
