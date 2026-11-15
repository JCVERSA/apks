.class public Lio/appmetrica/analytics/impl/xh;
.super Lio/appmetrica/analytics/impl/b4;
.source "SourceFile"


# instance fields
.field protected c:Lio/appmetrica/analytics/impl/I8;

.field protected d:Lio/appmetrica/analytics/impl/jf;

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V
    .locals 1
    .param p1    # Lio/appmetrica/analytics/impl/pf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/internal/CounterConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/xh;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lio/appmetrica/analytics/impl/pf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/appmetrica/analytics/internal/CounterConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/b4;-><init>(Lio/appmetrica/analytics/impl/pf;Lio/appmetrica/analytics/internal/CounterConfiguration;)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/appmetrica/analytics/impl/xh;->e:Z

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Tk;)V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/I8;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/I8;-><init>(Lio/appmetrica/analytics/impl/Tk;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/xh;->c:Lio/appmetrica/analytics/impl/I8;

    return-void
.end method

.method public final c()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/b4;->b:Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/internal/CounterConfiguration;->toBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/b4;->a:Lio/appmetrica/analytics/impl/pf;

    monitor-enter p0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xh;->c:Lio/appmetrica/analytics/impl/I8;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/I8;->a:Lio/appmetrica/analytics/impl/Lc;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/I8;->a:Lio/appmetrica/analytics/impl/Lc;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/xh;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lio/appmetrica/analytics/impl/xh;->e:Z

    return p0
.end method
