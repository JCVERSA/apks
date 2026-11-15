.class public final Lio/appmetrica/analytics/impl/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Vc;
.implements Lio/appmetrica/analytics/impl/Ml;
.implements Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public volatile c:Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rp"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bk;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lio/appmetrica/analytics/impl/I7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/I7;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/bk;->c:Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 6

    .line 1
    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    .line 2
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->a()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->b()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/zg;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->c()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Hl;->d()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lio/appmetrica/analytics/impl/zg;-><init>(JJ)V

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    .line 9
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v4, Lio/appmetrica/analytics/impl/ak;

    .line 12
    iget-object v5, p1, Lio/appmetrica/analytics/impl/Hl;->B:Ljava/util/Map;

    .line 13
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    invoke-direct {v4, v0, v1, v2}, Lio/appmetrica/analytics/impl/ak;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigMetaInfo;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v3}, Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;->getRemoteConfigUpdateListener()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener;

    move-result-object v2

    invoke-interface {v2, v4}, Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigUpdateListener;->onRemoteConfigUpdated(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lio/appmetrica/analytics/impl/bk;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    instance-of v0, p1, Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    if-eqz v0, :cond_0

    .line 19
    check-cast p1, Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/bk;->c:Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    :cond_0
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/impl/Hl;)V
    .locals 9

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    .line 23
    :try_start_0
    new-instance v3, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;

    .line 24
    iget-object v4, p2, Lio/appmetrica/analytics/impl/Hl;->d:Ljava/lang/String;

    .line 25
    iget-object v5, p2, Lio/appmetrica/analytics/impl/Hl;->a:Ljava/lang/String;

    .line 26
    iget-object v6, p2, Lio/appmetrica/analytics/impl/Hl;->b:Ljava/lang/String;

    .line 27
    invoke-direct {v3, v4, v5, v6}, Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v4, Lio/appmetrica/analytics/impl/zg;

    .line 29
    iget-wide v5, p2, Lio/appmetrica/analytics/impl/Hl;->v:J

    .line 30
    iget-wide v7, p2, Lio/appmetrica/analytics/impl/Hl;->u:J

    .line 31
    invoke-direct {v4, v5, v6, v7, v8}, Lio/appmetrica/analytics/impl/zg;-><init>(JJ)V

    .line 32
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 33
    new-instance v6, Lio/appmetrica/analytics/impl/ak;

    .line 34
    iget-object v7, p2, Lio/appmetrica/analytics/impl/Hl;->B:Ljava/util/Map;

    .line 35
    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 36
    invoke-direct {v6, v3, v4, v5}, Lio/appmetrica/analytics/impl/ak;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/SdkIdentifiers;Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigMetaInfo;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v2, p1, v6}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->initServiceSide(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/modulesapi/internal/service/ModuleRemoteConfig;)V

    .line 38
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getModuleEventServiceHandlerFactory()Lio/appmetrica/analytics/modulesapi/internal/service/event/ModuleEventServiceHandlerFactory;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 39
    sget-object v4, Lio/appmetrica/analytics/impl/ua;->E:Lio/appmetrica/analytics/impl/ua;

    .line 40
    iget-object v4, v4, Lio/appmetrica/analytics/impl/ua;->t:Lio/appmetrica/analytics/impl/Zc;

    .line 41
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :try_start_1
    iget-object v6, v4, Lio/appmetrica/analytics/impl/Zc;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 43
    monitor-exit v4

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    :goto_1
    invoke-virtual {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string v5, "init"

    .line 45
    sget-object v6, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    .line 46
    const-string v7, "service_module_errors"

    .line 47
    invoke-static {v3}, Lue3;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 48
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    new-instance v4, Lio/appmetrica/analytics/impl/Ej;

    invoke-direct {v4, v7, v3}, Lio/appmetrica/analytics/impl/Ej;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v4}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    :try_start_0
    invoke-virtual {v4}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getModuleServicesDatabase()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServicesDatabase;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lio/appmetrica/analytics/impl/ej;->a:Lio/appmetrica/analytics/impl/Fj;

    invoke-static {v5}, Lue3;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "db"

    invoke-static {v7, v5}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4, v5}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lio/appmetrica/analytics/impl/Ej;

    const-string v7, "service_module_errors"

    invoke-direct {v5, v7, v4}, Lio/appmetrica/analytics/impl/Ej;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/impl/Fj;->a(Lio/appmetrica/analytics/impl/Xa;)V

    sget-object v4, Lzfb;->a:Lzfb;

    :goto_2
    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public final c()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/dd;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lio/appmetrica/analytics/impl/dd;

    invoke-direct {v3, v2}, Lio/appmetrica/analytics/impl/dd;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;)V

    invoke-static {v1, v3}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;->getBlocks()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lmy5;->E(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/a;->y(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/coreapi/internal/backport/Consumer<",
            "Landroid/location/Location;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getLocationServiceExtension()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;->getLocationConsumer()Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final f()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getLocationServiceExtension()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;->getLocationSourcesController()Lio/appmetrica/analytics/modulesapi/internal/service/ModuleLocationSourcesServiceController;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    return-object v1
.end method

.method public final g()Lio/appmetrica/analytics/coreapi/internal/control/Toggle;
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getLocationServiceExtension()Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/appmetrica/analytics/modulesapi/internal/service/LocationServiceExtension;->getLocationControllerAppStateToggle()Lio/appmetrica/analytics/coreapi/internal/control/Toggle;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_0

    :cond_2
    return-object v1
.end method

.method public final getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->c:Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    invoke-interface {p0}, Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;->getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    move-result-object p0

    return-object p0
.end method

.method public final h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getRemoteConfigExtensionConfiguration()Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/RemoteConfigExtensionConfiguration;->getFeatures()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Ld81;->C(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final i()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/bk;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getClientConfigProvider()Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lio/appmetrica/analytics/modulesapi/internal/service/ClientConfigProvider;->getConfigBundleForClient()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceEntryPoint;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method
