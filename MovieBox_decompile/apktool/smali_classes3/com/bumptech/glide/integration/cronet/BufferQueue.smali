.class final Lcom/bumptech/glide/integration/cronet/BufferQueue;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
    }
.end annotation


# static fields
.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "content-length"


# instance fields
.field private final mBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsCoalesced:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mIsCoalesced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-object p1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Queue;Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/integration/cronet/BufferQueue;-><init>(Ljava/util/Queue;)V

    return-void
.end method

.method public static builder()Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;-><init>(Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private markCoalesced()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mIsCoalesced:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "This BufferQueue has already been consumed"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method


# virtual methods
.method public coalesceToBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/cronet/BufferQueue;->markCoalesced()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    add-int/2addr v1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    iget-object v1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue;->mBuffers:Ljava/util/Queue;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 85
    .line 86
    .line 87
    return-object v0
.end method
