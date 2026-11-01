.class public Lcom/snaptube/taskManager/task/video/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snaptube/taskManager/task/video/g$d;


# instance fields
.field public final a:Lcom/snaptube/taskManager/task/video/g;

.field public final b:Ljava/io/File;

.field public c:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

.field public e:Lcom/snaptube/extractor/pluginlib/models/Format;


# direct methods
.method public constructor <init>(Lcom/snaptube/taskManager/task/video/g;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/e;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

    invoke-virtual {v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ca8;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/e;->a:Lcom/snaptube/taskManager/task/video/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/taskManager/task/video/g;->p1(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)Ljava/io/File;
    .locals 0

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/e;->b:Ljava/io/File;

    return-object p1
.end method

.method public d(I)Lcom/phoenix/download/DownloadRequest;
    .locals 2

    iget-object p1, p0, Lcom/snaptube/taskManager/task/video/e;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/e;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    iget-object v1, p0, Lcom/snaptube/taskManager/task/video/e;->c:Lcom/snaptube/taskManager/datasets/TaskInfo;

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

    iput-object p1, p0, Lcom/snaptube/taskManager/task/video/e;->d:Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    iput-object p2, p0, Lcom/snaptube/taskManager/task/video/e;->e:Lcom/snaptube/extractor/pluginlib/models/Format;

    invoke-static {}, Lo/b35;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
