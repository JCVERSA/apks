.class public Lcom/snaptube/taskManager/task/video/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/snaptube/taskManager/task/video/g;

.field public final c:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public e:Lcom/snaptube/extractor/pluginlib/models/Format;

.field public f:Ljava/io/File;

.field public g:Lo/mg4;

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lcom/snaptube/taskManager/task/video/d;->h:I

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/d;->b:Lcom/snaptube/taskManager/task/video/g;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/d;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->n()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/task/video/g;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/d;->b:Lcom/snaptube/taskManager/task/video/g;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/snaptube/taskManager/task/video/d;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/d;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->g:Lo/mg4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/mg4;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->g:Lo/mg4;

    :cond_0
    return-void
.end method

.method private l()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->f:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/d;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cu1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/d;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/g;->z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->f:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->f:Ljava/io/File;

    return-object v0
.end method

.method private m()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->l()Ljava/io/File;

    move-result-object v1

    const-string v2, "result.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic n()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->l()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->q(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->k()V

    new-instance v0, Lo/mg4;

    invoke-direct {v0}, Lo/mg4;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->g:Lo/mg4;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->m()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/d;->g:Lo/mg4;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/d;->b:Lcom/snaptube/taskManager/task/video/g;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/snaptube/taskManager/task/video/d;->c(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/snaptube/taskManager/task/video/d;->h:I

    new-instance v6, Lcom/snaptube/taskManager/task/video/d$a;

    invoke-direct {v6, p0, v0}, Lcom/snaptube/taskManager/task/video/d$a;-><init>(Lcom/snaptube/taskManager/task/video/d;Ljava/io/File;)V

    invoke-virtual/range {v1 .. v6}, Lo/mg4;->b(Lo/k08;Ljava/lang/String;Ljava/lang/String;ILo/ce3$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/ng4;

    invoke-direct {v0, p0}, Lo/ng4;-><init>(Lcom/snaptube/taskManager/task/video/d;)V

    invoke-static {v0}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 2

    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->l()Ljava/io/File;

    move-result-object v0

    const-string v1, "audio.tmp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/d;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/d;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/d;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    invoke-static {p1, v0, v1}, Lcom/snaptube/taskManager/task/video/g;->r1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;Z)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/d;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/d;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getAlias()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getMp3Bitrate(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/snaptube/taskManager/task/video/d;->h:I

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->l()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/d;->k()V

    return-void
.end method
