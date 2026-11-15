.class public final Lcom/yandex/mobile/ads/impl/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/pc2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/pc2<",
        "Lcom/yandex/mobile/ads/impl/go0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/lo0;

.field private final b:Lcom/yandex/mobile/ads/impl/kv;

.field private c:Lcom/yandex/mobile/ads/impl/b4;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nb2;Lcom/yandex/mobile/ads/impl/kv;)V
    .locals 1

    const-string v0, "adCreativePlaybackListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdCreativePlaybackEventListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    return-void
.end method

.method private final h(Lcom/yandex/mobile/ads/impl/zb2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->c:Lcom/yandex/mobile/ads/impl/b4;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b4;->b()Lcom/yandex/mobile/ads/impl/zb2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/b4;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/i4;->c:Lcom/yandex/mobile/ads/impl/b4;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    .line 5
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->a(Lcom/yandex/mobile/ads/impl/go0;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->a(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;F)V"
        }
    .end annotation

    .line 9
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/lo0;->a(Lcom/yandex/mobile/ads/impl/go0;F)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/xc2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/xc2;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoAdPlayerError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->h(Lcom/yandex/mobile/ads/impl/go0;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/kv;->a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/xc2;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->c(Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->b(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->d(Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->c(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->b(Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->d(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->f(Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->e(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->f(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final g(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/lo0;->g(Lcom/yandex/mobile/ads/impl/go0;)V

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/i4;->h(Lcom/yandex/mobile/ads/impl/zb2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->b:Lcom/yandex/mobile/ads/impl/kv;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/kv;->g(Lcom/yandex/mobile/ads/impl/zb2;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->a:Lcom/yandex/mobile/ads/impl/lo0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/go0;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/lo0;->j(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final j(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/i4;->c:Lcom/yandex/mobile/ads/impl/b4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/b4;->a(Lcom/yandex/mobile/ads/impl/zb2;)Lcom/yandex/mobile/ads/impl/k4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/k4;->a()Lcom/yandex/mobile/ads/impl/do0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/do0;->e()V

    :cond_0
    return-void
.end method

.method public final k(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string p0, "videoAdInfo"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final l(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    const-string p0, "videoAdInfo"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
