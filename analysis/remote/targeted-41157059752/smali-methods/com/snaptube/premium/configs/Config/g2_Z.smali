.method public static g2()Z
    .locals 2

    const-string v0, "key.task_db_provider_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->f1(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
