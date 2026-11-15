.class public final Lio/appmetrica/analytics/impl/gi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lio/appmetrica/analytics/impl/q0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/q0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/gi;->a:Ljava/util/HashMap;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/gi;->b:Lio/appmetrica/analytics/impl/q0;

    return-void
.end method

.method public static a()Lio/appmetrica/analytics/impl/gi;
    .locals 1

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/fi;->a:Lio/appmetrica/analytics/impl/gi;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/impl/Yh;
    .locals 3

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/gi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Yh;

    if-nez v0, :cond_2

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/gi;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/gi;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Yh;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->i()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->c:Lio/appmetrica/analytics/impl/j4;

    .line 7
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/j4;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lio/appmetrica/analytics/impl/gi;->b:Lio/appmetrica/analytics/impl/q0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    sget-object v2, Lio/appmetrica/analytics/impl/p0;->e:Lio/appmetrica/analytics/impl/p0;

    if-nez v2, :cond_0

    .line 10
    new-instance v2, Lio/appmetrica/analytics/impl/ei;

    invoke-direct {v2, p0, p1}, Lio/appmetrica/analytics/impl/ei;-><init>(Lio/appmetrica/analytics/impl/gi;Landroid/content/Context;)V

    check-cast v0, Lio/appmetrica/analytics/impl/G9;

    .line 11
    iget-object v0, v0, Lio/appmetrica/analytics/impl/G9;->b:Landroid/os/Handler;

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 13
    :cond_0
    :goto_0
    new-instance v0, Lio/appmetrica/analytics/impl/Yh;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Lio/appmetrica/analytics/impl/q0;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/q0;-><init>()V

    .line 15
    invoke-direct {v0, p1, p2, v2}, Lio/appmetrica/analytics/impl/Yh;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/appmetrica/analytics/impl/q0;)V

    .line 16
    iget-object p0, p0, Lio/appmetrica/analytics/impl/gi;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p2}, Lio/appmetrica/analytics/impl/Yh;->c(Ljava/lang/String;)V

    .line 18
    :cond_1
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-object v0
.end method
