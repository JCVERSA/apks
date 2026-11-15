.class public Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;
    }
.end annotation


# instance fields
.field private onDestroyCallback:Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;

.field private final registeredMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->onDestroyCallback:Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public containsEventKey(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->onDestroyCallback:Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter$OnDestroyCallback;->onDestroy()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ge v0, v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;

    .line 31
    .line 32
    invoke-interface {v1, p2}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;->onEvent(Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    :goto_1
    return-void
.end method

.method public register(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public unregister(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventSubscriber;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEventCenter;->registeredMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
