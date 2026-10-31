.method public static j0(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f11059b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {p0, v3, v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p0

    sput-object p0, Lcom/snaptube/premium/selfupgrade/CheckSelfUpgradeManager;->c:Landroid/app/ProgressDialog;

    return-void
.end method
