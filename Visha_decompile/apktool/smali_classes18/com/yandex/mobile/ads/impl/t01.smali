.class public final Lcom/yandex/mobile/ads/impl/t01;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/mobile/ads/impl/pw1;

.field private static volatile b:Lcom/yandex/mobile/ads/impl/s01;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/t01;->a:Lcom/yandex/mobile/ads/impl/pw1;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "varioqubAdapterProvider"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appAdAnalyticsActivator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/t01;->b:Lcom/yandex/mobile/ads/impl/s01;

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/yandex/mobile/ads/impl/s01;->a()Ljava/lang/Object;

    move-result-object v0

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/t01;->b:Lcom/yandex/mobile/ads/impl/s01;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    .line 7
    sget-object v2, Lcom/yandex/mobile/ads/impl/t01;->a:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v2, p0}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object p0

    .line 8
    invoke-static {v1, p1, p0, p2}, Lcom/yandex/mobile/ads/impl/t01;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;

    move-result-object p0

    sput-object p0, Lcom/yandex/mobile/ads/impl/t01;->b:Lcom/yandex/mobile/ads/impl/s01;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 11
    :cond_2
    :goto_2
    sget-object p0, Lcom/yandex/mobile/ads/impl/t01;->b:Lcom/yandex/mobile/ads/impl/s01;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/t92;Lcom/yandex/mobile/ads/impl/ju1;Lcom/yandex/mobile/ads/impl/ie;)Lcom/yandex/mobile/ads/impl/s01;
    .locals 3

    .line 12
    new-instance v0, Lcom/yandex/mobile/ads/impl/jf;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jf;-><init>()V

    .line 13
    new-instance v1, Lcom/yandex/mobile/ads/impl/kf;

    .line 14
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ve;->a()Lcom/yandex/mobile/ads/impl/pf;

    move-result-object v2

    .line 15
    invoke-direct {v1, v0, p3, v2}, Lcom/yandex/mobile/ads/impl/kf;-><init>(Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/ie;Lcom/yandex/mobile/ads/impl/ue;)V

    .line 16
    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/kf;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sp1;

    move-result-object p3

    .line 17
    new-instance v1, Lcom/yandex/mobile/ads/impl/t01$a;

    invoke-direct {v1, p1, p0}, Lcom/yandex/mobile/ads/impl/t01$a;-><init>(Lcom/yandex/mobile/ads/impl/t92;Landroid/content/Context;)V

    invoke-static {v1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 18
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ju1;->v()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 19
    :goto_0
    new-instance p1, Lcom/yandex/mobile/ads/impl/s01;

    .line 20
    sget v1, Lcom/yandex/mobile/ads/impl/ms0;->f:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ms0$a;->a()Lcom/yandex/mobile/ads/impl/ms0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ms0;->c()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 21
    invoke-direct {p1, p3, p0, p2, v1}, Lcom/yandex/mobile/ads/impl/s01;-><init>(Lcom/yandex/mobile/ads/impl/sp1;Lyi5;ZLjava/util/concurrent/Executor;)V

    .line 22
    new-instance p0, Lcom/yandex/mobile/ads/impl/ku1;

    .line 23
    new-instance p2, Lcom/yandex/mobile/ads/impl/lu1;

    invoke-direct {p2, p1, v0}, Lcom/yandex/mobile/ads/impl/lu1;-><init>(Lcom/yandex/mobile/ads/impl/s01;Lcom/yandex/mobile/ads/impl/jf;)V

    .line 24
    sget p3, Lcom/yandex/mobile/ads/impl/pu1;->d:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pu1$a;->a()Lcom/yandex/mobile/ads/impl/pu1;

    move-result-object p3

    .line 25
    invoke-direct {p0, v0, p2, p3}, Lcom/yandex/mobile/ads/impl/ku1;-><init>(Lcom/yandex/mobile/ads/impl/jf;Lcom/yandex/mobile/ads/impl/lu1;Lcom/yandex/mobile/ads/impl/pu1;)V

    .line 26
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ku1;->a()V

    return-object p1
.end method
