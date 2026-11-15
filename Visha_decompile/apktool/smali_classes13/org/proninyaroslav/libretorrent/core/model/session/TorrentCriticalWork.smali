.class Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;,
        Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$Type;
    }
.end annotation


# instance fields
.field private exec:Ljava/util/concurrent/ExecutorService;

.field private moving:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private saveResume:Ljava/util/concurrent/atomic/AtomicInteger;

.field private stateChangedEvent:Lzd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzd0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->exec:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->moving:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->saveResume:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v1, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;-><init>(ZZJ)V

    invoke-static {v0}, Lzd0;->p0(Ljava/lang/Object;)Lzd0;

    move-result-object v0

    iput-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->stateChangedEvent:Lzd0;

    return-void
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;)V
    .locals 0

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->lambda$emitChangedEvent$0()V

    return-void
.end method

.method private emitChangedEvent()V
    .locals 2

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->exec:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/a;

    invoke-direct {v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/a;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$emitChangedEvent$0()V
    .locals 5

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->stateChangedEvent:Lzd0;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->moving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->saveResume:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, p0, v3, v4}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;-><init>(ZZJ)V

    invoke-virtual {v0, v1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isMoving()Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->moving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isSaveResume()Z
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->saveResume:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public observeStateChanging()Lmc7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmc7<",
            "Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->stateChangedEvent:Lzd0;

    return-object p0
.end method

.method public setMoving(Z)V
    .locals 1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->moving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->emitChangedEvent()V

    return-void
.end method

.method public setSaveResume(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->saveResume:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->saveResume:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :goto_0
    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentCriticalWork;->emitChangedEvent()V

    return-void
.end method
