.class public final Lcom/snaptube/taskManager/task/video/AdditionExtractManager;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/snaptube/taskManager/task/video/AdditionExtractManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;

    invoke-direct {v0}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;-><init>()V

    sput-object v0, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->a:Lcom/snaptube/taskManager/task/video/AdditionExtractManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->h(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->g(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->e(Lo/dx2;Ljava/lang/Object;)Lrx/c;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lo/dx2;Ljava/lang/Object;)Lrx/c;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lo/dx2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrx/c;

    return-object p0
.end method

.method public static final g(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$task"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/hd;

    invoke-direct {v0, p0, p1}, Lo/hd;-><init>(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V

    invoke-static {v0}, Lo/y48;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final h(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;)V
    .locals 1

    const-string v0, "$task"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/taskManager/task/video/g;->n2()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/taskManager/task/video/g;->p1(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/snaptube/taskManager/datasets/TaskInfo;)Lrx/c;
    .locals 3

    const-string v0, "taskInfo"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/snaptube/premium/extractor/a$a;

    invoke-virtual {p1}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "partial_info"

    invoke-direct {v0, p1, v1}, Lcom/snaptube/premium/extractor/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/snaptube/premium/extractor/a$a;->c(Z)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "thumbnail"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/cn5;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "required_fields"

    invoke-virtual {v0, v2, v1}, Lcom/snaptube/premium/extractor/a$a;->e(Ljava/lang/String;Ljava/lang/Object;)Lcom/snaptube/premium/extractor/a$a;

    move-result-object v0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->O()Lo/dv8;

    move-result-object v1

    invoke-virtual {v0}, Lcom/snaptube/premium/extractor/a$a;->a()Lcom/snaptube/premium/extractor/a;

    move-result-object v0

    invoke-virtual {v1, v0, p1}, Lcom/snaptube/premium/extractor/BaseVideoUrlExtractor;->f(Lcom/snaptube/premium/extractor/a;I)Lrx/c;

    move-result-object p1

    sget-object v0, Lcom/snaptube/taskManager/task/video/AdditionExtractManager$getTitleAndCoverInfo$1;->INSTANCE:Lcom/snaptube/taskManager/task/video/AdditionExtractManager$getTitleAndCoverInfo$1;

    new-instance v1, Lo/id;

    invoke-direct {v1, v0}, Lo/id;-><init>(Lo/dx2;)V

    invoke-virtual {p1, v1}, Lrx/c;->H(Lo/xw2;)Lrx/c;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Lcom/snaptube/taskManager/task/video/g;Ljava/lang/String;Lcom/snaptube/taskManager/datasets/TaskInfo;)V
    .locals 7

    const-string v0, "task"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldFilePath"

    invoke-static {p2, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newTaskInfo"

    invoke-static {p3, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/snaptube/taskManager/task/TaskError;->MP3_RENAME_FILE_FAILED:Lcom/snaptube/taskManager/task/TaskError;

    new-instance v6, Lo/gd;

    invoke-direct {v6, p1}, Lo/gd;-><init>(Lcom/snaptube/taskManager/task/video/g;)V

    const-string v4, "addition extract"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lo/du1;->D0(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Lcom/snaptube/taskManager/task/TaskError;Lo/du1$g;)V

    invoke-virtual {p3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/snaptube/taskManager/datasets/TaskInfo;->i()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getFilePath(...)"

    invoke-static {p3, v0}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/snaptube/taskManager/task/video/AdditionExtractManager;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lo/if9;->D(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;->a:Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;

    invoke-virtual {p1, p2, p2}, Lcom/snaptube/plugin/extension/chooseformat/subtitles/SubtitleManager;->y(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lo/al7;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
