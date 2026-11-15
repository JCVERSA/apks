.class public final Lcom/yandex/mobile/ads/impl/b91;
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

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/b91;->b:Lcom/yandex/mobile/ads/impl/gr1;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/tt;)Z
    .locals 2

    .line 1
    const-string v0, "image"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/tt;->c()Ljava/lang/String;

    move-result-object p0

    const-string v0, "wide"

    invoke-static {v0, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

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


# virtual methods
.method public final a()Z
    .locals 4

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b91;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/b91;->a(Lcom/yandex/mobile/ads/impl/tt;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b91;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->e()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->g()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/gr1;->d:Lcom/yandex/mobile/ads/impl/gr1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/b91;->b:Lcom/yandex/mobile/ads/impl/gr1;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b91;->e()Z

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b91;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object p0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/b91;->a(Lcom/yandex/mobile/ads/impl/tt;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rt;->i()Lcom/yandex/mobile/ads/impl/xt;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b91;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/b91;->a:Lcom/yandex/mobile/ads/impl/rt;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rt;->h()Lcom/yandex/mobile/ads/impl/tt;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/b91;->a(Lcom/yandex/mobile/ads/impl/tt;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/gr1;->d:Lcom/yandex/mobile/ads/impl/gr1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b91;->b:Lcom/yandex/mobile/ads/impl/gr1;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
