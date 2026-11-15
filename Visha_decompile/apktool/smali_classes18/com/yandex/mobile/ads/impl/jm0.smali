.class public final Lcom/yandex/mobile/ads/impl/jm0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kt;

.field private final b:Lcom/yandex/mobile/ads/impl/km0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/kt;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/km0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/km0;-><init>()V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/jm0;-><init>(Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/km0;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kt;Lcom/yandex/mobile/ads/impl/km0;)V
    .locals 1

    .line 3
    const-string v0, "instreamAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdPlayerEventsObservable"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jm0;->b:Lcom/yandex/mobile/ads/impl/km0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/go0;)J
    .locals 1

    .line 3
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->a(Lcom/yandex/mobile/ads/impl/go0;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final a()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->b:Lcom/yandex/mobile/ads/impl/km0;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/kt;->a(Lcom/yandex/mobile/ads/impl/km0;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;F)V
    .locals 1

    .line 5
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/kt;->a(Lcom/yandex/mobile/ads/impl/go0;F)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V
    .locals 1

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->b:Lcom/yandex/mobile/ads/impl/km0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/km0;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;)J
    .locals 1

    .line 1
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->b(Lcom/yandex/mobile/ads/impl/go0;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final b()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/kt;->a(Lcom/yandex/mobile/ads/impl/km0;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->b:Lcom/yandex/mobile/ads/impl/km0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/km0;->a()V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V
    .locals 1

    .line 3
    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->b:Lcom/yandex/mobile/ads/impl/km0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/km0;->b(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V

    return-void
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/go0;)F
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->k(Lcom/yandex/mobile/ads/impl/go0;)F

    move-result p0

    return p0
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/go0;)Z
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->j(Lcom/yandex/mobile/ads/impl/go0;)Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->f(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->c(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->d(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final h(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->g(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final j(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->h(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final k(Lcom/yandex/mobile/ads/impl/go0;)V
    .locals 1

    const-string v0, "videoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jm0;->a:Lcom/yandex/mobile/ads/impl/kt;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kt;->i(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method
