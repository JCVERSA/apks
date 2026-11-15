.class public Lcom/transsion/videodownloader/task/SingleVideoCacheThread;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleVideoCacheThread"


# instance fields
.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mIsRunning:Z

.field private mListener:Lcx4;

.field private final mMd5:Ljava/lang/String;

.field private mMsgHandler:Landroid/os/Handler;

.field private final mRange:Lcom/transsion/videodownloader/model/VideoRange;

.field private final mSaveDir:Ljava/io/File;

.field private final mTotalSize:J

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/videodownloader/model/VideoRange;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/videodownloader/model/VideoRange;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    iput-object p1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mUrl:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mHeaders:Ljava/util/Map;

    iput-object p3, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    iput-wide p4, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mTotalSize:J

    invoke-static {p1}, Lfrb;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mMd5:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mSaveDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->lambda$notifyOnProgress$1(J)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->lambda$notifyOnRangeCompleted$2()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->lambda$notifyOnFailed$0(Ljava/lang/Exception;)V

    return-void
.end method

.method private downloadVideo()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "SingleVideoCacheThread"

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mSaveDir:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mMd5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_0
    iget-object v3, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    invoke-virtual {v3}, Lcom/transsion/videodownloader/model/VideoRange;->getStart()J

    move-result-wide v3

    iget-object v5, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    invoke-virtual {v5}, Lcom/transsion/videodownloader/model/VideoRange;->getEnd()J

    move-result-wide v5

    const-wide/16 v7, 0xa

    sub-long v9, v3, v7

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_1

    move-wide v3, v9

    :cond_1
    add-long/2addr v7, v5

    iget-wide v9, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mTotalSize:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_2

    move-wide v5, v7

    :cond_2
    sub-long v7, v5, v3

    iget-object v9, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mHeaders:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bytes="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v13, "Range"

    invoke-interface {v9, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    :try_start_1
    new-instance v13, Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    const-string v14, "rw"

    invoke-direct {v13, v2, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    invoke-virtual {v13, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Request range = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mUrl:Ljava/lang/String;

    iget-object v14, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mHeaders:Ljava/util/Map;

    invoke-static {}, Lfrb;->d()Lrqb;

    move-result-object v15

    invoke-virtual {v15}, Lrqb;->e()Z

    move-result v15

    invoke-static {v2, v14, v15}, Lst4;->c(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v14, "Receive response"

    invoke-static {v0, v14}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x2000

    new-array v14, v14, [B

    :goto_1
    iget-boolean v15, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    if-eqz v15, :cond_5

    invoke-virtual {v9, v14}, Ljava/io/InputStream;->read([B)I

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v10, -0x1

    if-eq v15, v10, :cond_5

    move-object/from16 v16, v9

    int-to-long v9, v15

    add-long/2addr v9, v11

    cmp-long v17, v9, v7

    if-lez v17, :cond_3

    sub-long v9, v7, v11

    long-to-int v9, v9

    const/4 v11, 0x0

    :try_start_5
    invoke-virtual {v13, v14, v11, v9}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-wide v11, v7

    goto :goto_2

    :catchall_0
    move-exception v0

    move v3, v11

    move-object/from16 v9, v16

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v9, v16

    goto/16 :goto_7

    :cond_3
    const/4 v11, 0x0

    :try_start_6
    invoke-virtual {v13, v14, v11, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    move-wide v11, v9

    :goto_2
    invoke-direct {v1, v11, v12}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->notifyOnProgress(J)V

    cmp-long v9, v11, v7

    if-ltz v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exceed cachedSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", Range[start="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", end="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->notifyOnRangeCompleted()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    const/4 v3, 0x0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v9, v16

    :goto_4
    const/4 v3, 0x0

    goto :goto_9

    :cond_4
    move-object/from16 v9, v16

    goto :goto_1

    :cond_5
    move-object/from16 v16, v9

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_7

    :goto_5
    iput-boolean v3, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    invoke-static/range {v16 .. v16}, Lfrb;->b(Ljava/io/Closeable;)V

    :goto_6
    invoke-static {v13}, Lfrb;->b(Ljava/io/Closeable;)V

    invoke-static {v2}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v9

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v2, v9

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v2, v9

    move-object v13, v2

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v2, v9

    move-object v13, v2

    :goto_7
    :try_start_7
    invoke-direct {v1, v0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->notifyOnFailed(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    invoke-static {v9}, Lfrb;->b(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_8
    return-void

    :goto_9
    iput-boolean v3, v1, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    invoke-static {v9}, Lfrb;->b(Ljava/io/Closeable;)V

    invoke-static {v13}, Lfrb;->b(Ljava/io/Closeable;)V

    invoke-static {v2}, Lst4;->b(Ljava/net/HttpURLConnection;)V

    throw v0

    :goto_a
    invoke-direct {v1, v0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->notifyOnFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$notifyOnFailed$0(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mListener:Lcx4;

    iget-object v1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    iget p0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mId:I

    invoke-interface {v0, v1, p0, p1}, Lcx4;->a(Lcom/transsion/videodownloader/model/VideoRange;ILjava/lang/Exception;)V

    return-void
.end method

.method private synthetic lambda$notifyOnProgress$1(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mListener:Lcx4;

    iget-object v1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    iget p0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mId:I

    invoke-interface {v0, v1, p0, p1, p2}, Lcx4;->b(Lcom/transsion/videodownloader/model/VideoRange;IJ)V

    return-void
.end method

.method private synthetic lambda$notifyOnRangeCompleted$2()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mListener:Lcx4;

    iget-object v1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mRange:Lcom/transsion/videodownloader/model/VideoRange;

    iget p0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mId:I

    invoke-interface {v0, v1, p0}, Lcx4;->c(Lcom/transsion/videodownloader/model/VideoRange;I)V

    return-void
.end method

.method private notifyOnFailed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lsn9;

    invoke-direct {v1, p0, p1}, Lsn9;-><init>(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyOnProgress(J)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lrn9;

    invoke-direct {v1, p0, p1, p2}, Lrn9;-><init>(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyOnRangeCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mMsgHandler:Landroid/os/Handler;

    new-instance v1, Lqn9;

    invoke-direct {v1, p0}, Lqn9;-><init>(Lcom/transsion/videodownloader/task/SingleVideoCacheThread;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    return p0
.end method

.method public pause()V
    .locals 2

    const-string v0, "SingleVideoCacheThread"

    const-string v1, "Pause task"

    invoke-static {v0, v1}, Leq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->downloadVideo()V

    return-void
.end method

.method public setCacheListener(Lcx4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mListener:Lcx4;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/videodownloader/task/SingleVideoCacheThread;->mId:I

    return-void
.end method
