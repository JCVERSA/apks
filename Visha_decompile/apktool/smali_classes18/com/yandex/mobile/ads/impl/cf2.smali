.class public final Lcom/yandex/mobile/ads/impl/cf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/nu;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/gf2;

.field private final b:Lcom/yandex/mobile/ads/impl/ro0;

.field private final c:Lcom/yandex/mobile/ads/impl/gg2;

.field private d:Lcom/yandex/mobile/ads/impl/ef2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/gf2;Lcom/yandex/mobile/ads/impl/ro0;)V
    .locals 1

    const-string v0, "videoPlayerController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instreamVideoPresenter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/cf2;->b:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gf2;->a()Lcom/yandex/mobile/ads/impl/gg2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gg2;->a()Lcom/yandex/mobile/ads/impl/fg2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->b:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->b()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gf2;->d()V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->b:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->i()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->b:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->e()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->b:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->g()V

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ef2;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cf2;->d:Lcom/yandex/mobile/ads/impl/ef2;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gg2;->a()Lcom/yandex/mobile/ads/impl/fg2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->b:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->d:Lcom/yandex/mobile/ads/impl/ef2;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ef2;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gg2;->a()Lcom/yandex/mobile/ads/impl/fg2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gf2;->d()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->c:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gf2;->e()V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gg2;->a()Lcom/yandex/mobile/ads/impl/fg2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->a:Lcom/yandex/mobile/ads/impl/gf2;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gf2;->f()V

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gg2;->a()Lcom/yandex/mobile/ads/impl/fg2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v0, Lcom/yandex/mobile/ads/impl/fg2;->f:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v0, Lcom/yandex/mobile/ads/impl/fg2;->b:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    :goto_0
    return-void
.end method

.method public final onVideoCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->g:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->d:Lcom/yandex/mobile/ads/impl/ef2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ef2;->onVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onVideoError()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->i:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->d:Lcom/yandex/mobile/ads/impl/ef2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ef2;->onVideoError()V

    :cond_0
    return-void
.end method

.method public final onVideoPaused()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->h:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->d:Lcom/yandex/mobile/ads/impl/ef2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ef2;->onVideoPaused()V

    :cond_0
    return-void
.end method

.method public final onVideoPrepared()V
    .locals 2

    sget-object v0, Lcom/yandex/mobile/ads/impl/fg2;->c:Lcom/yandex/mobile/ads/impl/fg2;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/gg2;->a()Lcom/yandex/mobile/ads/impl/fg2;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->d:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->b:Lcom/yandex/mobile/ads/impl/ro0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ro0;->f()V

    :cond_0
    return-void
.end method

.method public final onVideoResumed()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/cf2;->c:Lcom/yandex/mobile/ads/impl/gg2;

    sget-object v1, Lcom/yandex/mobile/ads/impl/fg2;->e:Lcom/yandex/mobile/ads/impl/fg2;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/gg2;->a(Lcom/yandex/mobile/ads/impl/fg2;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cf2;->d:Lcom/yandex/mobile/ads/impl/ef2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ef2;->onVideoResumed()V

    :cond_0
    return-void
.end method
