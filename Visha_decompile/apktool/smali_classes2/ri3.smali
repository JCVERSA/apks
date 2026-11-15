.class public final Lri3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lri3$b;
    }
.end annotation


# instance fields
.field public final a:Lkm1;

.field public final b:Ly4a;

.field public final c:Ljava/util/Deque;

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkm1;

    invoke-direct {v0}, Lkm1;-><init>()V

    iput-object v0, p0, Lri3;->a:Lkm1;

    new-instance v0, Ly4a;

    invoke-direct {v0}, Ly4a;-><init>()V

    iput-object v0, p0, Lri3;->b:Ly4a;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lri3;->c:Ljava/util/Deque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lri3;->c:Ljava/util/Deque;

    new-instance v3, Lri3$a;

    invoke-direct {v3, p0}, Lri3$a;-><init>(Lri3;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lri3;->d:I

    return-void
.end method

.method public static synthetic a(Lri3;Lk5a;)V
    .locals 0

    invoke-direct {p0, p1}, Lri3;->e(Lk5a;)V

    return-void
.end method

.method private e(Lk5a;)V
    .locals 3

    iget-object v0, p0, Lri3;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lri3;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lzi;->a(Z)V

    invoke-virtual {p1}, Lk5a;->b()V

    iget-object p0, p0, Lri3;->c:Ljava/util/Deque;

    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()Ly4a;
    .locals 2

    iget-boolean v0, p0, Lri3;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lzi;->g(Z)V

    iget v0, p0, Lri3;->d:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput v1, p0, Lri3;->d:I

    iget-object p0, p0, Lri3;->b:Ly4a;

    return-object p0
.end method

.method public c()Lk5a;
    .locals 7

    iget-boolean v0, p0, Lri3;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iget v0, p0, Lri3;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lri3;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lri3;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk5a;

    iget-object v1, p0, Lri3;->b:Ly4a;

    invoke-virtual {v1}, Lwk0;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lwk0;->a(I)V

    goto :goto_0

    :cond_1
    new-instance v4, Lri3$b;

    iget-object v1, p0, Lri3;->b:Ly4a;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-object v5, p0, Lri3;->a:Lkm1;

    iget-object v1, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Lkm1;->a([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v4, v2, v3, v1}, Lri3$b;-><init>(JLcom/google/common/collect/ImmutableList;)V

    iget-object v1, p0, Lri3;->b:Ly4a;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lk5a;->m(JLl2a;J)V

    :goto_0
    iget-object v1, p0, Lri3;->b:Ly4a;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    const/4 v1, 0x0

    iput v1, p0, Lri3;->d:I

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Ly4a;)V
    .locals 3

    iget-boolean v0, p0, Lri3;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lzi;->g(Z)V

    iget v0, p0, Lri3;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lri3;->b:Ly4a;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lzi;->a(Z)V

    const/4 p1, 0x2

    iput p1, p0, Lri3;->d:I

    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lri3;->b()Ly4a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lri3;->c()Lk5a;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lri3;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lri3;->b:Ly4a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lri3;->d:I

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ly4a;

    invoke-virtual {p0, p1}, Lri3;->d(Ly4a;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lri3;->e:Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
