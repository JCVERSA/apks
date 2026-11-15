.class public final Lcom/yandex/mobile/ads/impl/lf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nu;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yandex/mobile/ads/impl/ht0;

.field private final c:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/ht0;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ht0;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/lf2;-><init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/ht0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/ht0;)V
    .locals 1

    .line 4
    const-string v0, "lock"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadExecutor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lf2;->a:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    .line 8
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/lf2;->c:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private final a()Ljava/util/HashSet;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lf2;->c:Ljava/util/LinkedHashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    .line 4
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/lf2;->a()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/nu;

    .line 6
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/lf2;->a()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/nu;

    .line 5
    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoError()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/lf2;->a()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoPaused()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final d(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/lf2;->a()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoPrepared()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final e(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/lf2;->a()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/nu;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/nu;->onVideoResumed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lf2;->b(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public static synthetic g(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lf2;->d(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public static synthetic h(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lf2;->c(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public static synthetic i(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lf2;->e(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method

.method public static synthetic j(Lcom/yandex/mobile/ads/impl/lf2;)V
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/lf2;->a(Lcom/yandex/mobile/ads/impl/lf2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/cf2;)V
    .locals 1

    .line 1
    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lf2;->c:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->c:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ht0;->a()V

    return-void
.end method

.method public final onVideoCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lnmd;

    invoke-direct {v1, p0}, Lnmd;-><init>(Lcom/yandex/mobile/ads/impl/lf2;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoError()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lkmd;

    invoke-direct {v1, p0}, Lkmd;-><init>(Lcom/yandex/mobile/ads/impl/lf2;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoPaused()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Ljmd;

    invoke-direct {v1, p0}, Ljmd;-><init>(Lcom/yandex/mobile/ads/impl/lf2;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoPrepared()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lmmd;

    invoke-direct {v1, p0}, Lmmd;-><init>(Lcom/yandex/mobile/ads/impl/lf2;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onVideoResumed()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/lf2;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Llmd;

    invoke-direct {v1, p0}, Llmd;-><init>(Lcom/yandex/mobile/ads/impl/lf2;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
