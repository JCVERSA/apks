.class public final Lcom/yandex/mobile/ads/impl/k92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kb2;

.field private final b:Lcom/yandex/mobile/ads/impl/j92;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/yandex/mobile/ads/impl/l92;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/kb2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/kb2;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/j92;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/j92;-><init>()V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/k92;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kb2;Lcom/yandex/mobile/ads/impl/j92;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/kb2;Lcom/yandex/mobile/ads/impl/j92;)V
    .locals 1

    .line 4
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionValidationNeedChecker"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validationErrorLogChecker"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/k92;->a:Lcom/yandex/mobile/ads/impl/kb2;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/k92;->b:Lcom/yandex/mobile/ads/impl/j92;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k92;->c:Landroid/content/Context;

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/l92;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/l92;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k92;->d:Lcom/yandex/mobile/ads/impl/l92;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k92;->a:Lcom/yandex/mobile/ads/impl/kb2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k92;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/pa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/k92;->b:Lcom/yandex/mobile/ads/impl/j92;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k92;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/j92;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k92;->d:Lcom/yandex/mobile/ads/impl/l92;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/l92;->b()V

    :cond_0
    return-void
.end method
