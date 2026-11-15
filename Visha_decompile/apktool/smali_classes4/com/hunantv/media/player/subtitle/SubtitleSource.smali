.class public Lcom/hunantv/media/player/subtitle/SubtitleSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;,
        Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;,
        Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

.field private mCharset:Ljava/lang/String;

.field private mContent:[B

.field private mErrorResult:Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

.field private mFormat:Lcom/hunantv/media/player/subtitle/MediaFormat;

.field private volatile mHolder:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;

.field private mInputStream:Ljava/io/InputStream;

.field private mPath:Ljava/lang/String;

.field private volatile mReaded:Z

.field private volatile mReading:Z

.field private volatile mReleased:Z

.field private sync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/hunantv/media/player/subtitle/MediaFormat;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCharset:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    new-instance v0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    invoke-direct {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mErrorResult:Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mFormat:Lcom/hunantv/media/player/subtitle/MediaFormat;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/hunantv/media/player/subtitle/MediaFormat;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCharset:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    new-instance v0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    invoke-direct {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mErrorResult:Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mFormat:Lcom/hunantv/media/player/subtitle/MediaFormat;

    invoke-static {p1}, Lcom/hunantv/media/utils/StreamUtil;->createFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>([BLcom/hunantv/media/player/subtitle/MediaFormat;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCharset:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    new-instance v0, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    invoke-direct {v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;-><init>()V

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mErrorResult:Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B

    iput-object p2, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mFormat:Lcom/hunantv/media/player/subtitle/MediaFormat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReaded:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCallback:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/hunantv/media/player/subtitle/SubtitleSource;Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;)Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCallback:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/hunantv/media/player/subtitle/SubtitleSource;)[B
    .locals 0

    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->readContentBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$202(Lcom/hunantv/media/player/subtitle/SubtitleSource;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReading:Z

    return p1
.end method

.method public static synthetic access$300(Lcom/hunantv/media/player/subtitle/SubtitleSource;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReleased:Z

    return p0
.end method

.method private asyncReadSource(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 3

    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SubtitleReadThread"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReading:Z

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/hunantv/media/player/subtitle/SubtitleSource$1;-><init>(Lcom/hunantv/media/player/subtitle/SubtitleSource;Lcom/hunantv/media/player/subtitle/SubtitleSource;Lcom/hunantv/media/player/subtitle/d;Landroid/os/HandlerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private readContentBytes()[B
    .locals 2

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->readContentStrImpl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hunantv/media/utils/StringUtil;->isSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReleased:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    :cond_3
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B

    return-object p0
.end method

.method private readContentStrImpl()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Scanner;

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReaded:Z

    return-object v0
.end method


# virtual methods
.method public bindHolder(Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mHolder:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCharset:Ljava/lang/String;

    return-object p0
.end method

.method public getContent()[B
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B

    return-object p0
.end method

.method public getErrorResult()Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mErrorResult:Lcom/hunantv/media/player/subtitle/SubtitleSource$ErrorResult;

    return-object p0
.end method

.method public getFormat()Lcom/hunantv/media/player/subtitle/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mFormat:Lcom/hunantv/media/player/subtitle/MediaFormat;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public isBinded()Z
    .locals 1

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mHolder:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isReading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReading:Z

    return p0
.end method

.method public isReleased()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReleased:Z

    return p0
.end method

.method public isValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->isReleased()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B

    invoke-static {v0}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->getFormat()Lcom/hunantv/media/player/subtitle/MediaFormat;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readSource(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mContent:[B

    invoke-static {v1}, Lcom/hunantv/media/utils/ByteUtil;->isEmpty([B)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/hunantv/media/player/subtitle/SubtitleSource;->asyncReadSource(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCallback:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;->onSuccess(Lcom/hunantv/media/player/subtitle/d;Lcom/hunantv/media/player/subtitle/SubtitleSource;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReleased:Z

    iget-boolean v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReading:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mInputStream:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    iput-object v2, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCallback:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mReaded:Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCallback(Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCallback:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceCallback;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mCharset:Ljava/lang/String;

    return-void
.end method

.method public unBindHolder()V
    .locals 2

    iget-object v0, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/hunantv/media/player/subtitle/SubtitleSource;->mHolder:Lcom/hunantv/media/player/subtitle/SubtitleSource$SubtitleSourceHolder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
