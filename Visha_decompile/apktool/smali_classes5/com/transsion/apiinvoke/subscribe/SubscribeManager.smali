.class public Lcom/transsion/apiinvoke/subscribe/SubscribeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
.implements Lcom/transsion/apiinvoke/subscribe/OnSubscribeCuntChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscribeManager"

.field private static volatile instanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/transsion/apiinvoke/subscribe/Publisher$Host;",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeManager;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mDefault:Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

.field private static sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;


# instance fields
.field private mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

.field private final mSubscribeChangeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubscribeCuntChangeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/OnSubscribeCuntChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSubscriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;

    return-void
.end method

.method private constructor <init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    return-void
.end method

.method public static declared-synchronized getAllSubscribeHostInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {v3, v1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->updateSubscribeInfoList(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getDefault()Lcom/transsion/apiinvoke/subscribe/SubscribeManager;
    .locals 4

    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mDefault:Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mDefault:Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    sget-object v2, Lcom/transsion/apiinvoke/subscribe/Publisher;->DEFAULT:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-direct {v1, v2}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;-><init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)V

    sput-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mDefault:Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    sget-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    sget-object v2, Lcom/transsion/apiinvoke/subscribe/Publisher;->DEFAULT:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    sget-object v3, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mDefault:Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mDefault:Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    return-object v0
.end method

.method public static getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;
    .locals 3

    .line 2
    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    invoke-direct {v1, p0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;-><init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)V

    .line 5
    sget-object v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    .line 7
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-direct {v0, p0, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized hasGlobalSubscribeNotify()Z
    .locals 2

    const-class v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static hasLocalSubscribe()Z
    .locals 4

    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    iget-object v3, v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private notifySubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    .locals 5

    .line 6
    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;->onSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    .line 10
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;->onSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    :try_start_2
    const-string v2, "SubscribeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifySubscribe error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 14
    :cond_2
    monitor-exit v0

    return-void

    .line 15
    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    .line 16
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private notifySubscribe(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {v2, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->notifySubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V

    .line 5
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyUnSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    .locals 5

    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;->onUnSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;->onUnSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "SubscribeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUnSubscribe error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private publishData(Ljava/util/Map;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;",
            ">;>;",
            "Lcom/transsion/apiinvoke/subscribe/Publisher;",
            "Ljava/io/Serializable;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p0, p2, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;

    if-nez p1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    :try_start_0
    invoke-interface {p1, p2, p3}, Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;->onPublishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishData error  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubscribeManager"

    invoke-static {v0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static declared-synchronized refreshSubscribeCount()V
    .locals 5

    const-class v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->instanceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    iget-object v3, v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    iget-object v3, v2, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->notifySubscribe(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setGlobalSubscribeNotify(Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;)V
    .locals 1

    const-class v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private shouldNotifyCountChange(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->sGlobalSubscribeNotify:Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-interface {v0, p0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager$SubscribeCenterCountChangeListener;->refreshSubscribeCenter(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static declared-synchronized updateSubscribeInfoList(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/apiinvoke/subscribe/Publisher$Host;",
            "Ljava/util/List<",
            "Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->getInstance(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/subscribe/SubscribeManager;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo$SubscribeTypeCount;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;

    invoke-direct {v1, p0, v2}, Lcom/transsion/apiinvoke/subscribe/SubscribeHostInfo;-><init>(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized addOnSubscribeChangeListener(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
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

.method public declared-synchronized addOnSubscribeCuntChangeListener(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/OnSubscribeCuntChangeListener;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->shouldNotifyCountChange(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->shouldNotifyCountChange(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public addSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    const-string v1, "SubscribeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSubscribe host "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {v3}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " matcher "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callback count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {v1, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->notifySubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearSubscribeChangeListener()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearSubscribeCuntChangeListener()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized countLocalSubscribe(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string v2, "*"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    monitor-exit p0

    return v0

    :cond_3
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return v1

    :cond_5
    :goto_3
    monitor-exit p0

    return v1

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onSubscribeCountChange(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    .locals 5

    const-string v0, "SubscribeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeCountChange publisher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " subscribeCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    iget-object v0, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/apiinvoke/subscribe/OnSubscribeCuntChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/transsion/apiinvoke/subscribe/OnSubscribeCuntChangeListener;->onSubscribeCountChange(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "SubscribeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscribeCountChange error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1
    const-string p0, "SubscribeManager"

    const-string p1, "publishData error, publisher == null"

    invoke-static {p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_1
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 5
    const-string v1, "SubscribeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copy subscriber size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-direct {p0, p2, p1, p3}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->publishData(Ljava/util/Map;Lcom/transsion/apiinvoke/subscribe/Publisher;Ljava/io/Serializable;)V

    .line 8
    const-string p2, "SubscribeManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "publishData success host "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " matcher "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/transsion/apiinvoke/subscribe/Publisher;->matcher:Ljava/lang/String;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p2, p0, p1}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public publishToChannel(Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->channel:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->apiName:Ljava/lang/String;

    invoke-static {v0, p0, p3}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p1, p0, p2, p4}, Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;->publishData(Lcom/transsion/apiinvoke/subscribe/Publisher;Lcom/transsion/apiinvoke/invoke/InvokeChain;Ljava/io/Serializable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "publishToChannel error  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SubscribeManager"

    invoke-static {p1, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized removeOnSubscribeChangeListener(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/OnSubscribeChangeListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeChangeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
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

.method public removeOnSubscribeCuntChangeListener(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/OnSubscribeCuntChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscribeCuntChangeMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSubscribe(Ljava/lang/String;Lcom/transsion/apiinvoke/subscribe/SubscribeCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mSubscriberMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p2, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-static {p2, p1}, Lcom/transsion/apiinvoke/subscribe/Publisher;->create(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;Ljava/lang/String;)Lcom/transsion/apiinvoke/subscribe/Publisher;

    move-result-object p2

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->notifyUnSubscribe(Lcom/transsion/apiinvoke/subscribe/Publisher;I)V

    const-string p2, "SubscribeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSubscribe host "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/apiinvoke/subscribe/SubscribeManager;->mPublisherHost:Lcom/transsion/apiinvoke/subscribe/Publisher$Host;

    invoke-virtual {p0}, Lcom/transsion/apiinvoke/subscribe/Publisher$Host;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " matcher "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/apiinvoke/common/ApiInvokeLog;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
