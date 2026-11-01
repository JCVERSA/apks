.class public Lcom/snaptube/taskManager/task/video/j;
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

.field public g:J

.field public h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/j;->g:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lo/c18;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/j;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/j;->b:Lcom/snaptube/taskManager/task/video/g;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/j;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->p()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/taskManager/task/video/j;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/j;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/snaptube/taskManager/task/video/j;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/j;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/snaptube/taskManager/task/video/j;)Lcom/snaptube/taskManager/task/video/g;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/j;->b:Lcom/snaptube/taskManager/task/video/g;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/snaptube/taskManager/task/video/j;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/j;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object p0
.end method

.method private m()V
    .locals 5

    iget-wide v0, p0, Lcom/snaptube/taskManager/task/video/j;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/taskManager/task/video/j;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->n(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/j;->g:J

    :cond_0
    return-void
.end method

.method private n()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/j;->f:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/j;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cu1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/j;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/g;->z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/j;->f:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/j;->f:Ljava/io/File;

    return-object v0
.end method

.method private o()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->n()Ljava/io/File;

    move-result-object v1

    const-string v2, "result.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic p()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->n()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->q(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->m()V

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->o()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/j;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getAlias()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getMp3Bitrate(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/snaptube/taskManager/task/video/j;->c(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    mul-int/lit16 v1, v1, 0x3e8

    new-instance v5, Lcom/snaptube/taskManager/task/video/j$a;

    invoke-direct {v5, p0, v0}, Lcom/snaptube/taskManager/task/video/j$a;-><init>(Lcom/snaptube/taskManager/task/video/j;Ljava/io/File;)V

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->q(Ljava/lang/String;Ljava/lang/String;ILcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/j;->g:J

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/rf9;

    invoke-direct {v0, p0}, Lo/rf9;-><init>(Lcom/snaptube/taskManager/task/video/j;)V

    invoke-static {v0}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 2

    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->n()Ljava/io/File;

    move-result-object v0

    const-string v1, "audio.tmp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/j;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/j;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/j;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

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
    .locals 3

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/j;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/j;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->n()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    return-void

    :cond_0
    new-instance p1, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->UNKNOWN_FORMAT:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YoutubeWebM2Mp3Task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/j;->m()V

    return-void
.end method
