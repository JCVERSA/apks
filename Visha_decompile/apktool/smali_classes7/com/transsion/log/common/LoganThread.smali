.class Lcom/transsion/log/common/LoganThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final CACHE_SIZE:I = 0x400

.field private static final HOUR:J = 0x36ee80L

.field private static final LONG:J = 0x5265c00L

.field private static final MINUTE:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "LoganThread"


# instance fields
.field private mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/transsion/log/common/LoganModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCachePath:Ljava/lang/String;

.field private mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/transsion/log/common/LoganModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDay:J

.field private mCurrentHour:J

.field private mCurrentTime:J

.field private mEncryptIv16:Ljava/lang/String;

.field private mEncryptKey16:Ljava/lang/String;

.field private mFileDirectory:Ljava/io/File;

.field private mFileSize:J

.field private mFileStrategy:Lsr3;

.field private volatile mIsRun:Z

.field private mIsSDCard:Z

.field private volatile mIsWorking:Z

.field private mLastFileSize:J

.field private mLastFileTime:J

.field private mLastTime:J

.field private mLogFileSize:J

.field private mLoganProtocol:Lgq5;

.field private mMaxLogFile:J

.field private mMinSDCard:J

.field private mPath:Ljava/lang/String;

.field private mSaveTime:J

.field private mSendLogStatusCode:I

.field private final mSendSync:Ljava/lang/Object;

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mSync:Ljava/lang/Object;

