.class public final Lcom/yandex/mobile/ads/impl/km0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lt;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/yandex/mobile/ads/impl/ht0;

.field private final c:Ljava/util/LinkedHashMap;


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
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/km0;-><init>(Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/ht0;)V

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
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/km0;->a:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/km0;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private static final a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 9
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 11
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->h(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 1

    .line 24
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 26
    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/lt;->a(Lcom/yandex/mobile/ads/impl/go0;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 1

    .line 18
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 20
    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/lt;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final b(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->i(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final c(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->g(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final d(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->c(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final e(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->b(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final f(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 3
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final g(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 4
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 6
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->a(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final h(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 4
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 6
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->d(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final i(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 4
    const-string v0, "$videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/lt;

    .line 6
    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/lt;->f(Lcom/yandex/mobile/ads/impl/go0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/km0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_0

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static synthetic j(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->i(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/km0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->d(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->c(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic o(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->f(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic p(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->b(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic q(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/km0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;F)V

    return-void
.end method

.method public static synthetic r(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->e(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic s(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->g(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public static synthetic t(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->h(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ht0;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 12
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Ltld;

    invoke-direct {v1, v0, p1}, Ltld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 2

    .line 21
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lnld;

    invoke-direct {v1, v0, p1, p2}, Lnld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;F)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V
    .locals 2

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/km0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/km0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 2

    .line 15
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lmld;

    invoke-direct {v1, v0, p1, p2}, Lmld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 4
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lsld;

    invoke-direct {v1, v0, p1}, Lsld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V
    .locals 1

    .line 7
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/km0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/lt;

    .line 13
    invoke-static {p2, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 15
    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 4
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lrld;

    invoke-direct {v1, v0, p1}, Lrld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 4
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Luld;

    invoke-direct {v1, v0, p1}, Luld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 4
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lold;

    invoke-direct {v1, v0, p1}, Lold;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 4
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lqld;

    invoke-direct {v1, v0, p1}, Lqld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Llld;

    invoke-direct {v1, v0, p1}, Llld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final h(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lvld;

    invoke-direct {v1, v0, p1}, Lvld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 2

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/km0;->j(Lcom/yandex/mobile/ads/impl/go0;)Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/km0;->b:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lpld;

    invoke-direct {v1, v0, p1}, Lpld;-><init>(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
