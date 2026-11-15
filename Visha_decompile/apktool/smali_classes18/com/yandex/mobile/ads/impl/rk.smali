.class public abstract Lcom/yandex/mobile/ads/impl/rk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hi1;


# instance fields
.field protected final a:Lcom/yandex/mobile/ads/impl/i52$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/i52$d;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/i52$d;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rk;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 2

    check-cast p0, Lcom/yandex/mobile/ads/impl/r60;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getPlaybackSuppressionReason()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasNextMediaItem()Z
    .locals 3

    check-cast p0, Lcom/yandex/mobile/ads/impl/r60;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->d()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->e()V

    invoke-virtual {v0, v1, v2, v2}, Lcom/yandex/mobile/ads/impl/i52;->a(IIZ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public final hasPreviousMediaItem()Z
    .locals 3

    check-cast p0, Lcom/yandex/mobile/ads/impl/r60;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->d()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/r60;->e()V

    invoke-virtual {v0, v1, v2, v2}, Lcom/yandex/mobile/ads/impl/i52;->b(IIZ)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/yandex/mobile/ads/impl/r60;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    move-result-object p0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/i52$d;->j:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/yandex/mobile/ads/impl/r60;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i52$d;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/yandex/mobile/ads/impl/r60;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentTimeline()Lcom/yandex/mobile/ads/impl/i52;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/i52;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/r60;->getCurrentMediaItemIndex()I

    move-result v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rk;->a:Lcom/yandex/mobile/ads/impl/i52$d;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/yandex/mobile/ads/impl/i52;->a(ILcom/yandex/mobile/ads/impl/i52$d;J)Lcom/yandex/mobile/ads/impl/i52$d;

    move-result-object p0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/i52$d;->i:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
