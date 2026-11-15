.class public Lcom/transsion/videodownloader/VideoDownloadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/videodownloader/VideoDownloadManager$f;,
        Lcom/transsion/videodownloader/VideoDownloadManager$e;
    }
.end annotation


# static fields
.field public static volatile j:Lcom/transsion/videodownloader/VideoDownloadManager;


# instance fields
.field public a:Ltz2;

.field public b:Lsqb;

.field public final c:Lcrb;

.field public final d:Ljava/lang/Object;

.field public e:Lrqb;

.field public f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->g:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->i:Ljava/util/Map;

    new-instance v0, Lcrb;

    invoke-direct {v0}, Lcrb;-><init>()V

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    return-void
.end method

.method public static E()Lcom/transsion/videodownloader/VideoDownloadManager;
    .locals 2

    sget-object v0, Lcom/transsion/videodownloader/VideoDownloadManager;->j:Lcom/transsion/videodownloader/VideoDownloadManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/videodownloader/VideoDownloadManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/videodownloader/VideoDownloadManager;->j:Lcom/transsion/videodownloader/VideoDownloadManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/videodownloader/VideoDownloadManager;

    invoke-direct {v1}, Lcom/transsion/videodownloader/VideoDownloadManager;-><init>()V

    sput-object v1, Lcom/transsion/videodownloader/VideoDownloadManager;->j:Lcom/transsion/videodownloader/VideoDownloadManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/videodownloader/VideoDownloadManager;->j:Lcom/transsion/videodownloader/VideoDownloadManager;

    return-object v0
.end method

