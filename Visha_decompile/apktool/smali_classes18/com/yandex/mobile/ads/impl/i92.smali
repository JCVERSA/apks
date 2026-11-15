.class public final Lcom/yandex/mobile/ads/impl/i92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m92;

.field private final b:Lcom/yandex/mobile/ads/impl/pw1;

.field private final c:Lcom/yandex/mobile/ads/impl/kb2;

.field private final d:Lcom/yandex/mobile/ads/impl/h92;

.field private final e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/m92;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/m92;-><init>(Landroid/content/Context;)V

    .line 2
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v3

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/kb2;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/kb2;-><init>()V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/h92;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/h92;-><init>()V

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/i92;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/m92;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/kb2;Lcom/yandex/mobile/ads/impl/h92;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/m92;Lcom/yandex/mobile/ads/impl/pw1;Lcom/yandex/mobile/ads/impl/kb2;Lcom/yandex/mobile/ads/impl/h92;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toastPresenter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkSettings"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionValidationNeedChecker"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "validationErrorIndicatorChecker"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i92;->a:Lcom/yandex/mobile/ads/impl/m92;

    .line 9
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/i92;->b:Lcom/yandex/mobile/ads/impl/pw1;

    .line 10
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/i92;->c:Lcom/yandex/mobile/ads/impl/kb2;

    .line 11
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/i92;->d:Lcom/yandex/mobile/ads/impl/h92;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i92;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i92;->c:Lcom/yandex/mobile/ads/impl/kb2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i92;->e:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/pa;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i92;->b:Lcom/yandex/mobile/ads/impl/pw1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/pw1;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i92;->d:Lcom/yandex/mobile/ads/impl/h92;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/i92;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/h92;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i92;->a:Lcom/yandex/mobile/ads/impl/m92;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m92;->a()V

    :cond_0
    return-void
.end method
