.class public final Lcom/snaptube/taskManager/task/video/a;
.super Lcom/snaptube/taskManager/task/video/MetaInfoHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/task/video/a$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/snaptube/taskManager/task/video/a$a;


# instance fields
.field public final f:Lcom/snaptube/extractor/pluginlib/models/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snaptube/taskManager/task/video/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snaptube/taskManager/task/video/a$a;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/snaptube/taskManager/task/video/a;->g:Lcom/snaptube/taskManager/task/video/a$a;

    return-void
.end method

.method public constructor <init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;Lcom/snaptube/extractor/pluginlib/models/Format;)V
    .locals 1

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoInfo"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo;Lcom/snaptube/extractor/pluginlib/models/VideoInfo;)V

    iput-object p3, p0, Lcom/snaptube/taskManager/task/video/a;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    return-void
.end method


# virtual methods
.method public final j0()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/task/video/a;->f:Lcom/snaptube/extractor/pluginlib/models/Format;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lo/fs2;->r(Lcom/snaptube/extractor/pluginlib/models/Format;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->S()Lcom/snaptube/extractor/pluginlib/models/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snaptube/extractor/pluginlib/models/VideoInfo;->isYoutube()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/a;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public x()Z
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/MetaInfoHelper;->R()Lcom/snaptube/taskManager/datasets/TaskInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/snaptube/taskManager/task/video/g;->g2(Lcom/snaptube/taskManager/datasets/TaskInfo;)Z

    move-result v0

    return v0
.end method
