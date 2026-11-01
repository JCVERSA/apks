.method public static final g(Lcom/snaptube/taskManager/FfmpegTaskScheduler$Status;Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1;Ljava/lang/String;)V
    .locals 10

    const-string v0, "$status"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p0

    invoke-static {p3}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lo/k08;->h0(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->m(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "||tempDir:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",Files:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->m(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v7, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1$onStatusChanged$1$1;->INSTANCE:Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1$onStatusChanged$1$1;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, ","

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/ArraysKt___ArraysKt;->L([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/dx2;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p1

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->MP4_PHOTO_VIDEO:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p0

    invoke-virtual {p0}, Lo/k08;->A()V

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p0

    invoke-virtual {p0}, Lo/k08;->B()V

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f11016a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p0, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lo/b88;->m(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$onPostDownload$1;->b()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object p0

    iget-wide p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    sget-object p2, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;->PAUSED:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;

    invoke-static {p0, p1, p2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->v(JLcom/snaptube/taskManager/datasets/TaskInfo$TaskStatus;)V

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p0

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f11016b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lo/k08;->m0(Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p0

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f110239

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lo/k08;->m0(Ljava/lang/String;Z)I

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->k(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Lo/k08;

    move-result-object p0

    invoke-static {p1}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1107c8

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lo/k08;->m0(Ljava/lang/String;Z)I

    :catchall_0
    :goto_0
    return-void

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
