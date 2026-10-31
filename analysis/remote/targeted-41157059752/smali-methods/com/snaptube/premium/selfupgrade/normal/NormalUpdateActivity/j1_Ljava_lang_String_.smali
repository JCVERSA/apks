.method public j1()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->b2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lo/cu7;->B(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f110730

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method
