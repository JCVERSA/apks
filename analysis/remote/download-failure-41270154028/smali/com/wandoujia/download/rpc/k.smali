.class public final Lcom/wandoujia/download/rpc/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wandoujia/download/rpc/k$a;,
        Lcom/wandoujia/download/rpc/k$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/wandoujia/download/rpc/k$b;


# instance fields
.field public final a:Lcom/wandoujia/download/rpc/k$a;

.field public final b:Lcom/snaptube/taskManager/datasets/TaskInfo;

.field public c:J

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/wandoujia/download/rpc/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wandoujia/download/rpc/k$b;-><init>(Lo/pg1;)V

    sput-object v0, Lcom/wandoujia/download/rpc/k;->e:Lcom/wandoujia/download/rpc/k$b;

    return-void
.end method

.method public constructor <init>(Lcom/wandoujia/download/rpc/k$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/k;->a:Lcom/wandoujia/download/rpc/k$a;

    new-instance p1, Lcom/snaptube/taskManager/datasets/TaskInfo;

    sget-object v0, Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;->UNKNOWN:Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;

    invoke-direct {p1, v0}, Lcom/snaptube/taskManager/datasets/TaskInfo;-><init>(Lcom/snaptube/taskManager/datasets/TaskInfo$TaskType;)V

    iput-object p1, p0, Lcom/wandoujia/download/rpc/k;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/k;->c:J

    return-void
.end method

.method public static final synthetic a(Lcom/wandoujia/download/rpc/k;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wandoujia/download/rpc/k;->d(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/wandoujia/download/rpc/k;)Lcom/wandoujia/download/rpc/k$a;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/k;->a:Lcom/wandoujia/download/rpc/k$a;

    return-object p0
.end method

.method public static final synthetic c(Lcom/wandoujia/download/rpc/k;)Lcom/snaptube/taskManager/datasets/TaskInfo;
    .locals 0

    iget-object p0, p0, Lcom/wandoujia/download/rpc/k;->b:Lcom/snaptube/taskManager/datasets/TaskInfo;

    return-object p0
.end method


# virtual methods
.method public final d(F)F
    .locals 2

    iget v0, p0, Lcom/wandoujia/download/rpc/k;->d:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1

    const v0, 0x3d23d70a    # 0.04f

    goto :goto_0

    :cond_1
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    const v0, 0x3cf5c28f    # 0.03f

    goto :goto_0

    :cond_2
    const/16 v1, 0x5dc

    if-ge v0, v1, :cond_3

    const v0, 0x3ca3d70a    # 0.02f

    goto :goto_0

    :cond_3
    const v0, 0x3c23d70a    # 0.01f

    :goto_0
    sget-object v1, Lo/hf2;->a:Lo/hf2;

    invoke-virtual {v1, p1, v0}, Lo/hf2;->c(FF)F

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 5

    iget-wide v0, p0, Lcom/wandoujia/download/rpc/k;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v0

    iget-wide v1, p0, Lcom/wandoujia/download/rpc/k;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->n(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/wandoujia/download/rpc/k;->c:J

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lo/yj2;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/wandoujia/download/rpc/k;->a:Lcom/wandoujia/download/rpc/k$a;

    if-eqz p1, :cond_0

    const-string p2, "tsFileList not exist"

    invoke-interface {p1, p2}, Lcom/wandoujia/download/rpc/k$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/k;->e()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "output_temp.ts"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->y()Lcom/snaptube/taskManager/FfmpegTaskScheduler;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/download/rpc/k$c;

    invoke-direct {v4, p0, v0, v1, p2}, Lcom/wandoujia/download/rpc/k$c;-><init>(Lcom/wandoujia/download/rpc/k;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v3, v4}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->v(Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/taskManager/FfmpegTaskScheduler$f;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/wandoujia/download/rpc/k;->c:J

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/wandoujia/download/rpc/k;->a:Lcom/wandoujia/download/rpc/k$a;

    if-eqz p1, :cond_4

    const-string p2, "outputFilePath isNullOrEmpty"

    invoke-interface {p1, p2}, Lcom/wandoujia/download/rpc/k$a;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/wandoujia/download/rpc/k;->d:I

    return-void
.end method
