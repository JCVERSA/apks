.class public Lyv5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Lyv5;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyv5;->a:Z

    return-void
.end method

.method public static c()Lyv5;
    .locals 2

    sget-object v0, Lyv5;->b:Lyv5;

    if-nez v0, :cond_0

    const-class v0, Lyv5;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lyv5;

    invoke-direct {v1}, Lyv5;-><init>()V

    sput-object v1, Lyv5;->b:Lyv5;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    sget-object v0, Lyv5;->b:Lyv5;

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".m3u8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lcom/transsion/videodownloader/model/VideoTaskItem;Z)V
    .locals 0

    iget-boolean p0, p0, Lyv5;->a:Z

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->z(Lcom/transsion/videodownloader/model/VideoTaskItem;Z)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "m3u8_download_failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "M3U8Downloader"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lwu4;)V
    .locals 0

    iget-boolean p0, p0, Lyv5;->a:Z

    if-nez p0, :cond_0

    const-string p0, "m3u8_downloader_have_not_init"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "M3U8Downloader"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->C(Lwu4;)V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lyv5;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "context is null"

    invoke-static {p1, v0}, Lfc7;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lb23;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/videodownloader/VideoDownloadManager$e;

    invoke-direct {v1, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->b(Ljava/lang/String;)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->d(Ljava/lang/String;)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const v0, 0x1d4c0

    invoke-virtual {p1, v0, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->g(II)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->c(I)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->e(Z)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->f(Z)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->a()Lrqb;

    move-result-object p1

    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->O(Lrqb;)V

    iput-boolean v0, p0, Lyv5;->a:Z

    return-void
.end method

.method public f(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    iget-boolean p0, p0, Lyv5;->a:Z

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getTaskState()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->a0(Lcom/transsion/videodownloader/model/VideoTaskItem;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "m3u8_download_failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "M3U8Downloader"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ltz2;)V
    .locals 0

    iget-boolean p0, p0, Lyv5;->a:Z

    if-nez p0, :cond_0

    const-string p0, "m3u8_downloader_have_not_init"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "M3U8Downloader"

    invoke-static {p1, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->c0(Ltz2;)V

    return-void
.end method

.method public h(Lcom/transsion/videodownloader/model/VideoTaskItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lyv5;->i(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    return-void
.end method

.method public i(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V
    .locals 2

    iget-boolean p0, p0, Lyv5;->a:Z

    const-string v0, "M3U8Downloader"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lls1;->a:Z

    const-string p0, "get_m3u8_file_and_download"

    invoke-virtual {p1}, Lcom/transsion/videodownloader/model/VideoTaskItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodownloader/VideoDownloadManager;->e0(Lcom/transsion/videodownloader/model/VideoTaskItem;Ljava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "m3u8_download_failed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/LogUtils;->m(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized j(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lyv5;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "context is null"

    invoke-static {p1, v0}, Lfc7;->f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lb23;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/videodownloader/VideoDownloadManager$e;

    invoke-direct {v1, p1}, Lcom/transsion/videodownloader/VideoDownloadManager$e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->b(Ljava/lang/String;)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->d(Ljava/lang/String;)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const v0, 0x1d4c0

    invoke-virtual {p1, v0, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->g(II)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->c(I)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->e(Z)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->f(Z)Lcom/transsion/videodownloader/VideoDownloadManager$e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/videodownloader/VideoDownloadManager$e;->a()Lrqb;

    move-result-object p1

    invoke-static {}, Lcom/transsion/videodownloader/VideoDownloadManager;->E()Lcom/transsion/videodownloader/VideoDownloadManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/videodownloader/VideoDownloadManager;->O(Lrqb;)V

    iput-boolean v0, p0, Lyv5;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
