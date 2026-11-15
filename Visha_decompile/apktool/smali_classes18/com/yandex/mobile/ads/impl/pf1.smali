.class public final Lcom/yandex/mobile/ads/impl/pf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gz1;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/gz1;

.field private final c:Lcom/yandex/mobile/ads/impl/gz1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/rb0;Lcom/yandex/mobile/ads/impl/rb0;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "portraitSizeInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landscapeSizeInfo"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->a(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/gz1$a;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->a()Lcom/yandex/mobile/ads/impl/gz1$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->b(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->b(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final c(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->c(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final d(Landroid/content/Context;)I
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->d(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/gz1;->d(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/pf1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/pf1;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/gz1;->getWidth()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/pf1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/ks;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kf1;

    move-result-object v0

    sget-object v1, Lcom/yandex/mobile/ads/impl/kf1;->c:Lcom/yandex/mobile/ads/impl/kf1;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->c:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pf1;->b:Lcom/yandex/mobile/ads/impl/gz1;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
