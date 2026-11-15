.class public final Lcom/yandex/mobile/ads/impl/in;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/xf;


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/in$a;,
        Lcom/yandex/mobile/ads/impl/in$b;,
        Lcom/yandex/mobile/ads/impl/in$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/lt0;

.field private final c:Lcom/yandex/mobile/ads/impl/ht0;

.field private final d:Lcom/yandex/mobile/ads/impl/zf;

.field private final e:Lcom/yandex/mobile/ads/impl/ag;

.field private final f:Lcom/yandex/mobile/ads/impl/wk1;

.field private final g:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/wf;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/yandex/mobile/ads/impl/ws;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/zf;Lcom/yandex/mobile/ads/impl/ag;Lcom/yandex/mobile/ads/impl/wk1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainThreadUsageValidator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainThreadExecutor"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adLoadControllerFactory"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "preloadingCache"

    invoke-static {p6, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "preloadingAvailabilityValidator"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/in;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/in;->b:Lcom/yandex/mobile/ads/impl/lt0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/in;->c:Lcom/yandex/mobile/ads/impl/ht0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/in;->d:Lcom/yandex/mobile/ads/impl/zf;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/in;->e:Lcom/yandex/mobile/ads/impl/ag;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/in;->f:Lcom/yandex/mobile/ads/impl/wk1;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/in;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/in;)Lcom/yandex/mobile/ads/impl/ws;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in;->h:Lcom/yandex/mobile/ads/impl/ws;

    return-object p0
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/in;->b(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ws;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x7ff

    .line 13
    invoke-static {p1, v0, p3, v1}, Lcom/yandex/mobile/ads/impl/v7;->a(Lcom/yandex/mobile/ads/impl/v7;Ljava/util/Map;Ljava/lang/String;I)Lcom/yandex/mobile/ads/impl/v7;

    move-result-object p1

    .line 14
    new-instance p3, Lcom/yandex/mobile/ads/impl/in$a;

    invoke-direct {p3, p0, p1}, Lcom/yandex/mobile/ads/impl/in$a;-><init>(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->d:Lcom/yandex/mobile/ads/impl/zf;

    .line 16
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/in;->a:Landroid/content/Context;

    .line 17
    invoke-virtual {v0, v1, p0, p1, p3}, Lcom/yandex/mobile/ads/impl/zf;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/md0;)Lcom/yandex/mobile/ads/impl/wf;

    move-result-object p3

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->a()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p3, p0}, Lcom/yandex/mobile/ads/impl/ck;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3, p2}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    .line 22
    invoke-virtual {p3, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/in;)Lcom/yandex/mobile/ads/impl/ag;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in;->e:Lcom/yandex/mobile/ads/impl/ag;

    return-object p0
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 2

    .line 2
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->f:Lcom/yandex/mobile/ads/impl/wk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wk1;->a(Lcom/yandex/mobile/ads/impl/v7;)Z

    move-result v0

    const-string v1, "default"

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->e:Lcom/yandex/mobile/ads/impl/ag;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ag;->a(Lcom/yandex/mobile/ads/impl/v7;)Lcom/yandex/mobile/ads/impl/us;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in;->h:Lcom/yandex/mobile/ads/impl/ws;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/yandex/mobile/ads/impl/ws;->a(Lcom/yandex/mobile/ads/impl/us;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/in$c;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/in$c;-><init>(Lcom/yandex/mobile/ads/impl/in;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/in;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ws;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/yandex/mobile/ads/impl/in$c;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/in$c;-><init>(Lcom/yandex/mobile/ads/impl/in;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/in;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ws;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final b(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->c:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lljd;

    invoke-direct {v1, p0, p1}, Lljd;-><init>(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final c(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->f:Lcom/yandex/mobile/ads/impl/wk1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/wk1;->a(Lcom/yandex/mobile/ads/impl/v7;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->e:Lcom/yandex/mobile/ads/impl/ag;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/in$b;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/in$b;-><init>(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    const-string v1, "render"

    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/in;->a(Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ws;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/in;->b(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

.method public static synthetic e(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/in;->c(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->c:Lcom/yandex/mobile/ads/impl/ht0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ht0;->a()V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/wf;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    .line 7
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jd0;->e()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jd0;)V
    .locals 2

    .line 23
    check-cast p1, Lcom/yandex/mobile/ads/impl/wf;

    .line 24
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->h:Lcom/yandex/mobile/ads/impl/ws;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AppOpenAdLoader. AppOpenAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading()."

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hp0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/wf;->a(Lcom/yandex/mobile/ads/impl/ws;)V

    .line 27
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/rl2;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 29
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/in;->h:Lcom/yandex/mobile/ads/impl/ws;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 9
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->h:Lcom/yandex/mobile/ads/impl/ws;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AppOpenAdLoader. AppOpenAdLoadListener is null on loading start. Please, use setAdLoadListener before loading Ad."

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hp0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in;->c:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lmjd;

    invoke-direct {v1, p0, p1}, Lmjd;-><init>(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
