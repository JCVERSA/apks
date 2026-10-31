.method public final m1(Landroid/content/Context;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const v0, 0x7f1101e4

    goto :goto_0

    :cond_0
    const v0, 0x7f11072e

    :goto_0
    :try_start_0
    invoke-static {p1, v0}, Lo/b88;->e(Landroid/content/Context;I)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

    invoke-virtual {p1, v0, v1, p2}, Lrx/c;->q(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    new-instance p2, Lcom/snaptube/premium/activity/ExploreActivity$d;

    invoke-direct {p2, p0}, Lcom/snaptube/premium/activity/ExploreActivity$d;-><init>(Lcom/snaptube/premium/activity/ExploreActivity;)V

    invoke-virtual {p1, p2}, Lrx/c;->t0(Lo/l3;)Lo/wu7;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
