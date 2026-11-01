.method public constructor <init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "task"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskInfo"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->b:Lo/k08;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lo/c18;->d()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->d:Landroid/os/Handler;

    sget-object p1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$formats$2;->INSTANCE:Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$formats$2;

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->g:Lo/t14;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->h:J

    new-instance p1, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$tempDir$2;

    invoke-direct {p1, p0}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate$tempDir$2;-><init>(Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;)V

    invoke-static {p1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;->i:Lo/t14;

    return-void
.end method
