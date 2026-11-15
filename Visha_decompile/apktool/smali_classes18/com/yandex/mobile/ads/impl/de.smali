.class public final Lcom/yandex/mobile/ads/impl/de;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V
    .locals 12

    invoke-static {}, Lmc2;->b()Lkotlinx/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d;->a(Lkotlin/coroutines/d;)Lnk1;

    move-result-object v7

    new-instance v8, Lcom/yandex/mobile/ads/impl/ae;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v8, v0, v1}, Lcom/yandex/mobile/ads/impl/ae;-><init>(Lkotlin/coroutines/d;Landroid/os/Handler;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/be;

    invoke-direct {v9, p1}, Lcom/yandex/mobile/ads/impl/be;-><init>(Lcom/yandex/mobile/ads/impl/sp1;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/y42;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/y42;-><init>()V

    const-string v1, "context"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reporter"

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineContext"

    invoke-static {v0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineScope"

    invoke-static {v7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "anrChecker"

    invoke-static {v8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "anrReporter"

    invoke-static {v9, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "threadUtils"

    invoke-static {v10, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget p1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->h()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->i()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v2, v0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->j()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    move-wide v4, v0

    goto :goto_3

    :cond_1
    const-wide/16 v0, 0xdac

    goto :goto_2

    :goto_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ju1;->q()Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Lye9;->f()Ljava/util/Set;

    move-result-object p0

    :cond_2
    move-object v6, p0

    sget p0, Lcom/yandex/mobile/ads/impl/ce;->k:I

    const-string p0, "crashStackTraceExclusionRules"

    invoke-static {v6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "coroutineScope"

    invoke-static {v7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anrChecker"

    invoke-static {v8, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "anrReporter"

    invoke-static {v9, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "threadUtils"

    invoke-static {v10, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ce;->a()Lcom/yandex/mobile/ads/impl/ce;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ce;->b()Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ce;->a()Lcom/yandex/mobile/ads/impl/ce;

    move-result-object p1

    if-nez p1, :cond_3

    new-instance p1, Lcom/yandex/mobile/ads/impl/ce;

    const/4 v11, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v11}, Lcom/yandex/mobile/ads/impl/ce;-><init>(JJLjava/util/Set;Lnk1;Lcom/yandex/mobile/ads/impl/ae;Lcom/yandex/mobile/ads/impl/be;Lcom/yandex/mobile/ads/impl/y42;I)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ce;->e(Lcom/yandex/mobile/ads/impl/ce;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_4
    monitor-exit p0

    move-object p0, p1

    goto :goto_6

    :goto_5
    monitor-exit p0

    throw p1

    :cond_4
    :goto_6
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ce;->c()V

    :cond_5
    return-void
.end method
