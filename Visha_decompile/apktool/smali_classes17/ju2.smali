.class public interface abstract Lju2;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public attach(Lcom/yandex/div/core/player/a;)V
    .locals 0

    const-string p0, "player"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public detach()V
    .locals 0

    return-void
.end method

.method public getAttachedPlayer()Lcom/yandex/div/core/player/a;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setScale(Lcom/yandex/div2/DivVideoScale;)V
    .locals 0

    const-string p0, "videoScale"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setVisibleOnScreen(Z)V
    .locals 0

    return-void
.end method
