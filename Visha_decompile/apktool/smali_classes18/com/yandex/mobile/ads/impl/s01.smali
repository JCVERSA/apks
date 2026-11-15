.class public final Lcom/yandex/mobile/ads/impl/s01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/sp1;


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Z

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/s01;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sp1;Lyi5;ZLjava/util/concurrent/Executor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sp1;",
            "Lyi5;",
            "Z",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "lazyVarioqubAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/s01;->b:Z

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/s01;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/s01;->d:Lyi5;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 44
    sget-object v0, Lcom/yandex/mobile/ads/impl/s01;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/op1;)V
    .locals 2

    .line 32
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$report"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->d:Lyi5;

    .line 34
    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/r92;

    .line 35
    invoke-static {v0, p1}, Lcom/yandex/mobile/ads/impl/s92;->a(Lcom/yandex/mobile/ads/impl/r92;Lcom/yandex/mobile/ads/impl/op1;)V

    .line 36
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/op1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/op1;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/s01;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Lcom/yandex/mobile/ads/impl/op1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 38
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 24
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/impl/s01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/sp1;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 27
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$throwable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/s01;->a(Ljava/lang/Throwable;)V

    .line 41
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportUnhandledException(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 42
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/s01;Ljava/util/Map;)V
    .locals 1

    .line 20
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$traces"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/s01;->a(Ljava/util/Map;)V

    .line 22
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->reportAnr(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    .line 23
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 11
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lky5;->g(I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lei;->c([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 0

    .line 19
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lky5;->g(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Lhi;->c1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/s01;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/s01;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/op1;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/s01;->a(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/op1;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/op1;)V
    .locals 2

    .line 28
    const-string v0, "report"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lusd;

    invoke-direct {v1, p0, p1}, Lusd;-><init>(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/op1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 31
    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/sp1;->a(Z)V

    :cond_0
    return-void
.end method

.method public final reportAnr(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation

    const-string v0, "traces"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lvsd;

    invoke-direct {v1, p0, p1}, Lvsd;-><init>(Lcom/yandex/mobile/ads/impl/s01;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final reportError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/s01;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lssd;

    invoke-direct {v1, p0, p1, p2}, Lssd;-><init>(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final reportUnhandledException(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->a:Lcom/yandex/mobile/ads/impl/sp1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s01;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ltsd;

    invoke-direct {v1, p0, p1}, Ltsd;-><init>(Lcom/yandex/mobile/ads/impl/s01;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
