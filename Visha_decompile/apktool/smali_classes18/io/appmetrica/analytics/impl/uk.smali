.class public final Lio/appmetrica/analytics/impl/uk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Un;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Un;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/uk;->a:Lio/appmetrica/analytics/impl/Un;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/uk;->a:Lio/appmetrica/analytics/impl/Un;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Un;->a:Lio/appmetrica/analytics/impl/Vn;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Vn;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "session_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const-wide v3, 0x2540be400L

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/uk;->a:Lio/appmetrica/analytics/impl/Un;

    invoke-virtual {p0, v3, v4}, Lio/appmetrica/analytics/impl/Un;->c(J)V

    return-wide v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
