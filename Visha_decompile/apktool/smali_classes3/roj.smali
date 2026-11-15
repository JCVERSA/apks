.class public final Lroj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu4h;

.field public b:Lqoj;

.field public c:Lqoj;

.field public d:Lqoj;

.field public e:J

.field public final f:Lnrj;


# direct methods
.method public constructor <init>(Lnrj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lroj;->f:Lnrj;

    new-instance p1, Lu4h;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lroj;->a:Lu4h;

    new-instance p1, Lqoj;

    const-wide/16 v0, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p1, v0, v1, v2}, Lqoj;-><init>(JI)V

    iput-object p1, p0, Lroj;->b:Lqoj;

    iput-object p1, p0, Lroj;->c:Lqoj;

    iput-object p1, p0, Lroj;->d:Lqoj;

    return-void
.end method

.method public static j(Lqoj;J)Lqoj;
    .locals 2

    :goto_0
    iget-wide v0, p0, Lqoj;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lqoj;->d:Lqoj;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static k(Lqoj;JLjava/nio/ByteBuffer;I)Lqoj;
    .locals 3

    invoke-static {p0, p1, p2}, Lroj;->j(Lqoj;J)Lqoj;

    move-result-object p0

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    iget-wide v0, p0, Lqoj;->b:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lqoj;->c:Lbrj;

    iget-object v1, v1, Lbrj;->a:[B

    invoke-virtual {p0, p1, p2}, Lqoj;->a(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-wide v0, p0, Lqoj;->b:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lqoj;->d:Lqoj;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static l(Lqoj;J[BI)Lqoj;
    .locals 5

    invoke-static {p0, p1, p2}, Lroj;->j(Lqoj;J)Lqoj;

    move-result-object p0

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-wide v1, p0, Lqoj;->b:J

    sub-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lqoj;->c:Lbrj;

    iget-object v2, v2, Lbrj;->a:[B

    invoke-virtual {p0, p1, p2}, Lqoj;->a(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-wide v1, p0, Lqoj;->b:J

    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lqoj;->d:Lqoj;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static m(Lqoj;Lxzi;Ltoj;Lu4h;)Lqoj;
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lxzi;->l()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-wide v4, v1, Ltoj;->b:J

    invoke-virtual {v2, v3}, Lu4h;->i(I)V

    invoke-virtual/range {p3 .. p3}, Lu4h;->n()[B

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v7, v4, v5, v6, v3}, Lroj;->l(Lqoj;J[BI)Lqoj;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    invoke-virtual/range {p3 .. p3}, Lu4h;->n()[B

    move-result-object v7

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    and-int/lit16 v9, v7, 0x80

    and-int/lit8 v7, v7, 0x7f

    iget-object v10, v0, Lxzi;->c:Lpzi;

    iget-object v11, v10, Lpzi;->a:[B

    if-nez v11, :cond_0

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lpzi;->a:[B

    goto :goto_0

    :cond_0
    invoke-static {v11, v8}, Ljava/util/Arrays;->fill([BB)V

    :goto_0
    if-eqz v9, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v8

    :goto_1
    iget-object v11, v10, Lpzi;->a:[B

    invoke-static {v6, v4, v5, v11, v7}, Lroj;->l(Lqoj;J[BI)Lqoj;

    move-result-object v6

    int-to-long v11, v7

    add-long/2addr v4, v11

    if-eqz v9, :cond_2

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lu4h;->i(I)V

    invoke-virtual/range {p3 .. p3}, Lu4h;->n()[B

    move-result-object v11

    invoke-static {v6, v4, v5, v11, v7}, Lroj;->l(Lqoj;J[BI)Lqoj;

    move-result-object v6

    const-wide/16 v11, 0x2

    add-long/2addr v4, v11

    invoke-virtual/range {p3 .. p3}, Lu4h;->K()I

    move-result v7

    move v11, v7

    goto :goto_2

    :cond_2
    move v11, v3

    :goto_2
    iget-object v7, v10, Lpzi;->d:[I

    if-eqz v7, :cond_4

    array-length v12, v7

    if-ge v12, v11, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v12, v7

    goto :goto_5

    :cond_4
    :goto_4
    new-array v7, v11, [I

    goto :goto_3

    :goto_5
    iget-object v7, v10, Lpzi;->e:[I

    if-eqz v7, :cond_6

    array-length v13, v7

    if-ge v13, v11, :cond_5

    goto :goto_7

    :cond_5
    :goto_6
    move-object v13, v7

    goto :goto_8

    :cond_6
    :goto_7
    new-array v7, v11, [I

    goto :goto_6

    :goto_8
    if-eqz v9, :cond_7

    mul-int/lit8 v7, v11, 0x6

    invoke-virtual {v2, v7}, Lu4h;->i(I)V

    invoke-virtual/range {p3 .. p3}, Lu4h;->n()[B

    move-result-object v9

    invoke-static {v6, v4, v5, v9, v7}, Lroj;->l(Lqoj;J[BI)Lqoj;

    move-result-object v6

    int-to-long v14, v7

    add-long/2addr v4, v14

    invoke-virtual {v2, v8}, Lu4h;->l(I)V

    :goto_9
    if-ge v8, v11, :cond_8

    invoke-virtual/range {p3 .. p3}, Lu4h;->K()I

    move-result v7

    aput v7, v12, v8

    invoke-virtual/range {p3 .. p3}, Lu4h;->J()I

    move-result v7

    aput v7, v13, v8

    add-int/2addr v8, v3

    goto :goto_9

    :cond_7
    aput v8, v12, v8

    iget v3, v1, Ltoj;->a:I

    iget-wide v14, v1, Ltoj;->b:J

    sub-long v14, v4, v14

    long-to-int v7, v14

    sub-int/2addr v3, v7

    aput v3, v13, v8

    :cond_8
    iget-object v3, v1, Ltoj;->c:Lqae;

    sget v7, Lkfh;->a:I

    iget-object v14, v3, Lqae;->b:[B

    iget-object v15, v10, Lpzi;->a:[B

    iget v7, v3, Lqae;->a:I

    iget v8, v3, Lqae;->c:I

    iget v3, v3, Lqae;->d:I

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v3

    invoke-virtual/range {v10 .. v18}, Lpzi;->c(I[I[I[B[BIII)V

    iget-wide v7, v1, Ltoj;->b:J

    sub-long/2addr v4, v7

    long-to-int v3, v4

    int-to-long v4, v3

    add-long/2addr v7, v4

    iput-wide v7, v1, Ltoj;->b:J

    iget v4, v1, Ltoj;->a:I

    sub-int/2addr v4, v3

    iput v4, v1, Ltoj;->a:I

    goto :goto_a

    :cond_9
    move-object/from16 v7, p0

    move-object v6, v7

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lezi;->e()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lu4h;->i(I)V

    iget-wide v4, v1, Ltoj;->b:J

    invoke-virtual/range {p3 .. p3}, Lu4h;->n()[B

    move-result-object v7

    invoke-static {v6, v4, v5, v7, v3}, Lroj;->l(Lqoj;J[BI)Lqoj;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lu4h;->J()I

    move-result v2

    iget-wide v4, v1, Ltoj;->b:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v1, Ltoj;->b:J

    iget v4, v1, Ltoj;->a:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v1, Ltoj;->a:I

    invoke-virtual {v0, v2}, Lxzi;->j(I)V

    iget-wide v4, v1, Ltoj;->b:J

    iget-object v6, v0, Lxzi;->d:Ljava/nio/ByteBuffer;

    invoke-static {v3, v4, v5, v6, v2}, Lroj;->k(Lqoj;JLjava/nio/ByteBuffer;I)Lqoj;

    move-result-object v3

    iget-wide v4, v1, Ltoj;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v1, Ltoj;->b:J

    iget v4, v1, Ltoj;->a:I

    sub-int/2addr v4, v2

    iput v4, v1, Ltoj;->a:I

    iget-object v2, v0, Lxzi;->g:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    if-ge v2, v4, :cond_a

    goto :goto_b

    :cond_a
    iget-object v2, v0, Lxzi;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_c

    :cond_b
    :goto_b
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lxzi;->g:Ljava/nio/ByteBuffer;

    :goto_c
    iget-wide v4, v1, Ltoj;->b:J

    iget-object v0, v0, Lxzi;->g:Ljava/nio/ByteBuffer;

    iget v1, v1, Ltoj;->a:I

    invoke-static {v3, v4, v5, v0, v1}, Lroj;->k(Lqoj;JLjava/nio/ByteBuffer;I)Lqoj;

    move-result-object v0

    goto :goto_d

    :cond_c
    iget v2, v1, Ltoj;->a:I

    invoke-virtual {v0, v2}, Lxzi;->j(I)V

    iget-wide v2, v1, Ltoj;->b:J

    iget-object v0, v0, Lxzi;->d:Ljava/nio/ByteBuffer;

    iget v1, v1, Ltoj;->a:I

    invoke-static {v6, v2, v3, v0, v1}, Lroj;->k(Lqoj;JLjava/nio/ByteBuffer;I)Lqoj;

    move-result-object v0

    :goto_d
    return-object v0
.end method


# virtual methods
.method public final a(Lk8j;IZ)I
    .locals 4

    invoke-virtual {p0, p2}, Lroj;->i(I)I

    move-result p2

    iget-object v0, p0, Lroj;->d:Lqoj;

    iget-object v1, v0, Lqoj;->c:Lbrj;

    iget-object v1, v1, Lbrj;->a:[B

    iget-wide v2, p0, Lroj;->e:J

    invoke-virtual {v0, v2, v3}, Lqoj;->a(J)I

    move-result v0

    invoke-interface {p1, v1, v0, p2}, Lk8j;->b([BII)I

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
    invoke-virtual {p0, p1}, Lroj;->n(I)V

    return p1
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lroj;->e:J

    return-wide v0
.end method

.method public final c(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lroj;->b:Lqoj;

    iget-wide v1, v0, Lqoj;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lroj;->f:Lnrj;

    iget-object v0, v0, Lqoj;->c:Lbrj;

    invoke-virtual {v1, v0}, Lnrj;->c(Lbrj;)V

    iget-object v0, p0, Lroj;->b:Lqoj;

    invoke-virtual {v0}, Lqoj;->b()Lqoj;

    move-result-object v0

    iput-object v0, p0, Lroj;->b:Lqoj;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lroj;->c:Lqoj;

    iget-wide p1, p1, Lqoj;->a:J

    iget-wide v1, v0, Lqoj;->a:J

    cmp-long p1, p1, v1

    if-gez p1, :cond_1

    iput-object v0, p0, Lroj;->c:Lqoj;

    :cond_1
    return-void
.end method

.method public final d(Lxzi;Ltoj;)V
    .locals 1

    iget-object v0, p0, Lroj;->a:Lu4h;

    iget-object p0, p0, Lroj;->c:Lqoj;

    invoke-static {p0, p1, p2, v0}, Lroj;->m(Lqoj;Lxzi;Ltoj;Lu4h;)Lqoj;

    return-void
.end method

.method public final e(Lxzi;Ltoj;)V
    .locals 2

    iget-object v0, p0, Lroj;->a:Lu4h;

    iget-object v1, p0, Lroj;->c:Lqoj;

    invoke-static {v1, p1, p2, v0}, Lroj;->m(Lqoj;Lxzi;Ltoj;Lu4h;)Lqoj;

    move-result-object p1

    iput-object p1, p0, Lroj;->c:Lqoj;

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lroj;->b:Lqoj;

    iget-object v1, v0, Lqoj;->c:Lbrj;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lroj;->f:Lnrj;

    invoke-virtual {v1, v0}, Lnrj;->d(Lcrj;)V

    invoke-virtual {v0}, Lqoj;->b()Lqoj;

    :cond_0
    iget-object v0, p0, Lroj;->b:Lqoj;

    const/high16 v1, 0x10000

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lqoj;->c(JI)V

    iget-object v0, p0, Lroj;->b:Lqoj;

    iput-object v0, p0, Lroj;->c:Lqoj;

    iput-object v0, p0, Lroj;->d:Lqoj;

    iput-wide v2, p0, Lroj;->e:J

    iget-object p0, p0, Lroj;->f:Lnrj;

    invoke-virtual {p0}, Lnrj;->g()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lroj;->b:Lqoj;

    iput-object v0, p0, Lroj;->c:Lqoj;

    return-void
.end method

.method public final h(Lu4h;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    invoke-virtual {p0, p2}, Lroj;->i(I)I

    move-result v0

    iget-object v1, p0, Lroj;->d:Lqoj;

    iget-object v2, v1, Lqoj;->c:Lbrj;

    iget-object v2, v2, Lbrj;->a:[B

    iget-wide v3, p0, Lroj;->e:J

    invoke-virtual {v1, v3, v4}, Lqoj;->a(J)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lu4h;->h([BII)V

    sub-int/2addr p2, v0

    invoke-virtual {p0, v0}, Lroj;->n(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(I)I
    .locals 6

    iget-object v0, p0, Lroj;->d:Lqoj;

    iget-object v1, v0, Lqoj;->c:Lbrj;

    if-nez v1, :cond_0

    iget-object v1, p0, Lroj;->f:Lnrj;

    invoke-virtual {v1}, Lnrj;->b()Lbrj;

    move-result-object v1

    new-instance v2, Lqoj;

    iget-object v3, p0, Lroj;->d:Lqoj;

    iget-wide v3, v3, Lqoj;->b:J

    const/high16 v5, 0x10000

    invoke-direct {v2, v3, v4, v5}, Lqoj;-><init>(JI)V

    iput-object v1, v0, Lqoj;->c:Lbrj;

    iput-object v2, v0, Lqoj;->d:Lqoj;

    :cond_0
    iget-object v0, p0, Lroj;->d:Lqoj;

    iget-wide v0, v0, Lqoj;->b:J

    iget-wide v2, p0, Lroj;->e:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public final n(I)V
    .locals 4

    iget-wide v0, p0, Lroj;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lroj;->e:J

    iget-object p1, p0, Lroj;->d:Lqoj;

    iget-wide v2, p1, Lqoj;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lqoj;->d:Lqoj;

    iput-object p1, p0, Lroj;->d:Lqoj;

    :cond_0
    return-void
.end method
