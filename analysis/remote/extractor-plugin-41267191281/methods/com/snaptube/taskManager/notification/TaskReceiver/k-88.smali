.method public static synthetic k(JLandroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->B0(J)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/aq4;->d(Ljava/lang/String;)I

    move-result p1

    iget-boolean v0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    invoke-static {p2, v0, v1, p1}, Lcom/snaptube/premium/NavigationManager;->t0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    sget-object v1, Lcom/snaptube/player_guide/PlayerGuideAdPos;->AD_POS_LOCAL_PLAY_AUDIO_GP:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v0, v1}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object p2

    sget-object v0, Lo/kz3;->a:Lo/kz3$a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lo/kz3$a;->k(Lcom/snaptube/player_guide/PlayerGuideAdPos;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/snaptube/player_guide/IPlayerGuide;->w(Lcom/snaptube/player_guide/PlayerGuideAdPos;Ljava/util/Map;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->D()Lo/zd3;

    move-result-object p1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/zd3;->Y(Ljava/lang/String;)Lrx/c;

    move-result-object p1

    invoke-static {p1}, Lo/zp6;->e(Lrx/c;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    const-string v6, "download_ok_notification"

    const/4 v7, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/snaptube/premium/NavigationManager;->N(Landroid/content/Context;ILjava/lang/String;ZLandroid/os/Bundle;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/snaptube/premium/action/OpenMediaFileAction$From;->NOTIFICATION:Lcom/snaptube/premium/action/OpenMediaFileAction$From;

    invoke-static {p1, p2, v0}, Lcom/snaptube/premium/action/OpenMediaFileAction;->a(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/premium/action/OpenMediaFileAction$From;)Lcom/snaptube/premium/action/OpenMediaFileAction;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/snaptube/premium/action/OpenMediaFileAction;->g:Z

    invoke-virtual {p1}, Lcom/snaptube/premium/action/OpenMediaFileAction;->execute()V

    :goto_0
    const-string p1, "extra.report_download_success"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "click_task_ok_notification"

    iget-boolean p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    invoke-static {p1, p0}, Lo/rt1;->h(Ljava/lang/String;Z)V

    :cond_4
    return-void
.end method
