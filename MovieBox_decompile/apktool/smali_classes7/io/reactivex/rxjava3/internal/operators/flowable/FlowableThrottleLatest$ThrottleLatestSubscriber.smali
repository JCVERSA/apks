.class final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/f;
.implements Li00/d;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/rxjava3/core/f;",
        "Li00/d;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7323c2cdbcdaca16L


# instance fields
.field volatile cancelled:Z

.field volatile done:Z

.field final downstream:Li00/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li00/c;"
        }
    .end annotation
.end field

.field final emitLast:Z

.field emitted:J

.field error:Ljava/lang/Throwable;

.field final latest:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field final onDropped:Lyx/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyx/f;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final timeout:J

.field volatile timerFired:Z

.field timerRunning:Z

.field final unit:Ljava/util/concurrent/TimeUnit;

.field upstream:Li00/d;

.field final worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;


# direct methods
.method constructor <init>(Li00/c;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler$Worker;ZLyx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li00/c;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/Scheduler$Worker;",
            "Z",
            "Lyx/f;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->downstream:Li00/c;

    .line 5
    .line 6
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timeout:J

    .line 7
    .line 8
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 11
    .line 12
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->emitLast:Z

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    iput-object p7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->cancelled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->upstream:Li00/d;

    .line 5
    .line 6
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->clear()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Ldy/a;->r(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method drain()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->downstream:Li00/c;

    .line 15
    .line 16
    move v5, v1

    .line 17
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->cancelled:Z

    .line 18
    .line 19
    if-eqz v6, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->clear()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->done:Z

    .line 26
    .line 27
    iget-object v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->error:Ljava/lang/Throwable;

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    if-eqz v6, :cond_5

    .line 31
    .line 32
    if-eqz v7, :cond_5

    .line 33
    .line 34
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    :try_start_0
    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 45
    .line 46
    invoke-interface {v3, v2}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception v2

    .line 51
    invoke-static {v2}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 52
    .line 53
    .line 54
    new-instance v3, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 55
    .line 56
    const/4 v5, 0x2

    .line 57
    new-array v5, v5, [Ljava/lang/Throwable;

    .line 58
    .line 59
    aput-object v7, v5, v0

    .line 60
    .line 61
    aput-object v2, v5, v1

    .line 62
    .line 63
    invoke-direct {v3, v5}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    move-object v7, v3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    invoke-interface {v4, v7}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 75
    .line 76
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    if-nez v7, :cond_6

    .line 85
    .line 86
    move v7, v1

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    move v7, v0

    .line 89
    :goto_2
    const-wide/16 v9, 0x1

    .line 90
    .line 91
    if-eqz v6, :cond_b

    .line 92
    .line 93
    if-nez v7, :cond_a

    .line 94
    .line 95
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->emitLast:Z

    .line 100
    .line 101
    if-eqz v1, :cond_8

    .line 102
    .line 103
    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->emitted:J

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 106
    .line 107
    .line 108
    move-result-wide v5

    .line 109
    cmp-long v3, v1, v5

    .line 110
    .line 111
    if-eqz v3, :cond_7

    .line 112
    .line 113
    add-long/2addr v1, v9

    .line 114
    iput-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->emitted:J

    .line 115
    .line 116
    invoke-interface {v4, v0}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v4}, Li00/c;->onComplete()V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_7
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->tryDropAndSignalMBE(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_8
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 128
    .line 129
    if-eqz v1, :cond_9

    .line 130
    .line 131
    :try_start_1
    invoke-interface {v1, v0}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v4, v0}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 143
    .line 144
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_9
    :goto_3
    invoke-interface {v4}, Li00/c;->onComplete()V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_a
    invoke-interface {v4}, Li00/c;->onComplete()V

    .line 153
    .line 154
    .line 155
    :goto_4
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 156
    .line 157
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_b
    if-eqz v7, :cond_c

    .line 162
    .line 163
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerFired:Z

    .line 164
    .line 165
    if-eqz v6, :cond_d

    .line 166
    .line 167
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerRunning:Z

    .line 168
    .line 169
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerFired:Z

    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_c
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerRunning:Z

    .line 173
    .line 174
    if-eqz v6, :cond_e

    .line 175
    .line 176
    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerFired:Z

    .line 177
    .line 178
    if-eqz v6, :cond_d

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_d
    :goto_5
    neg-int v5, v5

    .line 182
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-nez v5, :cond_1

    .line 187
    .line 188
    return-void

    .line 189
    :cond_e
    :goto_6
    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->emitted:J

    .line 194
    .line 195
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 196
    .line 197
    .line 198
    move-result-wide v11

    .line 199
    cmp-long v11, v7, v11

    .line 200
    .line 201
    if-eqz v11, :cond_f

    .line 202
    .line 203
    invoke-interface {v4, v6}, Li00/c;->onNext(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    add-long/2addr v7, v9

    .line 207
    iput-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->emitted:J

    .line 208
    .line 209
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerFired:Z

    .line 210
    .line 211
    iput-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerRunning:Z

    .line 212
    .line 213
    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 214
    .line 215
    iget-wide v7, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timeout:J

    .line 216
    .line 217
    iget-object v9, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->unit:Ljava/util/concurrent/TimeUnit;

    .line 218
    .line 219
    invoke-virtual {v6, p0, v7, v8, v9}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/c;

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_f
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->upstream:Li00/d;

    .line 225
    .line 226
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v6}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->tryDropAndSignalMBE(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->worker:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    .line 233
    .line 234
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/c;->dispose()V

    .line 235
    .line 236
    .line 237
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->done:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->drain()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->error:Ljava/lang/Throwable;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->done:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->drain()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->latest:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    :try_start_0
    invoke-interface {v0, p1}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->upstream:Li00/d;

    .line 22
    .line 23
    invoke-interface {v0}, Li00/d;->cancel()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->error:Ljava/lang/Throwable;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->done:Z

    .line 30
    .line 31
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->drain()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onSubscribe(Li00/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->upstream:Li00/d;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(Li00/d;Li00/d;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->upstream:Li00/d;

    .line 10
    .line 11
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->downstream:Li00/c;

    .line 12
    .line 13
    invoke-interface {v0, p0}, Li00/c;->onSubscribe(Li00/d;)V

    .line 14
    .line 15
    .line 16
    const-wide v0, 0x7fffffffffffffffL

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Li00/d;->request(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/rxjava3/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-static {v0, p1, p2}, Lio/reactivex/rxjava3/internal/util/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->timerFired:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->drain()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method tryDropAndSignalMBE(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;->createDefault()Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->onDropped:Lyx/f;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v1, p1}, Lyx/f;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Ljava/lang/Throwable;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object p1, v2, v0

    .line 27
    .line 28
    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    move-object v0, v1

    .line 32
    :cond_0
    :goto_0
    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableThrottleLatest$ThrottleLatestSubscriber;->downstream:Li00/c;

    .line 33
    .line 34
    invoke-interface {p1, v0}, Li00/c;->onError(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
