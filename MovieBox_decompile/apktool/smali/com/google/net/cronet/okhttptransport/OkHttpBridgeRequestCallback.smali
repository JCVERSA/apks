.class Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;
.super Lorg/chromium/net/UrlRequest$Callback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;,
        Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;,
        Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/y;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/BlockingQueue;

.field private final e:Lcom/google/common/util/concurrent/y;

.field private final f:J

.field private final g:Lcom/google/net/cronet/okhttptransport/c;

.field private volatile h:Lorg/chromium/net/UrlRequest;


# direct methods
.method constructor <init>(JLcom/google/net/cronet/okhttptransport/c;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/UrlRequest$Callback;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/util/concurrent/y;->s()Lcom/google/common/util/concurrent/y;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    .line 32
    .line 33
    invoke-static {}, Lcom/google/common/util/concurrent/y;->s()Lcom/google/common/util/concurrent/y;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    cmp-long v0, p1, v2

    .line 42
    .line 43
    if-ltz v0, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    const-wide/32 p1, 0x7fffffff

    .line 52
    .line 53
    .line 54
    iput-wide p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->f:J

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput-wide p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->f:J

    .line 58
    .line 59
    :goto_0
    iput-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    .line 60
    .line 61
    return-void
.end method

.method static synthetic a(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Lorg/chromium/net/UrlRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->h:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic e(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method f()Lcom/google/common/util/concurrent/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 2
    .line 3
    return-object v0
.end method

.method g()Lcom/google/common/util/concurrent/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    .line 10
    .line 11
    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_CANCELED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {p2, v0, v1, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/io/IOException;

    .line 21
    .line 22
    const-string p2, "The request was canceled!"

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 28
    .line 29
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    .line 19
    .line 20
    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    .line 21
    .line 22
    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_FAILED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {p2, v0, v1, p3, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    .line 4
    .line 5
    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_READ_COMPLETED:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p2, v0, p3, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onRedirectReceived(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/c;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 10
    .line 11
    invoke-virtual {p3, p2}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-static {p2}, Lcom/google/common/base/m;->u(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 19
    .line 20
    new-instance p3, Lokio/Buffer;

    .line 21
    .line 22
    invoke-direct {p3}, Lokio/Buffer;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p3}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {p2}, Lcom/google/common/base/m;->u(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/c;->c()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    if-gt p2, p3, :cond_1

    .line 51
    .line 52
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->followRedirect()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 57
    .line 58
    .line 59
    new-instance p1, Ljava/net/ProtocolException;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string p3, "Too many follow-up requests: "

    .line 67
    .line 68
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->g:Lcom/google/net/cronet/okhttptransport/c;

    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/google/net/cronet/okhttptransport/c;->c()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    add-int/lit8 p3, p3, 0x1

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 92
    .line 93
    .line 94
    iget-object p2, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 95
    .line 96
    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/y;->setException(Ljava/lang/Throwable;)Z

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public onResponseStarted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->h:Lorg/chromium/net/UrlRequest;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->e:Lcom/google/common/util/concurrent/y;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Lcom/google/common/base/m;->u(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->a:Lcom/google/common/util/concurrent/y;

    .line 13
    .line 14
    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$c;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p2, p0, v0}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$c;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/google/common/util/concurrent/y;->set(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p1}, Lcom/google/common/base/m;->u(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback;->d:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    new-instance p2, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;

    .line 4
    .line 5
    sget-object v0, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;->ON_SUCCESS:Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p2, v0, v1, v1, v1}, Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$b;-><init>(Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$CallbackStep;Ljava/nio/ByteBuffer;Lorg/chromium/net/CronetException;Lcom/google/net/cronet/okhttptransport/OkHttpBridgeRequestCallback$a;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method
