.class public final Lcom/yandex/mobile/ads/impl/m91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/rt;

.field private final b:Lcom/yandex/mobile/ads/impl/gr1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/rt;Lcom/yandex/mobile/ads/impl/gr1;)V
    .locals 1

    const-string v0, "adAssets"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseNativeType"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/m91;->b:Lcom/yandex/mobile/ads/impl/gr1;

    return-void
.end method

.method private final b()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/gr1;->c:Lcom/yandex/mobile/ads/impl/gr1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/m91;->b:Lcom/yandex/mobile/ads/impl/gr1;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/m91;->d()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final d()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->k()Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->l()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->n()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/tt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "wide"

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->m()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m91;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/m91;->d()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final g()Z
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/m91;->b()Z

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/m91;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m91;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/m91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->o()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Z
    .locals 1

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/m91;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/m91;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/m91;->d()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
