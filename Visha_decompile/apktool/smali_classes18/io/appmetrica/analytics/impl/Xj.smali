.class public final Lio/appmetrica/analytics/impl/Xj;
.super Lio/appmetrica/analytics/impl/Pc;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/appmetrica/analytics/impl/ua;->j()Lio/appmetrica/analytics/impl/ua;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/ua;->B()Lio/appmetrica/analytics/impl/Xn;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Xn;->b()Lio/appmetrica/analytics/impl/Tn;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Xj;-><init>(Lio/appmetrica/analytics/impl/Tn;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Tn;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Pc;-><init>()V

    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Xj;->a:Lio/appmetrica/analytics/impl/Tn;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xj;->a:Lio/appmetrica/analytics/impl/Tn;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tn;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "last_migration_api_level"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Vn;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()I
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xj;->a:Lio/appmetrica/analytics/impl/Tn;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Tn;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "last_migration_api_level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/appmetrica/analytics/impl/Oc;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Lio/appmetrica/analytics/impl/Yj;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Xj;->a:Lio/appmetrica/analytics/impl/Tn;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Yj;-><init>(Lio/appmetrica/analytics/impl/Tn;)V

    const/16 p0, 0x70

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p0, Lio/appmetrica/analytics/impl/Zj;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Zj;-><init>()V

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
