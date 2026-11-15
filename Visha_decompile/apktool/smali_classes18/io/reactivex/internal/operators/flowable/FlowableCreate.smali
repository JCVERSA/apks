.class public final Lio/reactivex/internal/operators/flowable/FlowableCreate;
.super Lr14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;
    }
.end annotation


# instance fields
.field public final c:Lw14;

.field public final d:Lio/reactivex/BackpressureStrategy;


# direct methods
.method public constructor <init>(Lw14;Lio/reactivex/BackpressureStrategy;)V
    .locals 0

    invoke-direct {p0}, Lr14;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;->c:Lw14;

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;->d:Lio/reactivex/BackpressureStrategy;

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 2

    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$a;->a:[I

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;->d:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;

    invoke-static {}, Lr14;->a()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;-><init>(Ld2a;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;-><init>(Ld2a;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;-><init>(Ld2a;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;-><init>(Ld2a;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;-><init>(Ld2a;)V

    :goto_0
    invoke-interface {p1, v0}, Ld2a;->onSubscribe(Lf2a;)V

    :try_start_0
    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;->c:Lw14;

    invoke-interface {p0, v0}, Lw14;->subscribe(Lt14;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lre3;->b(Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
