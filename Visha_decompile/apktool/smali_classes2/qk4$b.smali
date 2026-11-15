.class public final Lqk4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqk4$b$a;
    }
.end annotation


# instance fields
.field public final a:Lfva;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public final f:Lrw7;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lqk4$b$a;

.field public n:Lqk4$b$a;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lfva;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqk4$b;->a:Lfva;

    iput-boolean p2, p0, Lqk4$b;->b:Z

    iput-boolean p3, p0, Lqk4$b;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lqk4$b;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lqk4$b;->e:Landroid/util/SparseArray;

    new-instance p1, Lqk4$b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lqk4$b$a;-><init>(Lqk4$a;)V

    iput-object p1, p0, Lqk4$b;->m:Lqk4$b$a;

    new-instance p1, Lqk4$b$a;

    invoke-direct {p1, p2}, Lqk4$b$a;-><init>(Lqk4$a;)V

    iput-object p1, p0, Lqk4$b;->n:Lqk4$b$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lqk4$b;->g:[B

    new-instance p2, Lrw7;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lrw7;-><init>([BII)V

    iput-object p2, p0, Lqk4$b;->f:Lrw7;

    invoke-virtual {p0}, Lqk4$b;->g()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-boolean v2, v0, Lqk4$b;->k:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    iget-object v3, v0, Lqk4$b;->g:[B

    array-length v4, v3

    iget v5, v0, Lqk4$b;->h:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/2addr v5, v7

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lqk4$b;->g:[B

    :cond_1
    iget-object v3, v0, Lqk4$b;->g:[B

    iget v4, v0, Lqk4$b;->h:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Lqk4$b;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lqk4$b;->h:I

    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    iget-object v3, v0, Lqk4$b;->g:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lrw7;->i([BII)V

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lrw7;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->k()V

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1, v7}, Lrw7;->e(I)I

    move-result v10

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lrw7;->l(I)V

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->h()I

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->h()I

    move-result v11

    iget-boolean v1, v0, Lqk4$b;->c:Z

    if-nez v1, :cond_5

    iput-boolean v4, v0, Lqk4$b;->k:Z

    iget-object v0, v0, Lqk4$b;->n:Lqk4$b$a;

    invoke-virtual {v0, v11}, Lqk4$b$a;->f(I)V

    return-void

    :cond_5
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->h()I

    move-result v13

    iget-object v1, v0, Lqk4$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    iput-boolean v4, v0, Lqk4$b;->k:Z

    return-void

    :cond_7
    iget-object v1, v0, Lqk4$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lay6$b;

    iget-object v3, v0, Lqk4$b;->d:Landroid/util/SparseArray;

    iget v5, v1, Lay6$b;->b:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lay6$c;

    iget-boolean v3, v9, Lay6$c;->i:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v3, v7}, Lrw7;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    :cond_8
    iget-object v3, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v3, v7}, Lrw7;->l(I)V

    :cond_9
    iget-object v3, v0, Lqk4$b;->f:Lrw7;

    iget v5, v9, Lay6$c;->k:I

    invoke-virtual {v3, v5}, Lrw7;->b(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    :cond_a
    iget-object v3, v0, Lqk4$b;->f:Lrw7;

    iget v5, v9, Lay6$c;->k:I

    invoke-virtual {v3, v5}, Lrw7;->e(I)I

    move-result v12

    iget-boolean v3, v9, Lay6$c;->j:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    iget-object v3, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v3, v5}, Lrw7;->b(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    :cond_b
    iget-object v3, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v3}, Lrw7;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v6, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v6, v5}, Lrw7;->b(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    :cond_c
    iget-object v6, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v6}, Lrw7;->d()Z

    move-result v6

    move v14, v3

    move v15, v5

    move/from16 v16, v6

    goto :goto_1

    :cond_d
    move v14, v3

    move v15, v4

    :goto_0
    move/from16 v16, v15

    goto :goto_1

    :cond_e
    move v14, v4

    move v15, v14

    goto :goto_0

    :goto_1
    iget v3, v0, Lqk4$b;->i:I

    if-ne v3, v2, :cond_f

    move/from16 v17, v5

    goto :goto_2

    :cond_f
    move/from16 v17, v4

    :goto_2
    if-eqz v17, :cond_11

    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v2}, Lrw7;->c()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v2}, Lrw7;->h()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    move/from16 v18, v4

    :goto_3
    iget v2, v9, Lay6$c;->l:I

    if-nez v2, :cond_15

    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    iget v3, v9, Lay6$c;->m:I

    invoke-virtual {v2, v3}, Lrw7;->b(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    :cond_12
    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    iget v3, v9, Lay6$c;->m:I

    invoke-virtual {v2, v3}, Lrw7;->e(I)I

    move-result v2

    iget-boolean v1, v1, Lay6$b;->c:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->g()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    move/from16 v21, v4

    :goto_4
    move/from16 v22, v21

    goto :goto_6

    :cond_14
    move/from16 v19, v2

    move/from16 v20, v4

    :goto_5
    move/from16 v21, v20

    goto :goto_4

    :cond_15
    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lay6$c;->n:Z

    if-nez v2, :cond_19

    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v2}, Lrw7;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    :cond_16
    iget-object v2, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v2}, Lrw7;->g()I

    move-result v2

    iget-boolean v1, v1, Lay6$b;->c:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    iget-object v1, v0, Lqk4$b;->f:Lrw7;

    invoke-virtual {v1}, Lrw7;->g()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_6

    :cond_18
    move/from16 v21, v2

    move/from16 v19, v4

    move/from16 v20, v19

    move/from16 v22, v20

    goto :goto_6

    :cond_19
    move/from16 v19, v4

    move/from16 v20, v19

    goto :goto_5

    :goto_6
    iget-object v8, v0, Lqk4$b;->n:Lqk4$b$a;

    invoke-virtual/range {v8 .. v22}, Lqk4$b$a;->e(Lay6$c;IIIIZZZZIIIII)V

    iput-boolean v4, v0, Lqk4$b;->k:Z

    return-void
