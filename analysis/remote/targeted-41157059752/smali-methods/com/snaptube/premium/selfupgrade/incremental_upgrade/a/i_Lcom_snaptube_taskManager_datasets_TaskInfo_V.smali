.method public i(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lo/cm3;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lo/cm3;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iput-wide v1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->e:J

    sget-object v1, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a$c;->a:[I

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->b:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    sget-object v5, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;->AUTOMATIC:Lcom/snaptube/premium/selfupgrade/incremental_upgrade/IUpgradeDownloader$DownloadMode;

    if-ne p1, v5, :cond_3

    iget p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    if-ge p1, v2, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->f:I

    invoke-virtual {p0, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->p(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4, v3}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/snaptube/premium/selfupgrade/incremental_upgrade/a;->w(ZLo/cm3;)V

    sget-object p1, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->a:Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;

    invoke-virtual {p1, v1}, Lcom/snaptube/premium/selfupgrade/force/AppForceUpdateHelper;->q(Z)V

    :goto_0
    return-void
.end method
