.class public final Lcom/yandex/mobile/ads/impl/hs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gu;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bs1;

.field private final b:Lcom/yandex/mobile/ads/impl/tm1;

.field private final c:Lcom/yandex/mobile/ads/impl/lt0;

.field private final d:Lcom/yandex/mobile/ads/impl/ht0;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Lcom/yandex/mobile/ads/impl/ss;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bs1;Lcom/yandex/mobile/ads/impl/tm1;Lcom/yandex/mobile/ads/impl/lt0;Lcom/yandex/mobile/ads/impl/ht0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rewardedAdContentController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxyRewardedAdShowListener"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mainThreadUsageValidator"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mainThreadExecutor"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hs1;->a:Lcom/yandex/mobile/ads/impl/bs1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hs1;->b:Lcom/yandex/mobile/ads/impl/tm1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/hs1;->c:Lcom/yandex/mobile/ads/impl/lt0;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/hs1;->d:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hs1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/zd0;->n()Lcom/yandex/mobile/ads/impl/ss;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hs1;->f:Lcom/yandex/mobile/ads/impl/ss;

    invoke-virtual {p2, p3}, Lcom/yandex/mobile/ads/impl/bs1;->a(Lcom/yandex/mobile/ads/impl/tm1;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/hs1;Landroid/app/Activity;)V
    .locals 2

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs1;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs1;->a:Lcom/yandex/mobile/ads/impl/bs1;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/zd0;->a(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs1;->b:Lcom/yandex/mobile/ads/impl/tm1;

    .line 7
    new-instance v0, Lcom/yandex/mobile/ads/impl/q6;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/q6;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/tm1;->a(Lcom/yandex/mobile/ads/impl/q6;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs1;->b:Lcom/yandex/mobile/ads/impl/tm1;

    .line 10
    invoke-static {}, Lcom/yandex/mobile/ads/impl/r6;->b()Lcom/yandex/mobile/ads/impl/q6;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/tm1;->a(Lcom/yandex/mobile/ads/impl/q6;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/hs1;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/hs1;->a(Lcom/yandex/mobile/ads/impl/hs1;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/cn2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs1;->c:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs1;->b:Lcom/yandex/mobile/ads/impl/tm1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/tm1;->a(Lcom/yandex/mobile/ads/impl/cn2;)V

    return-void
.end method

.method public final getInfo()Lcom/yandex/mobile/ads/impl/ss;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hs1;->f:Lcom/yandex/mobile/ads/impl/ss;

    return-object p0
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "activity"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs1;->c:Lcom/yandex/mobile/ads/impl/lt0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/lt0;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hs1;->d:Lcom/yandex/mobile/ads/impl/ht0;

    new-instance v1, Lbid;

    invoke-direct {v1, p0, p1}, Lbid;-><init>(Lcom/yandex/mobile/ads/impl/hs1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/ht0;->a(Ljava/lang/Runnable;)V

    return-void
.end method
