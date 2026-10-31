.method public onStateChanged(Lo/x24;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Lcom/snaptube/premium/ads/SplashAdManager$h;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->t0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/SplashAdManager;->r0()V

    :goto_0
    return-void
.end method
