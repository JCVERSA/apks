.method public static u4()Z
    .locals 2

    const-string v0, "key.enable_uninstall_clean_dialog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/snaptube/premium/configs/Config;->f1(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
