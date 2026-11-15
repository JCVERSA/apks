.class public final Lcom/yandex/mobile/ads/impl/ze0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/it1;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/mobile/ads/impl/af0;

.field private final d:Lcom/yandex/mobile/ads/impl/bf0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/it1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/it1;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/ze0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/it1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/it1;)V
    .locals 1

    .line 3
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safePackageManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ze0;->a:Lcom/yandex/mobile/ads/impl/it1;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze0;->b:Landroid/content/Context;

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/af0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/af0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze0;->c:Lcom/yandex/mobile/ads/impl/af0;

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/bf0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/bf0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ze0;->d:Lcom/yandex/mobile/ads/impl/bf0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/lc;
    .locals 6

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ze0;->d:Lcom/yandex/mobile/ads/impl/bf0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/bf0;->a()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ze0;->a:Lcom/yandex/mobile/ads/impl/it1;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ze0;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "context"

    invoke-static {v2, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "intent"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_1
    new-instance v2, Lcom/yandex/mobile/ads/impl/we0;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/we0;-><init>()V

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/ze0;->b:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v2, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ze0;->c:Lcom/yandex/mobile/ads/impl/af0;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/af0;->a(Lcom/yandex/mobile/ads/impl/we0;)Lcom/yandex/mobile/ads/impl/lc;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ze0;->b:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v1, v0

    goto :goto_1

    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    new-array p0, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->c([Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-object v1
.end method
