.class public final Lcom/google/android/gms/internal/ads/da;
.super Lvri;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/Iterable;

.field public final f:Ljava/util/Iterator;

.field public g:Ljava/nio/ByteBuffer;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Iterable;IZLuri;)V
    .locals 0

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lvri;-><init>(Luri;)V

    const p3, 0x7fffffff

    iput p3, p0, Lcom/google/android/gms/internal/ads/da;->j:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/da;->h:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da;->e:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da;->f:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/da;->l:I

    if-nez p2, :cond_0

    sget-object p1, Lzsi;->c:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/da;->g:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->G()V

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/da;->j:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->F()V

    return-void
.end method

.method public final B()J
    .locals 6

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final C()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/da;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/da;->l:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    add-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final D()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->G()V

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E([BII)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->C()I

    move-result p2

    if-gt p3, p2, :cond_1

    move p2, p3

    :goto_0
    if-lez p2, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->D()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-int v3, p3, p2

    int-to-long v8, v0

    int-to-long v4, v3

    move-object v3, p1

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lvui;->w(J[BJJ)V

    sub-int/2addr p2, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    goto :goto_0

    :cond_1
    if-gtz p3, :cond_3

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final F()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/da;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/da;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/da;->h:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/da;->j:I

    if-le v0, v1, :cond_0

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/da;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/da;->h:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/da;->i:I

    return-void
.end method

.method public final G()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->f:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/da;->g:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/da;->l:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/da;->l:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/da;->g:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lvui;->m(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    return-void
.end method

.method public final H()B
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->D()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    invoke-static {v0, v1}, Lvui;->i(J)B

    move-result p0

    return p0
.end method

.method public final I()I
    .locals 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    invoke-static {v2, v3}, Lvui;->i(J)B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    const-wide/16 v0, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lvui;->i(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const-wide/16 v4, 0x2

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lvui;->i(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lvui;->i(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr p0, v0

    or-int/2addr p0, v1

    or-int/2addr p0, v2

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr p0, v0

    return p0
.end method

.method public final J()I
    .locals 11

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lvui;->i(J)B

    move-result v6

    if-ltz v6, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    return v6

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xa

    cmp-long v2, v2, v7

    if-ltz v2, :cond_7

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    invoke-static {v4, v5}, Lvui;->i(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_2

    xor-int/lit8 v0, v4, -0x80

    goto/16 :goto_2

    :cond_2
    const-wide/16 v5, 0x3

    add-long/2addr v5, v0

    invoke-static {v2, v3}, Lvui;->i(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_3

    xor-int/lit16 v0, v2, 0x3f80

    :goto_0
    move-wide v2, v5

    goto :goto_2

    :cond_3
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    :goto_1
    move-wide v2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x5

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Lvui;->i(J)B

    move-result v3

    shl-int/lit8 v4, v3, 0x1c

    xor-int/2addr v2, v4

    const v4, 0xfe03f80

    xor-int/2addr v2, v4

    if-gez v3, :cond_5

    const-wide/16 v3, 0x6

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v5

    if-gez v5, :cond_6

    const-wide/16 v5, 0x7

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Lvui;->i(J)B

    move-result v3

    if-gez v3, :cond_5

    const-wide/16 v3, 0x8

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v5

    if-gez v5, :cond_6

    const-wide/16 v5, 0x9

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Lvui;->i(J)B

    move-result v3

    if-gez v3, :cond_5

    add-long/2addr v0, v7

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v3

    if-ltz v3, :cond_7

    move-wide v9, v0

    move v0, v2

    move-wide v2, v9

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :goto_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    return v0

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->B()J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final K()J
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v1, v3

    const-wide/16 v5, 0x8

    cmp-long v1, v1, v5

    const/16 v9, 0x20

    const/16 v10, 0x18

    const/16 v11, 0x10

    const/16 v12, 0x8

    const-wide/16 v13, 0xff

    if-ltz v1, :cond_0

    add-long/2addr v5, v3

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/da;->m:J

    invoke-static {v3, v4}, Lvui;->i(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v13

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v13

    shl-long/2addr v5, v12

    const-wide/16 v15, 0x2

    add-long/2addr v15, v3

    invoke-static/range {v15 .. v16}, Lvui;->i(J)B

    move-result v12

    int-to-long v7, v12

    and-long/2addr v7, v13

    shl-long/2addr v7, v11

    const-wide/16 v11, 0x3

    add-long/2addr v11, v3

    invoke-static {v11, v12}, Lvui;->i(J)B

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long v10, v11, v10

    const-wide/16 v17, 0x4

    add-long v17, v3, v17

    invoke-static/range {v17 .. v18}, Lvui;->i(J)B

    move-result v12

    move-wide/from16 v17, v3

    int-to-long v2, v12

    and-long/2addr v2, v13

    shl-long/2addr v2, v9

    const-wide/16 v19, 0x5

    add-long v19, v17, v19

    invoke-static/range {v19 .. v20}, Lvui;->i(J)B

    move-result v9

    move-wide/from16 v19, v5

    int-to-long v4, v9

    and-long/2addr v4, v13

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    const-wide/16 v21, 0x6

    add-long v21, v17, v21

    invoke-static/range {v21 .. v22}, Lvui;->i(J)B

    move-result v6

    move-wide/from16 v21, v4

    int-to-long v4, v6

    and-long/2addr v4, v13

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    const-wide/16 v15, 0x7

    add-long v15, v17, v15

    invoke-static/range {v15 .. v16}, Lvui;->i(J)B

    move-result v6

    move-wide v15, v4

    int-to-long v4, v6

    and-long/2addr v4, v13

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    or-long v0, v0, v19

    or-long/2addr v0, v7

    or-long/2addr v0, v10

    or-long/2addr v0, v2

    or-long v0, v0, v21

    or-long/2addr v0, v15

    or-long/2addr v0, v4

    return-wide v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v3

    int-to-long v5, v3

    and-long/2addr v5, v13

    shl-long/2addr v5, v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v3

    int-to-long v7, v3

    and-long/2addr v7, v13

    shl-long/2addr v7, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v3

    int-to-long v11, v3

    and-long/2addr v11, v13

    shl-long v10, v11, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v3

    move-wide/from16 v17, v5

    int-to-long v4, v3

    and-long v3, v4, v13

    shl-long/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v13

    const/16 v9, 0x28

    shl-long/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v9

    move-wide/from16 v19, v5

    int-to-long v5, v9

    and-long/2addr v5, v13

    const/16 v9, 0x30

    shl-long/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/da;->H()B

    move-result v0

    move-wide v15, v5

    int-to-long v5, v0

    and-long/2addr v5, v13

    const/16 v0, 0x38

    shl-long/2addr v5, v0

    or-long v0, v1, v17

    or-long/2addr v0, v7

    or-long/2addr v0, v10

    or-long/2addr v0, v3

    or-long v0, v0, v19

    or-long/2addr v0, v15

    or-long/2addr v0, v5

    return-wide v0
.end method

.method public final L()J
    .locals 15

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lvui;->i(J)B

    move-result v6

    if-ltz v6, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    int-to-long v0, v6

    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v2, v7

    const-wide/16 v7, 0xa

    cmp-long v2, v2, v7

    if-ltz v2, :cond_a

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    invoke-static {v4, v5}, Lvui;->i(J)B

    move-result v4

    shl-int/lit8 v4, v4, 0x7

    xor-int/2addr v4, v6

    if-gez v4, :cond_2

    xor-int/lit8 v0, v4, -0x80

    int-to-long v0, v0

    goto/16 :goto_3

    :cond_2
    const-wide/16 v5, 0x3

    add-long/2addr v5, v0

    invoke-static {v2, v3}, Lvui;->i(J)B

    move-result v2

    shl-int/lit8 v2, v2, 0xe

    xor-int/2addr v2, v4

    if-ltz v2, :cond_3

    xor-int/lit16 v0, v2, 0x3f80

    int-to-long v0, v0

    :goto_0
    move-wide v2, v5

    goto/16 :goto_3

    :cond_3
    const-wide/16 v3, 0x4

    add-long/2addr v3, v0

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v5

    shl-int/lit8 v5, v5, 0x15

    xor-int/2addr v2, v5

    if-gez v2, :cond_4

    const v0, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v0, v0

    move-wide v2, v3

    goto/16 :goto_3

    :cond_4
    const-wide/16 v5, 0x5

    add-long/2addr v5, v0

    invoke-static {v3, v4}, Lvui;->i(J)B

    move-result v3

    int-to-long v3, v3

    int-to-long v9, v2

    const/16 v2, 0x1c

    shl-long v2, v3, v2

    xor-long/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v4, v2, v9

    if-ltz v4, :cond_5

    const-wide/32 v0, 0xfe03f80

    xor-long/2addr v0, v2

    goto :goto_0

    :cond_5
    const-wide/16 v11, 0x6

    add-long/2addr v11, v0

    invoke-static {v5, v6}, Lvui;->i(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x23

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    cmp-long v4, v2, v9

    if-gez v4, :cond_6

    const-wide v0, -0x7f01fc080L

    :goto_1
    xor-long/2addr v0, v2

    move-wide v2, v11

    goto :goto_3

    :cond_6
    const-wide/16 v4, 0x7

    add-long/2addr v4, v0

    invoke-static {v11, v12}, Lvui;->i(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x2a

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    cmp-long v6, v2, v9

    if-ltz v6, :cond_7

    const-wide v0, 0x3f80fe03f80L

    xor-long/2addr v0, v2

    :goto_2
    move-wide v2, v4

    goto :goto_3

    :cond_7
    const-wide/16 v11, 0x8

    add-long/2addr v11, v0

    invoke-static {v4, v5}, Lvui;->i(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x31

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    cmp-long v4, v2, v9

    if-gez v4, :cond_8

    const-wide v0, -0x1fc07f01fc080L

    goto :goto_1

    :cond_8
    const-wide/16 v4, 0x9

    add-long/2addr v4, v0

    invoke-static {v11, v12}, Lvui;->i(J)B

    move-result v6

    int-to-long v11, v6

    const/16 v6, 0x38

    shl-long/2addr v11, v6

    xor-long/2addr v2, v11

    const-wide v11, 0xfe03f80fe03f80L

    xor-long/2addr v2, v11

    cmp-long v6, v2, v9

    if-gez v6, :cond_9

    add-long/2addr v0, v7

    invoke-static {v4, v5}, Lvui;->i(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v9

    if-ltz v4, :cond_a

    move-wide v13, v0

    move-wide v0, v2

    move-wide v2, v13

    goto :goto_3

    :cond_9
    move-wide v0, v2

    goto :goto_2

    :goto_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    return-wide v0

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Z
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/da;->l:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    sub-long/2addr v0, v2

    iget p0, p0, Lcom/google/android/gms/internal/ads/da;->h:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g()D
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->K()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()F
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->I()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/da;->l:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public final j(I)I
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->i()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/da;->j:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/da;->j:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->F()V

    return v0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result p0

    return p0
.end method

.method public final l()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->I()I

    move-result p0

    return p0
.end method

.method public final m()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result p0

    return p0
.end method

.method public final n()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->I()I

    move-result p0

    return p0
.end method

.method public final o()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result p0

    invoke-static {p0}, Lvri;->c(I)I

    move-result p0

    return p0
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/da;->k:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/da;->k:I

    ushr-int/lit8 p0, v0, 0x3

    if-eqz p0, :cond_1

    return v0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "Protocol message contained an invalid tag (zero)."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result p0

    return p0
.end method

.method public final r()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final t()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->K()J

    move-result-wide v0

    return-wide v0
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->L()J

    move-result-wide v0

    invoke-static {v0, v1}, Lvri;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final v()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()Lcom/google/android/gms/internal/ads/zzgwn;
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v1, v10, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lvui;->w(J[BJJ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([B)V

    return-object p0

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->C()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/da;->E([BII)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgwk;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzgwk;-><init>([B)V

    return-object p0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgwn;->zzb:Lcom/google/android/gms/internal/ads/zzgwn;

    return-object p0

    :cond_4
    if-gez v0, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x()Ljava/lang/String;
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v1, v10, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lvui;->w(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    return-object v1

    :cond_1
    :goto_0
    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->C()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/da;->E([BII)V

    new-instance p0, Ljava/lang/String;

    sget-object v0, Lzsi;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    if-gez v0, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final y()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->J()I

    move-result v0

    if-lez v0, :cond_1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->o:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    sub-long/2addr v1, v3

    int-to-long v5, v0

    cmp-long v1, v5, v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->n:J

    sub-long/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/da;->g:Ljava/nio/ByteBuffer;

    long-to-int v2, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ra;->g(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/da;->m:J

    return-object v0

    :cond_1
    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/da;->C()I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/da;->E([BII)V

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/ra;->h([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    if-gtz v0, :cond_5

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final z(I)V
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/da;->k:I

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgyk;

    const-string p1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyk;-><init>(Ljava/lang/String;)V

    throw p0
.end method
