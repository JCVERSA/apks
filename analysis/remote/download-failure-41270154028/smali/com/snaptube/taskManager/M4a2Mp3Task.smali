.class public Lcom/snaptube/taskManager/M4a2Mp3Task;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/taskManager/M4a2Mp3Task$a;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "mp3cvt"

.field public static final MP3_PREFER_BITRATE:I = 0x80

.field public static final sToken:Ljava/util/concurrent/atomic/AtomicLong;

.field private static supported:Z


# instance fields
.field private final bitrate:I

.field private isCanceled:Z

.field private listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

.field private final m4aFilePath:Ljava/lang/String;

.field private final m4aFileSizeBeforeConvert:J

.field private final mp3FilePath:Ljava/lang/String;

.field private final referer:Ljava/lang/String;

.field private final token:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/snaptube/taskManager/M4a2Mp3Task;->sToken:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/snaptube/taskManager/M4a2Mp3Task;->supported:Z

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mp3cvt"

    invoke-static {v0, v1}, Lo/xe6;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/snaptube/taskManager/M4a2Mp3Task;->supported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->isCanceled:Z

    sget-object v0, Lcom/snaptube/taskManager/M4a2Mp3Task;->sToken:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->token:J

    iput-object p1, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->m4aFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->mp3FilePath:Ljava/lang/String;

    iput p3, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->bitrate:I

    iput-object p4, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->referer:Ljava/lang/String;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->m4aFileSizeBeforeConvert:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->m4aFileSizeBeforeConvert:J

    :goto_0
    return-void
.end method

.method private native cancelConvert(J)V
.end method

.method private native convertM4aToMp3(JLjava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static isSupported()Z
    .locals 1

    sget-boolean v0, Lcom/snaptube/taskManager/M4a2Mp3Task;->supported:Z

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->isCanceled:Z

    :try_start_0
    iget-wide v0, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->token:J

    invoke-direct {p0, v0, v1}, Lcom/snaptube/taskManager/M4a2Mp3Task;->cancelConvert(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onConvertComplete(IIIIII)V
    .locals 0

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->m4aFilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->mp3FilePath:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    :cond_1
    return-void
.end method

.method public onConvertProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/snaptube/taskManager/M4a2Mp3Task$a;->b(I)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    const-class v0, Lcom/snaptube/taskManager/M4a2Mp3Task;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->isCanceled:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_1
    iget-wide v3, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->token:J

    iget-object v5, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->m4aFilePath:Ljava/lang/String;

    iget-object v6, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->mp3FilePath:Ljava/lang/String;

    iget v7, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->bitrate:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/snaptube/taskManager/M4a2Mp3Task;->convertM4aToMp3(JLjava/lang/String;Ljava/lang/String;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/snaptube/taskManager/M4a2Mp3Task$a;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v1, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

    if-eqz v1, :cond_1

    invoke-interface {v1, v2}, Lcom/snaptube/taskManager/M4a2Mp3Task$a;->a(Z)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    iget-object v3, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

    invoke-interface {v3, v2}, Lcom/snaptube/taskManager/M4a2Mp3Task$a;->a(Z)V

    :cond_2
    throw v1

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setListener(Lcom/snaptube/taskManager/M4a2Mp3Task$a;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/taskManager/M4a2Mp3Task;->listener:Lcom/snaptube/taskManager/M4a2Mp3Task$a;

    return-void
.end method
