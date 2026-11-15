.class public final Lcom/yandex/mobile/ads/impl/su1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mu1;

.field private final b:Lcom/yandex/mobile/ads/impl/xw1;

.field private final c:Lcom/yandex/mobile/ads/impl/tr;


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/mu1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mu1;-><init>()V

    .line 2
    new-instance v1, Lcom/yandex/mobile/ads/impl/xw1;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/xw1;-><init>()V

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/su1;-><init>(Lcom/yandex/mobile/ads/impl/mu1;Lcom/yandex/mobile/ads/impl/xw1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mu1;Lcom/yandex/mobile/ads/impl/xw1;)V
    .locals 1

    .line 4
    const-string v0, "sdkConfigurationExpiredDateValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkVersionUpdateValidator"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/su1;->a:Lcom/yandex/mobile/ads/impl/mu1;

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/su1;->b:Lcom/yandex/mobile/ads/impl/xw1;

    .line 8
    new-instance p1, Lcom/yandex/mobile/ads/impl/tr;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/tr;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/su1;->c:Lcom/yandex/mobile/ads/impl/tr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/ju1;)Z
    .locals 3

    const-string v0, "sdkConfiguration"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/su1;->a:Lcom/yandex/mobile/ads/impl/mu1;

    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/mu1;->a(Lcom/yandex/mobile/ads/impl/ju1;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/su1;->b:Lcom/yandex/mobile/ads/impl/xw1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->J()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7.12.2"

    invoke-static {v2, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/su1;->c:Lcom/yandex/mobile/ads/impl/tr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pw1;->j()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->A0()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/su1;->c:Lcom/yandex/mobile/ads/impl/tr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/pw1;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->m0()Z

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/su1;->c:Lcom/yandex/mobile/ads/impl/tr;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/pw1;->f()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ju1;->U()Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
