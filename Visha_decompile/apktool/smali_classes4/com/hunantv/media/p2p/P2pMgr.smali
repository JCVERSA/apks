.class public Lcom/hunantv/media/p2p/P2pMgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROXY_TAG_P2P_MGTV:Ljava/lang/String; = "/mghttpagent/"

.field public static final PROXY_TAG_P2P_YUNFAN:Ljava/lang/String; = "/yfhttpagent/"

.field private static final TAG:Ljava/lang/String; = "P2pMgr"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static YfAddBackupIps(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YfAddBackupIps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer$IPList;->formatIPList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P2pMgr"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/mgtv/a/b;->a(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static getCdnIpFromSourceInfo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/mgtv/a/d;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/mgtv/a/d;

    iget-object p0, p0, Lcom/mgtv/a/d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "n"

    :goto_0
    return-object p0
.end method

.method public static getTaskInfo(Lcom/hunantv/media/p2p/IP2pTask;)Lcom/mgtv/a/d;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    invoke-interface {p0}, Lcom/hunantv/media/p2p/IP2pTask;->getImgoTask()Lcom/mgtv/a/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/c;)Lcom/mgtv/a/d;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static isMgP2p()Z
    .locals 3

    sget-boolean v0, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/a/b;->c()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static isMgProxyP2p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/mghttpagent/"

    invoke-static {p0, v0}, Lcom/hunantv/media/p2p/P2pMgr;->isProxyP2p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isProxyP2p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTaskExist(Lcom/hunantv/media/p2p/IP2pTask;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    invoke-interface {p0}, Lcom/hunantv/media/p2p/IP2pTask;->getImgoTask()Lcom/mgtv/a/c;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/mgtv/a/b;->b(Lcom/mgtv/a/c;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTaskExistInt(Lcom/hunantv/media/p2p/IP2pTask;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    invoke-interface {p0}, Lcom/hunantv/media/p2p/IP2pTask;->getImgoTask()Lcom/mgtv/a/c;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgtv/a/b;->b(Lcom/mgtv/a/c;)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public static isYfProxyP2p(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "/yfhttpagent/"

    invoke-static {p0, v0}, Lcom/hunantv/media/p2p/P2pMgr;->isProxyP2p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized setPlaySpeed(F)V
    .locals 4

    const-class v0, Lcom/hunantv/media/p2p/P2pMgr;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    const-string v1, "P2pMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlaySpeed playSpeed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {v1, p0}, Lcom/mgtv/a/b;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setPlayingTimepoint(Lcom/hunantv/media/p2p/IP2pTask;IZ)V
    .locals 4

    const-class v0, Lcom/hunantv/media/p2p/P2pMgr;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    const-string v1, "P2pMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlayingTimepoint timepoint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",bSeek:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v1

    invoke-interface {p0}, Lcom/hunantv/media/p2p/IP2pTask;->getImgoTask()Lcom/mgtv/a/c;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2}, Lcom/mgtv/a/b;->a(Lcom/mgtv/a/c;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static startLog()V
    .locals 1

    sget-boolean v0, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/a/b;->a()I

    :cond_0
    return-void
.end method