.field private mTotalFileSize:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Lsr3;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/transsion/log/common/LoganModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lsr3;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mSendSync:Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/log/common/LoganThread;->mIsRun:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/transsion/log/common/LoganThread;->mCurrentHour:J

    iput-wide v1, v0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    move-object v1, p1

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object v1, p2

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mCachePath:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    move-wide v1, p4

    iput-wide v1, v0, Lcom/transsion/log/common/LoganThread;->mSaveTime:J

    move-wide v1, p6

    iput-wide v1, v0, Lcom/transsion/log/common/LoganThread;->mMaxLogFile:J

    move-wide v1, p8

    iput-wide v1, v0, Lcom/transsion/log/common/LoganThread;->mMinSDCard:J

    move-object v1, p10

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mEncryptKey16:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mEncryptIv16:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lcom/transsion/log/common/LoganThread;->mTotalFileSize:J

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/log/common/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private action(Lcom/transsion/log/common/LoganModel;)V
    .locals 8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/log/common/LoganModel;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    if-nez v0, :cond_1

    invoke-static {}, Lgq5;->g()Lgq5;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    new-instance v1, Lcom/transsion/log/common/LoganThread$a;

    invoke-direct {v1, p0}, Lcom/transsion/log/common/LoganThread$a;-><init>(Lcom/transsion/log/common/LoganThread;)V

    invoke-virtual {v0, v1}, Lgq5;->a(Lef7;)V

    iget-object v2, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    iget-object v3, p0, Lcom/transsion/log/common/LoganThread;->mCachePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mMaxLogFile:J

    long-to-int v5, v0

    iget-object v6, p0, Lcom/transsion/log/common/LoganThread;->mEncryptKey16:Ljava/lang/String;

    iget-object v7, p0, Lcom/transsion/log/common/LoganThread;->mEncryptIv16:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lgq5;->c(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    sget-boolean v1, Lfq5;->d:Z

    invoke-virtual {v0, v1}, Lgq5;->f(Z)V

    :cond_1
    iget-object v0, p1, Lcom/transsion/log/common/LoganModel;->a:Lcom/transsion/log/common/LoganModel$Action;

    sget-object v1, Lcom/transsion/log/common/LoganModel$Action;->WRITE:Lcom/transsion/log/common/LoganModel$Action;

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lcom/transsion/log/common/LoganModel;->b:Lopc;

    invoke-direct {p0, p1}, Lcom/transsion/log/common/LoganThread;->doWriteLog2File(Lopc;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/transsion/log/common/LoganModel$Action;->SEND:Lcom/transsion/log/common/LoganModel$Action;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/transsion/log/common/LoganModel;->c:Lyb9;

    iget-object v0, v0, Lyb9;->d:Lcom/transsion/log/common/SendLogRunnable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mSendSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/transsion/log/common/LoganThread;->mSendLogStatusCode:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_3

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/transsion/log/common/LoganModel;->c:Lyb9;

    invoke-direct {p0, p1}, Lcom/transsion/log/common/LoganThread;->doSendLog2Net(Lyb9;)V

    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    sget-object p1, Lcom/transsion/log/common/LoganModel$Action;->FLUSH:Lcom/transsion/log/common/LoganModel$Action;

    if-ne v0, p1, :cond_5

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->doFlushLog2File()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/log/common/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/log/common/LoganThread;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mSendSync:Ljava/lang/Object;

    return-object p0
.end method

.method private callStrategyDeleteFile()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {p0, v0}, Lsr3;->b([Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, p2, p0, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_1
    move-object v0, v1

    goto :goto_4

    :catch_0
    :goto_2
    move-object v0, v1

    goto :goto_5

    :catch_1
    :goto_3
    move-object v0, v1

    goto :goto_7

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    const/4 p0, 0x1

    goto :goto_8

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catch_4
    move-object p1, v0

    goto :goto_2

    :catch_5
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p1, v0

    goto :goto_4

    :catch_6
    move-object p1, v0

    goto :goto_5

    :catch_7
    move-object p1, v0

    goto :goto_7

    :goto_4
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    :catch_8
    :cond_1
    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :catch_9
    :cond_2
    throw p0

    :goto_5
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    :catch_a
    :cond_3
    if-eqz p1, :cond_5

    :goto_6
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    goto :goto_8

    :goto_7
    if-eqz v0, :cond_4

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    :catch_b
    :cond_4
    if-eqz p1, :cond_5

    goto :goto_6

    :catch_c
    :cond_5
    :goto_8
    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/log/common/LoganThread;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/log/common/LoganThread;->mSendLogStatusCode:I

    return-void
.end method

.method private deleteExpiredFile(J)V
    .locals 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-lez v6, :cond_1

    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gtz v6, :cond_1

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private doFlushLog2File()V
    .locals 2

    sget-boolean v0, Lfq5;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "LoganThread"

    const-string v1, "Logan flush start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lgq5;->b()V

    :cond_1
    return-void
.end method

.method private doSendLog2Net(Lyb9;)V
    .locals 2

    sget-boolean v0, Lfq5;->d:Z

    const-string v1, "LoganThread"

    if-eqz v0, :cond_0

    const-string v0, "Logan send start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lyb9;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/log/common/LoganThread;->prepareLogFileCompress(Lyb9;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean p0, Lfq5;->d:Z

    if-eqz p0, :cond_2

    const-string p0, "Logan prepare log file failed, can\'t find log file"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    iget-object v0, p1, Lyb9;->d:Lcom/transsion/log/common/SendLogRunnable;

    invoke-virtual {v0, p1}, Lcom/transsion/log/common/SendLogRunnable;->setSendAction(Lyb9;)V

    iget-object v0, p1, Lyb9;->d:Lcom/transsion/log/common/SendLogRunnable;

    new-instance v1, Lcom/transsion/log/common/LoganThread$b;

    invoke-direct {v1, p0}, Lcom/transsion/log/common/LoganThread$b;-><init>(Lcom/transsion/log/common/LoganThread;)V

    invoke-virtual {v0, v1}, Lcom/transsion/log/common/SendLogRunnable;->setCallBackListener(Lcom/transsion/log/common/SendLogRunnable$a;)V

    const/16 v0, 0x2711

    iput v0, p0, Lcom/transsion/log/common/LoganThread;->mSendLogStatusCode:I

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_4

    new-instance v0, Lcom/transsion/log/common/LoganThread$c;

    invoke-direct {v0, p0}, Lcom/transsion/log/common/LoganThread$c;-><init>(Lcom/transsion/log/common/LoganThread;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/log/common/LoganThread;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_4
    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lyb9;->d:Lcom/transsion/log/common/SendLogRunnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private doWriteLog2File(Lopc;)V
    .locals 10

    sget-boolean v0, Lfq5;->d:Z

    const-string v1, "LoganThread"

    if-eqz v0, :cond_0

    const-string v0, "Logan write start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileDirectory:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lsr3;->e()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {v0}, Lsr3;->c()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->isInTimeByConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mFileSize:J

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {v0}, Lsr3;->c()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_5

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lxu3;->g(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mLastFileTime:J

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mLastFileSize:J

    iget-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mLastFileTime:J

    sub-long v6, v2, v6

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {v0}, Lsr3;->e()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    iget-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mLastFileSize:J

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {v0}, Lsr3;->c()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_3

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mLastFileTime:J

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mLastFileSize:J

    iput-wide v6, p0, Lcom/transsion/log/common/LoganThread;->mFileSize:J

    iput-wide v4, p0, Lcom/transsion/log/common/LoganThread;->mLastFileTime:J

    iput-wide v4, p0, Lcom/transsion/log/common/LoganThread;->mLastFileSize:J

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->callStrategyDeleteFile()V

    iput-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->refreshLogFileSize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get last file info error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    iget-wide v1, p0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgq5;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->isOutTime()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lykb;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mSaveTime:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/transsion/log/common/LoganThread;->deleteExpiredFile(J)V

    iput-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mCurrentHour:J

    iget-object v2, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lgq5;->e(Ljava/lang/String;)V

    :cond_5
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->refreshCurrentFileSize()V

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->isCanWriteSDCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/log/common/LoganThread;->mIsSDCard:Z

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mLastTime:J

    iget-boolean v0, p0, Lcom/transsion/log/common/LoganThread;->mIsSDCard:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/transsion/log/common/LoganThread;->mLoganProtocol:Lgq5;

    iget v2, p1, Lopc;->f:I

    iget-object v3, p1, Lopc;->a:Ljava/lang/String;

    iget-wide v4, p1, Lopc;->e:J

    iget-object v6, p1, Lopc;->d:Ljava/lang/String;

    iget-wide v7, p1, Lopc;->c:J

    iget-boolean v9, p1, Lopc;->b:Z

    invoke-virtual/range {v1 .. v9}, Lgq5;->d(ILjava/lang/String;JLjava/lang/String;JZ)V

    return-void
.end method

.method private isCanWriteSDCard()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v1, p0, Lcom/transsion/log/common/LoganThread;->mMinSDCard:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v4, v1

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private isDay()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mCurrentDay:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFile(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isInTimeByConfig()Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {p0}, Lsr3;->e()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long p0, v4, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOutTime()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mCurrentHour:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareLogFileCompress(Lyb9;)Z
    .locals 7

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->doFlushLog2File()V

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v4, ""

    if-eq v0, v2, :cond_0

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "v_ubt_zip_v1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lyb9;->b:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    iget-object p0, p1, Lyb9;->e:Ljava/util/List;

    invoke-static {p0, v0}, Lxu3;->b(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    iput-object v0, p1, Lyb9;->c:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_2
    iput-object v4, p1, Lyb9;->c:Ljava/lang/String;

    return v3
.end method

.method private refreshCurrentFileSize()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mCurrentTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lxu3;->i(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private refreshLogFileSize()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mTotalFileSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lxu3;->i(Ljava/io/File;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/log/common/LoganThread;->mLogFileSize:J

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mTotalFileSize:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    invoke-interface {v2}, Lsr3;->c()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/transsion/log/common/LoganThread;->mTotalFileSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mFileStrategy:Lsr3;

    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mPath:Ljava/lang/String;

    invoke-interface {v0, p0}, Lsr3;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public notifyRun()V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/log/common/LoganThread;->mIsWorking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/log/common/LoganThread;->mIsRun:Z

    iget-boolean v0, p0, Lcom/transsion/log/common/LoganThread;->mIsWorking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-boolean v0, p0, Lcom/transsion/log/common/LoganThread;->mIsRun:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/log/common/LoganThread;->mIsWorking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/transsion/log/common/LoganThread;->mCacheLogQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/log/common/LoganModel;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/transsion/log/common/LoganThread;->refreshCurrentFileSize()V

    iput-boolean v2, p0, Lcom/transsion/log/common/LoganThread;->mIsWorking:Z

    iget-object v3, p0, Lcom/transsion/log/common/LoganThread;->mSync:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    iput-boolean v1, p0, Lcom/transsion/log/common/LoganThread;->mIsWorking:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v3}, Lcom/transsion/log/common/LoganThread;->action(Lcom/transsion/log/common/LoganModel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iput-boolean v2, p0, Lcom/transsion/log/common/LoganThread;->mIsWorking:Z

    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
