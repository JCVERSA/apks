.class public interface abstract Lvz6;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public onConnect(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    invoke-interface {p0}, Lvz6;->unknowNet()V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lvz6;->onMobile()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lvz6;->onWifi()V

    :goto_0
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    return-void
.end method

.method public onMobile()V
    .locals 0

    return-void
.end method

.method public onWifi()V
    .locals 0

    return-void
.end method

.method public unknowNet()V
    .locals 0

    return-void
.end method
