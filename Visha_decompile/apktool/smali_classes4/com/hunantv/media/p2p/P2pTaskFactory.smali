.class public Lcom/hunantv/media/p2p/P2pTaskFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final P2P_MGR_CLASS_NAME:Ljava/lang/String; = "com.mgtv.p2p.ImgoP2pMgr"

.field public static final P2P_TASK_CLASS_NAME:Ljava/lang/String; = "com.mgtv.p2p.ImgoP2pTask"

.field public static final P2P_TASK_INFO_CLASS_NAME:Ljava/lang/String; = "com.mgtv.p2p.ImgoTaskInfo"

.field public static final TAG:Ljava/lang/String; = "P2P"

.field public static final YF_P2P_CLASS_NAME:Ljava/lang/String; = "com.yunfan.net.Yfnet"

.field public static sP2pClassChecked:Z = false

.field public static sP2pClassExist:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/hunantv/media/p2p/P2pTaskFactory;->checkP2pClass()Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkP2pClass()Z
    .locals 5

    const-class v0, Lcom/hunantv/media/p2p/P2pTaskFactory;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassChecked:Z

    if-nez v1, :cond_2

    const-string v1, "com.mgtv.p2p.ImgoP2pTask"

    invoke-static {v1}, Lcom/hunantv/media/utils/ClassUtil;->isClassExist(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "com.mgtv.p2p.ImgoP2pMgr"

    invoke-static {v1}, Lcom/hunantv/media/utils/ClassUtil;->isClassExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.mgtv.p2p.ImgoTaskInfo"

    invoke-static {v1}, Lcom/hunantv/media/utils/ClassUtil;->isClassExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.yunfan.net.Yfnet"

    invoke-static {v1}, Lcom/hunantv/media/utils/ClassUtil;->isClassExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    const-string v1, "com.yunfan.net.Yfnet"

    invoke-static {v1}, Lcom/hunantv/media/utils/ClassUtil;->isClassExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.yunfan.net.Yfnet"

    const-string v3, "GetVersion"

    invoke-static {v1, v3}, Lcom/hunantv/media/utils/ClassUtil;->isMethodExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "P2P"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkP2pClass ImgoP2pMgr p2p version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgtv/a/b;->d()Lcom/mgtv/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgtv/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    sput-boolean v2, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassChecked:Z

    :cond_2
    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static create(Ljava/lang/Object;)Lcom/hunantv/media/p2p/IP2pTask;
    .locals 3

    invoke-static {}, Lcom/hunantv/media/p2p/P2pTaskFactory;->checkP2pClass()Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.mgtv.p2p.ImgoP2pTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/hunantv/media/p2p/P2pTaskFactory;->sP2pClassExist:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/hunantv/media/p2p/P2pTask;->build(Ljava/lang/Object;)Lcom/hunantv/media/p2p/P2pTask;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method
