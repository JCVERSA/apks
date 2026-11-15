.class public final Lcom/yandex/mobile/ads/impl/ze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ze$a;
    }
.end annotation


# static fields
.field private static final f:J

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ye;

.field private final b:Lcom/yandex/mobile/ads/impl/bf;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/yandex/mobile/ads/impl/ii;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/ze;->f:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ze;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ye;Lcom/yandex/mobile/ads/impl/bf;Landroid/os/Handler;)V
    .locals 1

    const-string v0, "appMetricaAutograbLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaErrorProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopStartupParamsRequestHandler"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze;->a:Lcom/yandex/mobile/ads/impl/ye;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ze;->b:Lcom/yandex/mobile/ads/impl/bf;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ze;->c:Landroid/os/Handler;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/ze;)Lcom/yandex/mobile/ads/impl/bf;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ze;->b:Lcom/yandex/mobile/ads/impl/bf;

    return-object p0
.end method

.method private final a()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/ze;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ze;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ze;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->clear()V

    .line 6
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ze;->c()V

    .line 7
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ii;

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/ii;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0

    throw p0
.end method

.method private static final a(Lc74;)V
    .locals 1

    .line 12
    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final b()V
    .locals 4

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/ze$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ze$b;-><init>(Lcom/yandex/mobile/ads/impl/ze;)V

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ze;->c:Landroid/os/Handler;

    new-instance v1, Ln4e;

    invoke-direct {v1, v0}, Ln4e;-><init>(Lc74;)V

    sget-wide v2, Lcom/yandex/mobile/ads/impl/ze;->f:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic b(Lc74;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ze;->a(Lc74;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/ze;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ze;->a()V

    return-void
.end method

.method private final c()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/ze;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ze;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ze;->e:Z

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final d()V
    .locals 3

    sget-object v0, Lcom/yandex/mobile/ads/impl/ze;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ze;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ze;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ze;->b()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ze;->a:Lcom/yandex/mobile/ads/impl/ye;

    new-instance v1, Lcom/yandex/mobile/ads/impl/ze$a;

    invoke-direct {v1, p0}, Lcom/yandex/mobile/ads/impl/ze$a;-><init>(Lcom/yandex/mobile/ads/impl/ze;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ye;->a(Lcom/yandex/mobile/ads/impl/xe;)V

    :cond_1
    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ii;)V
    .locals 3

    .line 14
    const-string v0, "autograbRequestListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/yandex/mobile/ads/impl/ze;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ze;->d:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    .line 16
    :try_start_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ze;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    .line 17
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/ze;->b:Lcom/yandex/mobile/ads/impl/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/bf;->b()Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/ze;->a()V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    .line 20
    monitor-exit v0

    throw p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/ii;)V
    .locals 1

    .line 3
    const-string v0, "autograbRequestListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/yandex/mobile/ads/impl/ze;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ze;->d:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0

    throw p0
.end method
