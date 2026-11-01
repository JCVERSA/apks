.class public Lcom/snaptube/taskManager/task/video/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# instance fields
.field public final a:Lo/k08;

.field public final b:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public final d:[Lcom/snaptube/extractor/pluginlib/models/Format;

.field public e:Ljava/io/File;

.field public f:Lo/x33;

.field public g:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;


# direct methods
.method public constructor <init>(Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snaptube/extractor/pluginlib/models/Format;

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/i;->m()V

    return-void
.end method

.method public static synthetic i()Lo/mg8;
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/task/video/i;->o()Lo/mg8;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic j(Lcom/snaptube/taskManager/task/video/i;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/i;->n(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic k(Lcom/snaptube/taskManager/task/video/i;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/task/video/i;->p(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;

    move-result-object p0

    return-object p0
.end method

.method private l()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->e:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cu1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/g;->z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->e:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->e:Ljava/io/File;

    return-object v0
.end method

.method private synthetic n(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/snaptube/taskManager/task/video/i;->q(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, v0, p2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic o()Lo/mg8;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->f:Lo/x33;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/x33;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/x33;

    invoke-direct {v0}, Lo/x33;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->f:Lo/x33;

    :goto_0
    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/i;->f:Lo/x33;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/i;->c(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/i;->c(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lo/de9;

    invoke-direct {v6, p0}, Lo/de9;-><init>(Lcom/snaptube/taskManager/task/video/i;)V

    invoke-virtual/range {v1 .. v6}, Lo/x33;->b(Lo/k08;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ce3$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/ce9;

    invoke-direct {v0, p0}, Lo/ce9;-><init>(Lcom/snaptube/taskManager/task/video/i;)V

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

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/i;->l()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/i;->r(I)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

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

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lo/ks2;->k(ZLjava/util/List;Lcom/snaptube/extractor/pluginlib/models/Format;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v2

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    aget-object v2, v2, v0

    aput-object v2, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/i;->l()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p2

    invoke-virtual {p2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    new-instance p2, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/i;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v0, v2, v0

    invoke-direct {p2, v1, p1, v0}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->g:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->f0()V

    return-void

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolveHD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v0, v3, v0

    aget-object v1, v3, v1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lo/ks2;->h(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    const-string v1, "resolveHD failed!"

    invoke-virtual {p2, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic m()V
    .locals 1

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/i;->l()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->q(Ljava/io/File;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->f:Lo/x33;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/x33;->a()V

    :cond_0
    return-void
.end method

.method public final synthetic p(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11016b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const/16 v0, 0x64

    invoke-virtual {p1, v0, p2, p3}, Lo/k08;->n0(ILjava/lang/String;Z)I

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    invoke-virtual {p1}, Lo/k08;->A()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/i;->a:Lo/k08;

    sget-object p3, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p2, p3, p1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->g:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    new-instance v1, Lo/ee9;

    invoke-direct {v1}, Lo/ee9;-><init>()V

    new-instance v2, Lo/fe9;

    invoke-direct {v2, p0, p1}, Lo/fe9;-><init>(Lcom/snaptube/taskManager/task/video/i;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a0(Lo/bx2;Lo/rx2;)V

    return-void
.end method

.method public final r(I)V
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/i;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/wc1;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    new-instance v0, Lo/tj8$c;

    invoke-direct {v0}, Lo/tj8$c;-><init>()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/tj8$c;->a(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->setSize(J)V

    :cond_0
    return-void
.end method
