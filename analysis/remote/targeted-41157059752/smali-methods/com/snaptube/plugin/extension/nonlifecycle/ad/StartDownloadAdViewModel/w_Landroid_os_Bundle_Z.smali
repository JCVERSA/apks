.method public final w(Landroid/os/Bundle;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/dn0;->k(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/k36;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lo/dn0;->q(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
