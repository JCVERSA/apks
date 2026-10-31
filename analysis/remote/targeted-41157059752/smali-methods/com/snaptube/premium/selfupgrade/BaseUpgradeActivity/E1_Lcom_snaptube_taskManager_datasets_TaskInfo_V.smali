.method public final E1(Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 3

    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseUpgradeActivity"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->i:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->p1()Lo/xy8;

    move-result-object p1

    iget-object p1, p1, Lo/xy8;->e:Landroid/widget/TextView;

    const v0, 0x7f11076e

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->x1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->m:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->m:I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->O1()V

    :cond_3
    iget p1, p0, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->m:I

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->U1()I

    move-result v0

    if-lt p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->b1()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/snaptube/premium/selfupgrade/BaseUpgradeActivity;->O1()V

    :cond_5
    :goto_1
    return-void
.end method
