.class public final Lcom/yandex/mobile/ads/impl/ne2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yandex/mobile/ads/impl/y30;

.field private static final b:Ljava/lang/Object;

.field public static final synthetic c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ne2;->b:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/y30;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/yandex/mobile/ads/impl/k22;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/k22;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yandex/mobile/ads/impl/d70;->e:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/d70$a;->a()Lcom/yandex/mobile/ads/impl/d70;

    move-result-object v1

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/yandex/mobile/ads/impl/d70;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/sm;

    move-result-object v1

    new-instance v2, Lcom/yandex/mobile/ads/impl/cv1;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/dt1;->a()Lcom/yandex/mobile/ads/impl/ft1;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yandex/mobile/ads/impl/cv1;-><init>(Lcom/yandex/mobile/ads/impl/et1;)V

    invoke-virtual {v2, p0}, Lcom/yandex/mobile/ads/impl/cv1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/dv1;

    move-result-object v2

    new-instance v3, Lcom/yandex/mobile/ads/impl/oz$a;

    invoke-direct {v3, p0, v2}, Lcom/yandex/mobile/ads/impl/oz$a;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tv$a;)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    const-string v4, "context"

    invoke-static {p0, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "databaseProvider"

    invoke-static {v0, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cache"

    invoke-static {v1, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "upstreamFactory"

    invoke-static {v3, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "executor"

    invoke-static {v2, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/y30;

    new-instance v5, Lcom/yandex/mobile/ads/impl/pz;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/yandex/mobile/ads/impl/pz;-><init>(Lcom/yandex/mobile/ads/impl/k22;I)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/qz;

    new-instance v6, Lcom/yandex/mobile/ads/impl/wm$a;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/wm$a;-><init>()V

    invoke-virtual {v6, v1}, Lcom/yandex/mobile/ads/impl/wm$a;->a(Lcom/yandex/mobile/ads/impl/sm;)Lcom/yandex/mobile/ads/impl/wm$a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/wm$a;->a(Lcom/yandex/mobile/ads/impl/oz$a;)Lcom/yandex/mobile/ads/impl/wm$a;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/qz;-><init>(Lcom/yandex/mobile/ads/impl/wm$a;Ljava/util/concurrent/ExecutorService;)V

    invoke-direct {v4, p0, v5, v0}, Lcom/yandex/mobile/ads/impl/y30;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/pz;Lcom/yandex/mobile/ads/impl/qz;)V

    return-object v4
.end method

.method public static b(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/y30;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/ne2;->a:Lcom/yandex/mobile/ads/impl/y30;

    if-nez v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/ne2;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/ne2;->a:Lcom/yandex/mobile/ads/impl/y30;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/ne2;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/y30;

    move-result-object p0

    sput-object p0, Lcom/yandex/mobile/ads/impl/ne2;->a:Lcom/yandex/mobile/ads/impl/y30;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method
