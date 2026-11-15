.class public final Lz2i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb2i;

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Ljava/util/ArrayDeque;

.field public final d:Ljava/util/PriorityQueue;

.field public e:I

.field public f:Lh1i;


# direct methods
.method public constructor <init>(Lb2i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2i;->a:Lb2i;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lz2i;->b:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lz2i;->c:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/PriorityQueue;

    invoke-direct {p1}, Ljava/util/PriorityQueue;-><init>()V

    iput-object p1, p0, Lz2i;->d:Ljava/util/PriorityQueue;

    const/4 p1, -0x1

    iput p1, p0, Lz2i;->e:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lz2i;->e:I

    return p0
.end method

.method public final b(JLu4h;)V
    .locals 6

    iget v0, p0, Lz2i;->e:I

    if-eqz v0, :cond_7

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lz2i;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    iget v3, p0, Lz2i;->e:I

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh1i;

    sget v2, Lkfh;->a:I

    iget-wide v2, v0, Lh1i;->c:J

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lz2i;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lu4h;

    invoke-direct {v0}, Lu4h;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4h;

    :goto_0
    invoke-virtual {p3}, Lu4h;->u()I

    move-result v2

    invoke-virtual {v0, v2}, Lu4h;->i(I)V

    invoke-virtual {p3}, Lu4h;->n()[B

    move-result-object v2

    invoke-virtual {p3}, Lu4h;->w()I

    move-result p3

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v3

    invoke-virtual {v0}, Lu4h;->u()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, p3, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p3, p0, Lz2i;->f:Lh1i;

    if-eqz p3, :cond_3

    iget-wide v2, p3, Lh1i;->c:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p3, Lh1i;->b:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, Lz2i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p3, Lh1i;

    invoke-direct {p3}, Lh1i;-><init>()V

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh1i;

    :goto_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-static {v5}, Ln7g;->d(Z)V

    iget-object v2, p3, Lh1i;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Ln7g;->f(Z)V

    iput-wide p1, p3, Lh1i;->c:J

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lz2i;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p1, p3}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lz2i;->f:Lh1i;

    iget p1, p0, Lz2i;->e:I

    if-eq p1, v1, :cond_6

    invoke-virtual {p0, p1}, Lz2i;->f(I)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    iget-object p0, p0, Lz2i;->a:Lb2i;

    invoke-interface {p0, p1, p2, p3}, Lb2i;->a(JLu4h;)V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Lz2i;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->clear()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz2i;->f(I)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ln7g;->f(Z)V

    iput p1, p0, Lz2i;->e:I

    invoke-virtual {p0, p1}, Lz2i;->f(I)V

    return-void
.end method

.method public final f(I)V
    .locals 7

    :goto_0
    iget-object v0, p0, Lz2i;->d:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-le v1, p1, :cond_2

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh1i;

    sget v1, Lkfh;->a:I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, v0, Lh1i;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lz2i;->a:Lb2i;

    iget-wide v4, v0, Lh1i;->c:J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lu4h;

    invoke-interface {v3, v4, v5, v6}, Lb2i;->a(JLu4h;)V

    iget-object v3, p0, Lz2i;->b:Ljava/util/ArrayDeque;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu4h;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lz2i;->f:Lh1i;

    if-eqz v1, :cond_1

    iget-wide v1, v1, Lh1i;->c:J

    iget-wide v3, v0, Lh1i;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lz2i;->f:Lh1i;

    :cond_1
    iget-object v1, p0, Lz2i;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
