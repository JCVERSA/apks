.class public final Lmfe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;
.implements Lkae;


# instance fields
.field public A:J

.field public B:I

.field public C:Ljde;

.field public final a:Lvge;

.field public final b:I

.field public final c:Lu4h;

.field public final d:Lu4h;

.field public final e:Lu4h;

.field public final f:Lu4h;

.field public final g:Ljava/util/ArrayDeque;

.field public final h:Lqfe;

.field public final i:Ljava/util/List;

.field public j:Lcom/google/android/gms/internal/ads/zzfww;

.field public k:I

.field public l:I

.field public m:J

.field public n:I

.field public o:Lu4h;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:J

.field public w:Lf9e;

.field public x:[Llfe;

.field public y:[[J

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lvge;->a:Lvge;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lmfe;-><init>(Lvge;I)V

    return-void
.end method

.method public constructor <init>(Lvge;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmfe;->a:Lvge;

    iput p2, p0, Lmfe;->b:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lmfe;->j:Lcom/google/android/gms/internal/ads/zzfww;

    and-int/lit8 p1, p2, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iput p1, p0, Lmfe;->k:I

    .line 3
    new-instance p1, Lqfe;

    invoke-direct {p1}, Lqfe;-><init>()V

    iput-object p1, p0, Lmfe;->h:Lqfe;

    new-instance p1, Ljava/util/ArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmfe;->i:Ljava/util/List;

    .line 5
    new-instance p1, Lu4h;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lmfe;->f:Lu4h;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lmfe;->g:Ljava/util/ArrayDeque;

    new-instance p1, Lu4h;

    .line 7
    sget-object v0, Ljzh;->a:[B

    invoke-direct {p1, v0}, Lu4h;-><init>([B)V

    iput-object p1, p0, Lmfe;->c:Lu4h;

    new-instance p1, Lu4h;

    const/4 v0, 0x6

    .line 8
    invoke-direct {p1, v0}, Lu4h;-><init>(I)V

    iput-object p1, p0, Lmfe;->d:Lu4h;

    new-instance p1, Lu4h;

    .line 9
    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lmfe;->e:Lu4h;

    const/4 p1, -0x1

    iput p1, p0, Lmfe;->p:I

    sget-object p1, Lf9e;->C6:Lf9e;

    iput-object p1, p0, Lmfe;->w:Lf9e;

    new-array p1, p2, [Llfe;

    iput-object p1, p0, Lmfe;->x:[Llfe;

    return-void
.end method

.method public static g(I)I
    .locals 1

    const v0, 0x68656963

    if-eq p0, v0, :cond_1

    const v0, 0x71742020

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static h(Lvfe;J)I
    .locals 2

    invoke-virtual {p0, p1, p2}, Lvfe;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lvfe;->b(J)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static i(Lvfe;JJ)J
    .locals 0

    invoke-static {p0, p1, p2}, Lmfe;->h(Lvfe;J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Lvfe;->c:[J

    aget-wide p0, p0, p1

    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lmfe;->x:[Llfe;

    array-length v4, v3

    if-nez v4, :cond_0

    new-instance v0, Lz9e;

    sget-object v1, Llae;->c:Llae;

    invoke-direct {v0, v1, v1}, Lz9e;-><init>(Llae;Llae;)V

    goto/16 :goto_3

    :cond_0
    iget v4, v0, Lmfe;->z:I

    const/4 v5, -0x1

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v4, v5, :cond_3

    aget-object v3, v3, v4

    iget-object v3, v3, Llfe;->b:Lvfe;

    invoke-static {v3, v1, v2}, Lmfe;->h(Lvfe;J)I

    move-result v4

    if-ne v4, v5, :cond_1

    new-instance v0, Lz9e;

    sget-object v1, Llae;->c:Llae;

    invoke-direct {v0, v1, v1}, Lz9e;-><init>(Llae;Llae;)V

    goto/16 :goto_3

    :cond_1
    iget-object v10, v3, Lvfe;->f:[J

    aget-wide v11, v10, v4

    iget-object v13, v3, Lvfe;->c:[J

    aget-wide v14, v13, v4

    cmp-long v16, v11, v1

    if-gez v16, :cond_2

    iget v6, v3, Lvfe;->b:I

    add-int/2addr v6, v5

    if-ge v4, v6, :cond_2

    invoke-virtual {v3, v1, v2}, Lvfe;->b(J)I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_2

    aget-wide v2, v10, v1

    aget-wide v6, v13, v1

    goto :goto_0

    :cond_2
    move-wide v2, v8

    const-wide/16 v6, -0x1

    :goto_0
    move-wide v3, v2

    move-wide v1, v11

    goto :goto_1

    :cond_3
    const-wide v14, 0x7fffffffffffffffL

    move-wide v3, v8

    const-wide/16 v6, -0x1

    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v10, v0, Lmfe;->x:[Llfe;

    array-length v11, v10

    if-ge v5, v11, :cond_6

    iget v11, v0, Lmfe;->z:I

    if-eq v5, v11, :cond_5

    aget-object v10, v10, v5

    iget-object v10, v10, Llfe;->b:Lvfe;

    invoke-static {v10, v1, v2, v14, v15}, Lmfe;->i(Lvfe;JJ)J

    move-result-wide v11

    cmp-long v13, v3, v8

    if-eqz v13, :cond_4

    invoke-static {v10, v3, v4, v6, v7}, Lmfe;->i(Lvfe;JJ)J

    move-result-wide v6

    :cond_4
    move-wide v14, v11

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    new-instance v0, Llae;

    invoke-direct {v0, v1, v2, v14, v15}, Llae;-><init>(JJ)V

    cmp-long v1, v3, v8

    if-nez v1, :cond_7

    new-instance v1, Lz9e;

    invoke-direct {v1, v0, v0}, Lz9e;-><init>(Llae;Llae;)V

    move-object v0, v1

    goto :goto_3

    :cond_7
    new-instance v1, Llae;

    invoke-direct {v1, v3, v4, v6, v7}, Llae;-><init>(JJ)V

    new-instance v2, Lz9e;

    invoke-direct {v2, v0, v1}, Lz9e;-><init>(Llae;Llae;)V

    move-object v0, v2

    :goto_3
    return-object v0
.end method

.method public final b(JJ)V
    .locals 4

    iget-object v0, p0, Lmfe;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lmfe;->n:I

    const/4 v1, -0x1

    iput v1, p0, Lmfe;->p:I

    iput v0, p0, Lmfe;->q:I

    iput v0, p0, Lmfe;->r:I

    iput v0, p0, Lmfe;->s:I

    iput-boolean v0, p0, Lmfe;->t:Z

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget p1, p0, Lmfe;->k:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lmfe;->j()V

    return-void

    :cond_0
    iget-object p1, p0, Lmfe;->h:Lqfe;

    invoke-virtual {p1}, Lqfe;->b()V

    iget-object p0, p0, Lmfe;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_1
    iget-object p0, p0, Lmfe;->x:[Llfe;

    array-length p1, p0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object p2, p0, v0

    iget-object v2, p2, Llfe;->b:Lvfe;

    invoke-virtual {v2, p3, p4}, Lvfe;->a(J)I

    move-result v3

    if-ne v3, v1, :cond_2

    invoke-virtual {v2, p3, p4}, Lvfe;->b(J)I

    move-result v3

    :cond_2
    iput v3, p2, Llfe;->e:I

    iget-object p2, p2, Llfe;->d:Lsae;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lsae;->b()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    :cond_0
    const/4 v6, 0x1

    :goto_0
    iget v7, v0, Lmfe;->k:I

    const v8, 0x66747970

    const-wide/16 v10, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    const/16 v14, 0x8

    if-eqz v7, :cond_27

    const-wide/32 v15, 0x40000

    if-eq v7, v6, :cond_1e

    if-eq v7, v12, :cond_2

    iget-object v3, v0, Lmfe;->h:Lqfe;

    iget-object v4, v0, Lmfe;->i:Ljava/util/List;

    invoke-virtual {v3, v1, v2, v4}, Lqfe;->a(Ld9e;Ly9e;Ljava/util/List;)I

    iget-wide v1, v2, Ly9e;->a:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lmfe;->j()V

    :cond_1
    return v6

    :cond_2
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    iget v14, v0, Lmfe;->p:I

    if-ne v14, v13, :cond_c

    const-wide v17, 0x7fffffffffffffffL

    move/from16 v21, v6

    move/from16 v28, v21

    move/from16 v26, v13

    move/from16 v27, v26

    move-wide/from16 v19, v17

    move-wide/from16 v22, v19

    move-wide/from16 v24, v22

    const/4 v14, 0x0

    :goto_1
    iget-object v3, v0, Lmfe;->x:[Llfe;

    array-length v9, v3

    if-ge v14, v9, :cond_a

    aget-object v3, v3, v14

    iget v9, v3, Llfe;->e:I

    iget-object v3, v3, Llfe;->b:Lvfe;

    iget v5, v3, Lvfe;->b:I

    if-ne v9, v5, :cond_3

    goto :goto_5

    :cond_3
    iget-object v3, v3, Lvfe;->c:[J

    aget-wide v29, v3, v9

    iget-object v3, v0, Lmfe;->y:[[J

    sget v5, Lkfh;->a:I

    aget-object v3, v3, v14

    aget-wide v31, v3, v9

    sub-long v29, v29, v7

    cmp-long v3, v29, v10

    if-ltz v3, :cond_4

    cmp-long v3, v29, v15

    if-ltz v3, :cond_5

    :cond_4
    move v3, v6

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_6

    if-nez v28, :cond_7

    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    move/from16 v5, v28

    :goto_3
    if-ne v3, v5, :cond_8

    cmp-long v9, v29, v24

    if-gez v9, :cond_8

    :cond_7
    move/from16 v28, v3

    move/from16 v27, v14

    move-wide/from16 v24, v29

    move-wide/from16 v22, v31

    goto :goto_4

    :cond_8
    move/from16 v28, v5

    :goto_4
    cmp-long v5, v31, v19

    if-gez v5, :cond_9

    move/from16 v21, v3

    move/from16 v26, v14

    move-wide/from16 v19, v31

    :cond_9
    :goto_5
    add-int/2addr v14, v6

    goto :goto_1

    :cond_a
    cmp-long v3, v19, v17

    if-eqz v3, :cond_b

    if-eqz v21, :cond_b

    const-wide/32 v17, 0xa00000

    add-long v19, v19, v17

    cmp-long v3, v22, v19

    if-ltz v3, :cond_b

    move/from16 v14, v26

    goto :goto_6

    :cond_b
    move/from16 v14, v27

    :goto_6
    iput v14, v0, Lmfe;->p:I

    if-ne v14, v13, :cond_c

    move v4, v13

    goto/16 :goto_f

    :cond_c
    iget-object v3, v0, Lmfe;->x:[Llfe;

    aget-object v3, v3, v14

    iget-object v5, v3, Llfe;->c:Lrae;

    iget v9, v3, Llfe;->e:I

    iget-object v14, v3, Llfe;->b:Lvfe;

    iget-object v13, v14, Lvfe;->c:[J

    aget-wide v17, v13, v9

    iget-wide v12, v0, Lmfe;->v:J

    add-long v12, v17, v12

    iget-object v4, v14, Lvfe;->d:[I

    aget v17, v4, v9

    iget-object v6, v3, Llfe;->d:Lsae;

    sub-long v7, v12, v7

    iget v15, v0, Lmfe;->q:I

    move-wide/from16 v22, v12

    int-to-long v12, v15

    add-long/2addr v7, v12

    cmp-long v10, v7, v10

    if-ltz v10, :cond_d

    const-wide/32 v10, 0x40000

    cmp-long v10, v7, v10

    if-ltz v10, :cond_e

    :cond_d
    move-wide/from16 v0, v22

    goto/16 :goto_e

    :cond_e
    iget-object v2, v3, Llfe;->a:Lsfe;

    iget v10, v2, Lsfe;->h:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_f

    const-wide/16 v10, 0x8

    add-long/2addr v7, v10

    add-int/lit8 v17, v17, -0x8

    :cond_f
    move/from16 v10, v17

    long-to-int v7, v7

    invoke-interface {v1, v7}, Ld9e;->f(I)V

    iget-object v7, v2, Lsfe;->g:Lerj;

    iget-object v8, v7, Lerj;->o:Ljava/lang/String;

    const-string v11, "video/avc"

    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "video/hevc"

    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_10
    const/4 v11, 0x1

    iput-boolean v11, v0, Lmfe;->t:Z

    iget v2, v2, Lsfe;->k:I

    if-eqz v2, :cond_16

    iget-object v8, v0, Lmfe;->d:Lu4h;

    invoke-virtual {v8}, Lu4h;->n()[B

    move-result-object v12

    const/4 v13, 0x0

    aput-byte v13, v12, v13

    aput-byte v13, v12, v11

    const/4 v11, 0x2

    aput-byte v13, v12, v11

    const/4 v11, 0x4

    rsub-int/lit8 v13, v2, 0x4

    add-int/2addr v10, v13

    :goto_7
    iget v11, v0, Lmfe;->r:I

    if-ge v11, v10, :cond_1a

    iget v11, v0, Lmfe;->s:I

    if-nez v11, :cond_15

    iget-boolean v11, v0, Lmfe;->t:Z

    if-nez v11, :cond_12

    invoke-static {v7}, Ljzh;->b(Lerj;)I

    move-result v11

    add-int/2addr v11, v2

    aget v15, v4, v9

    move-object/from16 v16, v4

    iget v4, v0, Lmfe;->q:I

    sub-int/2addr v15, v4

    if-gt v11, v15, :cond_11

    invoke-static {v7}, Ljzh;->b(Lerj;)I

    move-result v4

    add-int v11, v2, v4

    goto :goto_9

    :cond_11
    :goto_8
    move v11, v2

    const/4 v4, 0x0

    goto :goto_9

    :cond_12
    move-object/from16 v16, v4

    goto :goto_8

    :goto_9
    invoke-interface {v1, v12, v13, v11}, Ld9e;->h([BII)V

    iget v15, v0, Lmfe;->q:I

    add-int/2addr v15, v11

    iput v15, v0, Lmfe;->q:I

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lu4h;->l(I)V

    invoke-virtual {v8}, Lu4h;->A()I

    move-result v15

    if-ltz v15, :cond_14

    sub-int/2addr v15, v4

    iput v15, v0, Lmfe;->s:I

    iget-object v15, v0, Lmfe;->c:Lu4h;

    invoke-virtual {v15, v11}, Lu4h;->l(I)V

    const/4 v11, 0x4

    invoke-interface {v5, v15, v11}, Lrae;->d(Lu4h;I)V

    iget v15, v0, Lmfe;->r:I

    add-int/2addr v15, v11

    iput v15, v0, Lmfe;->r:I

    if-lez v4, :cond_13

    invoke-interface {v5, v8, v4}, Lrae;->d(Lu4h;I)V

    iget v15, v0, Lmfe;->r:I

    add-int/2addr v15, v4

    iput v15, v0, Lmfe;->r:I

    invoke-static {v12, v11, v4, v7}, Ljzh;->j([BIILerj;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    iput-boolean v4, v0, Lmfe;->t:Z

    :cond_13
    :goto_a
    move-object/from16 v4, v16

    goto :goto_7

    :cond_14
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_15
    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-interface {v5, v1, v11, v4}, Lrae;->a(Lk8j;IZ)I

    move-result v11

    iget v4, v0, Lmfe;->q:I

    add-int/2addr v4, v11

    iput v4, v0, Lmfe;->q:I

    iget v4, v0, Lmfe;->r:I

    add-int/2addr v4, v11

    iput v4, v0, Lmfe;->r:I

    iget v4, v0, Lmfe;->s:I

    sub-int/2addr v4, v11

    iput v4, v0, Lmfe;->s:I

    goto :goto_a

    :cond_16
    const-string v2, "audio/ac4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v0, Lmfe;->r:I

    if-nez v2, :cond_17

    iget-object v2, v0, Lmfe;->e:Lu4h;

    invoke-static {v10, v2}, La8e;->c(ILu4h;)V

    const/4 v4, 0x7

    invoke-interface {v5, v2, v4}, Lrae;->d(Lu4h;I)V

    iget v2, v0, Lmfe;->r:I

    add-int/2addr v2, v4

    iput v2, v0, Lmfe;->r:I

    goto :goto_b

    :cond_17
    const/4 v4, 0x7

    :goto_b
    add-int/2addr v10, v4

    goto :goto_c

    :cond_18
    if-eqz v6, :cond_19

    invoke-virtual {v6, v1}, Lsae;->d(Ld9e;)V

    :cond_19
    :goto_c
    iget v2, v0, Lmfe;->r:I

    if-ge v2, v10, :cond_1a

    sub-int v2, v10, v2

    const/4 v4, 0x0

    invoke-interface {v5, v1, v2, v4}, Lrae;->a(Lk8j;IZ)I

    move-result v2

    iget v4, v0, Lmfe;->q:I

    add-int/2addr v4, v2

    iput v4, v0, Lmfe;->q:I

    iget v4, v0, Lmfe;->r:I

    add-int/2addr v4, v2

    iput v4, v0, Lmfe;->r:I

    iget v4, v0, Lmfe;->s:I

    sub-int/2addr v4, v2

    iput v4, v0, Lmfe;->s:I

    goto :goto_c

    :cond_1a
    iget-object v1, v14, Lvfe;->f:[J

    aget-wide v1, v1, v9

    iget-object v4, v14, Lvfe;->g:[I

    aget v4, v4, v9

    iget-boolean v7, v0, Lmfe;->t:Z

    if-nez v7, :cond_1b

    const/high16 v7, 0x4000000

    or-int/2addr v4, v7

    :cond_1b
    if-eqz v6, :cond_1c

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    move-wide/from16 v19, v1

    move/from16 v21, v4

    move/from16 v22, v10

    invoke-virtual/range {v17 .. v24}, Lsae;->c(Lrae;JIIILqae;)V

    const/4 v1, 0x1

    add-int/2addr v9, v1

    iget v1, v14, Lvfe;->b:I

    if-ne v9, v1, :cond_1d

    const/4 v1, 0x0

    invoke-virtual {v6, v5, v1}, Lsae;->a(Lrae;Lqae;)V

    goto :goto_d

    :cond_1c
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v5

    move-wide/from16 v18, v1

    move/from16 v20, v4

    move/from16 v21, v10

    invoke-interface/range {v17 .. v23}, Lrae;->g(JIIILqae;)V

    :cond_1d
    :goto_d
    iget v1, v3, Llfe;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Llfe;->e:I

    const/4 v1, -0x1

    iput v1, v0, Lmfe;->p:I

    const/4 v1, 0x0

    iput v1, v0, Lmfe;->q:I

    iput v1, v0, Lmfe;->r:I

    iput v1, v0, Lmfe;->s:I

    iput-boolean v1, v0, Lmfe;->t:Z

    const/4 v4, 0x0

    goto :goto_f

    :goto_e
    iput-wide v0, v2, Ly9e;->a:J

    const/4 v4, 0x1

    :goto_f
    return v4

    :cond_1e
    const/4 v4, 0x7

    iget-wide v5, v0, Lmfe;->m:J

    iget v3, v0, Lmfe;->n:I

    int-to-long v9, v3

    sub-long/2addr v5, v9

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v9

    add-long/2addr v9, v5

    iget-object v3, v0, Lmfe;->o:Lu4h;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v7

    iget v11, v0, Lmfe;->n:I

    long-to-int v5, v5

    invoke-interface {v1, v7, v11, v5}, Ld9e;->h([BII)V

    iget v5, v0, Lmfe;->l:I

    if-ne v5, v8, :cond_23

    const/4 v5, 0x1

    iput-boolean v5, v0, Lmfe;->u:Z

    invoke-virtual {v3, v14}, Lu4h;->l(I)V

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v5

    invoke-static {v5}, Lmfe;->g(I)I

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lu4h;->m(I)V

    :cond_20
    invoke-virtual {v3}, Lu4h;->u()I

    move-result v5

    if-lez v5, :cond_21

    invoke-virtual {v3}, Lu4h;->A()I

    move-result v5

    invoke-static {v5}, Lmfe;->g(I)I

    move-result v5

    if-eqz v5, :cond_20

    goto :goto_10

    :cond_21
    const/4 v5, 0x0

    :goto_10
    iput v5, v0, Lmfe;->B:I

    :cond_22
    :goto_11
    const/4 v3, 0x0

    goto :goto_12

    :cond_23
    iget-object v5, v0, Lmfe;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmih;

    new-instance v6, Lkjh;

    iget v7, v0, Lmfe;->l:I

    invoke-direct {v6, v7, v3}, Lkjh;-><init>(ILu4h;)V

    invoke-virtual {v5, v6}, Lmih;->e(Lkjh;)V

    goto :goto_11

    :cond_24
    iget-boolean v3, v0, Lmfe;->u:Z

    if-nez v3, :cond_25

    iget v3, v0, Lmfe;->l:I

    const v7, 0x6d646174

    if-ne v3, v7, :cond_25

    const/4 v3, 0x1

    iput v3, v0, Lmfe;->B:I

    :cond_25
    const-wide/32 v7, 0x40000

    cmp-long v3, v5, v7

    if-gez v3, :cond_26

    long-to-int v3, v5

    invoke-interface {v1, v3}, Ld9e;->f(I)V

    goto :goto_11

    :cond_26
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, v2, Ly9e;->a:J

    const/4 v3, 0x1

    :goto_12
    invoke-virtual {v0, v9, v10}, Lmfe;->k(J)V

    if-eqz v3, :cond_0

    iget v3, v0, Lmfe;->k:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_27
    move v3, v6

    move v5, v12

    const/4 v4, 0x7

    iget v6, v0, Lmfe;->n:I

    if-nez v6, :cond_2b

    iget-object v6, v0, Lmfe;->f:Lu4h;

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v1, v7, v9, v14, v3}, Ld9e;->d([BIIZ)Z

    move-result v7

    if-nez v7, :cond_2a

    iget v1, v0, Lmfe;->B:I

    if-ne v1, v5, :cond_29

    iget v1, v0, Lmfe;->b:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_29

    iget-object v1, v0, Lmfe;->w:Lf9e;

    const/4 v3, 0x4

    invoke-interface {v1, v9, v3}, Lf9e;->j(II)Lrae;

    move-result-object v1

    iget-object v2, v0, Lmfe;->C:Ljde;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v2, :cond_28

    const/4 v9, 0x0

    goto :goto_13

    :cond_28
    new-instance v5, Lhre;

    const/4 v6, 0x1

    new-array v6, v6, [Liqe;

    aput-object v2, v6, v9

    invoke-direct {v5, v3, v4, v6}, Lhre;-><init>(J[Liqe;)V

    move-object v9, v5

    :goto_13
    new-instance v2, Lgpj;

    invoke-direct {v2}, Lgpj;-><init>()V

    invoke-virtual {v2, v9}, Lgpj;->w(Lhre;)Lgpj;

    invoke-virtual {v2}, Lgpj;->K()Lerj;

    move-result-object v2

    invoke-interface {v1, v2}, Lrae;->f(Lerj;)V

    iget-object v1, v0, Lmfe;->w:Lf9e;

    invoke-interface {v1}, Lf9e;->zzG()V

    iget-object v0, v0, Lmfe;->w:Lf9e;

    new-instance v1, Ljae;

    invoke-direct {v1, v3, v4, v10, v11}, Ljae;-><init>(JJ)V

    invoke-interface {v0, v1}, Lf9e;->i(Lkae;)V

    :cond_29
    const/4 v0, -0x1

    return v0

    :cond_2a
    const/4 v3, 0x4

    iput v14, v0, Lmfe;->n:I

    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lu4h;->l(I)V

    invoke-virtual {v6}, Lu4h;->O()J

    move-result-wide v12

    iput-wide v12, v0, Lmfe;->m:J

    invoke-virtual {v6}, Lu4h;->A()I

    move-result v5

    iput v5, v0, Lmfe;->l:I

    goto :goto_14

    :cond_2b
    const/4 v3, 0x4

    :goto_14
    iget-wide v5, v0, Lmfe;->m:J

    const-wide/16 v12, 0x1

    cmp-long v7, v5, v12

    if-nez v7, :cond_2c

    iget-object v5, v0, Lmfe;->f:Lu4h;

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v6

    invoke-interface {v1, v6, v14, v14}, Ld9e;->h([BII)V

    iget v6, v0, Lmfe;->n:I

    add-int/2addr v6, v14

    iput v6, v0, Lmfe;->n:I

    invoke-virtual {v5}, Lu4h;->Q()J

    move-result-wide v5

    iput-wide v5, v0, Lmfe;->m:J

    goto :goto_16

    :cond_2c
    cmp-long v5, v5, v10

    if-nez v5, :cond_2f

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v7, v5, v9

    if-nez v7, :cond_2e

    iget-object v5, v0, Lmfe;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmih;

    if-eqz v5, :cond_2d

    iget-wide v5, v5, Lmih;->b:J

    goto :goto_15

    :cond_2d
    move-wide v5, v9

    :cond_2e
    :goto_15
    cmp-long v7, v5, v9

    if-eqz v7, :cond_2f

    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v9

    sub-long/2addr v5, v9

    iget v7, v0, Lmfe;->n:I

    int-to-long v9, v7

    add-long/2addr v5, v9

    iput-wide v5, v0, Lmfe;->m:J

    :cond_2f
    :goto_16
    iget-wide v5, v0, Lmfe;->m:J

    iget v7, v0, Lmfe;->n:I

    int-to-long v9, v7

    cmp-long v5, v5, v9

    if-ltz v5, :cond_39

    iget v5, v0, Lmfe;->l:I

    const v6, 0x6d6f6f76

    const v9, 0x6d657461

    if-eq v5, v6, :cond_30

    const v6, 0x7472616b

    if-eq v5, v6, :cond_30

    const v6, 0x6d646961

    if-eq v5, v6, :cond_30

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_30

    const v6, 0x7374626c

    if-eq v5, v6, :cond_30

    const v6, 0x65647473

    if-eq v5, v6, :cond_30

    if-eq v5, v9, :cond_30

    const v6, 0x61787465

    if-ne v5, v6, :cond_31

    :cond_30
    const/4 v5, 0x1

    goto/16 :goto_1b

    :cond_31
    const v6, 0x6d646864

    if-eq v5, v6, :cond_34

    const v6, 0x6d766864

    if-eq v5, v6, :cond_34

    const v6, 0x68646c72    # 4.3148E24f

    if-eq v5, v6, :cond_34

    const v6, 0x73747364

    if-eq v5, v6, :cond_34

    const v6, 0x73747473

    if-eq v5, v6, :cond_34

    const v6, 0x73747373

    if-eq v5, v6, :cond_34

    const v6, 0x63747473

    if-eq v5, v6, :cond_34

    const v6, 0x656c7374

    if-eq v5, v6, :cond_34

    const v6, 0x73747363

    if-eq v5, v6, :cond_34

    const v6, 0x7374737a

    if-eq v5, v6, :cond_34

    const v6, 0x73747a32

    if-eq v5, v6, :cond_34

    const v6, 0x7374636f

    if-eq v5, v6, :cond_34

    const v6, 0x636f3634

    if-eq v5, v6, :cond_34

    const v6, 0x746b6864

    if-eq v5, v6, :cond_34

    if-eq v5, v8, :cond_34

    const v6, 0x75647461

    if-eq v5, v6, :cond_34

    const v6, 0x6b657973

    if-eq v5, v6, :cond_34

    const v6, 0x696c7374

    if-ne v5, v6, :cond_32

    goto :goto_18

    :cond_32
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v5

    iget v7, v0, Lmfe;->n:I

    int-to-long v7, v7

    sub-long v12, v5, v7

    iget v5, v0, Lmfe;->l:I

    const v6, 0x6d707664

    if-ne v5, v6, :cond_33

    add-long v16, v12, v7

    new-instance v5, Ljde;

    iget-wide v9, v0, Lmfe;->m:J

    sub-long v18, v9, v7

    const-wide/16 v10, 0x0

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object v9, v5

    invoke-direct/range {v9 .. v19}, Ljde;-><init>(JJJJJ)V

    iput-object v5, v0, Lmfe;->C:Ljde;

    :cond_33
    const/4 v5, 0x0

    iput-object v5, v0, Lmfe;->o:Lu4h;

    const/4 v5, 0x1

    iput v5, v0, Lmfe;->k:I

    :goto_17
    move v6, v5

    goto/16 :goto_0

    :cond_34
    :goto_18
    if-ne v7, v14, :cond_35

    const/4 v5, 0x1

    goto :goto_19

    :cond_35
    const/4 v5, 0x0

    :goto_19
    invoke-static {v5}, Ln7g;->f(Z)V

    iget-wide v5, v0, Lmfe;->m:J

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-gtz v5, :cond_36

    const/4 v5, 0x1

    goto :goto_1a

    :cond_36
    const/4 v5, 0x0

    :goto_1a
    invoke-static {v5}, Ln7g;->f(Z)V

    new-instance v5, Lu4h;

    iget-wide v6, v0, Lmfe;->m:J

    long-to-int v6, v6

    invoke-direct {v5, v6}, Lu4h;-><init>(I)V

    iget-object v6, v0, Lmfe;->f:Lu4h;

    invoke-virtual {v6}, Lu4h;->n()[B

    move-result-object v6

    invoke-virtual {v5}, Lu4h;->n()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v7, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v0, Lmfe;->o:Lu4h;

    const/4 v5, 0x1

    iput v5, v0, Lmfe;->k:I

    goto :goto_17

    :goto_1b
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v6

    iget-wide v10, v0, Lmfe;->m:J

    add-long/2addr v6, v10

    iget v8, v0, Lmfe;->n:I

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-eqz v8, :cond_37

    iget v8, v0, Lmfe;->l:I

    if-ne v8, v9, :cond_37

    iget-object v8, v0, Lmfe;->e:Lu4h;

    invoke-virtual {v8, v14}, Lu4h;->i(I)V

    invoke-virtual {v8}, Lu4h;->n()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10, v14}, Ld9e;->i([BII)V

    invoke-static {v8}, Lafe;->g(Lu4h;)V

    invoke-virtual {v8}, Lu4h;->w()I

    move-result v8

    invoke-interface {v1, v8}, Ld9e;->f(I)V

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    goto :goto_1c

    :cond_37
    const/4 v10, 0x0

    :goto_1c
    sub-long/2addr v6, v12

    iget-object v8, v0, Lmfe;->g:Ljava/util/ArrayDeque;

    new-instance v9, Lmih;

    iget v11, v0, Lmfe;->l:I

    invoke-direct {v9, v11, v6, v7}, Lmih;-><init>(IJ)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v8, v0, Lmfe;->m:J

    iget v11, v0, Lmfe;->n:I

    int-to-long v11, v11

    cmp-long v8, v8, v11

    if-nez v8, :cond_38

    invoke-virtual {v0, v6, v7}, Lmfe;->k(J)V

    goto :goto_17

    :cond_38
    invoke-virtual/range {p0 .. p0}, Lmfe;->j()V

    goto/16 :goto_17

    :cond_39
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0
.end method

.method public final e(Ld9e;)Z
    .locals 3

    iget v0, p0, Lmfe;->b:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lrfe;->b(Ld9e;Z)Loae;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lmfe;->j:Lcom/google/android/gms/internal/ads/zzfww;

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public final f(Lf9e;)V
    .locals 2

    iget v0, p0, Lmfe;->b:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lmfe;->a:Lvge;

    new-instance v1, Lche;

    invoke-direct {v1, p1, v0}, Lche;-><init>(Lf9e;Lvge;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lmfe;->w:Lf9e;

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmfe;->k:I

    iput v0, p0, Lmfe;->n:I

    return-void
.end method

.method public final k(J)V
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    iget-object v3, v0, Lmfe;->g:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmih;

    iget-wide v6, v4, Lmih;->b:J

    cmp-long v4, v6, p1

    if-nez v4, :cond_1c

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lmih;

    iget v4, v6, Lrlh;->a:I

    const v7, 0x6d6f6f76

    if-ne v4, v7, :cond_1b

    const v4, 0x6d657461

    invoke-virtual {v6, v4}, Lmih;->b(I)Lmih;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_0

    invoke-static {v4}, Lafe;->b(Lmih;)Lhre;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget v7, v0, Lmfe;->B:I

    if-ne v7, v2, :cond_1

    move v12, v2

    goto :goto_2

    :cond_1
    move v12, v1

    :goto_2
    new-instance v13, Lq9e;

    invoke-direct {v13}, Lq9e;-><init>()V

    const v7, 0x75647461

    invoke-virtual {v6, v7}, Lmih;->c(I)Lkjh;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Lafe;->c(Lkjh;)Lhre;

    move-result-object v7

    invoke-virtual {v13, v7}, Lq9e;->b(Lhre;)Z

    move-object v11, v7

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    :goto_3
    new-instance v10, Lhre;

    const v7, 0x6d766864

    invoke-virtual {v6, v7}, Lmih;->c(I)Lkjh;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lkjh;->b:Lu4h;

    invoke-static {v7}, Lafe;->d(Lu4h;)Lqnh;

    move-result-object v7

    new-array v8, v2, [Liqe;

    aput-object v7, v8, v1

    move-object/from16 v16, v15

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v10, v14, v15, v8}, Lhre;-><init>(J[Liqe;)V

    iget v8, v0, Lmfe;->b:I

    and-int/lit8 v7, v8, 0x1

    if-eq v2, v7, :cond_3

    move/from16 v17, v1

    goto :goto_4

    :cond_3
    move/from16 v17, v2

    :goto_4
    new-instance v18, Lkfe;

    invoke-direct/range {v18 .. v18}, Lkfe;-><init>()V

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v21, 0x0

    move-object v7, v13

    move/from16 v22, v8

    move-wide/from16 v8, v19

    move-object v1, v10

    move-object/from16 v10, v21

    move-object/from16 v23, v11

    move/from16 v11, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v18

    invoke-static/range {v6 .. v13}, Lafe;->f(Lmih;Lq9e;JLcom/google/android/gms/internal/ads/zzs;ZZLm2i;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljfe;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    move-wide v12, v14

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    :goto_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const-wide/16 v20, 0x0

    if-ge v9, v8, :cond_14

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvfe;

    iget v5, v8, Lvfe;->b:I

    if-nez v5, :cond_4

    move-object/from16 v28, v3

    move-object/from16 v26, v6

    move v6, v9

    move-object/from16 v0, v16

    move-object/from16 v5, v17

    move-object/from16 v14, v23

    const/4 v8, -0x1

    move-object/from16 v17, v1

    move v1, v2

    goto/16 :goto_10

    :cond_4
    iget-object v14, v8, Lvfe;->a:Lsfe;

    new-instance v15, Llfe;

    move-object/from16 v26, v6

    iget-object v6, v0, Lmfe;->w:Lf9e;

    add-int/lit8 v27, v10, 0x1

    iget v2, v14, Lsfe;->b:I

    invoke-interface {v6, v10, v2}, Lf9e;->j(II)Lrae;

    move-result-object v6

    invoke-direct {v15, v14, v8, v6}, Llfe;-><init>(Lsfe;Lvfe;Lrae;)V

    move v6, v9

    iget-wide v9, v14, Lsfe;->e:J

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v28, v9, v24

    if-eqz v28, :cond_5

    :goto_6
    move-object/from16 v28, v3

    goto :goto_7

    :cond_5
    iget-wide v9, v8, Lvfe;->h:J

    goto :goto_6

    :goto_7
    iget-object v3, v15, Llfe;->c:Lrae;

    invoke-interface {v3, v9, v10}, Lrae;->c(J)V

    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iget-object v14, v14, Lsfe;->g:Lerj;

    move-wide/from16 v29, v12

    iget-object v12, v14, Lerj;->o:Ljava/lang/String;

    const-string v13, "audio/true-hd"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iget v8, v8, Lvfe;->e:I

    mul-int/lit8 v8, v8, 0x10

    goto :goto_8

    :cond_6
    iget v8, v8, Lvfe;->e:I

    add-int/lit8 v8, v8, 0x1e

    :goto_8
    invoke-virtual {v14}, Lerj;->b()Lgpj;

    move-result-object v12

    invoke-virtual {v12, v8}, Lgpj;->t(I)Lgpj;

    const/4 v8, 0x2

    if-ne v2, v8, :cond_a

    iget v2, v14, Lerj;->f:I

    and-int/lit8 v8, v22, 0x8

    if-eqz v8, :cond_8

    const/4 v8, -0x1

    if-ne v11, v8, :cond_7

    const/4 v8, 0x1

    goto :goto_9

    :cond_7
    const/4 v8, 0x2

    :goto_9
    or-int/2addr v2, v8

    :cond_8
    iget v8, v14, Lerj;->x:F

    const/high16 v13, -0x40800000    # -1.0f

    cmpl-float v8, v8, v13

    if-nez v8, :cond_9

    cmp-long v8, v9, v20

    if-lez v8, :cond_9

    long-to-float v8, v9

    int-to-float v5, v5

    const v9, 0x49742400    # 1000000.0f

    div-float/2addr v8, v9

    div-float/2addr v5, v8

    invoke-virtual {v12, v5}, Lgpj;->k(F)Lgpj;

    :cond_9
    invoke-virtual {v12, v2}, Lgpj;->C(I)Lgpj;

    const/4 v2, 0x2

    :cond_a
    const/4 v5, 0x1

    if-ne v2, v5, :cond_b

    invoke-virtual/range {v17 .. v17}, Lq9e;->a()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v5, v17

    iget v8, v5, Lq9e;->a:I

    invoke-virtual {v12, v8}, Lgpj;->i(I)Lgpj;

    iget v8, v5, Lq9e;->b:I

    invoke-virtual {v12, v8}, Lgpj;->j(I)Lgpj;

    goto :goto_a

    :cond_b
    move-object/from16 v5, v17

    :goto_a
    iget-object v8, v0, Lmfe;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    move-object/from16 v14, v23

    const/4 v9, 0x0

    goto :goto_b

    :cond_c
    new-instance v9, Lhre;

    invoke-direct {v9, v8}, Lhre;-><init>(Ljava/util/List;)V

    move-object/from16 v14, v23

    :goto_b
    filled-new-array {v9, v14, v1}, [Lhre;

    move-result-object v8

    new-instance v9, Lhre;

    const/4 v10, 0x0

    new-array v13, v10, [Liqe;

    move-object/from16 v17, v1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v9, v0, v1, v13}, Lhre;-><init>(J[Liqe;)V

    if-eqz v4, :cond_10

    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v4}, Lhre;->a()I

    move-result v13

    if-ge v10, v13, :cond_10

    invoke-virtual {v4, v10}, Lhre;->b(I)Liqe;

    move-result-object v13

    instance-of v0, v13, Lmhh;

    if-eqz v0, :cond_f

    check-cast v13, Lmhh;

    iget-object v0, v13, Lmhh;->a:Ljava/lang/String;

    const-string v1, "com.android.capture.fps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    if-ne v2, v0, :cond_d

    const/4 v0, 0x1

    new-array v1, v0, [Liqe;

    const/16 v19, 0x0

    aput-object v13, v1, v19

    invoke-virtual {v9, v1}, Lhre;->c([Liqe;)Lhre;

    move-result-object v1

    :goto_d
    move-object v9, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    const/16 v19, 0x0

    goto :goto_e

    :cond_e
    const/4 v0, 0x1

    const/16 v19, 0x0

    new-array v1, v0, [Liqe;

    aput-object v13, v1, v19

    invoke-virtual {v9, v1}, Lhre;->c([Liqe;)Lhre;

    move-result-object v1

    goto :goto_d

    :cond_f
    const/4 v0, 0x1

    :goto_e
    add-int/2addr v10, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_c

    :cond_10
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_f
    const/4 v10, 0x3

    if-ge v1, v10, :cond_11

    aget-object v10, v8, v1

    invoke-virtual {v9, v10}, Lhre;->d(Lhre;)Lhre;

    move-result-object v9

    add-int/2addr v1, v0

    goto :goto_f

    :cond_11
    invoke-virtual {v9}, Lhre;->a()I

    move-result v0

    if-lez v0, :cond_12

    invoke-virtual {v12, v9}, Lgpj;->w(Lhre;)Lgpj;

    :cond_12
    invoke-virtual {v12, v7}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    invoke-virtual {v12}, Lgpj;->K()Lerj;

    move-result-object v0

    invoke-interface {v3, v0}, Lrae;->f(Lerj;)V

    const/4 v0, 0x2

    const/4 v8, -0x1

    if-ne v2, v0, :cond_13

    if-ne v11, v8, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v11

    :cond_13
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v27

    move-wide/from16 v12, v29

    const/4 v1, 0x1

    :goto_10
    add-int/lit8 v9, v6, 0x1

    move-object/from16 v16, v0

    move v2, v1

    move-object/from16 v23, v14

    move-object/from16 v1, v17

    move-object/from16 v6, v26

    move-object/from16 v3, v28

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v17, v5

    goto/16 :goto_5

    :cond_14
    move-object v1, v0

    move-object/from16 v28, v3

    move-object/from16 v0, v16

    const/4 v8, -0x1

    iput v11, v1, Lmfe;->z:I

    iput-wide v12, v1, Lmfe;->A:J

    const/4 v2, 0x0

    new-array v3, v2, [Llfe;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llfe;

    iput-object v0, v1, Lmfe;->x:[Llfe;

    array-length v2, v0

    new-array v3, v2, [[J

    new-array v4, v2, [I

    new-array v5, v2, [J

    new-array v2, v2, [Z

    const/4 v10, 0x0

    :goto_11
    array-length v6, v0

    if-ge v10, v6, :cond_15

    aget-object v6, v0, v10

    iget-object v6, v6, Llfe;->b:Lvfe;

    iget v6, v6, Lvfe;->b:I

    new-array v6, v6, [J

    aput-object v6, v3, v10

    aget-object v6, v0, v10

    iget-object v6, v6, Llfe;->b:Lvfe;

    iget-object v6, v6, Lvfe;->f:[J

    const/4 v7, 0x0

    aget-wide v11, v6, v7

    aput-wide v11, v5, v10

    const/4 v6, 0x1

    add-int/2addr v10, v6

    goto :goto_11

    :cond_15
    const/4 v7, 0x0

    move v10, v7

    :goto_12
    array-length v6, v0

    if-ge v10, v6, :cond_19

    const-wide v11, 0x7fffffffffffffffL

    move v9, v7

    move v6, v8

    :goto_13
    array-length v13, v0

    if-ge v9, v13, :cond_17

    aget-boolean v13, v2, v9

    if-nez v13, :cond_16

    aget-wide v13, v5, v9

    cmp-long v15, v13, v11

    if-gtz v15, :cond_16

    move v6, v9

    move-wide v11, v13

    :cond_16
    const/4 v13, 0x1

    add-int/2addr v9, v13

    goto :goto_13

    :cond_17
    const/4 v13, 0x1

    aget v9, v4, v6

    aget-object v11, v3, v6

    aput-wide v20, v11, v9

    aget-object v12, v0, v6

    iget-object v12, v12, Llfe;->b:Lvfe;

    iget-object v14, v12, Lvfe;->d:[I

    aget v14, v14, v9

    int-to-long v14, v14

    add-long v20, v20, v14

    add-int/2addr v9, v13

    aput v9, v4, v6

    array-length v11, v11

    if-ge v9, v11, :cond_18

    iget-object v11, v12, Lvfe;->f:[J

    aget-wide v11, v11, v9

    aput-wide v11, v5, v6

    goto :goto_12

    :cond_18
    aput-boolean v13, v2, v6

    add-int/2addr v10, v13

    goto :goto_12

    :cond_19
    const/4 v13, 0x1

    iput-object v3, v1, Lmfe;->y:[[J

    iget-object v0, v1, Lmfe;->w:Lf9e;

    invoke-interface {v0}, Lf9e;->zzG()V

    iget-object v0, v1, Lmfe;->w:Lf9e;

    invoke-interface {v0, v1}, Lf9e;->i(Lkae;)V

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    iput v0, v1, Lmfe;->k:I

    :cond_1a
    :goto_14
    move-object v0, v1

    move v1, v7

    move v2, v13

    goto/16 :goto_0

    :cond_1b
    move v7, v1

    move v13, v2

    move-object/from16 v28, v3

    move-object v1, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmih;

    invoke-virtual {v0, v6}, Lmih;->d(Lmih;)V

    goto :goto_14

    :cond_1c
    move-object v1, v0

    iget v0, v1, Lmfe;->k:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lmfe;->j()V

    :cond_1d
    return-void
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lmfe;->A:J

    return-wide v0
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmfe;->j:Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
