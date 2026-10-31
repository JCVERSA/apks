.method public final q0(Landroid/view/ViewGroup;JLjava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x5

    const-wide/16 v0, 0x0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    const/4 v3, 0x6

    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, p4, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    return-void
.end method
