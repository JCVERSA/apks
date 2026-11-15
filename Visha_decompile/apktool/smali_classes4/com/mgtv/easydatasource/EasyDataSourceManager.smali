.class public Lcom/mgtv/easydatasource/EasyDataSourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/easydatasource/EasyDataSourceManager$ManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyDataSourceJni"


# instance fields
.field private initSuccess:Z

.field private onEasyDataSourceCallBack:Lcom/mgtv/easydatasource/jni/c;

.field private taskHash:Ljava/lang/String;

.field private taskPort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->initSuccess:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->taskHash:Ljava/lang/String;

    iput v0, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->taskPort:I

    return-void
.end method

.method public static declared-synchronized instance()Lcom/mgtv/easydatasource/EasyDataSourceManager;
    .locals 2

    const-class v0, Lcom/mgtv/easydatasource/EasyDataSourceManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/easydatasource/EasyDataSourceManager$ManagerHolder;->instance:Lcom/mgtv/easydatasource/EasyDataSourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public createP2PPlayer(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->createTask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "createP2PPlayer \u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10001"

    return-object p0
.end method

.method public destoryP2PPlayer(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->stopTask(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public enableHttpsReport(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->enableHttpsReport(Z)V

    :cond_0
    return-void
.end method

.method public enableLogCallback(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->enableLogCallback(Z)V

    :cond_0
    return-void
.end method

.method public enableP2PDownload(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->enableP2PDownload(Z)V

    :cond_0
    return-void
.end method

.method public enableP2PUpload(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->enableP2PUpload(Z)V

    :cond_0
    return-void
.end method

.method public enableTrickleICE(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->enableTrickleICE(Z)V

    :cond_0
    return-void
.end method

.method public genAgentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10001"

    return-object p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->genAgentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHttpport()I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "EasyDataSourceJni"

    const-string v0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {p0, v0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->getLocalServerPort()I

    move-result p0

    return p0
.end method

.method public getLocalProxyPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10001"

    return-object p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->genAgentUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocalProxyPath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-gtz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "http://127.0.0.1:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p2, "/mghttpagent/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "/playlist.m3u8"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10001"

    return-object p0
.end method

.method public getOnEasyDataSourceCallBack()Lcom/mgtv/easydatasource/jni/c;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->onEasyDataSourceCallBack:Lcom/mgtv/easydatasource/jni/c;

    return-object p0
.end method

.method public getPreheatTaskEnable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->getPreheatTaskEnable()Z

    move-result p0

    return p0
.end method

.method public getPreheatTaskLimitCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->getPreheatTaskLimitCount()I

    move-result p0

    return p0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->getSdkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTaskHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->taskHash:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskPort()I
    .locals 0

    iget p0, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->taskPort:I

    return p0
.end method

.method public initSDK(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mgtv/easydatasource/jni/c;)I
    .locals 8

    invoke-static {}, Lcom/mgtv/easydatasource/b/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInited()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p6}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->setOnEasyDataSourceCallBack(Lcom/mgtv/easydatasource/jni/c;)V

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->initSDK(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mgtv/easydatasource/jni/c;)I

    move-result p1

    if-ltz p1, :cond_3

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->setInitSuccess(Z)V

    :cond_3
    return p1

    :cond_4
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public isInitSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->initSuccess:Z

    return p0
.end method

.method public isInited()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->isInited()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    return p0
.end method

.method public onLogCallBack(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->getOnEasyDataSourceCallBack()Lcom/mgtv/easydatasource/jni/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->getOnEasyDataSourceCallBack()Lcom/mgtv/easydatasource/jni/c;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/c;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPreTaskCallBack(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->getOnEasyDataSourceCallBack()Lcom/mgtv/easydatasource/jni/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->getOnEasyDataSourceCallBack()Lcom/mgtv/easydatasource/jni/c;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/c;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public pauseP2PPlayer(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->pauseTask(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public queryPreTaskInfo()[Lcom/mgtv/easydatasource/jni/a;
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->queryPreTaskInfo()[Lcom/mgtv/easydatasource/jni/a;

    move-result-object p0

    return-object p0
.end method

.method public queryTaskInfo(Ljava/lang/String;Lcom/mgtv/easydatasource/jni/b;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->queryTaskInfo(Ljava/lang/String;Lcom/mgtv/easydatasource/jni/b;)I

    move-result p0

    return p0
.end method

.method public readDataDirect(Ljava/lang/String;Ljava/lang/String;[BJJ[J[I)I
    .locals 11

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, -0x2710

    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EasyDataSourceJni"

    const-string v1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, v1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x2711

    return v0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->readDataDirect(Ljava/lang/String;Ljava/lang/String;[BJJ[J[I)I

    move-result v0

    return v0
.end method

.method public resumeP2PPlayer(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->resumeTask(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public runP2PPlayer(Ljava/lang/String;III)I
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result v0

    const-string v1, "EasyDataSourceJni"

    if-nez v0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "startP2PTask \u521b\u5efa\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2712

    return p0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->setTaskHash(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->runTask(Ljava/lang/String;III)I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->destoryP2PPlayer(Ljava/lang/String;)I

    const-string p0, "runP2PPlayer \u542f\u52a8\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p2
.end method

.method public seekTask(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->seekTask(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setAppScene(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setAppScene(I)V

    :cond_0
    return-void
.end method

.method public setBackupUrlJson(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setBackupUrlJson(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setBusinessSuuid(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setBusinessSuuid(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setBusinessType(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setBusinessType(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setFileDuration(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setFileDuration(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setGlobalConfig(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setGlobalConfig(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setGlobalConfigPair(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165key\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setGlobalConfigPair(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setIndexesFileHash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setIndexesFileHash(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setInitSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->initSuccess:Z

    return-void
.end method

.method public setLogLevel(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setLogLevel(I)V

    :cond_0
    return-void
.end method

.method public setM3u8Content(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setM3u8Content(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setOnEasyDataSourceCallBack(Lcom/mgtv/easydatasource/jni/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->onEasyDataSourceCallBack:Lcom/mgtv/easydatasource/jni/c;

    return-void
.end method

.method public setPlaySpeed(Ljava/lang/String;F)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setPlaySpeed(Ljava/lang/String;F)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setPlayerBuffer(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    div-int/lit16 p2, p2, 0x3e8

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setPlayerBuffer(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setPlayerSuuid(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setPlayerSuuid(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public setPriority(Ljava/lang/String;I)I
    .locals 0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "EasyDataSourceJni"

    const-string p1, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {p0, p1}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->setPriority(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public setTaskHash(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->taskHash:Ljava/lang/String;

    return-void
.end method

.method public setTaskPort(I)V
    .locals 0

    iput p1, p0, Lcom/mgtv/easydatasource/EasyDataSourceManager;->taskPort:I

    return-void
.end method

.method public shiftCachePolicy(Ljava/lang/String;III)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->shiftCachePolicy(Ljava/lang/String;III)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0
.end method

.method public startP2PPlayer(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result v0

    const-string v1, "EasyDataSourceJni"

    if-nez v0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->createTask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p0, "startP2PPlayer \u521b\u5efa\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10002"

    return-object p0

    :cond_2
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->getLocalServerPort()I

    move-result p2

    const-string p3, ""

    if-gtz p2, :cond_3

    const-string p0, "startP2PPlayer \u83b7\u53d6\u7aef\u53e3\u53f7\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, -0x2713

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->setTaskPort(I)V

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p5, p6}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->runTask(Ljava/lang/String;III)I

    move-result p4

    if-gez p4, :cond_4

    const-string p0, "startP2PPlayer \u542f\u52a8\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, -0x2714

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->getLocalProxyPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const-string p0, "startP2PPlayer \u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10001"

    return-object p0
.end method

.method public startP2PTask(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result v0

    const-string v1, "EasyDataSourceJni"

    if-nez v0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10000"

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "startP2PTask \u521b\u5efa\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "-10002"

    return-object p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->getLocalServerPort()I

    move-result v0

    const-string v2, ""

    if-gtz v0, :cond_2

    const-string p0, "startP2PTask \u83b7\u53d6\u7aef\u53e3\u53f7\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, -0x2713

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->setTaskPort(I)V

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->runTask(Ljava/lang/String;III)I

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->destoryP2PPlayer(Ljava/lang/String;)I

    const-string p0, "startP2PTask \u542f\u52a8\u4efb\u52a1\u5931\u8d25"

    invoke-static {v1, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, -0x2714

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->getLocalProxyPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public syncStopTask(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result p0

    const-string v0, "EasyDataSourceJni"

    if-nez p0, :cond_0

    const-string p0, "\u81ea\u7814p2p\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2710

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "\u4f20\u5165\u53c2\u6570\u4e0d\u53ef\u4ee5\u4e3anull"

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, -0x2711

    return p0

    :cond_1
    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->syncStopTask(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unInitSDK()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mgtv/easydatasource/EasyDataSourceManager;->setInitSuccess(Z)V

    invoke-static {}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;->unInitSDK()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "EasyDataSourceJni"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mgtv/easydatasource/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method
