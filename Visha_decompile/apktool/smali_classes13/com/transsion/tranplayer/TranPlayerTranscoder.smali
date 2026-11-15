.class public Lcom/transsion/tranplayer/TranPlayerTranscoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;,
        Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;,
        Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranPlayerTranscoder"

.field private static mIsTranscodeStoping:Z = false

.field private static mIsTranscoding:Z = false


# instance fields
.field private ctxTranPtr:J

.field private mAudio:Ljava/lang/String;

.field private final mDebugString:Ljava/lang/String;

.field private mDuration:F

.field private mEndTime:F

.field private mInput:Ljava/lang/String;

.field private mOnCompletionListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;

.field private mOnErrorListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;

.field private mOutput:Ljava/lang/String;

.field private mStartTime:F

.field private mTimeStamp:Ljava/lang/String;

.field private mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

.field private mVideo:Ljava/lang/String;

.field private final spaceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "vlcffmpeg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "trantranscoder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load the library: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranPlayerTranscoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "|040"

    iput-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->spaceKey:Ljava/lang/String;

    const-string v0, "trace"

    iput-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mDebugString:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    iput-object p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    sget-object v0, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->createTranscodeContext()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    :cond_0
    return-void
.end method

.method public static native cleanupTranscodeContext(J)V
.end method

.method public static native ffmpegCore(I[Ljava/lang/String;)I
.end method

.method private fileIsExist(Ljava/lang/String;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_0

    return-object v6

    :cond_0
    :try_start_1
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object p1, v6

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6
.end method

.method public static native getTranscodeCurrentTime()I
.end method

.method public static native getTranscodeProgress(J)F
.end method

.method public static native setMediaSource(JLjava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native setMediaSource(JLjava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native startTranscodeVideo(J)I
.end method

.method public static native stop()V
.end method

.method public static native stopTranscodeVideo(J)V
.end method

.method private strProcess(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "|040"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public native createTranscodeContext()J
.end method

.method public getCurrentTranscodeTimeSecond()I
    .locals 0

    invoke-static {}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->getTranscodeCurrentTime()I

    move-result p0

    return p0
.end method

.method public getTranscodeProgress()F
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-static {v0, v1}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->getTranscodeProgress(J)F

    move-result p0

    return p0
.end method

.method public releaseTranscode()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    sput-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscoding:Z

    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    sget-object v1, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-static {v0, v1}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->cleanupTranscodeContext(J)V

    :cond_0
    return-void
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    const-string v0, "open fd failed, finally!"

    const-string v1, "TranPlayerTranscoder"

    if-eqz p2, :cond_9

    .line 9
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 10
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 11
    :cond_0
    const-string v3, "content"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 13
    iget-wide v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-static {v0, v1, p1, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setMediaSource(JLjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 14
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can not get real path from content uri!!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v2, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 16
    const-string v3, "r"

    invoke-virtual {p1, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_4

    .line 17
    const-string p1, "open fd failed, fd is NULL!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 20
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gez p1, :cond_5

    .line 21
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 22
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-void

    .line 25
    :catch_0
    :try_start_2
    const-string p1, "open fd failed, IOException!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    .line 27
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_2

    .line 28
    :catch_1
    :try_start_3
    const-string p1, "open fd failed, SecurityException!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    goto :goto_1

    .line 30
    :cond_6
    :goto_2
    iget-wide p0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setMediaSource(JLjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 31
    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    .line 32
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 33
    :cond_7
    throw p0

    .line 34
    :cond_8
    :goto_4
    iget-wide p0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setMediaSource(JLjava/lang/String;Ljava/lang/String;)I

    return-void

    .line 35
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 36
    iget-wide v1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setMediaSource(JLjava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 37
    iget-wide v1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setMediaSource(JLjava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transcode setDataSource input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranPlayerTranscoder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    sget-object v1, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF_CMD:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_METADATA_CMD:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setMediaSource(JLjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setInputOutput(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    return-void
.end method

.method public setInputOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mAudio:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mVideo:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    return-void
.end method

.method public setOnCompletionListener(Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOnCompletionListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOnErrorListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;

    return-void
.end method

.method public setTimePoint(FFF)V
    .locals 0

    iput p1, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mStartTime:F

    iput p2, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mEndTime:F

    iput p3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mDuration:F

    return-void
.end method

.method public transcodeStop()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscoding:Z

    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    sget-object v1, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-static {v0, v1}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->stopTranscodeVideo(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->stop()V

    :goto_0
    return-void
.end method

.method public transcoderVideo()I
    .locals 6

    sget-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscoding:Z

    const/4 v1, 0x0

    const-string v2, "TranPlayerTranscoder"

    if-eqz v0, :cond_1

    const-string v0, "got error, is in transcoding! "

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOnErrorListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;->onError()V

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscoding:Z

    sget-object v3, Lcom/transsion/tranplayer/TranPlayerTranscoder$1;->$SwitchMap$com$transsion$tranplayer$TranPlayerTranscoder$TrancoderType:[I

    iget-object v4, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "trace"

    if-eq v3, v0, :cond_6

    const/4 v0, 0x2

    if-eq v3, v0, :cond_5

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    const/4 v0, 0x4

    if-eq v3, v0, :cond_3

    const/4 v0, 0x5

    if-eq v3, v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTimeStamp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ffmpeg -i %s -metadata creation_time=%s -c copy -y %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ffmpeg -threads 8 -i %s -lavfi fps=15,scale=376:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=256:stats_mode=full[p];[s1][p]paletteuse=dither=none -y %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ffmpeg -f concat -i %s -c copy %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ffmpeg -i %s -acodec aac -ar 48000 -ss 00:00:00 -to 00:00:10 -y %s -v %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->fileIsExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mInput:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOutput:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->strProcess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ffmpeg -i %s -vn -c:a libmp3lame -q:a 1 %s"

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    goto/16 :goto_6

    :cond_8
    iget-object v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mTranscoderType:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    sget-object v4, Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;->TYPE_TRANSCODE_TO_GIF:Lcom/transsion/tranplayer/TranPlayerTranscoder$TrancoderType;

    if-ne v3, v4, :cond_9

    const-string v0, "TYPE_TRANSCODE_TO_GIF "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ctxTranPtr:J

    invoke-static {v3, v4}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->startTranscodeVideo(J)I

    move-result v0

    goto :goto_2

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input string : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    invoke-static {v3, v0}, Lcom/transsion/tranplayer/TranPlayerTranscoder;->ffmpegCore(I[Ljava/lang/String;)I

    move-result v0

    :goto_2
    sput-boolean v1, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscoding:Z

    if-nez v0, :cond_c

    iget-object p0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOnCompletionListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;

    if-eqz p0, :cond_a

    sget-boolean v0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    if-nez v0, :cond_a

    invoke-interface {p0}, Lcom/transsion/tranplayer/TranPlayerTranscoder$onCompletionListener;->onCompletion()V

    goto :goto_3

    :cond_a
    sget-boolean p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    if-eqz p0, :cond_b

    sput-boolean v1, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    :cond_b
    :goto_3
    const-string p0, "transcoder finished!"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transcoder got error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mOnErrorListener:Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;

    if-eqz p0, :cond_d

    sget-boolean v2, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    if-nez v2, :cond_d

    invoke-interface {p0}, Lcom/transsion/tranplayer/TranPlayerTranscoder$onErrorListener;->onError()V

    goto :goto_4

    :cond_d
    sget-boolean p0, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    if-eqz p0, :cond_e

    sput-boolean v1, Lcom/transsion/tranplayer/TranPlayerTranscoder;->mIsTranscodeStoping:Z

    :cond_e
    :goto_4
    const/4 p0, -0x2

    if-ne v0, p0, :cond_f

    return p0

    :cond_f
    :goto_5
    return v1

    :cond_10
    :goto_6
    const-string p0, "mInput is null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
