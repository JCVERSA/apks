.method public static E()Lcom/snaptube/media/MediaFileScanner;
    .locals 3

    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->C:Lcom/snaptube/media/MediaFileScanner;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snaptube/media/MediaFileScanner;

    sget-object v1, Lcom/snaptube/base/BaseApplication;->f:Landroid/app/Application;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/snaptube/media/MediaFileScanner;-><init>(Landroid/content/Context;Lo/zd3;)V

    sput-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->C:Lcom/snaptube/media/MediaFileScanner;

    :cond_0
    sget-object v0, Lcom/snaptube/premium/app/PhoenixApplication;->C:Lcom/snaptube/media/MediaFileScanner;

    return-object v0
.end method
