.class public final Leu0;
.super Loa9;
.source "SourceFile"


# instance fields
.field public final f:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final synthetic g:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLeu0;Lkotlinx/coroutines/channels/BufferedChannel;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Loa9;-><init>(JLoa9;I)V

    iput-object p4, p0, Leu0;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    mul-int/lit8 p2, p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Leu0;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final A(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Leu0;->z()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final B(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Leu0;->z()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final C(IZ)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Leu0;->y()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p2

    iget-wide v0, p0, Loa9;->d:J

    sget v2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Lkotlinx/coroutines/channels/BufferedChannel;->m1(J)V

    :cond_0
    invoke-virtual {p0}, Loa9;->t()V

    return-void
.end method

.method public final D(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Leu0;->A(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Leu0;->w(I)V

    return-object v0
.end method

.method public final E(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Leu0;->z()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final F(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Leu0;->z()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public final G(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Leu0;->E(ILjava/lang/Object;)V

    return-void
.end method

.method public r()I
    .locals 0

    sget p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    return p0
.end method

.method public s(ILjava/lang/Throwable;Lkotlin/coroutines/d;)V
    .locals 3

    sget p2, Lkotlinx/coroutines/channels/BufferedChannelKt;->b:I

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sub-int/2addr p1, p2

    :cond_1
    invoke-virtual {p0, p1}, Leu0;->A(I)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Leu0;->B(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljgc;

    if-nez v2, :cond_b

    instance-of v2, v1, Lkgc;

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Ly7a;

    move-result-object v2

    if-eq v1, v2, :cond_9

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Ly7a;

    move-result-object v2

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->p()Ly7a;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->q()Ly7a;

    move-result-object v2

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->f()Ly7a;

    move-result-object p0

    if-eq v1, p0, :cond_8

    sget-object p0, Lkotlinx/coroutines/channels/BufferedChannelKt;->d:Ly7a;

    if-ne v1, p0, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->z()Ly7a;

    move-result-object p0

    if-ne v1, p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unexpected state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    invoke-virtual {p0, p1}, Leu0;->w(I)V

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Leu0;->y()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p0

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->c:Le74;

    if-eqz p0, :cond_a

    invoke-static {p0, p2, p3}, Lqf7;->a(Le74;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->j()Ly7a;

    move-result-object v2

    goto :goto_5

    :cond_c
    invoke-static {}, Lkotlinx/coroutines/channels/BufferedChannelKt;->i()Ly7a;

    move-result-object v2

    :goto_5
    invoke-virtual {p0, p1, v1, v2}, Leu0;->v(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Leu0;->w(I)V

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Leu0;->C(IZ)V

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Leu0;->y()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p0

    iget-object p0, p0, Lkotlinx/coroutines/channels/BufferedChannel;->c:Le74;

    if-eqz p0, :cond_d

    invoke-static {p0, p2, p3}, Lqf7;->a(Le74;Ljava/lang/Object;Lkotlin/coroutines/d;)V

    :cond_d
    return-void
.end method

.method public final v(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Leu0;->z()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, p2, p3}, Ldu0;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final w(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Leu0;->E(ILjava/lang/Object;)V

    return-void
.end method

.method public final x(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Leu0;->z()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lkotlinx/coroutines/channels/BufferedChannel;
    .locals 0

    iget-object p0, p0, Leu0;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final synthetic z()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Leu0;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method
