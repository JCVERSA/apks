.class public Lcom/snaptube/taskManager/CombinTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/CombinTask$a;
    }
.end annotation


# static fields
.field public static final ALLOC_CONTEXT_ERROR:I = -0x6

.field public static final ALLOC_STREAM_ERROR:I = -0x7

.field public static final AUDIO_INPUTFILE_OPEN_ERROR:I = -0x2

.field public static final AUDIO_INPUT_FORMAT_ERROR:I = -0x4

.field public static final COMB_NATIVE_CRASH:I = -0x1

.field public static final COMB_SUCCESS:I = 0x0

.field public static final COPY_CONTEXT_ERROR:I = -0x8

.field public static final CREATE_FILE_ERROR:I = -0x9

.field private static final LIB_NAME:Ljava/lang/String; = "video_v1"

.field public static final VIDEO_INPUTFILE_OPEN_ERROR:I = -0x3

.field public static final VIDEO_INPUT_FORMAT_ERROR:I = -0x5

.field public static final WRITE_HEADER_ERROR:I = -0xa

.field public static final WRITE_PACKET_ERROR:I = -0xb

.field public static final WRITE_TRAILER_ERROR:I = -0xc

.field private static supported:Z


# instance fields
.field private audioFilePath:Ljava/lang/String;

.field private listener:Lcom/snaptube/taskManager/CombinTask$a;

.field private outputFilePath:Ljava/lang/String;

.field private videoFilePath:Ljava/lang/String;


# direct methods
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

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/snaptube/taskManager/CombinTask;->audioFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/snaptube/taskManager/CombinTask;->videoFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/snaptube/taskManager/CombinTask;->outputFilePath:Ljava/lang/String;

    return-void
.end method

.method private native combvideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static isSupported()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/taskManager/CombinTask;->supported:Z

    return v0
.end method


# virtual methods
.method public onProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/snaptube/taskManager/CombinTask$a;->b(II)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const-class v0, Lcom/snaptube/taskManager/CombinTask;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/snaptube/taskManager/CombinTask;->audioFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/snaptube/taskManager/CombinTask;->videoFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/snaptube/taskManager/CombinTask;->outputFilePath:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/snaptube/taskManager/CombinTask;->combvideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/snaptube/taskManager/CombinTask$a;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    const/4 v2, -0x1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/snaptube/taskManager/CombinTask$a;->a(I)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    iget-object v3, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    invoke-interface {v3, v2}, Lcom/snaptube/taskManager/CombinTask$a;->a(I)V

    :cond_1
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setListener(Lcom/snaptube/taskManager/CombinTask$a;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/CombinTask;->listener:Lcom/snaptube/taskManager/CombinTask$a;

    return-void
.end method
