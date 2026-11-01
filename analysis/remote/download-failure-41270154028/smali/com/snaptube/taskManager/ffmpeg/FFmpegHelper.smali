.class public Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper$a;
    }
.end annotation


# static fields
.field private static sLibLoaded:Z

.field private static sLibName:Ljava/lang/String;

.field private static sPluginName:Ljava/lang/String;

.field private static sPluginVersion:Ljava/lang/String;

.field private static sProcessProgressHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native execCommand(J[Ljava/lang/String;)I
.end method

.method public static ffmpegCancel(J)V
    .locals 3

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->setCancel(J)V

    :cond_0
    return-void
.end method

.method public static ffmpegExecCommand(J[Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->execCommand(J[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ffmpegGetErrorMsg(J)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->getErrorMsg(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static ffmpegInit(Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper$a;)J
    .locals 5

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->initFFMediaContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    if-eqz p0, :cond_0

    sget-object v2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static ffmpegMuxesToWebM(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->muxesToWebM(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static ffmpegRelease(J)J
    .locals 3

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v2, :cond_0

    sget-object v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->release(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static ffmpegTranscodeTomp3(JLjava/lang/String;Ljava/lang/String;II)I
    .locals 1

    invoke-static {}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->loadLibrary()V

    sget-boolean v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p5}, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->transcodeTomp3(JLjava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static native getErrorMsg(J)Ljava/lang/String;
.end method

.method public static native initFFMediaContext()J
.end method

.method public static declared-synchronized loadLibrary()V
    .locals 4

    const-class v0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sPluginName:Ljava/lang/String;

    sget-object v2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sPluginVersion:Ljava/lang/String;

    sget-object v3, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/c16;->D(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static native muxesToWebM(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static onProcessProgress(JJJ)V
    .locals 0

    sget-object p2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sProcessProgressHashMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lo/u88;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static native release(J)J
.end method

.method public static native setCancel(J)V
.end method

.method public static setLibInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sPluginName:Ljava/lang/String;

    sput-object p1, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sPluginVersion:Ljava/lang/String;

    sput-object p2, Lcom/snaptube/taskManager/ffmpeg/FFmpegHelper;->sLibName:Ljava/lang/String;

    return-void
.end method

.method public static native transcodeTomp3(JLjava/lang/String;Ljava/lang/String;II)I
.end method
