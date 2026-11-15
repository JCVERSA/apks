.class public Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/easydatasource/jni/EasyDataSourceJni$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;
    .locals 2

    const-class v0, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mgtv/easydatasource/jni/EasyDataSourceJni$a;->a:Lcom/mgtv/easydatasource/jni/EasyDataSourceJni;
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
.method public native createTask(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native enableHttpsReport(Z)V
.end method

.method public native enableLogCallback(Z)V
.end method

.method public native enableP2PDownload(Z)V
.end method

.method public native enableP2PUpload(Z)V
.end method

.method public native enableTrickleICE(Z)V
.end method

.method public native genAgentUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getLocalServerPort()I
.end method

.method public native getPreheatTaskEnable()Z
.end method

.method public native getPreheatTaskLimitCount()I
.end method

.method public native getSdkVersion()Ljava/lang/String;
.end method

.method public native initSDK(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mgtv/easydatasource/jni/c;)I
.end method

.method public native isInited()Z
.end method

.method public native pauseTask(Ljava/lang/String;)I
.end method

.method public native queryPreTaskInfo()[Lcom/mgtv/easydatasource/jni/a;
.end method

.method public native queryTaskInfo(Ljava/lang/String;Lcom/mgtv/easydatasource/jni/b;)I
.end method

.method public native readDataDirect(Ljava/lang/String;Ljava/lang/String;[BJJ[J[I)I
.end method

.method public native resumeTask(Ljava/lang/String;)I
.end method

.method public native runTask(Ljava/lang/String;III)I
.end method

.method public native seekTask(Ljava/lang/String;I)I
.end method

.method public native setAppScene(I)V
.end method

.method public native setBackupUrlJson(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setBusinessSuuid(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setBusinessType(Ljava/lang/String;I)I
.end method

.method public native setFileDuration(Ljava/lang/String;I)I
.end method

.method public native setGlobalConfig(Ljava/lang/String;)I
.end method

.method public native setGlobalConfigPair(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setIndexesFileHash(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setLogLevel(I)V
.end method

.method public native setM3u8Content(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setPlaySpeed(Ljava/lang/String;F)I
.end method

.method public native setPlayerBuffer(Ljava/lang/String;I)I
.end method

.method public native setPlayerSuuid(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native setPriority(Ljava/lang/String;I)I
.end method

.method public native shiftCachePolicy(Ljava/lang/String;III)I
.end method

.method public native stopTask(Ljava/lang/String;)I
.end method

.method public native syncStopTask(Ljava/lang/String;)I
.end method

.method public native unInitSDK()I
.end method
