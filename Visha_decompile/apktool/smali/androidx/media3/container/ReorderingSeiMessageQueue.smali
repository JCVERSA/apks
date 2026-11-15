.class public final Landroidx/media3/container/ReorderingSeiMessageQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;,
        Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
    }
.end annotation


# instance fields
.field private lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingSeiMessages:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
            ">;"
        }
    .end annotation
.end field

.field private reorderingQueueSize:I

.field private final seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

.field private final unusedParsableByteArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/common/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private final unusedSampleSeiMessages:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    return-void
.end method

.method private copy(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 4

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/util/ParsableByteArray;

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method private flushQueueDownToSize(I)V
    .locals 6

    :goto_0
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    iget-wide v3, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-object v5, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v2, v3, v4, v5}, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v2, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedParsableByteArrays:Ljava/util/ArrayDeque;

    iget-object v3, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    iget-wide v3, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    :cond_1
    iget-object v1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public add(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    iget v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v2, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    iget-wide v2, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue;->copy(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p3

    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    if-eqz v0, :cond_1

    iget-wide v2, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->presentationTimeUs:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    iget-object p0, v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->nalBuffers:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    invoke-direct {v0}, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->unusedSampleSeiMessages:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;->init(JLandroidx/media3/common/util/ParsableByteArray;)V

    iget-object p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->lastQueuedMessage:Landroidx/media3/container/ReorderingSeiMessageQueue$SampleSeiMessages;

    iget p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    if-eq p1, v1, :cond_3

    invoke-direct {p0, p1}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->seiConsumer:Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/container/ReorderingSeiMessageQueue$SeiConsumer;->consume(JLandroidx/media3/common/util/ParsableByteArray;)V

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->pendingSeiMessages:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    return-void
.end method

.method public getMaxSize()I
    .locals 0

    iget p0, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    return p0
.end method

.method public setMaxSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput p1, p0, Landroidx/media3/container/ReorderingSeiMessageQueue;->reorderingQueueSize:I

    invoke-direct {p0, p1}, Landroidx/media3/container/ReorderingSeiMessageQueue;->flushQueueDownToSize(I)V

    return-void
.end method
