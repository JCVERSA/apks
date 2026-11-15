.class public final Lcom/yandex/mobile/ads/impl/co0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/wc2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/co0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/wc2<",
        "Lcom/yandex/mobile/ads/impl/go0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/go0;

.field private final b:Lcom/yandex/mobile/ads/impl/jm0;

.field private c:Lcom/yandex/mobile/ads/impl/co0$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/jm0;)V
    .locals 1

    const-string v0, "instreamVideoAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamAdPlayerController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->k(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final a(F)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/jm0;->a(Lcom/yandex/mobile/ads/impl/go0;F)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/oc2;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->c:Lcom/yandex/mobile/ads/impl/co0$a;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v1, v2, v0}, Lcom/yandex/mobile/ads/impl/jm0;->b(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->c:Lcom/yandex/mobile/ads/impl/co0$a;

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/yandex/mobile/ads/impl/co0$a;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/co0$a;-><init>(Lcom/yandex/mobile/ads/impl/oc2;)V

    .line 8
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {p1, v1, v0}, Lcom/yandex/mobile/ads/impl/jm0;->a(Lcom/yandex/mobile/ads/impl/go0;Lcom/yandex/mobile/ads/impl/lt;)V

    .line 9
    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->c:Lcom/yandex/mobile/ads/impl/co0$a;

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/zb2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/zb2<",
            "Lcom/yandex/mobile/ads/impl/go0;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/mobile/ads/impl/go0;

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/jm0;->g(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->a(Lcom/yandex/mobile/ads/impl/go0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->f(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->h(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->j(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final getAdPosition()J
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->b(Lcom/yandex/mobile/ads/impl/go0;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVolume()F
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->c(Lcom/yandex/mobile/ads/impl/go0;)F

    move-result p0

    return p0
.end method

.method public final isPlayingAd()Z
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->d(Lcom/yandex/mobile/ads/impl/go0;)Z

    move-result p0

    return p0
.end method

.method public final pauseAd()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->e(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method

.method public final resumeAd()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/co0;->b:Lcom/yandex/mobile/ads/impl/jm0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/co0;->a:Lcom/yandex/mobile/ads/impl/go0;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/jm0;->i(Lcom/yandex/mobile/ads/impl/go0;)V

    return-void
.end method
