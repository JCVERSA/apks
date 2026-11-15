.class public Lcom/google/android/exoplayer2/source/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/o$a;
    }
.end annotation


# instance fields
.field public final a:Lcb;

.field public final b:I

.field public final c:Lqw7;

.field public d:Lcom/google/android/exoplayer2/source/o$a;

.field public e:Lcom/google/android/exoplayer2/source/o$a;

.field public f:Lcom/google/android/exoplayer2/source/o$a;

.field public g:J


# direct methods
.method public constructor <init>(Lcb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/o;->a:Lcb;

    invoke-interface {p1}, Lcb;->getIndividualAllocationLength()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/o;->b:I

    new-instance v0, Lqw7;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lqw7;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->c:Lqw7;

    new-instance v0, Lcom/google/android/exoplayer2/source/o$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/exoplayer2/source/o$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    return-void
.end method

.method public static c(Lcom/google/android/exoplayer2/source/o$a;J)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    :goto_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static h(Lcom/google/android/exoplayer2/source/o$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/o$a;
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/o;->c(Lcom/google/android/exoplayer2/source/o$a;J)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iget-object v1, v1, Lbb;->a:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/o$a;->d(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static i(Lcom/google/android/exoplayer2/source/o$a;J[BI)Lcom/google/android/exoplayer2/source/o$a;
    .locals 5

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/o;->c(Lcom/google/android/exoplayer2/source/o$a;J)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iget-object v2, v2, Lbb;->a:[B

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/o$a;->d(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static j(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;Lqw7;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/p$b;->b:J

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lqw7;->K(I)V

    invoke-virtual/range {p3 .. p3}, Lqw7;->d()[B

    move-result-object v5

    move-object/from16 v6, p0

    invoke-static {v6, v2, v3, v5, v4}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$a;J[BI)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v5

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    invoke-virtual/range {p3 .. p3}, Lqw7;->d()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v8, v6, 0x80

    if-eqz v8, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    and-int/lit8 v6, v6, 0x7f

    move-object/from16 v9, p1

    iget-object v9, v9, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Lvl1;

    iget-object v10, v9, Lvl1;->a:[B

    if-nez v10, :cond_1

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lvl1;->a:[B

    goto :goto_1

    :cond_1
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    :goto_1
    iget-object v10, v9, Lvl1;->a:[B

    invoke-static {v5, v2, v3, v10, v6}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$a;J[BI)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v5

    int-to-long v10, v6

    add-long/2addr v2, v10

    if-eqz v8, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lqw7;->K(I)V

    invoke-virtual/range {p3 .. p3}, Lqw7;->d()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$a;J[BI)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v5

    const-wide/16 v10, 0x2

    add-long/2addr v2, v10

    invoke-virtual/range {p3 .. p3}, Lqw7;->I()I

    move-result v4

    :cond_2
    move v10, v4

    iget-object v4, v9, Lvl1;->d:[I

    if-eqz v4, :cond_4

    array-length v6, v4

    if-ge v6, v10, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v11, v4

    goto :goto_4

    :cond_4
    :goto_3
    new-array v4, v10, [I

    goto :goto_2

    :goto_4
    iget-object v4, v9, Lvl1;->e:[I

    if-eqz v4, :cond_6

    array-length v6, v4

    if-ge v6, v10, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object v12, v4

    goto :goto_7

    :cond_6
    :goto_6
    new-array v4, v10, [I

    goto :goto_5

    :goto_7
    if-eqz v8, :cond_7

    mul-int/lit8 v4, v10, 0x6

    invoke-virtual {v1, v4}, Lqw7;->K(I)V

    invoke-virtual/range {p3 .. p3}, Lqw7;->d()[B

    move-result-object v6

    invoke-static {v5, v2, v3, v6, v4}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$a;J[BI)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v5

    int-to-long v13, v4

    add-long/2addr v2, v13

    invoke-virtual {v1, v7}, Lqw7;->O(I)V

    :goto_8
    if-ge v7, v10, :cond_8

    invoke-virtual/range {p3 .. p3}, Lqw7;->I()I

    move-result v4

    aput v4, v11, v7

    invoke-virtual/range {p3 .. p3}, Lqw7;->G()I

    move-result v4

    aput v4, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_7
    aput v7, v11, v7

    iget v1, v0, Lcom/google/android/exoplayer2/source/p$b;->a:I

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/p$b;->b:J

    sub-long v13, v2, v13

    long-to-int v4, v13

    sub-int/2addr v1, v4

    aput v1, v12, v7

    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/p$b;->c:Lfva$a;

    invoke-static {v1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfva$a;

    iget-object v13, v1, Lfva$a;->b:[B

    iget-object v14, v9, Lvl1;->a:[B

    iget v15, v1, Lfva$a;->a:I

    iget v4, v1, Lfva$a;->c:I

    iget v1, v1, Lfva$a;->d:I

    move/from16 v16, v4

    move/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Lvl1;->c(I[I[I[B[BIII)V

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/p$b;->b:J

    sub-long/2addr v2, v6

    long-to-int v1, v2

    int-to-long v2, v1

    add-long/2addr v6, v2

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget v2, v0, Lcom/google/android/exoplayer2/source/p$b;->a:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/exoplayer2/source/p$b;->a:I

    return-object v5
.end method

.method public static k(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;Lqw7;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/o;->j(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;Lqw7;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    :cond_0
    invoke-virtual {p1}, Lwk0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lqw7;->K(I)V

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    invoke-virtual {p3}, Lqw7;->d()[B

    move-result-object v3

    invoke-static {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/o$a;J[BI)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    invoke-virtual {p3}, Lqw7;->G()I

    move-result p3

    iget-wide v1, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget v1, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    sub-int/2addr v1, v0

    iput v1, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget-object v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    invoke-static {p0, v0, v1, v2, p3}, Lcom/google/android/exoplayer2/source/o;->h(Lcom/google/android/exoplayer2/source/o$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget v0, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    sub-int/2addr v0, p3

    iput v0, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q(I)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->g:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/o;->h(Lcom/google/android/exoplayer2/source/o$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget p3, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->m(I)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/p$b;->b:J

    iget-object p1, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Ljava/nio/ByteBuffer;

    iget p2, p2, Lcom/google/android/exoplayer2/source/p$b;->a:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/o;->h(Lcom/google/android/exoplayer2/source/o$a;JLjava/nio/ByteBuffer;I)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/source/o$a;)V
    .locals 1

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o;->a:Lcb;

    invoke-interface {p0, p1}, Lcb;->b(Lcb$a;)V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/o$a;->a()Lcom/google/android/exoplayer2/source/o$a;

    return-void
.end method

.method public b(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/o;->a:Lcb;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    invoke-interface {v1, v0}, Lcb;->a(Lbb;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/o$a;->a()Lcom/google/android/exoplayer2/source/o$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/o$a;->a:J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/o$a;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    :cond_2
    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    return-wide v0
.end method

.method public e(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o;->c:Lqw7;

    invoke-static {v0, p1, p2, p0}, Lcom/google/android/exoplayer2/source/o;->k(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;Lqw7;)Lcom/google/android/exoplayer2/source/o$a;

    return-void
.end method

.method public final f(I)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/o$a;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/o$a;->d:Lcom/google/android/exoplayer2/source/o$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    :cond_0
    return-void
.end method

.method public final g(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/o;->a:Lcb;

    invoke-interface {v1}, Lcb;->allocate()Lbb;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/o$a;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/o$a;->b:J

    iget v5, p0, Lcom/google/android/exoplayer2/source/o;->b:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/exoplayer2/source/o$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/o$a;->b(Lbb;Lcom/google/android/exoplayer2/source/o$a;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/o$a;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public l(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/o;->c:Lqw7;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/o;->k(Lcom/google/android/exoplayer2/source/o$a;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/p$b;Lqw7;)Lcom/google/android/exoplayer2/source/o$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    return-void
.end method

.method public m()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/o;->a(Lcom/google/android/exoplayer2/source/o$a;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    iget v1, p0, Lcom/google/android/exoplayer2/source/o;->b:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/o$a;->c(JI)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/o;->a:Lcb;

    invoke-interface {p0}, Lcb;->trim()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->d:Lcom/google/android/exoplayer2/source/o$a;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/o;->e:Lcom/google/android/exoplayer2/source/o$a;

    return-void
.end method

.method public o(Lms1;IZ)I
    .locals 4

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/o;->g(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iget-object v1, v1, Lbb;->a:[B

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/source/o$a;->d(J)I

    move-result v0

    invoke-interface {p1, v1, v0, p2}, Lms1;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/o;->f(I)V

    return p1
.end method

.method public p(Lqw7;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/o;->g(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/o;->f:Lcom/google/android/exoplayer2/source/o$a;

    iget-object v2, v1, Lcom/google/android/exoplayer2/source/o$a;->c:Lbb;

    iget-object v2, v2, Lbb;->a:[B

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/o;->g:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/source/o$a;->d(J)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lqw7;->j([BII)V

    sub-int/2addr p2, v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/o;->f(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
