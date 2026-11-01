.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->b:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->d:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->e:Ljava/util/LinkedHashMap;

    new-instance v0, Lo/ke2;

    invoke-direct {v0}, Lo/ke2;-><init>()V

    iput-object v0, p0, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->f:Lo/p40;

    invoke-static {}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->z()I

    move-result v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->o2()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "webm crash count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webm_crash"

    const-string v2, "ffmpeg_crash_count"

    invoke-static {v1, v2, v0}, Lo/ne2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/taskManager/FfmpegTaskScheduler;->I()V

    return-void
.end method
