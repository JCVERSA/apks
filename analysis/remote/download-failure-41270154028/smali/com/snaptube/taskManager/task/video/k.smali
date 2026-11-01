.class public Lcom/snaptube/taskManager/task/video/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# instance fields
.field public a:Landroid/content/Context;

.field public final b:Lo/k08;

.field public final c:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public final e:[Lcom/snaptube/extractor/pluginlib/models/Format;

.field public f:Ljava/io/File;

.field public g:J

.field public h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/extractor/pluginlib/models/Format;

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/k;->e:[Lcom/snaptube/extractor/pluginlib/models/Format;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/k;->g:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lo/c18;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/k;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/k;->b:Lo/k08;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/k;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/k;->o()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/taskManager/task/video/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/snaptube/taskManager/task/video/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/k;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/snaptube/taskManager/task/video/k;)Lo/k08;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/k;->b:Lo/k08;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/snaptube/taskManager/task/video/k;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/k;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object p0
.end method

.method private m()V
    .locals 5

    iget-wide v0, p0, Lcom/snaptube/taskManager/task/video/k;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/taskManager/task/video/k;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->n(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/k;->g:J

    :cond_0
    return-void
.end method

.method private n()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/k;->f:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/k;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cu1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/k;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/g;->z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/k;->f:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/k;->f:Ljava/io/File;

    return-object v0
.end method

.method private synthetic o()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/k;->n()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->q(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/k;->m()V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/snaptube/taskManager/task/video/k;->c(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/snaptube/taskManager/task/video/k;->c(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/k;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snaptube/taskManager/task/video/k$a;

    invoke-direct {v4, p0}, Lcom/snaptube/taskManager/task/video/k$a;-><init>(Lcom/snaptube/taskManager/task/video/k;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/k;->g:J

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/sf9;

    invoke-direct {v0, p0}, Lo/sf9;-><init>(Lcom/snaptube/taskManager/task/video/k;)V

    invoke-static {v0}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "audio.tmp"

    goto :goto_0

    :cond_0
    const-string p1, "video.tmp"

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/k;->n()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/k;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/k;->e:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/k;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/snaptube/taskManager/task/video/g;->s1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;ZZ)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 5

    invoke-static {}, Lcom/snaptube/taskManager/CombinTask;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/k;->b:Lo/k08;

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/k;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lo/ks2;->l(ZLjava/util/List;Lcom/snaptube/extractor/pluginlib/models/Format;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v2

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/k;->e:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    aget-object v2, v2, v0

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/k;->n()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveWebM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/k;->e:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v0, v3, v0

    aget-object v1, v3, v1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lo/ks2;->h(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/k;->b:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "resolveWebM failed"

    invoke-virtual {p2, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/k;->m()V

    return-void
.end method
