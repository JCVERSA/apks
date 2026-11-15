.class final Lcom/yandex/mobile/ads/impl/ih;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ih$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "MESSAGE_PARAMS_INSTANCE_POOL"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/yandex/mobile/ads/impl/ih$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yandex/mobile/ads/impl/ir;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ih;->g:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ih;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/ir;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ir;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/ih;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/yandex/mobile/ads/impl/ir;)V

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/yandex/mobile/ads/impl/ir;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ih;->a:Landroid/media/MediaCodec;

    .line 4
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ih;->b:Landroid/os/HandlerThread;

    .line 5
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ih;->e:Lcom/yandex/mobile/ads/impl/ir;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 9

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/lang/IllegalStateException;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {p0, v1, v0}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ir;->e()Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ih$b;

    .line 8
    iget v3, p1, Lcom/yandex/mobile/ads/impl/ih$b;->a:I

    iget v4, p1, Lcom/yandex/mobile/ads/impl/ih$b;->b:I

    iget-object v5, p1, Lcom/yandex/mobile/ads/impl/ih$b;->d:Landroid/media/MediaCodec$CryptoInfo;

    iget-wide v6, p1, Lcom/yandex/mobile/ads/impl/ih$b;->e:J

    iget v8, p1, Lcom/yandex/mobile/ads/impl/ih$b;->f:I

    .line 9
    :try_start_0
    sget-object v0, Lcom/yandex/mobile/ads/impl/ih;->h:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ih;->a:Landroid/media/MediaCodec;

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 11
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 12
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v1, v0}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    move-object v1, p1

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ih$b;

    .line 14
    iget v3, p1, Lcom/yandex/mobile/ads/impl/ih$b;->a:I

    iget v4, p1, Lcom/yandex/mobile/ads/impl/ih$b;->b:I

    iget v5, p1, Lcom/yandex/mobile/ads/impl/ih$b;->c:I

    iget-wide v6, p1, Lcom/yandex/mobile/ads/impl/ih$b;->e:J

    iget v8, p1, Lcom/yandex/mobile/ads/impl/ih$b;->f:I

    .line 15
    :try_start_3
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ih;->a:Landroid/media/MediaCodec;

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p0, v1, v0}, Lwk5;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    .line 17
    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/ih;->a(Lcom/yandex/mobile/ads/impl/ih$b;)V

    :cond_3
    return-void
.end method

.method private static a(Lcom/yandex/mobile/ads/impl/ih$b;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/yandex/mobile/ads/impl/ih;->g:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 79
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/ih;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/ih;->a(Landroid/os/Message;)V

    return-void
.end method

.method private static b()Lcom/yandex/mobile/ads/impl/ih$b;
    .locals 2

    sget-object v0, Lcom/yandex/mobile/ads/impl/ih;->g:Ljava/util/ArrayDeque;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yandex/mobile/ads/impl/ih$b;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/ih$b;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/ih$b;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 18
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ih;->f:Z

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->c:Landroid/os/Handler;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ir;->c()V

    .line 23
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->c:Landroid/os/Handler;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 26
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ir;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public final a(IIJI)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 30
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ih;->b()Lcom/yandex/mobile/ads/impl/ih$b;

    move-result-object v0

    .line 31
    iput p1, v0, Lcom/yandex/mobile/ads/impl/ih$b;->a:I

    const/4 p1, 0x0

    .line 32
    iput p1, v0, Lcom/yandex/mobile/ads/impl/ih$b;->b:I

    .line 33
    iput p2, v0, Lcom/yandex/mobile/ads/impl/ih$b;->c:I

    .line 34
    iput-wide p3, v0, Lcom/yandex/mobile/ads/impl/ih$b;->e:J

    .line 35
    iput p5, v0, Lcom/yandex/mobile/ads/impl/ih$b;->f:I

    .line 36
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->c:Landroid/os/Handler;

    sget p2, Lcom/yandex/mobile/ads/impl/f92;->a:I

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 38
    :cond_0
    throw v0
.end method

.method public final a(ILcom/yandex/mobile/ads/impl/gv;J)V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_d

    .line 40
    invoke-static {}, Lcom/yandex/mobile/ads/impl/ih;->b()Lcom/yandex/mobile/ads/impl/ih$b;

    move-result-object v0

    .line 41
    iput p1, v0, Lcom/yandex/mobile/ads/impl/ih$b;->a:I

    const/4 p1, 0x0

    .line 42
    iput p1, v0, Lcom/yandex/mobile/ads/impl/ih$b;->b:I

    .line 43
    iput p1, v0, Lcom/yandex/mobile/ads/impl/ih$b;->c:I

    .line 44
    iput-wide p3, v0, Lcom/yandex/mobile/ads/impl/ih$b;->e:J

    .line 45
    iput p1, v0, Lcom/yandex/mobile/ads/impl/ih$b;->f:I

    .line 46
    iget-object p3, v0, Lcom/yandex/mobile/ads/impl/ih$b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 47
    iget p4, p2, Lcom/yandex/mobile/ads/impl/gv;->f:I

    iput p4, p3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 48
    iget-object p4, p2, Lcom/yandex/mobile/ads/impl/gv;->d:[I

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_2

    .line 49
    array-length v2, v1

    array-length v3, p4

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    array-length v2, p4

    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 52
    :goto_1
    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 53
    iget-object p4, p2, Lcom/yandex/mobile/ads/impl/gv;->e:[I

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez p4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_5

    .line 54
    array-length v2, v1

    array-length v3, p4

    if-ge v2, v3, :cond_4

    goto :goto_2

    .line 55
    :cond_4
    array-length v2, p4

    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 56
    :cond_5
    :goto_2
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 57
    :goto_3
    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 58
    iget-object p4, p2, Lcom/yandex/mobile/ads/impl/gv;->b:[B

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-nez p4, :cond_6

    goto :goto_5

    :cond_6
    if-eqz v1, :cond_8

    .line 59
    array-length v2, v1

    array-length v3, p4

    if-ge v2, v3, :cond_7

    goto :goto_4

    .line 60
    :cond_7
    array-length v2, p4

    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 61
    :cond_8
    :goto_4
    array-length v1, p4

    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 62
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 64
    iget-object p4, p2, Lcom/yandex/mobile/ads/impl/gv;->a:[B

    iget-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    if-nez p4, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_b

    .line 65
    array-length v2, v1

    array-length v3, p4

    if-ge v2, v3, :cond_a

    goto :goto_6

    .line 66
    :cond_a
    array-length v2, p4

    invoke-static {p4, p1, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 67
    :cond_b
    :goto_6
    array-length p1, p4

    invoke-static {p4, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 68
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    iput-object v1, p3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 70
    iget p1, p2, Lcom/yandex/mobile/ads/impl/gv;->c:I

    iput p1, p3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 71
    sget p1, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 p4, 0x18

    if-lt p1, p4, :cond_c

    .line 72
    new-instance p1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    iget p4, p2, Lcom/yandex/mobile/ads/impl/gv;->g:I

    iget p2, p2, Lcom/yandex/mobile/ads/impl/gv;->h:I

    invoke-direct {p1, p4, p2}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 73
    invoke-virtual {p3, p1}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 74
    :cond_c
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->c:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 77
    :cond_d
    throw v0
.end method

.method public final c()V
    .locals 1

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ih;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ih;->a()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ih;->f:Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ih;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/ih$a;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ih;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/impl/ih$a;-><init>(Lcom/yandex/mobile/ads/impl/ih;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ih;->f:Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ir;->c()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ih;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ih;->e:Lcom/yandex/mobile/ads/impl/ir;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ir;->a()V

    return-void
.end method
