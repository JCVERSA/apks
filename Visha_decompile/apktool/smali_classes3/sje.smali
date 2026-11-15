.class public final Lsje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Lske;

.field public final b:Ljava/lang/String;

.field public final c:Ldke;

.field public final d:Ldke;

.field public final e:Ldke;

.field public f:J

.field public final g:[Z

.field public h:Ljava/lang/String;

.field public i:Lrae;

.field public j:Lrje;

.field public k:Z

.field public l:J

.field public m:Z

.field public final n:Lu4h;


# direct methods
.method public constructor <init>(Lske;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsje;->a:Lske;

    const-string p1, "video/mp2t"

    iput-object p1, p0, Lsje;->b:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lsje;->g:[Z

    new-instance p1, Ldke;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Ldke;-><init>(II)V

    iput-object p1, p0, Lsje;->c:Ldke;

    new-instance p1, Ldke;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Ldke;-><init>(II)V

    iput-object p1, p0, Lsje;->d:Ldke;

    new-instance p1, Ldke;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Ldke;-><init>(II)V

    iput-object p1, p0, Lsje;->e:Ldke;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lsje;->l:J

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lsje;->n:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 16

    move-object/from16 v7, p0

    const/4 v8, 0x3

    iget-object v0, v7, Lsje;->i:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lkfh;->a:I

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v10

    iget-wide v1, v7, Lsje;->f:J

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lsje;->f:J

    iget-object v1, v7, Lsje;->i:Lrae;

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v2

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2}, Lrae;->d(Lu4h;I)V

    :goto_0
    iget-object v1, v7, Lsje;->g:[Z

    invoke-static {v10, v0, v9, v1}, Ljzh;->a([BII[Z)I

    move-result v1

    if-eq v1, v9, :cond_3

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v10, v2

    and-int/lit8 v11, v2, 0x1f

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-byte v3, v10, v2

    if-nez v3, :cond_0

    const/4 v1, 0x4

    move v13, v1

    move v12, v2

    goto :goto_1

    :cond_0
    move v12, v1

    move v13, v8

    :goto_1
    sub-int v1, v12, v0

    if-lez v1, :cond_1

    invoke-virtual {v7, v10, v0, v12}, Lsje;->e([BII)V

    :cond_1
    sub-int v3, v9, v12

    iget-wide v4, v7, Lsje;->f:J

    int-to-long v14, v3

    sub-long v14, v4, v14

    if-gez v1, :cond_2

    neg-int v0, v1

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-wide v5, v7, Lsje;->l:J

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-virtual/range {v0 .. v6}, Lsje;->d(JIIJ)V

    iget-wide v4, v7, Lsje;->l:J

    move v3, v11

    invoke-virtual/range {v0 .. v5}, Lsje;->f(JIJ)V

    add-int v0, v12, v13

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v10, v0, v9}, Lsje;->e([BII)V

    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Lsje;->l:J

    and-int/lit8 p1, p3, 0x2

    iget-boolean p2, p0, Lsje;->m:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lsje;->m:Z

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 3

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsje;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Lsje;->i:Lrae;

    new-instance v1, Lrje;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lrje;-><init>(Lrae;ZZ)V

    iput-object v1, p0, Lsje;->j:Lrje;

    iget-object p0, p0, Lsje;->a:Lske;

    invoke-virtual {p0, p1, p2}, Lske;->d(Lf9e;Lcle;)V

    return-void
.end method

.method public final d(JIIJ)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p4

    iget-boolean v2, v0, Lsje;->k:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, v0, Lsje;->c:Ldke;

    invoke-virtual {v2, v1}, Ldke;->d(I)Z

    iget-object v4, v0, Lsje;->d:Ldke;

    invoke-virtual {v4, v1}, Ldke;->d(I)Z

    iget-boolean v5, v0, Lsje;->k:Z

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ldke;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ldke;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v2, Ldke;->d:[B

    iget v7, v2, Ldke;->e:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Ldke;->d:[B

    iget v7, v4, Ldke;->e:I

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v2, Ldke;->d:[B

    iget v7, v2, Ldke;->e:I

    invoke-static {v6, v3, v7}, Ljzh;->g([BII)Loyh;

    move-result-object v6

    iget-object v7, v4, Ldke;->d:[B

    iget v8, v4, Ldke;->e:I

    invoke-static {v7, v3, v8}, Ljzh;->f([BII)Lwxh;

    move-result-object v7

    iget v8, v6, Loyh;->a:I

    iget v9, v6, Loyh;->b:I

    iget v10, v6, Loyh;->c:I

    invoke-static {v8, v9, v10}, Lvcg;->c(III)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lsje;->i:Lrae;

    new-instance v10, Lgpj;

    invoke-direct {v10}, Lgpj;-><init>()V

    iget-object v11, v0, Lsje;->h:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v11, v0, Lsje;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v11, "video/avc"

    invoke-virtual {v10, v11}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v10, v8}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget v8, v6, Loyh;->e:I

    invoke-virtual {v10, v8}, Lgpj;->J(I)Lgpj;

    iget v8, v6, Loyh;->f:I

    invoke-virtual {v10, v8}, Lgpj;->m(I)Lgpj;

    new-instance v8, Lp1j;

    invoke-direct {v8}, Lp1j;-><init>()V

    iget v11, v6, Loyh;->j:I

    invoke-virtual {v8, v11}, Lp1j;->c(I)Lp1j;

    iget v11, v6, Loyh;->k:I

    invoke-virtual {v8, v11}, Lp1j;->b(I)Lp1j;

    iget v11, v6, Loyh;->l:I

    invoke-virtual {v8, v11}, Lp1j;->d(I)Lp1j;

    iget v11, v6, Loyh;->h:I

    add-int/lit8 v11, v11, 0x8

    invoke-virtual {v8, v11}, Lp1j;->f(I)Lp1j;

    iget v11, v6, Loyh;->i:I

    add-int/lit8 v11, v11, 0x8

    invoke-virtual {v8, v11}, Lp1j;->a(I)Lp1j;

    invoke-virtual {v8}, Lp1j;->g()Lh6j;

    move-result-object v8

    invoke-virtual {v10, v8}, Lgpj;->d(Lh6j;)Lgpj;

    iget v8, v6, Loyh;->g:F

    invoke-virtual {v10, v8}, Lgpj;->z(F)Lgpj;

    invoke-virtual {v10, v5}, Lgpj;->p(Ljava/util/List;)Lgpj;

    iget v5, v6, Loyh;->m:I

    invoke-virtual {v10, v5}, Lgpj;->u(I)Lgpj;

    invoke-virtual {v10}, Lgpj;->K()Lerj;

    move-result-object v8

    invoke-interface {v9, v8}, Lrae;->f(Lerj;)V

    const/4 v8, 0x1

    iput-boolean v8, v0, Lsje;->k:Z

    iget-object v8, v0, Lsje;->a:Lske;

    invoke-virtual {v8, v5}, Lske;->f(I)V

    iget-object v5, v0, Lsje;->j:Lrje;

    invoke-virtual {v5, v6}, Lrje;->b(Loyh;)V

    iget-object v5, v0, Lsje;->j:Lrje;

    invoke-virtual {v5, v7}, Lrje;->a(Lwxh;)V

    invoke-virtual {v2}, Ldke;->b()V

    invoke-virtual {v4}, Ldke;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ldke;->e()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v2, Ldke;->d:[B

    iget v5, v2, Ldke;->e:I

    invoke-static {v4, v3, v5}, Ljzh;->g([BII)Loyh;

    move-result-object v4

    iget-object v5, v0, Lsje;->a:Lske;

    iget v6, v4, Loyh;->m:I

    invoke-virtual {v5, v6}, Lske;->f(I)V

    iget-object v5, v0, Lsje;->j:Lrje;

    invoke-virtual {v5, v4}, Lrje;->b(Loyh;)V

    invoke-virtual {v2}, Ldke;->b()V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ldke;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v4, Ldke;->d:[B

    iget v5, v4, Ldke;->e:I

    invoke-static {v2, v3, v5}, Ljzh;->f([BII)Lwxh;

    move-result-object v2

    iget-object v5, v0, Lsje;->j:Lrje;

    invoke-virtual {v5, v2}, Lrje;->a(Lwxh;)V

    invoke-virtual {v4}, Ldke;->b()V

    :cond_3
    :goto_0
    iget-object v2, v0, Lsje;->e:Ldke;

    invoke-virtual {v2, v1}, Ldke;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v2, Ldke;->d:[B

    iget v4, v2, Ldke;->e:I

    invoke-static {v1, v4}, Ljzh;->c([BI)I

    move-result v1

    iget-object v4, v0, Lsje;->n:Lu4h;

    iget-object v2, v2, Ldke;->d:[B

    invoke-virtual {v4, v2, v1}, Lu4h;->j([BI)V

    invoke-virtual {v4, v3}, Lu4h;->l(I)V

    iget-object v1, v0, Lsje;->a:Lske;

    move-wide/from16 v2, p5

    invoke-virtual {v1, v2, v3, v4}, Lske;->c(JLu4h;)V

    :cond_4
    iget-object v1, v0, Lsje;->j:Lrje;

    iget-boolean v2, v0, Lsje;->k:Z

    move-wide v3, p1

    move v5, p3

    invoke-virtual {v1, p1, p2, p3, v2}, Lrje;->e(JIZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lsje;->m:Z

    :cond_5
    return-void
.end method

.method public final e([BII)V
    .locals 1

    iget-boolean v0, p0, Lsje;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsje;->c:Ldke;

    invoke-virtual {v0, p1, p2, p3}, Ldke;->a([BII)V

    iget-object v0, p0, Lsje;->d:Ldke;

    invoke-virtual {v0, p1, p2, p3}, Ldke;->a([BII)V

    :cond_0
    iget-object p0, p0, Lsje;->e:Ldke;

    invoke-virtual {p0, p1, p2, p3}, Ldke;->a([BII)V

    return-void
.end method

.method public final f(JIJ)V
    .locals 8

    iget-boolean v0, p0, Lsje;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lsje;->c:Ldke;

    invoke-virtual {v0, p3}, Ldke;->c(I)V

    iget-object v0, p0, Lsje;->d:Ldke;

    invoke-virtual {v0, p3}, Ldke;->c(I)V

    :cond_0
    iget-object v0, p0, Lsje;->e:Ldke;

    invoke-virtual {v0, p3}, Ldke;->c(I)V

    iget-object v1, p0, Lsje;->j:Lrje;

    iget-boolean v7, p0, Lsje;->m:Z

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Lrje;->d(JIJZ)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 13

    iget-object v0, p0, Lsje;->i:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lkfh;->a:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsje;->a:Lske;

    invoke-virtual {p1}, Lske;->e()V

    iget-wide v1, p0, Lsje;->f:J

    const/4 v4, 0x0

    iget-wide v5, p0, Lsje;->l:J

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lsje;->d(JIIJ)V

    iget-wide v8, p0, Lsje;->f:J

    const/16 v10, 0x9

    iget-wide v11, p0, Lsje;->l:J

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lsje;->f(JIJ)V

    iget-wide v1, p0, Lsje;->f:J

    iget-wide v5, p0, Lsje;->l:J

    invoke-virtual/range {v0 .. v6}, Lsje;->d(JIIJ)V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsje;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsje;->m:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lsje;->l:J

    iget-object v0, p0, Lsje;->g:[Z

    invoke-static {v0}, Ljzh;->i([Z)V

    iget-object v0, p0, Lsje;->c:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Lsje;->d:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Lsje;->e:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Lsje;->a:Lske;

    invoke-virtual {v0}, Lske;->b()V

    iget-object p0, p0, Lsje;->j:Lrje;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrje;->c()V

    :cond_0
    return-void
.end method
