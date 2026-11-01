.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const-string v1, "video_v1"

    invoke-static {v0, v1}, Lo/xe6;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/taskManager/CombinTask;->supported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
