.class public final Lio/appmetrica/analytics/impl/rk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/appmetrica/analytics/impl/mk;

.field public final c:Lio/appmetrica/analytics/impl/qk;

.field public final d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lio/appmetrica/analytics/impl/f5;->a()Ljava/lang/String;

    const-string v0, "session_extras"

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rk;->a:Ljava/lang/String;

    new-instance v0, Lio/appmetrica/analytics/impl/mk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/mk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rk;->b:Lio/appmetrica/analytics/impl/mk;

    new-instance v0, Lio/appmetrica/analytics/impl/qk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/qk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/rk;->c:Lio/appmetrica/analytics/impl/qk;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/g7;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/g7;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/appmetrica/analytics/impl/g7;->a(Lio/appmetrica/analytics/impl/f5;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object p1

    iput-object p1, p0, Lio/appmetrica/analytics/impl/rk;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/rk;->d:Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rk;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;->get(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lio/appmetrica/analytics/impl/rk;->b:Lio/appmetrica/analytics/impl/mk;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/rk;->c:Lio/appmetrica/analytics/impl/qk;

    invoke-virtual {v2, v0}, Lio/appmetrica/analytics/impl/qk;->a([B)Lio/appmetrica/analytics/impl/ok;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/mk;->a(Lio/appmetrica/analytics/impl/ok;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/rk;->b:Lio/appmetrica/analytics/impl/mk;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/rk;->c:Lio/appmetrica/analytics/impl/qk;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/ok;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/ok;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/mk;->a(Lio/appmetrica/analytics/impl/ok;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
