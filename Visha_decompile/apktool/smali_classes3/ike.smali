.class public final Like;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldle;


# instance fields
.field public final a:Llje;

.field public final b:Lp3h;

.field public c:I

.field public d:I

.field public e:Lfch;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z


# direct methods
.method public constructor <init>(Llje;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Like;->a:Llje;

    new-instance p1, Lp3h;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lp3h;-><init>([BI)V

    iput-object p1, p0, Like;->b:Lp3h;

    const/4 p1, 0x0

    iput p1, p0, Like;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lu4h;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Like;->e:Lfch;

    invoke-static {v2}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, p2, 0x1

    const-string v3, "PesReader"

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    iget v2, v0, Like;->c:I

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    iget v2, v0, Like;->j:I

    if-eq v2, v4, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected start indicator: expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " more bytes"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v7

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iget-object v8, v0, Like;->a:Llje;

    invoke-interface {v8, v2}, Llje;->zzc(Z)V

    goto :goto_1

    :cond_2
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v3, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v0, v7}, Like;->d(I)V

    :cond_4
    move/from16 v2, p2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v8

    if-lez v8, :cond_13

    iget v8, v0, Like;->c:I

    if-eqz v8, :cond_12

    if-eq v8, v7, :cond_d

    if-eq v8, v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v8

    iget v9, v0, Like;->j:I

    if-ne v9, v4, :cond_5

    move v9, v6

    goto :goto_3

    :cond_5
    sub-int v9, v8, v9

    :goto_3
    if-lez v9, :cond_6

    sub-int/2addr v8, v9

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v1, v9}, Lu4h;->k(I)V

    :cond_6
    iget-object v9, v0, Like;->a:Llje;

    invoke-interface {v9, v1}, Llje;->a(Lu4h;)V

    iget v10, v0, Like;->j:I

    if-eq v10, v4, :cond_7

    sub-int/2addr v10, v8

    iput v10, v0, Like;->j:I

    if-nez v10, :cond_7

    invoke-interface {v9, v6}, Llje;->zzc(Z)V

    invoke-virtual {v0, v7}, Like;->d(I)V

    :cond_7
    move/from16 v17, v2

    move v8, v5

    move v2, v6

    move v6, v7

    move-object v5, v1

    move v1, v4

    goto/16 :goto_9

    :cond_8
    const/16 v8, 0xa

    iget v9, v0, Like;->i:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v0, Like;->b:Lp3h;

    iget-object v10, v9, Lp3h;->a:[B

    invoke-virtual {v0, v1, v10, v8}, Like;->e(Lu4h;[BI)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    iget v10, v0, Like;->i:I

    invoke-virtual {v0, v1, v8, v10}, Like;->e(Lu4h;[BI)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v9, v6}, Lp3h;->l(I)V

    iget-boolean v8, v0, Like;->f:Z

    const/4 v10, 0x3

    const/4 v11, 0x4

    if-eqz v8, :cond_a

    invoke-virtual {v9, v11}, Lp3h;->n(I)V

    invoke-virtual {v9, v10}, Lp3h;->d(I)I

    move-result v8

    int-to-long v12, v8

    invoke-virtual {v9, v7}, Lp3h;->n(I)V

    const/16 v8, 0xf

    invoke-virtual {v9, v8}, Lp3h;->d(I)I

    move-result v14

    shl-int/2addr v14, v8

    invoke-virtual {v9, v7}, Lp3h;->n(I)V

    invoke-virtual {v9, v8}, Lp3h;->d(I)I

    move-result v15

    int-to-long v4, v15

    invoke-virtual {v9, v7}, Lp3h;->n(I)V

    iget-boolean v15, v0, Like;->h:Z

    const/16 v16, 0x1e

    if-nez v15, :cond_9

    iget-boolean v15, v0, Like;->g:Z

    if-eqz v15, :cond_9

    invoke-virtual {v9, v11}, Lp3h;->n(I)V

    invoke-virtual {v9, v10}, Lp3h;->d(I)I

    move-result v15

    int-to-long v10, v15

    shl-long v10, v10, v16

    invoke-virtual {v9, v7}, Lp3h;->n(I)V

    invoke-virtual {v9, v8}, Lp3h;->d(I)I

    move-result v15

    shl-int/2addr v15, v8

    invoke-virtual {v9, v7}, Lp3h;->n(I)V

    invoke-virtual {v9, v8}, Lp3h;->d(I)I

    move-result v8

    move/from16 v17, v2

    int-to-long v1, v8

    invoke-virtual {v9, v7}, Lp3h;->n(I)V

    iget-object v8, v0, Like;->e:Lfch;

    int-to-long v6, v15

    or-long/2addr v6, v10

    or-long/2addr v1, v6

    invoke-virtual {v8, v1, v2}, Lfch;->b(J)J

    const/4 v1, 0x1

    iput-boolean v1, v0, Like;->h:Z

    goto :goto_4

    :cond_9
    move/from16 v17, v2

    :goto_4
    shl-long v1, v12, v16

    int-to-long v6, v14

    or-long/2addr v1, v6

    or-long/2addr v1, v4

    iget-object v4, v0, Like;->e:Lfch;

    invoke-virtual {v4, v1, v2}, Lfch;->b(J)J

    move-result-wide v1

    goto :goto_5

    :cond_a
    move/from16 v17, v2

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_5
    iget-boolean v4, v0, Like;->k:Z

    const/4 v5, 0x1

    if-eq v5, v4, :cond_b

    const/4 v11, 0x0

    goto :goto_6

    :cond_b
    const/4 v11, 0x4

    :goto_6
    or-int v4, v17, v11

    iget-object v5, v0, Like;->a:Llje;

    invoke-interface {v5, v1, v2, v4}, Llje;->b(JI)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Like;->d(I)V

    move-object/from16 v1, p1

    move v2, v4

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_c
    move/from16 v17, v2

    move v1, v4

    move v8, v5

    move v2, v6

    move v6, v7

    move-object/from16 v5, p1

    goto/16 :goto_9

    :cond_d
    move/from16 v17, v2

    iget-object v1, v0, Like;->b:Lp3h;

    iget-object v2, v1, Lp3h;->a:[B

    const/16 v4, 0x9

    move-object/from16 v5, p1

    invoke-virtual {v0, v5, v2, v4}, Like;->e(Lu4h;[BI)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lp3h;->l(I)V

    const/16 v4, 0x18

    invoke-virtual {v1, v4}, Lp3h;->d(I)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected start code prefix: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v0, Like;->j:I

    move v4, v2

    const/4 v8, 0x2

    goto :goto_8

    :cond_e
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lp3h;->n(I)V

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Lp3h;->d(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v8

    iput-boolean v8, v0, Like;->k:Z

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lp3h;->n(I)V

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v9

    iput-boolean v9, v0, Like;->f:Z

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v9

    iput-boolean v9, v0, Like;->g:Z

    const/4 v9, 0x6

    invoke-virtual {v1, v9}, Lp3h;->n(I)V

    invoke-virtual {v1, v4}, Lp3h;->d(I)I

    move-result v1

    iput v1, v0, Like;->i:I

    if-nez v7, :cond_f

    const/4 v4, -0x1

    iput v4, v0, Like;->j:I

    move v1, v4

    :goto_7
    move v4, v8

    goto :goto_8

    :cond_f
    add-int/lit8 v7, v7, -0x3

    sub-int/2addr v7, v1

    iput v7, v0, Like;->j:I

    if-gez v7, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found negative packet payload size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v0, Like;->j:I

    goto :goto_7

    :cond_10
    const/4 v1, -0x1

    goto :goto_7

    :goto_8
    invoke-virtual {v0, v4}, Like;->d(I)V

    goto :goto_9

    :cond_11
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto :goto_9

    :cond_12
    move/from16 v17, v2

    move v8, v5

    move v2, v6

    move v6, v7

    move-object v5, v1

    move v1, v4

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v4

    invoke-virtual {v5, v4}, Lu4h;->m(I)V

    :goto_9
    move v4, v1

    move-object v1, v5

    move v7, v6

    move v5, v8

    move v6, v2

    move/from16 v2, v17

    goto/16 :goto_2

    :cond_13
    return-void
.end method

.method public final b(Lfch;Lf9e;Lcle;)V
    .locals 0

    iput-object p1, p0, Like;->e:Lfch;

    iget-object p0, p0, Like;->a:Llje;

    invoke-interface {p0, p2, p3}, Llje;->c(Lf9e;Lcle;)V

    return-void
.end method

.method public final c(Z)Z
    .locals 1

    iget p1, p0, Like;->c:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Like;->j:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Like;->c:I

    const/4 p1, 0x0

    iput p1, p0, Like;->d:I

    return-void
.end method

.method public final e(Lu4h;[BI)Z
    .locals 3

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v1, p0, Like;->d:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1, v0}, Lu4h;->m(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Like;->d:I

    invoke-virtual {p1, p2, v2, v0}, Lu4h;->h([BII)V

    :goto_0
    iget p1, p0, Like;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Like;->d:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Like;->c:I

    iput v0, p0, Like;->d:I

    iput-boolean v0, p0, Like;->h:Z

    iget-object p0, p0, Like;->a:Llje;

    invoke-interface {p0}, Llje;->zze()V

    return-void
.end method
