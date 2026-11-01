.class public Lcom/snaptube/taskManager/task/video/c;
.super Lo/du1;


# instance fields
.field public n:Lcom/snaptube/taskManager/task/video/g$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lo/du1;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    new-instance v0, Lcom/snaptube/taskManager/task/video/b;

    invoke-direct {v0, p1, p0, p2}, Lcom/snaptube/taskManager/task/video/b;-><init>(Landroid/content/Context;Lo/du1;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    return-void
.end method


# virtual methods
.method public A0(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0, p1}, Lcom/snaptube/taskManager/task/video/g$d;->c(I)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public B0()I
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->f()I

    move-result v0

    return v0
.end method

.method public C0()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->a()V

    return-void
.end method

.method public F0()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/c;->C0()V

    return-void
.end method

.method public O(Lo/ah3;)V
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lo/ah3;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->Q(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta_details"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    :goto_0
    return-void
.end method

.method public Q()V
    .locals 1

    invoke-super {p0}, Lo/du1;->Q()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->e()V

    return-void
.end method

.method public R()V
    .locals 1

    invoke-super {p0}, Lo/k08;->R()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->b()V

    return-void
.end method

.method public T()V
    .locals 1

    invoke-super {p0}, Lo/k08;->T()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->onDestroy()V

    return-void
.end method

.method public W(Lcom/phoenix/download/DownloadInfo;)V
    .locals 0

    return-void
.end method

.method public Z()V
    .locals 2

    invoke-super {p0}, Lo/du1;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-static {v0}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->INVALID_MEDIA_FILE:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "Video file not exist."

    invoke-virtual {p0, v0, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/c;->n:Lcom/snaptube/taskManager/task/video/g$d;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/snaptube/taskManager/task/video/g$d;->g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/c;->F0()V

    return-void
.end method

.method public z0(I)Lcom/phoenix/download/DownloadRequest;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
