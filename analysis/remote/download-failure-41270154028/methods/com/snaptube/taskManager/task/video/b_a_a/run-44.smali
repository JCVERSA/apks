.method public run()V
    .locals 7

    sget-object v0, Lcom/snaptube/taskManager/task/video/b$e;->a:[I

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->a:Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const v1, 0x7f11016b

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v1}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/k08;->h0(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v1}, Lcom/snaptube/taskManager/task/video/b;->i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1102a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lo/k08;->m0(Ljava/lang/String;Z)I

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v0

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->MP3_extract_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v2, v0, Lcom/snaptube/taskManager/task/video/b$a;->a:Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->l(Lcom/snaptube/taskManager/task/video/b;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v1

    sget-object v5, Lcom/snaptube/taskManager/task/TaskError;->MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v6, Lcom/snaptube/taskManager/task/video/b$a$a$a;

    invoke-direct {v6, p0}, Lcom/snaptube/taskManager/task/video/b$a$a$a;-><init>(Lcom/snaptube/taskManager/task/video/b$a$a;)V

    const-string v4, "extract audio"

    invoke-virtual/range {v1 .. v6}, Lo/du1;->D0(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;Lo/du1$g;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v0

    invoke-virtual {v0}, Lo/k08;->B()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v1}, Lcom/snaptube/taskManager/task/video/b;->i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lo/b88;->m(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->l(Lcom/snaptube/taskManager/task/video/b;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PAUSED:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-static {v0, v1, v2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->v(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v0

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v2, v2, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/b;->i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lo/k08;->m0(Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v1, v1, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v1}, Lcom/snaptube/taskManager/task/video/b;->i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lo/k08;->m0(Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v0, v0, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/b;->k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;

    move-result-object v0

    iget-object v4, p0, Lcom/snaptube/taskManager/task/video/b$a$a;->c:Lcom/snaptube/taskManager/task/video/b$a;

    iget-object v4, v4, Lcom/snaptube/taskManager/task/video/b$a;->b:Lcom/snaptube/taskManager/task/video/b;

    invoke-static {v4}, Lcom/snaptube/taskManager/task/video/b;->i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v3}, Lo/k08;->n0(ILjava/lang/String;Z)I

    :catch_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
