.class public final Lcom/yandex/mobile/ads/impl/aj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/bj0;


# static fields
.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ue;

.field private final b:Lcom/yandex/mobile/ads/impl/hf;

.field private final c:Lcom/yandex/mobile/ads/impl/ff;

.field private final d:Landroid/content/Context;

.field private e:Lcom/yandex/mobile/ads/impl/df;

.field private final f:Lcom/yandex/mobile/ads/impl/cj0;

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/aj0;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/ue;Lcom/yandex/mobile/ads/impl/hf;Lcom/yandex/mobile/ads/impl/ff;Lcom/yandex/mobile/ads/impl/nu0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaAdapter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaIdentifiersValidator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMetricaIdentifiersLoader"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mauidManager"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/aj0;->a:Lcom/yandex/mobile/ads/impl/ue;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/aj0;->b:Lcom/yandex/mobile/ads/impl/hf;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/aj0;->c:Lcom/yandex/mobile/ads/impl/ff;

    sget-object p2, Lcom/yandex/mobile/ads/impl/cj0;->b:Lcom/yandex/mobile/ads/impl/cj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/aj0;->f:Lcom/yandex/mobile/ads/impl/cj0;

    invoke-virtual {p5}, Lcom/yandex/mobile/ads/impl/nu0;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/aj0;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/aj0;->d:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/aj0;->h:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/df;)V
    .locals 2

    .line 2
    const-string v0, "appMetricaIdentifiers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/yandex/mobile/ads/impl/aj0;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/aj0;->b:Lcom/yandex/mobile/ads/impl/hf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hf;->a(Lcom/yandex/mobile/ads/impl/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/aj0;->e:Lcom/yandex/mobile/ads/impl/df;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
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

.method public final b()Lcom/yandex/mobile/ads/impl/df;
    .locals 6

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v1, Lcom/yandex/mobile/ads/impl/aj0;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/aj0;->e:Lcom/yandex/mobile/ads/impl/df;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/aj0;->a:Lcom/yandex/mobile/ads/impl/ue;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/aj0;->d:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/yandex/mobile/ads/impl/ue;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/aj0;->a:Lcom/yandex/mobile/ads/impl/ue;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/aj0;->d:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/yandex/mobile/ads/impl/ue;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/yandex/mobile/ads/impl/df;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3, v2}, Lcom/yandex/mobile/ads/impl/df;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/aj0;->c:Lcom/yandex/mobile/ads/impl/ff;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/aj0;->d:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Lcom/yandex/mobile/ads/impl/ff;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/aj0;)V

    move-object v2, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/cj0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aj0;->f:Lcom/yandex/mobile/ads/impl/cj0;

    return-object p0
.end method