.method public static synthetic a(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->S(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->Q(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->P(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->R(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static synthetic e(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->T(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/videodownloader/VideoDownloadManager;)Lrqb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/videodownloader/VideoDownloadManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->g:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/videodownloader/VideoDownloadManager;)Ltz2;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/transsion/videodownloader/VideoDownloadManager;)Lsqb;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/videodownloader/VideoDownloadManager;)Lcom/transsion/videodownloader/VideoDownloadManager$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/videodownloader/VideoDownloadManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljv4;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->A(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljv4;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->F(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->G(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->H(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->I(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->J(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->K(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic s(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->L(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->M(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic u(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->U(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->Y(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic w(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->d0(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic x(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/videodownloader/VideoDownloadManager;->g0(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final A(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljv4;)V
    .locals 10

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoMerge doMergeTs taskItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFileHash()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfrb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileHash(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v4, Ljava/io/File;

    sget-object v5, Lqy2;->c:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getFinalFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lzu3;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    sget-object v4, Lqy2;->c:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v3

    goto :goto_1

    :cond_3
    move-object v5, v4

    :goto_1
    invoke-static {}, Lcom/transsion/moduleservice/IM3U8MergeService$ServiceInstance;->getService()Lcom/transsion/moduleservice/IM3U8MergeService;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ts merge inputPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputPath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/transsion/videodownloader/VideoDownloadManager$d;

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/videodownloader/VideoDownloadManager$d;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/io/File;Ljv4;Ljava/lang/String;)V

    invoke-interface {v8, v0, v1, v9}, Lcom/transsion/moduleservice/IM3U8MergeService;->transformM3U8ToMp4(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moduleservice/IM3U8MergeService$IVideoTransformListener;)V

    goto :goto_2

    :cond_4
    const-string p0, "get merge service failed"

    invoke-static {v1, p0}, Leq5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    invoke-interface {p2, p1}, Ljv4;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final B(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    new-instance v0, Lcom/transsion/videodownloader/VideoDownloadManager$4;

    invoke-direct {v0, p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$4;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->i(Lcom/blankj/utilcode/util/ThreadUtils$Task;)V

    return-void
.end method

.method public C(Lwu4;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrqb;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final F(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {p0, p1}, Ltz2;->a(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final G(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {v0, p1}, Ltz2;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->b0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final H(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {v0, p1}, Ltz2;->c(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->b0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final I(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {p0, p1}, Ltz2;->d(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final J(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {v0, p1}, Ltz2;->e(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->V(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final K(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {v0, p1}, Ltz2;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->W(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final L(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {p0, p1}, Ltz2;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final M(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->b0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnDownloadSuccess shouldM3U8Merged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    invoke-virtual {v1}, Lrqb;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHlsType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isHlsType()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isHlsType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->N(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    invoke-virtual {v0, p1}, Ltz2;->h(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->U(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    :goto_0
    return-void
.end method

.method public final N(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    invoke-virtual {v0}, Lrqb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lwqb;

    invoke-direct {v0, p0}, Lwqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager;->A(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljv4;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->B(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    :goto_0
    return-void
.end method

.method public O(Lrqb;)V
    .locals 1

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    invoke-static {p1}, Lfrb;->m(Lrqb;)V

    new-instance p1, Lsqb;

    invoke-static {}, Luh1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lsqb;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Video_download_state_thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/transsion/videodownloader/VideoDownloadManager$f;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$f;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    return-void
.end method

.method public final synthetic P(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    invoke-virtual {p0, p1}, Lsqb;->b(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final synthetic Q(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->U(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final synthetic R(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    invoke-virtual {p0, p1}, Lsqb;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final synthetic S(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    invoke-virtual {p0, p1}, Lsqb;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final synthetic T(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->b:Lsqb;

    invoke-virtual {p0, p1}, Lsqb;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void
.end method

.method public final U(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    new-instance v0, Lvqb;

    invoke-direct {v0, p0, p1}, Lvqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {v0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public V(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    new-instance v0, Luqb;

    invoke-direct {v0, p0, p1}, Luqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {v0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final W(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getLastUpdateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    new-instance v2, Lxqb;

    invoke-direct {v2, p0, p1}, Lxqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {v2}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    invoke-virtual {p1, v0, v1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setLastUpdateTime(J)V

    :cond_0
    return-void
.end method

.method public final X(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseExistVideoDownloadInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->isHlsType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrrb;->d()Lrrb;

    move-result-object v0

    new-instance v1, Lcom/transsion/videodownloader/VideoDownloadManager$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager$a;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lrrb;->f(Lcom/transsion/videodownloader/model/VideoTaskItem;Lfx4;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->d0(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public final Y(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseNetworkVideoInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lrrb;->d()Lrrb;

    move-result-object v0

    new-instance v1, Lcom/transsion/videodownloader/VideoDownloadManager$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$b;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Ljava/util/Map;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {v0, p1, v1, p2}, Lrrb;->h(Lcom/transsion/videodownloader/model/VideoTaskItem;Lex4;Ljava/util/Map;)V

    return-void
.end method

.method public final Z(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 4

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfrb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setFileHash(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getDownloadCreateTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->X(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->Y(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method public a0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setPaused(Z)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v1, p1}, Lcrb;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lerb;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lerb;->c()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final b0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v1, p1}, Lcrb;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)Z

    const-string p1, "VideoDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeDownloadQueue size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v2}, Lcrb;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v2}, Lcrb;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v2}, Lcrb;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {p1}, Lcrb;->c()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v1}, Lcrb;->b()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    invoke-virtual {v2}, Lrqb;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v2}, Lcrb;->h()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v2}, Lcrb;->h()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v2}, Lcrb;->f()Lcom/transsion/videodownloader/model/VideoTaskItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/transsion/videodownloader/VideoDownloadManager;->e0(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c0(Ltz2;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->a:Ltz2;

    return-void
.end method

.method public final d0(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v1}, Lcrb;->b()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    invoke-virtual {v2}, Lrqb;->b()I

    move-result v2

    if-lt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerb;

    if-nez v0, :cond_1

    new-instance v0, Lqs6;

    invoke-direct {v0, p1, p2}, Lqs6;-><init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->f0(Lerb;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public e0(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->Z(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f0(Lerb;Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/transsion/videodownloader/VideoDownloadManager$c;

    invoke-direct {v0, p0, p2}, Lcom/transsion/videodownloader/VideoDownloadManager$c;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p1, v0}, Lerb;->d(Lxu4;)V

    invoke-virtual {p1}, Lerb;->e()V

    :cond_0
    return-void
.end method

.method public final g0(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V
    .locals 3

    const-string v0, "VideoDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startM3U8VideoDownloadTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/model/VideoTaskItem;->setTaskState(I)V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/videodownloader/model/VideoTaskItem;

    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {v1}, Lcrb;->b()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->e:Lrqb;

    invoke-virtual {v2}, Lrqb;->b()I

    move-result v2

    if-lt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lerb;

    if-nez v0, :cond_1

    new-instance v0, Lcw5;

    invoke-direct {v0, p1, p2, p3}, Lcw5;-><init>(Lcom/transsion/videodownloader/model/VideoTaskItem;Lpv5;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->f0(Lerb;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public y(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->c:Lcrb;

    invoke-virtual {p0, p1}, Lcrb;->g(Lcom/transsion/videodownloader/model/VideoTaskItem;)Z

    return-void
.end method

.method public z(Lcom/transsion/videodownloader/model/VideoTaskItem;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/videodownloader/VideoDownloadManager;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->a0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfrb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoDownloadManager_deleteVideoTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoDownloadManager"

    invoke-static {v1, v0}, Leq5;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ltqb;

    invoke-direct {v0, p0, p1}, Ltqb;-><init>(Lcom/transsion/videodownloader/VideoDownloadManager;Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    invoke-static {v0}, Lcom/transsion/videodownloader/utils/WorkerThreadHandler;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {v2}, Li7c;->c(Ljava/io/File;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->h:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->reset()V

    iget-object p0, p0, Lcom/transsion/videodownloader/VideoDownloadManager;->f:Lcom/transsion/videodownloader/VideoDownloadManager$f;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Delete file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " failed, exception="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Leq5;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void
.end method
