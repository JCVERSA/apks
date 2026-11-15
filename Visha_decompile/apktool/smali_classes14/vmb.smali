.class public abstract Lvmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Lhv4;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvmb;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, p1}, Lhv4;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, p1, p2}, Lhv4;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, p1}, Lhv4;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, p0, v1, p1, p2}, Lhv4;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, p1}, Lhv4;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 1

    new-instance v0, Lqp5$a;

    invoke-direct {v0}, Lqp5$a;-><init>()V

    invoke-virtual {v0}, Lqp5$a;->d()Lqp5;

    move-result-object v0

    invoke-static {v0}, Lvmb;->g(Lqp5;)V

    return-void
.end method

.method public static g(Lqp5;)V
    .locals 2

    sget-object v0, Lvmb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvmb;->a:Lhv4;

    if-eqz v1, :cond_0

    const-string p0, "VLog"

    const-string v1, "VLog is already initialized, do not initialize again"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Li22;

    invoke-direct {v1, p0}, Li22;-><init>(Lqp5;)V

    sput-object v1, Lvmb;->a:Lhv4;

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static h()Lhv4;
    .locals 3

    sget-object v0, Lvmb;->a:Lhv4;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lvmb;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lvmb;->a:Lhv4;

    if-nez v1, :cond_1

    new-instance v1, Li22;

    new-instance v2, Lqp5$a;

    invoke-direct {v2}, Lqp5$a;-><init>()V

    invoke-virtual {v2}, Lqp5$a;->d()Lqp5;

    move-result-object v2

    invoke-direct {v1, v2}, Li22;-><init>(Lqp5;)V

    sput-object v1, Lvmb;->a:Lhv4;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lvmb;->a:Lhv4;

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, p1}, Lhv4;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lvmb;->h()Lhv4;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, p1, p2}, Lhv4;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
