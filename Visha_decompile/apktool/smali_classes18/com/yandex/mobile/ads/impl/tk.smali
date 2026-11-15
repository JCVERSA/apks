.class public final Lcom/yandex/mobile/ads/impl/tk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/fs1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/lt0;

.field private final c:Lcom/yandex/mobile/ads/impl/ht0;

.field private final d:Lcom/yandex/mobile/ads/impl/es1;

.field private final e:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/yandex/mobile/ads/impl/ds1;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yandex/mobile/ads/impl/iu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/en2;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;Lcom/yandex/mobile/ads/impl/es1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainThreadUsageValidator"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mainThreadExecutor"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adItemLoadControllerFactory"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tk;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/tk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/tk;->c:Lcom/yandex/mobile/ads/impl/ht0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/tk;->d:Lcom/yandex/mobile/ads/impl/es1;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/tk;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 3

    .line 11
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->d:Lcom/yandex/mobile/ads/impl/es1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tk;->a:Landroid/content/Context;

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/es1;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/b5;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/md0;)Lcom/yandex/mobile/ads/impl/ds1;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/v7;->a()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ds1;->a(Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk;->f:Lcom/yandex/mobile/ads/impl/iu;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/ds1;->a(Lcom/yandex/mobile/ads/impl/iu;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/tk;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/tk;->a(Lcom/yandex/mobile/ads/impl/tk;Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->c:Lcom/yandex/mobile/ads/impl/ht0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ht0;->a()V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ds1;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Lcom/yandex/mobile/ads/impl/ds1;->a(Lcom/yandex/mobile/ads/impl/iu;)V

    .line 5
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/jd0;->e()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/dn2;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 25
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tk;->f:Lcom/yandex/mobile/ads/impl/iu;

    .line 26
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/ds1;

    .line 27
    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/ds1;->a(Lcom/yandex/mobile/ads/impl/iu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/jd0;)V
    .locals 2

    .line 19
    check-cast p1, Lcom/yandex/mobile/ads/impl/ds1;

    .line 20
    const-string v0, "loadController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->f:Lcom/yandex/mobile/ads/impl/iu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RewardedAdLoader. RewardedAdLoadListener is null on finished ad loading. Please, keep active listener until ad loading finished or use cancelLoading()."

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hp0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/ds1;->a(Lcom/yandex/mobile/ads/impl/iu;)V

    .line 23
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tk;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 7
    const-string v0, "adRequestData"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->b:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->f:Lcom/yandex/mobile/ads/impl/iu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RewardedAdLoader. RewardedAdLoadListener is on loading start. Please, use setAdLoadListener before loading Ad."

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/hp0;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tk;->c:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lgud;

    invoke-direct {v1, p0, p1}, Lgud;-><init>(Lcom/yandex/mobile/ads/impl/tk;Lcom/yandex/mobile/ads/impl/v7;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
