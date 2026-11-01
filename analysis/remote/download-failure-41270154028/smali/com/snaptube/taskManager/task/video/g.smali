.class public Lcom/snaptube/taskManager/task/video/g;
.super Lo/du1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/g$d;,
        Lcom/snaptube/taskManager/task/video/g$e;
    }
.end annotation


# instance fields
.field public n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public o:Lcom/snaptube/extractor/pluginlib/models/Format;

.field public p:Lcom/snaptube/taskManager/task/video/g$d;

.field public q:Lo/wu7;

.field public r:Lo/wu7;

.field public s:Lcom/snaptube/taskManager/task/video/a;

.field t:Lo/dv8;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public u:Lrx/c;

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/du1;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->u:Lrx/c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/snaptube/taskManager/task/video/g;->v:Z

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snaptube/premium/app/a;

    invoke-interface {p1, p0}, Lcom/snaptube/taskManager/task/video/g$e;->b(Lcom/snaptube/taskManager/task/video/g;)V

    return-void
.end method

.method public static synthetic G1()Lo/mg8;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic K1(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/Throwable;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 0

    return-object p0
.end method

.method public static synthetic N0(Lcom/snaptube/taskManager/task/video/g;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/g;->I1(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic O0(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->R1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P0(Lcom/snaptube/premium/lyric/SongEntity;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/g;->V1(Lcom/snaptube/premium/lyric/SongEntity;)V

    return-void
.end method

.method public static synthetic Q0(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/g;->M1(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic R0(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/Format;)Lrx/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->N1(Lcom/snaptube/extractor/pluginlib/models/Format;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S0(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/Format;ILcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/task/video/g;->J1(Lcom/snaptube/extractor/pluginlib/models/Format;ILcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S1(Ljava/lang/Throwable;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic T0(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/snaptube/taskManager/task/video/g;->H1(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U0(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;)Lrx/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->P1(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U1(Lcom/snaptube/extractor/pluginlib/models/Format;)Lrx/c;
    .locals 5

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getAvailableAt()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {p0}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download wait start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoDownloadTask"

    invoke-static {v3, v2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lrx/c;->q(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic V0(Ljava/lang/Throwable;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/g;->S1(Ljava/lang/Throwable;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V1(Lcom/snaptube/premium/lyric/SongEntity;)V
    .locals 0

    return-void
.end method

.method public static synthetic W0()Lo/mg8;
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/task/video/g;->G1()Lo/mg8;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic W1(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "download lyric fail"

    invoke-static {v0, p0}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic X0(Lcom/snaptube/extractor/pluginlib/models/Format;)Lrx/c;
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/g;->U1(Lcom/snaptube/extractor/pluginlib/models/Format;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static X1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "Task"

    invoke-interface {v0, v1}, Lo/ah3;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "download_format"

    invoke-interface {v1, v2}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object v1

    const-string v2, "format_tag"

    invoke-static {p0}, Lo/jy2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    const-string v1, "download_tag"

    invoke-static {p1}, Lo/jy2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-interface {v0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public static synthetic Y0(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/taskManager/task/video/g;->W1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic Z0(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->T1(Lcom/snaptube/extractor/pluginlib/models/Format;)V

    return-void
.end method

.method public static synthetic a1(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->O1(Lcom/snaptube/extractor/pluginlib/models/Format;)V

    return-void
.end method

.method public static synthetic b1(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->Q1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    return-void
.end method

.method public static synthetic c1(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/g;->L1(Ljava/lang/Throwable;Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic d1(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/Throwable;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->K1(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/lang/Throwable;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e1(Lcom/snaptube/taskManager/task/video/g;)Lcom/snaptube/taskManager/task/video/a;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/g;->s:Lcom/snaptube/taskManager/task/video/a;

    return-object p0
.end method

.method public static bridge synthetic f1(Lcom/snaptube/taskManager/task/video/g;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    return-object p0
.end method

.method public static f2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getClosestFormat(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/snaptube/taskManager/task/video/g;->X1(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static bridge synthetic g1(Lcom/snaptube/taskManager/task/video/g;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    return-object p0
.end method

.method public static g2(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->b:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_M4A:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq p0, v1, :cond_1

    sget-object v1, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->TASK_MP3:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    if-eq p0, v1, :cond_1

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->h(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static bridge synthetic h1(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->C1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic i1(Lcom/snaptube/taskManager/task/video/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->E1()V

    return-void
.end method

.method public static bridge synthetic j1(Lcom/snaptube/taskManager/task/video/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->a2()V

    return-void
.end method

.method public static bridge synthetic k1(Lcom/snaptube/taskManager/task/video/g;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->h2(Z)V

    return-void
.end method

.method public static bridge synthetic l1(Lcom/snaptube/taskManager/task/video/g;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->l2()V

    return-void
.end method

.method public static r1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;Z)Lcom/phoenix/download/DownloadRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/snaptube/taskManager/task/video/g;->s1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;ZZ)Lcom/phoenix/download/DownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method public static s1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;ZZ)Lcom/phoenix/download/DownloadRequest;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/phoenix/download/DownloadRequest;->a()Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phoenix/download/DownloadRequest$a;->B(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phoenix/download/DownloadRequest$a;->D(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phoenix/download/DownloadRequest$a;->y(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/wd9;->S(Ljava/lang/String;)Lcom/phoenix/download/DownloadInfo$ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/phoenix/download/DownloadRequest$a;->w(Lcom/phoenix/download/DownloadInfo$ContentType;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object v1

    invoke-static {p0, p1, p2, p3}, Lo/wd9;->s(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;ZZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/phoenix/download/DownloadRequest$a;->z(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-lez p3, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    invoke-virtual {p2, v1, v2}, Lcom/phoenix/download/DownloadRequest$a;->C(J)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string v1, "duration"

    invoke-virtual {p2, v1, p3}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    const-string p3, "thumbnail"

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/phoenix/download/DownloadRequest$a;->A(Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeaders()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/phoenix/download/DownloadRequest$a;->x(Ljava/util/Map;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    const-string p3, "format"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p2

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getYtServerAbrStream()Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getYtServerAbrStream()Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;

    move-result-object p0

    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/models/YTServerAbrStream;->a:Ljava/lang/String;

    :cond_2
    const-string p0, "video_playback_config"

    invoke-virtual {p2, p0, v0}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p0

    const-string p2, "lastModified"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getLastModified()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOriginTag()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "itag"

    invoke-virtual {p0, p2, p1}, Lcom/phoenix/download/DownloadRequest$a;->v(Ljava/lang/String;Ljava/lang/String;)Lcom/phoenix/download/DownloadRequest$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/phoenix/download/DownloadRequest$a;->u()Lcom/phoenix/download/DownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method public static z1(Lcom/snaptube/taskManager/datasets/TaskInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/snaptube/taskManager/datasets/TaskInfo;->w:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/wd9;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xaa

    invoke-static {p0, v0}, Lo/wd9;->i(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A0(I)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/snaptube/taskManager/task/video/g$d;->c(I)Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final A1()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/snaptube/premium/youtube/YtbLoginStatusHelper;->a:Lcom/snaptube/premium/youtube/YtbLoginStatusHelper;

    invoke-virtual {v0}, Lcom/snaptube/premium/youtube/YtbLoginStatusHelper;->b()Lcom/snaptube/premium/LoginState;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/LoginState;->LOGIN_INVALID:Lcom/snaptube/premium/LoginState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f1105d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Lcom/snaptube/premium/LoginState;->NOT_LOGIN:Lcom/snaptube/premium/LoginState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f1105d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f110633

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B0()I
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public final B1(Z)Lrx/c;
    .locals 3

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object p1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const-string v1, "download_format_tag"

    invoke-virtual {p1, v1, v0}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->x(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/g$b;

    invoke-direct {v0, p0}, Lcom/snaptube/taskManager/task/video/g$b;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public C0()V
    .locals 2

    invoke-virtual {p0}, Lo/du1;->E0()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/k08;->h:J

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->i1(Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->a()V

    :cond_0
    return-void
.end method

.method public final C1(Ljava/lang/Throwable;)V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->I()Lcom/snaptube/plugin/a;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/a;->v(Lcom/snaptube/plugin/PluginId;)Lcom/dayuwuxian/em/api/proto/PluginInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->b2(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Lcom/dayuwuxian/em/api/proto/PluginInfo;->version:Ljava/lang/String;

    invoke-static {v1, v0}, Lo/c16;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->R0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->U(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->D1(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->b2(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final D1(Ljava/lang/Throwable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->k2()V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x48f

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object v0

    sget-object v1, Lo/a58;->c:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/gq8;

    invoke-direct {v1, p0, p1}, Lo/gq8;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;)V

    new-instance v2, Lo/hq8;

    invoke-direct {v2, p0, p1}, Lo/hq8;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->q:Lo/wu7;

    return-void
.end method

.method public final declared-synchronized E1()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->s:Lcom/snaptube/taskManager/task/video/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snaptube/taskManager/task/video/a;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/snaptube/taskManager/task/video/a;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->s:Lcom/snaptube/taskManager/task/video/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final F1(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-static {p1}, Lo/zc2;->c(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/snaptube/taskManager/task/TaskException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/snaptube/taskManager/task/TaskException;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/task/TaskException;->getError()Lcom/snaptube/taskManager/task/TaskError;

    move-result-object p1

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_TIME_OUT:Lcom/snaptube/taskManager/task/TaskError;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final synthetic H1(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Throwable;)Lo/mg8;
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|success:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|error:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lo/du1;->M0(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final synthetic I1(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->s:Lcom/snaptube/taskManager/task/video/a;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "|error:audioMetaInfoHelper = null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/du1;->M0(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lo/iq8;

    invoke-direct {v1}, Lo/iq8;-><init>()V

    new-instance v2, Lo/jq8;

    invoke-direct {v2, p0, p2, p1}, Lo/jq8;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a0(Lo/bx2;Lo/rx2;)V

    return-void
.end method

.method public final synthetic J1(Lcom/snaptube/extractor/pluginlib/models/Format;ILcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 2

    invoke-static {p3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isVideoInfoValid(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {p3, v1, v0}, Lcom/snaptube/taskManager/task/video/g;->f2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOriginTag()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-object p3

    :cond_1
    return-object p1
.end method

.method public final synthetic L1(Ljava/lang/Throwable;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->k2()V

    iget p2, p2, Lcom/wandoujia/base/utils/RxBus$d;->b:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->b2(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->e2()V

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/g;->h2(Z)V

    :goto_0
    return-void
.end method

.method public final synthetic M1(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_0

    sget-object p2, Lcom/snaptube/plugin/PluginId;->SITE_EXTRACTOR:Lcom/snaptube/plugin/PluginId;

    invoke-virtual {p2}, Lcom/snaptube/plugin/PluginId;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "time out"

    invoke-static {p2, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->b2(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "RxjavaExecuteException"

    invoke-static {p1, p2}, Lcom/snaptube/util/ProductionEnv;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final synthetic N1(Lcom/snaptube/extractor/pluginlib/models/Format;)Lrx/c;
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->j1()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginTag(Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOriginTag()I

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {p0, v0, p1, v1}, Lcom/snaptube/taskManager/task/video/g;->u1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;I)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public O(Lo/ah3;)V
    .locals 4

    invoke-super {p0, p1}, Lo/k08;->O(Lo/ah3;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->x1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractorType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; extractFrom:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/ah3;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "error"

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :goto_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_1

    const-string v1, "creator_id"

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->o1(Lo/ah3;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->m1(Lo/ah3;)V

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->n1(Lo/ah3;)V

    return-void
.end method

.method public final synthetic O1(Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 7

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finalFormat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {p0, v1}, Lcom/snaptube/taskManager/task/video/g;->o2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->p2()V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->w1()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-static {v1}, Lo/wd9;->F(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/fk3;->l(Landroid/content/Context;Ljava/lang/String;)Lo/f08;

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/video/videoextractor/impl/facebook/FacebookCodec;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-object v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v6, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->a1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginTag()I

    move-result v2

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getOriginTag()I

    move-result v1

    if-eq v2, v1, :cond_4

    new-instance v1, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;

    invoke-direct {v1, v0}, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;-><init>(Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;)V

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format$Builder;->a()Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    invoke-static {v0}, Lo/wd9;->B(Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p1}, Lo/wd9;->B(Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-object v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v4, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->a1(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->Y0(JLjava/lang/String;)I

    :cond_5
    :goto_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getOriginTag()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "origin_tag"

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->N(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance p1, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->FORMAT_NOT_FOUND:Lcom/snaptube/taskManager/task/TaskError;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lo/ca8;->g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    throw p1
.end method

.method public P()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->j2()V

    invoke-super {p0}, Lo/du1;->P()V

    return-void
.end method

.method public final synthetic P1(Ljava/lang/Throwable;)Lrx/c;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zc2;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->h3()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/snaptube/premium/extractor/ExtractorDiskCache;->a:Lcom/snaptube/premium/extractor/ExtractorDiskCache;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/premium/extractor/ExtractorDiskCache;->a(Ljava/lang/String;Z)Lcom/snaptube/extractor/pluginlib/models/ExtractResult;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->m(Lcom/snaptube/extractor/pluginlib/models/ExtractResult;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p1

    sget-object v1, Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;->DISK_CACHE:Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    invoke-virtual {p1, v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setExtractFrom(Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;)V

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/ExtractResult;->j()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object p1

    invoke-static {p1}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->f4()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->queryCodec(Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isNeedNativeMux()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lo/z08;->a(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lrx/c;->Q(Ljava/lang/Object;)Lrx/c;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    invoke-static {p1}, Lrx/c;->D(Ljava/lang/Throwable;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public Q()V
    .locals 1

    invoke-super {p0}, Lo/du1;->Q()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->e()V

    :cond_0
    return-void
.end method

.method public final synthetic Q1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setThumbnailUrl(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    return-void

    :cond_2
    new-instance p1, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {p1, v0}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    throw p1
.end method

.method public R()V
    .locals 1

    invoke-super {p0}, Lo/k08;->R()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->b()V

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ig4;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ig4;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final synthetic R1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Lcom/snaptube/extractor/pluginlib/models/Format;
    .locals 5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    sget-object v1, Lcom/phoenix/download/DownloadInfo$ContentType;->AUDIO:Lcom/phoenix/download/DownloadInfo$ContentType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x384

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isM4aTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isNeedFilterM4AInLargeAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    sget-object v1, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->M4A_128K:Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/snaptube/taskManager/task/video/g;->f2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/snaptube/taskManager/task/video/g;->f2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object p1

    return-object p1
.end method

.method public T()V
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->j2()V

    invoke-super {p0}, Lo/k08;->T()V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/snaptube/taskManager/task/video/g$d;->onDestroy()V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->k2()V

    return-void
.end method

.method public final synthetic T1(Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 2

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->q1()Lcom/snaptube/taskManager/task/video/g$d;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-interface {v0, v1, p1}, Lcom/snaptube/taskManager/task/video/g$d;->g(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    return-void
.end method

.method public U()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->u:Lrx/c;

    if-eqz v0, :cond_0

    new-instance v1, Lo/eq8;

    invoke-direct {v1}, Lo/eq8;-><init>()V

    invoke-virtual {v0, v1}, Lrx/c;->g0(Lo/xw2;)Lrx/c;

    move-result-object v0

    invoke-virtual {v0}, Lrx/c;->O0()Lo/ob0;

    move-result-object v0

    invoke-virtual {v0}, Lo/ob0;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->u:Lrx/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/g;->o2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->p2()V

    sget-object v0, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->a:Lcom/snaptube/taskManager/task/video/AdditionExtractManager;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, p0, v1, v2}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->f(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->d2()V

    return-void
.end method

.method public W(Lcom/phoenix/download/DownloadInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lo/du1;->W(Lcom/phoenix/download/DownloadInfo;)V

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/phoenix/download/DownloadInfo$Status;->SUCCESS:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeWebMTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lo/k08;->c0()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->getStatus()Lcom/phoenix/download/DownloadInfo$Status;

    move-result-object v0

    sget-object v1, Lcom/phoenix/download/DownloadInfo$Status;->DOWNLOADING:Lcom/phoenix/download/DownloadInfo$Status;

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/download/rpc/h;->N:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/download/rpc/h;->N:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update extractorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoDownloadTask"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iput-object v0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->X:Ljava/lang/String;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1, v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->setExtractorType(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/phoenix/download/DownloadInfo;->d()Lcom/wandoujia/download/rpc/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wandoujia/download/rpc/h;->d()I

    move-result p1

    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->DOWNLOAD_TIMEOUT:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-virtual {p0}, Lo/k08;->g0()V

    :cond_3
    return-void
.end method

.method public X()V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->j2()V

    invoke-super {p0}, Lo/du1;->X()V

    return-void
.end method

.method public Y()Z
    .locals 1

    invoke-super {p0}, Lo/k08;->Y()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/g;->h2(Z)V

    return v0
.end method

.method public final Y1()Z
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->t:Lo/dv8;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v0, v2}, Lo/dv8;->C(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->t:Lo/dv8;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v3}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lo/dv8;->E(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-nez v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public Z()V
    .locals 4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->g0:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/snaptube/taskManager/task/video/g;->v:Z

    invoke-super {p0}, Lo/du1;->Z()V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->Q:I

    invoke-virtual {p0, v1}, Lcom/snaptube/taskManager/task/video/g;->h2(Z)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->i2()V

    return-void
.end method

.method public final Z1(Z)Lrx/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->B1(Z)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/sq8;

    invoke-direct {v0, p0}, Lo/sq8;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->e0(Lo/xw2;)Lrx/c;

    move-result-object p1

    invoke-virtual {p1}, Lrx/c;->S()Lrx/c;

    move-result-object p1

    new-instance v0, Lo/tq8;

    invoke-direct {v0, p0}, Lo/tq8;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/uq8;

    invoke-direct {v0, p0}, Lo/uq8;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/vq8;

    invoke-direct {v0, p0}, Lo/vq8;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/fq8;

    invoke-direct {v0, p0}, Lo/fq8;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final a2()V
    .locals 5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->f:J

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractFrom()Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractFrom()Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/task/TaskTrace;->begin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "source url:"

    const-string v4, "\ndownload url:"

    filled-new-array {v3, v1, v4, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/task/TaskTrace;->log(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/task/TaskTrace;->mapUrl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isTitleOrThumbnailInValid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zc2;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->enabledSecondaryExtractDetail()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->a:Lcom/snaptube/taskManager/task/video/AdditionExtractManager;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0, v1}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->d(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lrx/c;

    move-result-object v0

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/mq8;

    invoke-direct {v1}, Lo/mq8;-><init>()V

    invoke-virtual {v0, v1}, Lrx/c;->e0(Lo/xw2;)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->u:Lrx/c;

    invoke-static {v0}, Lcom/snaptube/base/ktx/ObservableKt;->h(Lrx/c;)Lo/wu7;

    :cond_2
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->t1()V

    invoke-virtual {p0}, Lo/du1;->F0()V

    return-void
.end method

.method public final b2(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->l2()V

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->m2(Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/snaptube/taskManager/task/TaskException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/snaptube/taskManager/task/TaskException;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/TaskException;->getError()Lcom/snaptube/taskManager/task/TaskError;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lo/d58;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lo/k08;->y(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/snaptube/taskManager/task/TaskError;->EXTRACT_VIDEO_INFO_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/k08;->x(Lcom/snaptube/taskManager/task/TaskError;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c2(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;)V
    .locals 7

    new-instance v6, Lcom/snaptube/taskManager/task/video/g$c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/snaptube/taskManager/task/video/g$c;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;)V

    invoke-static {v6}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d2()V
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Lo/a18;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v1, v2, v0}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->n1(JLjava/lang/String;)V

    return-void
.end method

.method public final e2()V
    .locals 3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    return-void
.end method

.method public final h2(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->j2()V

    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->Z1(Z)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/nq8;

    invoke-direct {v0, p0}, Lo/nq8;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->y(Lo/l3;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->I()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/oq8;

    invoke-direct {v0}, Lo/oq8;-><init>()V

    invoke-virtual {p1, v0}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/c18;->e()Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance v0, Lcom/snaptube/taskManager/task/video/g$a;

    invoke-direct {v0, p0}, Lcom/snaptube/taskManager/task/video/g$a;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    invoke-virtual {p1, v0}, Lrx/c;->x0(Lo/tu7;)Lo/wu7;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->r:Lo/wu7;

    return-void
.end method

.method public final i2()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->isLyricMetaEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/snaptube/premium/lyric/LyricManager;->T(Lcom/snaptube/taskManager/datasets/TaskInfo;Z)Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/ix6;->d()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->z0(Lrx/d;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/pq8;

    invoke-direct {v1}, Lo/pq8;-><init>()V

    new-instance v2, Lo/qq8;

    invoke-direct {v2}, Lo/qq8;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    :cond_1
    return-void
.end method

.method public final j2()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->r:Lo/wu7;

    invoke-static {v0}, Lo/fv7;->a(Lo/wu7;)V

    return-void
.end method

.method public final k2()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->q:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->q:Lo/wu7;

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public final l2()V
    .locals 7

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lo/k08;->g:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->N:J

    return-void
.end method

.method public final m1(Lo/ah3;)V
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

.method public final m2(Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    const v2, 0x7f110633

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lo/zc2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LOGIN_REQUIRED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Lo/zc2;->m(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_STATUS_ERROR:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    invoke-static {v0}, Lo/zc2;->o(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_UNPLAYABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lo/zc2;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v2, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LIVE_STREAM_OFFLINE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v2, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-static {p1, v1}, Lo/g58;->h(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lo/zc2;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_LIVE_UNAVAILABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f110382

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lo/zc2;->q(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_HTTP_UNAUTHORIZED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->A1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/snaptube/taskManager/task/video/g;->F1(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_TIMEOUT:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    goto :goto_0

    :cond_7
    invoke-static {p1}, Lo/d58;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lo/zc2;->k(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->EXTRACT_MEDIA_UNAVAILABLE:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iget-object v0, p0, Lo/k08;->b:Landroid/content/Context;

    const v1, 0x7f110630

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q0:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;->UNDEFINED:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    iput-object v0, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p0:Lcom/snaptube/taskManager/datasets/TaskInfo$FailReason;

    :goto_0
    invoke-virtual {p0}, Lo/k08;->g0()V

    return-void
.end method

.method public final n1(Lo/ah3;)V
    .locals 2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->isVideo()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/Format;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_resolution"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized n2()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/snaptube/taskManager/task/video/a;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/snaptube/taskManager/task/video/a;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->s:Lcom/snaptube/taskManager/task/video/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final o1(Lo/ah3;)V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->isAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->H(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->t:Lo/dv8;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v0, v1}, Lo/dv8;->C(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->t:Lo/dv8;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getFormats()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/dv8;->E(Lcom/snaptube/extractor/pluginlib/models/Format;Ljava/util/List;)[Lcom/snaptube/extractor/pluginlib/models/Format;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/Format;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->H(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "xtags_acont"

    invoke-interface {p1, v2, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "xtags_lang"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_6
    :goto_1
    return-void
.end method

.method public final o2(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Z
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Lo/zc2;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/zc2;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {v0}, Lo/wd9;->B(Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x1

    :cond_2
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method public p1(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/g;->g2(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lo/du1;->M0(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->E1()V

    new-instance v0, Lo/rq8;

    invoke-direct {v0, p0, p2, p1}, Lo/rq8;-><init>(Lcom/snaptube/taskManager/task/video/g;ZLjava/lang/String;)V

    invoke-static {v0}, Lo/y48;->l(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p2()V
    .locals 9

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->k:Ljava/lang/String;

    invoke-static {v0}, Lo/wd9;->J(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->f0:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {v0, v1}, Lo/wd9;->v(Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    invoke-direct {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;-><init>()V

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->c(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->o(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->i(Lcom/snaptube/extractor/pluginlib/models/Format;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->t(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-static {v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->j(Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->s(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getDurationInSecond()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->m(J)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getMetaKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->n(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/Format;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->u(J)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v2}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->g(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo$b;->a()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lo/wd9;->C()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "thumbnailUrl"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "media_duration"

    iget-wide v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->s:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "meta_key"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->y:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "referer"

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "requestUrl"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->o:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "formatTag"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "finalFormatTag"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "contentType"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r:Lcom/phoenix/download/DownloadInfo$ContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type2"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_type2"

    iget-object v4, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->B:Lcom/snaptube/taskManager/datasets/TaskInfo$ContentType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "visible"

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v4, v4, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-wide v3, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->d:J

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-lez v8, :cond_5

    const-string v6, "total_bytes"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    :try_start_0
    iget-object v3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/snaptube/taskManager/datasets/TaskInfo;->W:Z

    iget-object v4, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v4}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getReportData()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/snaptube/taskManager/datasets/TaskInfo;->O(Ljava/util/Map;)V

    iget-object v3, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-class v3, Lcom/snaptube/taskManager/task/video/g;

    monitor-enter v3

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/snaptube/taskManager/task/video/g;->v1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v4, v4, Lcom/snaptube/taskManager/datasets/TaskInfo;->G:Z

    if-nez v4, :cond_6

    invoke-virtual {v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_6
    iput-object v0, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->M:Ljava/lang/String;

    sget-object v4, Lcom/snaptube/premium/vault/LockManager;->a:Lcom/snaptube/premium/vault/LockManager;

    invoke-virtual {v4, v0}, Lcom/snaptube/premium/vault/LockManager;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->R(Ljava/lang/String;)V

    :goto_2
    const-string v0, "filePath"

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1, v2, v5}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v0, v1}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->Q0(J)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void

    :cond_7
    new-instance v0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->TASK_DELETE:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    throw v0

    :cond_8
    :try_start_2
    new-instance v0, Lcom/snaptube/taskManager/task/TaskException;

    sget-object v1, Lcom/snaptube/taskManager/task/TaskError;->FILE_PATH_EMPTY:Lcom/snaptube/taskManager/task/TaskError;

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/TaskException;-><init>(Lcom/snaptube/taskManager/task/TaskError;)V

    throw v0

    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final q1()Lcom/snaptube/taskManager/task/video/g$d;
    .locals 4

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isMp3Tag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lo/bf2;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isWebM2Mp3Tag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/snaptube/taskManager/task/video/j;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/j;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeWebMTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/snaptube/taskManager/task/video/k;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/k;-><init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_2
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/youtube/YoutubeCodec;->isYoutubeHDTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/snaptube/taskManager/task/video/i;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, p0, v1}, Lcom/snaptube/taskManager/task/video/i;-><init>(Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_3
    sget-object v1, Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;->PHOTO_VIDEO:Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;

    invoke-virtual {v1}, Lcom/snaptube/video/videoextractor/impl/tiktok/TikTokCodec;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v2, v2, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/TTImageAudioCombineTaskDelegate;-><init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_4
    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lo/bs8;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lo/bs8;-><init>(Landroid/content/Context;Lo/du1;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_5
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/snaptube/taskManager/task/video/e;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, p0, v1}, Lcom/snaptube/taskManager/task/video/e;-><init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_6
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/utils/MediaUtil;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->Y1()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/snaptube/taskManager/task/video/f;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->t:Lo/dv8;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/snaptube/taskManager/task/video/f;-><init>(Landroid/content/Context;Lo/k08;Lcom/snaptube/taskManager/datasets/TaskInfo;Lo/dv8;)V

    return-object v0

    :cond_8
    new-instance v0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/io/File;)V

    return-object v0

    :cond_9
    :goto_0
    new-instance v0, Lo/lg4;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, p0, v1}, Lo/lg4;-><init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0

    :cond_a
    :goto_1
    new-instance v0, Lcom/snaptube/taskManager/task/video/d;

    iget-object v1, p0, Lo/k08;->b:Landroid/content/Context;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-direct {v0, v1, p0, v2}, Lcom/snaptube/taskManager/task/video/d;-><init>(Landroid/content/Context;Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    return-object v0
.end method

.method public final t1()V
    .locals 4

    iget-boolean v0, p0, Lcom/snaptube/taskManager/task/video/g;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-static {v0, v1, v2}, Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;->C(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/taskManager/datasets/TaskInfo;)V

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v2, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->s:Lcom/snaptube/taskManager/task/video/a;

    invoke-static {v0, v1, v2, v3}, Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;->x(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/taskManager/task/video/MetaInfoHelper;)V

    :cond_0
    return-void
.end method

.method public final u1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;I)Lrx/c;
    .locals 3

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "partial_info"

    invoke-direct {v0, v1, v2}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/extractor/a$a;->f(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    const-string v1, "video_info"

    invoke-virtual {p1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const-string v1, "field_format_tag"

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object p1, p1, Lcom/snaptube/taskManager/datasets/TaskInfo;->p:Ljava/lang/String;

    const-string v1, "download_format_tag"

    invoke-virtual {v0, v1, p1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object p1

    invoke-virtual {v0}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->x(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/kq8;

    invoke-direct {v0, p0, p2, p3}, Lo/kq8;-><init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/extractor/pluginlib/models/Format;I)V

    invoke-virtual {p1, v0}, Lrx/c;->U(Lo/xw2;)Lrx/c;

    move-result-object p1

    const-wide/16 v0, 0x14

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p3}, Lrx/c;->K0(JLjava/util/concurrent/TimeUnit;)Lrx/c;

    move-result-object p1

    new-instance p3, Lo/lq8;

    invoke-direct {p3, p2}, Lo/lq8;-><init>(Lcom/snaptube/extractor/pluginlib/models/Format;)V

    invoke-virtual {p1, p3}, Lrx/c;->g0(Lo/xw2;)Lrx/c;

    move-result-object p1

    return-object p1
.end method

.method public final v1(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {p1, v0}, Lo/wd9;->v(Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/yj2;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x270f

    if-ge v1, v2, :cond_4

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const-string v2, ""

    :goto_1
    iget-object v3, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {v0, p1, v2, v3}, Lo/wd9;->U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/extractor/pluginlib/models/Format;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v4}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->y0(Ljava/lang/String;)Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final w1()V
    .locals 5

    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v1}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "thumbnailUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->x:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "visible"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-wide v3, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->a:J

    invoke-static {v3, v4, v0, v2}, Lcom/snaptube/taskManager/provider/TaskInfoDBUtils;->e1(JLandroid/content/ContentValues;Z)I

    :cond_1
    return-void
.end method

.method public final x1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractFrom()Lcom/snaptube/extractor/pluginlib/models/VideoInfo$ExtractFrom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final y1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->getExtractorType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-object v0, v0, Lcom/snaptube/taskManager/datasets/TaskInfo;->X:Ljava/lang/String;

    return-object v0
.end method

.method public z0(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->p:Lcom/snaptube/taskManager/task/video/g$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/snaptube/taskManager/task/video/g$d;->d(I)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/g;->n:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/g;->o:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v1, p0, Lo/k08;->d:Lcom/snaptube/taskManager/datasets/TaskInfo;

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    invoke-static {p1, v0, v1}, Lcom/snaptube/taskManager/task/video/g;->r1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;Z)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    :goto_0
    return-object p1
.end method
