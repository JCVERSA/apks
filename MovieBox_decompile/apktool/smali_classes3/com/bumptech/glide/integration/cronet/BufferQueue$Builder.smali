.class public final Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/cronet/BufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private whenClosed:Ljava/lang/RuntimeException;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;-><init>()V

    return-void
.end method

.method private static bufferSizeHeuristic(Lorg/chromium/net/UrlResponseInfo;)J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "content-length"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    const-string v0, "content-encoding"

    .line 31
    .line 32
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    .line 38
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x1

    .line 49
    if-ne v4, v5, :cond_0

    .line 50
    .line 51
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "identity"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    const-wide/16 v0, 0x1

    .line 71
    .line 72
    add-long/2addr v2, v0

    .line 73
    return-wide v2

    .line 74
    :cond_1
    :goto_0
    const-wide/16 v0, 0x2

    .line 75
    .line 76
    mul-long/2addr v2, v0

    .line 77
    return-wide v2

    .line 78
    :cond_2
    const-wide/16 v0, 0x2000

    .line 79
    .line 80
    return-wide v0
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/integration/cronet/BufferQueue;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->whenClosed:Ljava/lang/RuntimeException;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    new-instance v2, Lcom/bumptech/glide/integration/cronet/BufferQueue;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/integration/cronet/BufferQueue;-><init>(Ljava/util/Queue;Lcom/bumptech/glide/integration/cronet/BufferQueue$1;)V

    .line 16
    .line 17
    .line 18
    return-object v2
.end method

.method public getFirstBuffer(Lorg/chromium/net/UrlResponseInfo;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->bufferSizeHeuristic(Lorg/chromium/net/UrlResponseInfo;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x80000

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    long-to-int p1, v0

    .line 13
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getNextBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->mBuffers:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    const/16 p1, 0x1fa0

    .line 24
    .line 25
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/integration/cronet/BufferQueue$Builder;->whenClosed:Ljava/lang/RuntimeException;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method
