.class public final Luje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# instance fields
.field public final a:Lske;

.field public b:Ljava/lang/String;

.field public c:Lrae;

.field public d:Ltje;

.field public e:Z

.field public final f:[Z

.field public final g:Ldke;

.field public final h:Ldke;

.field public final i:Ldke;

.field public final j:Ldke;

.field public final k:Ldke;

.field public l:J

.field public m:J

.field public final n:Lu4h;


# direct methods
.method public constructor <init>(Lske;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luje;->a:Lske;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Luje;->f:[Z

    new-instance p1, Ldke;

    const/16 p2, 0x20

    const/16 v0, 0x80

    invoke-direct {p1, p2, v0}, Ldke;-><init>(II)V

    iput-object p1, p0, Luje;->g:Ldke;

    new-instance p1, Ldke;

    const/16 p2, 0x21

    invoke-direct {p1, p2, v0}, Ldke;-><init>(II)V

    iput-object p1, p0, Luje;->h:Ldke;

    new-instance p1, Ldke;

    const/16 p2, 0x22

    invoke-direct {p1, p2, v0}, Ldke;-><init>(II)V

    iput-object p1, p0, Luje;->i:Ldke;

    new-instance p1, Ldke;

    const/16 p2, 0x27

    invoke-direct {p1, p2, v0}, Ldke;-><init>(II)V

    iput-object p1, p0, Luje;->j:Ldke;

    new-instance p1, Ldke;

    const/16 p2, 0x28

    invoke-direct {p1, p2, v0}, Ldke;-><init>(II)V

    iput-object p1, p0, Luje;->k:Ldke;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Luje;->m:J

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Luje;->n:Lu4h;

    return-void
.end method

.method private final d(JIIJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-wide/from16 v2, p5

    iget-object v4, v0, Luje;->d:Ltje;

    iget-boolean v5, v0, Luje;->e:Z

    move-wide/from16 v6, p1

    move/from16 v8, p3

    invoke-virtual {v4, v6, v7, v8, v5}, Ltje;->a(JIZ)V

    iget-boolean v4, v0, Luje;->e:Z

    if-nez v4, :cond_2

    iget-object v4, v0, Luje;->g:Ldke;

    invoke-virtual {v4, v1}, Ldke;->d(I)Z

    iget-object v5, v0, Luje;->h:Ldke;

    invoke-virtual {v5, v1}, Ldke;->d(I)Z

    iget-object v6, v0, Luje;->i:Ldke;

    invoke-virtual {v6, v1}, Ldke;->d(I)Z

    invoke-virtual {v4}, Ldke;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Ldke;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Ldke;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v0, Luje;->b:Ljava/lang/String;

    iget v8, v4, Ldke;->e:I

    iget v9, v5, Ldke;->e:I

    add-int/2addr v9, v8

    iget v10, v6, Ldke;->e:I

    add-int/2addr v9, v10

    new-array v9, v9, [B

    iget-object v10, v4, Ldke;->d:[B

    const/4 v11, 0x0

    invoke-static {v10, v11, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v5, Ldke;->d:[B

    iget v10, v4, Ldke;->e:I

    iget v12, v5, Ldke;->e:I

    invoke-static {v8, v11, v9, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, v6, Ldke;->d:[B

    iget v4, v4, Ldke;->e:I

    iget v10, v5, Ldke;->e:I

    add-int/2addr v4, v10

    iget v6, v6, Ldke;->e:I

    invoke-static {v8, v11, v9, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v5, Ldke;->d:[B

    const/4 v6, 0x3

    iget v5, v5, Ldke;->e:I

    const/4 v8, 0x0

    invoke-static {v4, v6, v5, v8}, Ljzh;->d([BIILaxh;)Luuh;

    move-result-object v4

    iget-object v5, v4, Luuh;->b:Ltqh;

    if-eqz v5, :cond_0

    iget v6, v5, Ltqh;->f:I

    iget-object v8, v5, Ltqh;->e:[I

    iget v15, v5, Ltqh;->d:I

    iget v14, v5, Ltqh;->c:I

    iget-boolean v13, v5, Ltqh;->b:Z

    iget v12, v5, Ltqh;->a:I

    move-object/from16 v16, v8

    move/from16 v17, v6

    invoke-static/range {v12 .. v17}, Lvcg;->d(IZII[II)Ljava/lang/String;

    move-result-object v8

    :cond_0
    new-instance v5, Lgpj;

    invoke-direct {v5}, Lgpj;-><init>()V

    invoke-virtual {v5, v7}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    const-string v6, "video/mp2t"

    invoke-virtual {v5, v6}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v6, "video/hevc"

    invoke-virtual {v5, v6}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v5, v8}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget v6, v4, Luuh;->e:I

    invoke-virtual {v5, v6}, Lgpj;->J(I)Lgpj;

    iget v6, v4, Luuh;->f:I

    invoke-virtual {v5, v6}, Lgpj;->m(I)Lgpj;

    new-instance v6, Lp1j;

    invoke-direct {v6}, Lp1j;-><init>()V

    iget v7, v4, Luuh;->i:I

    invoke-virtual {v6, v7}, Lp1j;->c(I)Lp1j;

    iget v7, v4, Luuh;->j:I

    invoke-virtual {v6, v7}, Lp1j;->b(I)Lp1j;

    iget v7, v4, Luuh;->k:I

    invoke-virtual {v6, v7}, Lp1j;->d(I)Lp1j;

    iget v7, v4, Luuh;->c:I

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lp1j;->f(I)Lp1j;

    iget v7, v4, Luuh;->d:I

    add-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Lp1j;->a(I)Lp1j;

    invoke-virtual {v6}, Lp1j;->g()Lh6j;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgpj;->d(Lh6j;)Lgpj;

    iget v6, v4, Luuh;->g:F

    invoke-virtual {v5, v6}, Lgpj;->z(F)Lgpj;

    iget v6, v4, Luuh;->h:I

    invoke-virtual {v5, v6}, Lgpj;->u(I)Lgpj;

    iget v4, v4, Luuh;->a:I

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v5, v4}, Lgpj;->v(I)Lgpj;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v5}, Lgpj;->K()Lerj;

    move-result-object v4

    iget-object v5, v0, Luje;->c:Lrae;

    invoke-interface {v5, v4}, Lrae;->f(Lerj;)V

    iget v4, v4, Lerj;->q:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move v11, v6

    :cond_1
    invoke-static {v11}, Lv2i;->l(Z)V

    iget-object v5, v0, Luje;->a:Lske;

    invoke-virtual {v5, v4}, Lske;->f(I)V

    iput-boolean v6, v0, Luje;->e:Z

    :cond_2
    iget-object v4, v0, Luje;->j:Ldke;

    invoke-virtual {v4, v1}, Ldke;->d(I)Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_3

    iget-object v5, v4, Ldke;->d:[B

    iget v7, v4, Ldke;->e:I

    invoke-static {v5, v7}, Ljzh;->c([BI)I

    move-result v5

    iget-object v7, v0, Luje;->n:Lu4h;

    iget-object v4, v4, Ldke;->d:[B

    invoke-virtual {v7, v4, v5}, Lu4h;->j([BI)V

    invoke-virtual {v7, v6}, Lu4h;->m(I)V

    iget-object v4, v0, Luje;->a:Lske;

    invoke-virtual {v4, v2, v3, v7}, Lske;->c(JLu4h;)V

    :cond_3
    iget-object v4, v0, Luje;->k:Ldke;

    invoke-virtual {v4, v1}, Ldke;->d(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v4, Ldke;->d:[B

    iget v5, v4, Ldke;->e:I

    invoke-static {v1, v5}, Ljzh;->c([BI)I

    move-result v1

    iget-object v5, v0, Luje;->n:Lu4h;

    iget-object v4, v4, Ldke;->d:[B

    invoke-virtual {v5, v4, v1}, Lu4h;->j([BI)V

    invoke-virtual {v5, v6}, Lu4h;->m(I)V

    iget-object v0, v0, Luje;->a:Lske;

    invoke-virtual {v0, v2, v3, v5}, Lske;->c(JLu4h;)V

    :cond_4
    return-void
.end method

.method private final e([BII)V
    .locals 1

    iget-object v0, p0, Luje;->d:Ltje;

    invoke-virtual {v0, p1, p2, p3}, Ltje;->b([BII)V

    iget-boolean v0, p0, Luje;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Luje;->g:Ldke;

    invoke-virtual {v0, p1, p2, p3}, Ldke;->a([BII)V

    iget-object v0, p0, Luje;->h:Ldke;

    invoke-virtual {v0, p1, p2, p3}, Ldke;->a([BII)V

    iget-object v0, p0, Luje;->i:Ldke;

    invoke-virtual {v0, p1, p2, p3}, Ldke;->a([BII)V

    :cond_0
    iget-object v0, p0, Luje;->j:Ldke;

    invoke-virtual {v0, p1, p2, p3}, Ldke;->a([BII)V

    iget-object p0, p0, Luje;->k:Ldke;

    invoke-virtual {p0, p1, p2, p3}, Ldke;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 18

    move-object/from16 v7, p0

    const/4 v8, 0x3

    iget-object v0, v7, Luje;->c:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lkfh;->a:I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v10

    iget-wide v1, v7, Luje;->l:J

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Luje;->l:J

    iget-object v1, v7, Luje;->c:Lrae;

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v2

    move-object/from16 v11, p1

    invoke-interface {v1, v11, v2}, Lrae;->d(Lu4h;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v1, v7, Luje;->f:[Z

    invoke-static {v10, v0, v9, v1}, Ljzh;->a([BII[Z)I

    move-result v1

    if-eq v1, v9, :cond_4

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v10, v2

    and-int/lit8 v2, v2, 0x7e

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-byte v4, v10, v3

    if-nez v4, :cond_1

    const/4 v1, 0x4

    move v13, v1

    move v12, v3

    goto :goto_1

    :cond_1
    move v12, v1

    move v13, v8

    :goto_1
    sub-int v1, v12, v0

    if-lez v1, :cond_2

    invoke-direct {v7, v10, v0, v12}, Luje;->e([BII)V

    :cond_2
    sub-int v14, v9, v12

    iget-wide v3, v7, Luje;->l:J

    int-to-long v5, v14

    sub-long v15, v3, v5

    if-gez v1, :cond_3

    neg-int v0, v1

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    shr-int/lit8 v17, v2, 0x1

    iget-wide v5, v7, Luje;->m:J

    move-object/from16 v0, p0

    move-wide v1, v15

    move v3, v14

    invoke-direct/range {v0 .. v6}, Luje;->d(JIIJ)V

    iget-wide v5, v7, Luje;->m:J

    move/from16 v4, v17

    invoke-virtual/range {v0 .. v6}, Luje;->f(JIIJ)V

    add-int v0, v12, v13

    goto :goto_0

    :cond_4
    invoke-direct {v7, v10, v0, v9}, Luje;->e([BII)V

    :cond_5
    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Luje;->m:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 2

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luje;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Luje;->c:Lrae;

    new-instance v1, Ltje;

    invoke-direct {v1, v0}, Ltje;-><init>(Lrae;)V

    iput-object v1, p0, Luje;->d:Ltje;

    iget-object p0, p0, Luje;->a:Lske;

    invoke-virtual {p0, p1, p2}, Lske;->d(Lf9e;Lcle;)V

    return-void
.end method

.method public final f(JIIJ)V
    .locals 8

    iget-object v0, p0, Luje;->d:Ltje;

    iget-boolean v7, p0, Luje;->e:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Ltje;->d(JIIJZ)V

    iget-boolean p1, p0, Luje;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Luje;->g:Ldke;

    invoke-virtual {p1, p4}, Ldke;->c(I)V

    iget-object p1, p0, Luje;->h:Ldke;

    invoke-virtual {p1, p4}, Ldke;->c(I)V

    iget-object p1, p0, Luje;->i:Ldke;

    invoke-virtual {p1, p4}, Ldke;->c(I)V

    :cond_0
    iget-object p1, p0, Luje;->j:Ldke;

    invoke-virtual {p1, p4}, Ldke;->c(I)V

    iget-object p0, p0, Luje;->k:Ldke;

    invoke-virtual {p0, p4}, Ldke;->c(I)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 14

    iget-object v0, p0, Luje;->c:Lrae;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lkfh;->a:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Luje;->a:Lske;

    invoke-virtual {p1}, Lske;->e()V

    iget-wide v1, p0, Luje;->l:J

    const/4 v4, 0x0

    iget-wide v5, p0, Luje;->m:J

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Luje;->d(JIIJ)V

    iget-wide v8, p0, Luje;->l:J

    const/16 v11, 0x30

    iget-wide v12, p0, Luje;->m:J

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v13}, Luje;->f(JIIJ)V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Luje;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Luje;->m:J

    iget-object v0, p0, Luje;->f:[Z

    invoke-static {v0}, Ljzh;->i([Z)V

    iget-object v0, p0, Luje;->g:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Luje;->h:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Luje;->i:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Luje;->j:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Luje;->k:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    iget-object v0, p0, Luje;->a:Lske;

    invoke-virtual {v0}, Lske;->b()V

    iget-object p0, p0, Luje;->d:Ltje;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltje;->c()V

    :cond_0
    return-void
.end method
