.class public final Lio/appmetrica/analytics/impl/Og;
.super Lio/appmetrica/analytics/impl/Gg;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Un;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/m5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/m5;->t()Lio/appmetrica/analytics/impl/Un;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Og;-><init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/m5;Lio/appmetrica/analytics/impl/Un;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Gg;-><init>(Lio/appmetrica/analytics/impl/m5;)V

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Og;->b:Lio/appmetrica/analytics/impl/Un;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 3
    .param p1    # Lio/appmetrica/analytics/impl/a6;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Gg;->a:Lio/appmetrica/analytics/impl/m5;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Og;->b:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Un;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Og;->b:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Un;->d()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lio/appmetrica/analytics/impl/m5;->n:Lio/appmetrica/analytics/impl/q9;

    sget-object v1, Lio/appmetrica/analytics/impl/hb;->A:Lio/appmetrica/analytics/impl/hb;

    invoke-static {p1, v1}, Lio/appmetrica/analytics/impl/a6;->a(Lio/appmetrica/analytics/impl/a6;Lio/appmetrica/analytics/impl/hb;)Lio/appmetrica/analytics/impl/a6;

    move-result-object p1

    iget-object v0, v0, Lio/appmetrica/analytics/impl/q9;->c:Lio/appmetrica/analytics/impl/vk;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/vk;->b(Lio/appmetrica/analytics/impl/a6;)Lio/appmetrica/analytics/impl/hk;

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Og;->b:Lio/appmetrica/analytics/impl/Un;

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "first_event_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/impl/Vn;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
