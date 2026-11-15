.class public final Lcom/yandex/mobile/ads/impl/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/lt;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/m9;

.field private b:Lcom/yandex/mobile/ads/impl/lt;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/m9;)V
    .locals 1

    const-string v0, "adStartedListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y5;->a:Lcom/yandex/mobile/ads/impl/m9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->a(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 1

    .line 5
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/lt;->a(Lcom/yandex/mobile/ads/impl/go0;F)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 1

    .line 3
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/lt;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/xc2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/km0;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->b(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->c(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/y5;->a:Lcom/yandex/mobile/ads/impl/m9;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m9;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->d(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->f(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->g(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final h(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->h(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/y5;->b:Lcom/yandex/mobile/ads/impl/lt;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lt;->i(Lcom/yandex/mobile/ads/impl/go0;)V

    :cond_0
    return-void
.end method
