.class public Lcom/snaptube/taskManager/task/video/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public final c:Lo/k08;

.field public d:[Lcom/snaptube/extractor/pluginlib/models/Format;

.field public e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public f:Ljava/io/File;

.field public g:Lo/x33;

.field public h:Lo/uj8$b;

.field public i:Lo/dv8;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;Lo/dv8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    iput-object p4, p0, Lcom/snaptube/taskManager/task/video/f;->i:Lo/dv8;

    return-void
.end method

.method public static synthetic h(Lcom/snaptube/taskManager/task/video/f;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/f;->k(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/snaptube/taskManager/task/video/f;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/f;->m(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method private l()V
    .locals 11

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->h:Lo/uj8$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gtz v10, :cond_1

    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    :cond_3
    new-instance v1, Lo/uj8$b;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/snaptube/taskManager/task/video/f$a;

    invoke-direct {v3, p0}, Lcom/snaptube/taskManager/task/video/f$a;-><init>(Lcom/snaptube/taskManager/task/video/f;)V

    invoke-direct {v1, v0, v2, v3}, Lo/uj8$b;-><init>(Ljava/util/List;Ljava/util/Map;Lo/zu$c;)V

    iput-object v1, p0, Lcom/snaptube/taskManager/task/video/f;->h:Lo/uj8$b;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/premium/app/PhoenixApplication;->N()Lo/uj8;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/f;->h:Lo/uj8$b;

    invoke-virtual {v0, v1}, Lo/uj8;->b(Lo/zu;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->g:Lo/x33;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/x33;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/x33;

    invoke-direct {v0}, Lo/x33;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->g:Lo/x33;

    :goto_0
    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/f;->g:Lo/x33;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/f;->c(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/f;->c(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lo/hp8;

    invoke-direct {v6, p0}, Lo/hp8;-><init>(Lcom/snaptube/taskManager/task/video/f;)V

    invoke-virtual/range {v1 .. v6}, Lo/x33;->b(Lo/k08;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo/ce3$a;)V

    return-void
.end method

.method public b()V
    .locals 0

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

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/f;->j()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

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
    .locals 3

    invoke-static {}, Lcom/snaptube/taskManager/CombinTask;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    sget-object p2, Lcom/snaptube/taskManager/task/TaskError;->HD_COMBINE_NOT_SUPPORTED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, p2, v1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->e:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->i:Lo/dv8;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lo/dv8;->E(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/f;->j()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lo/wd9;->h(Ljava/io/File;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->E()V

    invoke-direct {p0}, Lcom/snaptube/taskManager/task/video/f;->l()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveCB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object p1

    invoke-static {p2, v1, v1, p1}, Lo/ks2;->h(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->RESOLVE_FORMAT_ERROR:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p2, v0, p1}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    return-void
.end method

.method public j()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->f:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cu1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v2}, Lcom/snaptube/taskManager/task/video/g;->z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->f:Ljava/io/File;

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->f:Ljava/io/File;

    return-object v0
.end method

.method public final synthetic k(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f11016b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-virtual {p1, v1, p2, v0}, Lo/k08;->n0(ILjava/lang/String;Z)I

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    invoke-virtual {p1}, Lo/k08;->A()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->HD_FAILED_TO_MUX:Lcom/snaptube/taskManager/task/TaskError;

    invoke-virtual {p1, v0, p2}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v2, :cond_1

    aget-object v7, v1, v4

    invoke-virtual {v7}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v1

    cmp-long v4, v1, v5

    if-gtz v4, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->setSize(J)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lcom/snaptube/taskManager/task/video/f;->d:[Lcom/snaptube/extractor/pluginlib/models/Format;

    array-length v4, v2

    move-wide v13, v5

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_2

    aget-object v8, v2, v7

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-lez v11, :cond_3

    invoke-virtual {v8}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v8

    add-long/2addr v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move v3, v1

    :cond_3
    if-eqz v3, :cond_5

    iget-object v1, v0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    cmp-long v3, v1, v13

    if-gez v3, :cond_5

    iget-object v1, v0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    invoke-virtual {v1, v13, v14}, Lo/k08;->e0(J)V

    iget-object v8, v0, Lcom/snaptube/taskManager/task/video/f;->c:Lo/k08;

    iget-object v1, v0, Lcom/snaptube/taskManager/task/video/f;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v2, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->c:I

    int-to-long v9, v2

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->e:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_4

    :goto_3
    move-wide v11, v1

    goto :goto_4

    :cond_4
    const-wide/16 v1, 0x1

    goto :goto_3

    :goto_4
    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lo/k08;->l0(JJJZ)I

    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->g:Lo/x33;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/x33;->a()V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/f;->h:Lo/uj8$b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/zu;->c()V

    :cond_1
    return-void
.end method
