.class public abstract Lgs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgs0$c;,
        Lgs0$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/PriorityQueue;

.field public d:Lgs0$b;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lgs0;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lgs0;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lgs0$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lgs0$b;-><init>(Lgs0$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lgs0$c;

    new-instance v3, Lfs0;

    invoke-direct {v3, p0}, Lfs0;-><init>(Lgs0;)V

    invoke-direct {v2, v3}, Lgs0$c;-><init>(Lku1$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public abstract a()Ll2a;
.end method

.method public abstract b(Ly4a;)V
.end method

.method public c()Ly4a;
    .locals 1

    iget-object v0, p0, Lgs0;->d:Lgs0$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-object v0, p0, Lgs0;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Lgs0;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    iput-object v0, p0, Lgs0;->d:Lgs0$b;

    return-object v0
.end method

.method public d()Lk5a;
    .locals 9

    iget-object v0, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    iget-wide v2, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    iget-wide v4, p0, Lgs0;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    invoke-virtual {v0}, Lwk0;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5a;

    invoke-static {v1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5a;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lwk0;->a(I)V

    invoke-virtual {p0, v0}, Lgs0;->i(Lgs0$b;)V

    return-object v1

    :cond_1
    invoke-virtual {p0, v0}, Lgs0;->b(Ly4a;)V

    invoke-virtual {p0}, Lgs0;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lgs0;->a()Ll2a;

    move-result-object v6

    iget-object v1, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5a;

    invoke-static {v1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk5a;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lk5a;->m(JLl2a;J)V

    invoke-virtual {p0, v0}, Lgs0;->i(Lgs0$b;)V

    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Lgs0;->i(Lgs0$b;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lgs0;->c()Ly4a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lgs0;->d()Lk5a;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lk5a;
    .locals 0

    iget-object p0, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk5a;

    return-object p0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lgs0;->e:J

    return-wide v0
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgs0;->f:J

    iput-wide v0, p0, Lgs0;->e:J

    :goto_0
    iget-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgs0$b;

    invoke-virtual {p0, v0}, Lgs0;->i(Lgs0$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgs0;->d:Lgs0$b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lgs0;->i(Lgs0$b;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lgs0;->d:Lgs0$b;

    :cond_1
    return-void
.end method

.method public abstract g()Z
.end method

.method public h(Ly4a;)V
    .locals 4

    iget-object v0, p0, Lgs0;->d:Lgs0$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->a(Z)V

    check-cast p1, Lgs0$b;

    invoke-virtual {p1}, Lwk0;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lgs0;->i(Lgs0$b;)V

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lgs0;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lgs0;->f:J

    invoke-static {p1, v0, v1}, Lgs0$b;->r(Lgs0$b;J)J

    iget-object v0, p0, Lgs0;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lgs0;->d:Lgs0$b;

    return-void
.end method

.method public final i(Lgs0$b;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->b()V

    iget-object p0, p0, Lgs0;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Lk5a;)V
    .locals 0

    invoke-virtual {p1}, Lk5a;->b()V

    iget-object p0, p0, Lgs0;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ly4a;

    invoke-virtual {p0, p1}, Lgs0;->h(Ly4a;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Lgs0;->e:J

    return-void
.end method
