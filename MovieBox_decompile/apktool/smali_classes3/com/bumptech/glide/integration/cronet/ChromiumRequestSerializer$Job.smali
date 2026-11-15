.class Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Job"
.end annotation


# instance fields
.field private builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

.field private endTimeMs:J

.field private glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

.field private volatile isCancelled:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private priority:Lcom/bumptech/glide/Priority;

.field private request:Lorg/chromium/net/UrlRequest;

.field private responseStartTimeMs:J

.field private startTime:J

.field final synthetic this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)V

    return-void
.end method

.method static synthetic access$102(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/Priority;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->clearListeners()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$202(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlRequest;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$300(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$600(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->onRequestFinished(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method private maybeLogResult(ZLjava/lang/Exception;ZLjava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    const-string v0, "ChromiumSerializer"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string p2, "Successfully completed request, url: "

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ", duration: "

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide p2

    .line 36
    iget-wide v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->startTime:J

    .line 37
    .line 38
    sub-long/2addr p2, v1

    .line 39
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ", file size: "

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/nio/Buffer;->limit()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    div-int/lit16 p2, p2, 0x400

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, "kb"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    .line 70
    .line 71
    const/4 p1, 0x6

    .line 72
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    if-nez p3, :cond_1

    .line 79
    .line 80
    const-string p1, "Request failed"

    .line 81
    .line 82
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    return-void
.end method

.method private notifyFailure(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;

    .line 17
    .line 18
    invoke-interface {v2, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;->onRequestFailed(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method private notifySuccess(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;

    .line 18
    .line 19
    invoke-interface {v3, p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;->onRequestComplete(Ljava/nio/ByteBuffer;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method private onRequestFinished(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;ZLjava/nio/ByteBuffer;)V
    .locals 8
    .param p2    # Lorg/chromium/net/CronetException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$400(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 11
    .line 12
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$900(Lorg/chromium/net/UrlResponseInfo;Ljava/io/IOException;Z)Ljava/io/IOException;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    if-nez p3, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    iput-wide v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->endTimeMs:J

    .line 32
    .line 33
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->maybeLogResult(ZLjava/lang/Exception;ZLjava/nio/ByteBuffer;)V

    .line 34
    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-direct {p0, p4}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->notifySuccess(Ljava/nio/ByteBuffer;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->notifyFailure(Ljava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 46
    .line 47
    invoke-static {p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$1000(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/DataLogger;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 54
    .line 55
    invoke-static {p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$1000(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/DataLogger;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-wide v2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->startTime:J

    .line 60
    .line 61
    iget-wide v4, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->responseStartTimeMs:J

    .line 62
    .line 63
    iget-wide v6, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->endTimeMs:J

    .line 64
    .line 65
    move-object v1, p1

    .line 66
    invoke-interface/range {v0 .. v7}, Lcom/bumptech/glide/integration/cronet/DataLogger;->logNetworkData(Lorg/chromium/net/UrlResponseInfo;JJJ)V

    .line 67
    .line 68
    .line 69
    :cond_2
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 71
    .line 72
    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$1100(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$JobPool;->put(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p1
.end method


# virtual methods
.method addListener(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method init(Lcom/bumptech/glide/load/model/GlideUrl;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->startTime:J

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 8
    .line 9
    return-void
.end method

.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2
    .param p2    # Lorg/chromium/net/UrlResponseInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$800()Lcom/google/common/base/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$3;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$3;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$800()Lcom/google/common/base/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1, p2, p3}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$2;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 4
    .line 5
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->getNextBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->responseStartTimeMs:J

    .line 6
    .line 7
    invoke-static {}, Lcom/bumptech/glide/integration/cronet/BufferQueue;->builder()Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->builder:Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->getFirstBuffer(Lorg/chromium/net/UrlResponseInfo;)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$800()Lcom/google/common/base/q;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lcom/google/common/base/q;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance v0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->priority:Lcom/bumptech/glide/Priority;

    .line 14
    .line 15
    invoke-direct {v0, p0, v1, p2}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job$1;-><init>(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;Lcom/bumptech/glide/Priority;Lorg/chromium/net/UrlResponseInfo;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method removeListener(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Listener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->listeners:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->this$0:Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;->access$400(Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer;)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->glideUrl:Lcom/bumptech/glide/load/model/GlideUrl;

    .line 27
    .line 28
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-boolean p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->isCancelled:Z

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/bumptech/glide/integration/cronet/ChromiumRequestSerializer$Job;->request:Lorg/chromium/net/UrlRequest;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void

    .line 47
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p1
.end method
