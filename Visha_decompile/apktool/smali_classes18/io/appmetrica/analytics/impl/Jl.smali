.class public final Lio/appmetrica/analytics/impl/Jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Ml;


# instance fields
.field public volatile a:Lio/appmetrica/analytics/impl/Hl;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Jl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 8
    const-class v0, Lio/appmetrica/analytics/impl/Ll;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/sm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/tm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/tm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    .line 9
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->B()Lio/appmetrica/analytics/impl/Xn;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Xn;->a()Lio/appmetrica/analytics/impl/Tn;

    move-result-object v0

    .line 10
    new-instance v1, Lio/appmetrica/analytics/impl/Hl;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v2, v0, Lio/appmetrica/analytics/impl/Tn;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "device_id"

    invoke-static {v2, v3}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optStringOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 13
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Tn;->a()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Ll;

    .line 15
    invoke-direct {v1, v2, v0, p1}, Lio/appmetrica/analytics/impl/Hl;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/impl/Ll;)V

    .line 16
    invoke-virtual {p0, v1}, Lio/appmetrica/analytics/impl/Jl;->a(Lio/appmetrica/analytics/impl/Hl;)V

    return-void

    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0

    throw p0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Hl;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Jl;->a:Lio/appmetrica/analytics/impl/Hl;

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Ml;

    .line 4
    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/Ml;->a(Lio/appmetrica/analytics/impl/Hl;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ml;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Jl;->a:Lio/appmetrica/analytics/impl/Hl;

    if-eqz v0, :cond_1

    .line 7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jl;->a:Lio/appmetrica/analytics/impl/Hl;

    if-nez p0, :cond_0

    const-string p0, "startupState"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-interface {p1, p0}, Lio/appmetrica/analytics/impl/Ml;->a(Lio/appmetrica/analytics/impl/Hl;)V

    :cond_1
    return-void
.end method

.method public final b()Lio/appmetrica/analytics/impl/Hl;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jl;->a:Lio/appmetrica/analytics/impl/Hl;

    if-nez p0, :cond_0

    const-string p0, "startupState"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final b(Lio/appmetrica/analytics/impl/Ml;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
