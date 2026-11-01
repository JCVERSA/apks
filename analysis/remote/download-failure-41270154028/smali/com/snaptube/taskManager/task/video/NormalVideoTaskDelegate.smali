.class public final Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$a;


# instance fields
.field public final a:Lcom/snaptube/taskManager/task/video/g;

.field public final b:Ljava/io/File;

.field public c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public d:Lcom/snaptube/extractor/pluginlib/models/Format;

.field public e:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

.field public final f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->g:Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$a;

    return-void
.end method

.method public constructor <init>(Lcom/snaptube/taskManager/task/video/g;Ljava/io/File;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destFilePath"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->a:Lcom/snaptube/taskManager/task/video/g;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->b:Ljava/io/File;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->f:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic h(Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->k()V

    return-void
.end method

.method public static final synthetic i(Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->f:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic j(Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;)Lcom/snaptube/taskManager/task/video/g;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->a:Lcom/snaptube/taskManager/task/video/g;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->e:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->k()V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$onPostDownload$1;

    invoke-direct {v1, p0}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$onPostDownload$1;-><init>(Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;)V

    new-instance v2, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$onPostDownload$2;

    invoke-direct {v2, p0}, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate$onPostDownload$2;-><init>(Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;)V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->a0(Lo/bx2;Lo/rx2;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->b:Ljava/io/File;

    return-object p1
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->d:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-virtual {v1}, Lo/k08;->I()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/snaptube/taskManager/datasets/TaskInfo;->r0:Z

    invoke-static {p1, v0, v1}, Lcom/snaptube/taskManager/task/video/g;->r1(Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;Z)Lcom/phoenix/download/DownloadRequest;

    move-result-object p1

    const-string v0, "createDownloadRequest(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->c:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->d:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/snaptube/extractor/pluginlib/models/Format;->isVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-virtual {v1}, Lo/k08;->I()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v1

    const-string v2, "getTaskInfo(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p2}, Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V

    iput-object v0, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->e:Lcom/snaptube/taskManager/task/video/VideoMetaInfoHelper;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->f0()V

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/NormalVideoTaskDelegate;->a:Lcom/snaptube/taskManager/task/video/g;

    invoke-virtual {v0}, Lo/du1;->L0()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