.end method

.method public b(JIZZ)Z
    .locals 4

    iget v0, p0, Lqk4$b;->i:I

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lqk4$b;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lqk4$b;->n:Lqk4$b$a;

    iget-object v1, p0, Lqk4$b;->m:Lqk4$b$a;

    invoke-static {v0, v1}, Lqk4$b$a;->a(Lqk4$b$a;Lqk4$b$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    iget-boolean p4, p0, Lqk4$b;->o:Z

    if-eqz p4, :cond_1

    iget-wide v0, p0, Lqk4$b;->j:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    add-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lqk4$b;->d(I)V

    :cond_1
    iget-wide p1, p0, Lqk4$b;->j:J

    iput-wide p1, p0, Lqk4$b;->p:J

    iget-wide p1, p0, Lqk4$b;->l:J

    iput-wide p1, p0, Lqk4$b;->q:J

    iput-boolean v2, p0, Lqk4$b;->r:Z

    iput-boolean v3, p0, Lqk4$b;->o:Z

    :cond_2
    iget-boolean p1, p0, Lqk4$b;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lqk4$b;->n:Lqk4$b$a;

    invoke-virtual {p1}, Lqk4$b$a;->d()Z

    move-result p5

    :cond_3
    iget-boolean p1, p0, Lqk4$b;->r:Z

    iget p2, p0, Lqk4$b;->i:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    if-eqz p5, :cond_5

    if-ne p2, v3, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    or-int/2addr p1, v2

    iput-boolean p1, p0, Lqk4$b;->r:Z

    return p1
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lqk4$b;->c:Z

    return p0
.end method

.method public final d(I)V
    .locals 8

    iget-wide v1, p0, Lqk4$b;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lqk4$b;->r:Z

    iget-wide v4, p0, Lqk4$b;->j:J

    iget-wide v6, p0, Lqk4$b;->p:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iget-object v0, p0, Lqk4$b;->a:Lfva;

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lfva;->e(JIIILfva$a;)V

    return-void
.end method

.method public e(Lay6$b;)V
    .locals 1

    iget-object p0, p0, Lqk4$b;->e:Landroid/util/SparseArray;

    iget v0, p1, Lay6$b;->a:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public f(Lay6$c;)V
    .locals 1

    iget-object p0, p0, Lqk4$b;->d:Landroid/util/SparseArray;

    iget v0, p1, Lay6$c;->d:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lqk4$b;->k:Z

    iput-boolean v0, p0, Lqk4$b;->o:Z

    iget-object p0, p0, Lqk4$b;->n:Lqk4$b$a;

    invoke-virtual {p0}, Lqk4$b$a;->b()V

    return-void
.end method

.method public h(JIJ)V
    .locals 0

    iput p3, p0, Lqk4$b;->i:I

    iput-wide p4, p0, Lqk4$b;->l:J

    iput-wide p1, p0, Lqk4$b;->j:J

    iget-boolean p1, p0, Lqk4$b;->b:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lqk4$b;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    :cond_1
    iget-object p1, p0, Lqk4$b;->m:Lqk4$b$a;

    iget-object p3, p0, Lqk4$b;->n:Lqk4$b$a;

    iput-object p3, p0, Lqk4$b;->m:Lqk4$b$a;

    iput-object p1, p0, Lqk4$b;->n:Lqk4$b$a;

    invoke-virtual {p1}, Lqk4$b$a;->b()V

    const/4 p1, 0x0

    iput p1, p0, Lqk4$b;->h:I

    iput-boolean p2, p0, Lqk4$b;->k:Z

    :cond_2
    return-void
.end method
