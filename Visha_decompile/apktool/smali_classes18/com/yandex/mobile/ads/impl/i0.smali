.class public final Lcom/yandex/mobile/ads/impl/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/g0;


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/yandex/mobile/ads/impl/i0;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/WeakHashMap;

.field private final c:Ljava/util/WeakHashMap;

.field private final d:Lcom/yandex/mobile/ads/impl/i0$a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/i0;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->b:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->c:Ljava/util/WeakHashMap;

    new-instance v0, Lcom/yandex/mobile/ads/impl/i0$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/i0$a;-><init>(Lcom/yandex/mobile/ads/impl/i0;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->d:Lcom/yandex/mobile/ads/impl/i0$a;

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/mobile/ads/impl/i0;
    .locals 1

    .line 23
    sget-object v0, Lcom/yandex/mobile/ads/impl/i0;->g:Lcom/yandex/mobile/ads/impl/i0;

    return-object v0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i0;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i0;->b:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/i0;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i0;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Object;
    .locals 1

    .line 30
    sget-object v0, Lcom/yandex/mobile/ads/impl/i0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/i0;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private final b(Landroid/content/Context;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i0;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    const-string v1, "context"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    .line 22
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/i0;->d:Lcom/yandex/mobile/ads/impl/i0$a;

    invoke-virtual {p1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 23
    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/i0;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    :try_start_2
    new-array p0, v1, [Ljava/lang/Object;

    .line 25
    sget p1, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    .line 26
    const-string p1, "args"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    monitor-exit v0

    return-void

    .line 29
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/i0;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i0;->c:Ljava/util/WeakHashMap;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/i0;)V
    .locals 0

    sput-object p0, Lcom/yandex/mobile/ads/impl/i0;->g:Lcom/yandex/mobile/ads/impl/i0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->d:Lcom/yandex/mobile/ads/impl/i0$a;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/i0;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 7
    new-array p0, p0, [Ljava/lang/Object;

    .line 8
    sget p1, Lcom/yandex/mobile/ads/impl/sp0;->b:I

    .line 9
    const-string p1, "args"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l0$a;)V
    .locals 2

    .line 17
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i0;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i0;->b(Landroid/content/Context;)V

    .line 21
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V
    .locals 2

    .line 10
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i0;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i0;->b(Landroid/content/Context;)V

    .line 14
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0

    throw p0
.end method

.method public final b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/l0$a;)V
    .locals 3

    .line 10
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i0;->c:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i0;->c()Z

    move-result p2

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i0;->a(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/r0;)V
    .locals 3

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i0;->b:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i0;->c()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/i0;->a(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/i0;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
