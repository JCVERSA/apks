.class public Lcom/snaptube/taskManager/task/video/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lo/du1;

.field public final c:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public d:Ljava/io/File;

.field public e:J

.field public f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/du1;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/b;->e:J

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lo/c18;->d()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/b;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/b;->b:Lo/du1;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/b;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/b;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/b;->s()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/taskManager/task/video/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/snaptube/taskManager/task/video/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/b;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/snaptube/taskManager/task/video/b;)Lo/du1;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/b;->b:Lo/du1;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/snaptube/taskManager/task/video/b;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/b;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/snaptube/taskManager/task/video/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method private q()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b;->d:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cu1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/b;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/g;->z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/b;->d:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b;->d:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/b;->n()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/b;->r()Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/snaptube/taskManager/task/video/b$a;

    invoke-direct {v4, p0, v0}, Lcom/snaptube/taskManager/task/video/b$a;-><init>(Lcom/snaptube/taskManager/task/video/b;Ljava/io/File;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->r(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/b;->e:J

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/yb2;

    invoke-direct {v0, p0}, Lo/yb2;-><init>(Lcom/snaptube/taskManager/task/video/b;)V

    invoke-static {v0}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 2

    new-instance p1, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/b;->q()Ljava/io/File;

    move-result-object v0

    const-string v1, "audio.tmp"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 0

    const/4 p1, 0x0

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

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/b;->q()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    return-void
.end method

.method public final n()V
    .locals 5

    iget-wide v0, p0, Lcom/snaptube/taskManager/task/video/b;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    iget-wide v1, p0, Lcom/snaptube/taskManager/task/video/b;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->n(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/snaptube/taskManager/task/video/b;->e:J

    :cond_0
    return-void
.end method

.method public final declared-synchronized o(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b;->b:Lo/du1;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1104d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/k08;->m0(Ljava/lang/String;Z)I

    new-instance v0, Lcom/snaptube/taskManager/task/video/b$d;

    invoke-direct {v0, p0}, Lcom/snaptube/taskManager/task/video/b$d;-><init>(Lcom/snaptube/taskManager/task/video/b;)V

    invoke-static {v0}, Lrx/c;->M(Ljava/util/concurrent/Callable;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/sh;->c()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lcom/snaptube/taskManager/task/video/b$b;

    invoke-direct {v1, p0, p1}, Lcom/snaptube/taskManager/task/video/b$b;-><init>(Lcom/snaptube/taskManager/task/video/b;Ljava/lang/String;)V

    new-instance v2, Lcom/snaptube/taskManager/task/video/b$c;

    invoke-direct {v2, p0, p1}, Lcom/snaptube/taskManager/task/video/b$c;-><init>(Lcom/snaptube/taskManager/task/video/b;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/b;->n()V

    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/b;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/b;->q()Ljava/io/File;

    move-result-object v1

    const-string v2, "result.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic s()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/b;->q()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->q(Ljava/io/File;)Z

    return-void
.end method
