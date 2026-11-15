.class public final Lhje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# static fields
.field public static final x:[B


# instance fields
.field public final a:Z

.field public final b:Lp3h;

.field public final c:Lu4h;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lrae;

.field public i:Lrae;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Z

.field public s:J

.field public t:I

.field public u:J

.field public v:Lrae;

.field public w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lhje;->x:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp3h;

    const/4 v1, 0x7

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1}, Lp3h;-><init>([BI)V

    iput-object v0, p0, Lhje;->b:Lp3h;

    new-instance v0, Lu4h;

    sget-object v1, Lhje;->x:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lu4h;-><init>([B)V

    iput-object v0, p0, Lhje;->c:Lu4h;

    const/4 v0, -0x1

    iput v0, p0, Lhje;->o:I

    iput v0, p0, Lhje;->p:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lhje;->s:J

    iput-wide v0, p0, Lhje;->u:J

    iput-boolean p1, p0, Lhje;->a:Z

    iput-object p2, p0, Lhje;->d:Ljava/lang/String;

    iput p3, p0, Lhje;->e:I

    iput-object p4, p0, Lhje;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lhje;->f()V

    return-void
.end method

.method public static d(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final j(BB)Z
    .locals 0

    and-int/lit16 p0, p1, 0xff

    const p1, 0xff00

    or-int/2addr p0, p1

    invoke-static {p0}, Lhje;->d(I)Z

    move-result p0

    return p0
.end method

.method public static final k(Lu4h;[BI)Z
    .locals 2

    invoke-virtual {p0}, Lu4h;->u()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lu4h;->h([BII)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x1

    iget-object v0, v6, Lhje;->h:Lrae;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lkfh;->a:I

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v0

    if-lez v0, :cond_1d

    iget v0, v6, Lhje;->j:I

    const/16 v1, 0xd

    const/4 v2, 0x7

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v0, :cond_b

    if-eq v0, v11, :cond_8

    const/16 v5, 0xa

    if-eq v0, v10, :cond_7

    if-eq v0, v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v0

    iget v1, v6, Lhje;->t:I

    iget v2, v6, Lhje;->k:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, v6, Lhje;->v:Lrae;

    invoke-interface {v1, v7, v0}, Lrae;->d(Lu4h;I)V

    iget v1, v6, Lhje;->k:I

    add-int/2addr v1, v0

    iput v1, v6, Lhje;->k:I

    iget v0, v6, Lhje;->t:I

    if-ne v1, v0, :cond_0

    iget-wide v0, v6, Lhje;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, v11

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    invoke-static {v0}, Ln7g;->f(Z)V

    iget-object v12, v6, Lhje;->v:Lrae;

    iget-wide v13, v6, Lhje;->u:J

    iget v0, v6, Lhje;->t:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x1

    move/from16 v16, v0

    invoke-interface/range {v12 .. v18}, Lrae;->g(JIIILqae;)V

    iget-wide v0, v6, Lhje;->u:J

    iget-wide v2, v6, Lhje;->w:J

    add-long/2addr v0, v2

    iput-wide v0, v6, Lhje;->u:J

    invoke-virtual/range {p0 .. p0}, Lhje;->f()V

    goto :goto_0

    :cond_2
    iget-boolean v0, v6, Lhje;->m:Z

    const/4 v12, 0x5

    if-eq v11, v0, :cond_3

    move v0, v12

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    iget-object v13, v6, Lhje;->b:Lp3h;

    iget-object v14, v13, Lp3h;->a:[B

    invoke-virtual {v6, v7, v14, v0}, Lhje;->i(Lu4h;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v13, v8}, Lp3h;->l(I)V

    iget-boolean v0, v6, Lhje;->r:Z

    if-nez v0, :cond_5

    invoke-virtual {v13, v10}, Lp3h;->d(I)I

    move-result v0

    add-int/2addr v0, v11

    if-eq v0, v10, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Detected audio object type: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AdtsReader"

    invoke-static {v5, v0}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v13, v12}, Lp3h;->n(I)V

    invoke-virtual {v13, v4}, Lp3h;->d(I)I

    move-result v0

    iget v5, v6, Lhje;->p:I

    shr-int/lit8 v12, v5, 0x1

    and-int/2addr v12, v2

    or-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    shl-int/lit8 v2, v5, 0x7

    shl-int/2addr v0, v4

    and-int/lit16 v2, v2, 0x80

    and-int/lit8 v0, v0, 0x78

    or-int/2addr v0, v2

    int-to-byte v0, v0

    new-array v2, v10, [B

    aput-byte v12, v2, v8

    aput-byte v0, v2, v11

    invoke-static {v2}, Lp7e;->a([B)Ln7e;

    move-result-object v0

    new-instance v4, Lgpj;

    invoke-direct {v4}, Lgpj;-><init>()V

    iget-object v5, v6, Lhje;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object v5, v6, Lhje;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v4, v5}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    iget-object v5, v0, Ln7e;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lgpj;->c(Ljava/lang/String;)Lgpj;

    iget v5, v0, Ln7e;->b:I

    invoke-virtual {v4, v5}, Lgpj;->b(I)Lgpj;

    iget v0, v0, Ln7e;->a:I

    invoke-virtual {v4, v0}, Lgpj;->F(I)Lgpj;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lgpj;->p(Ljava/util/List;)Lgpj;

    iget-object v0, v6, Lhje;->d:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    iget v0, v6, Lhje;->e:I

    invoke-virtual {v4, v0}, Lgpj;->C(I)Lgpj;

    invoke-virtual {v4}, Lgpj;->K()Lerj;

    move-result-object v0

    iget v2, v0, Lerj;->F:I

    int-to-long v4, v2

    const-wide/32 v14, 0x3d090000

    div-long/2addr v14, v4

    iput-wide v14, v6, Lhje;->s:J

    iget-object v2, v6, Lhje;->h:Lrae;

    invoke-interface {v2, v0}, Lrae;->f(Lerj;)V

    iput-boolean v11, v6, Lhje;->r:Z

    goto :goto_3

    :cond_5
    invoke-virtual {v13, v5}, Lp3h;->n(I)V

    :goto_3
    invoke-virtual {v13, v3}, Lp3h;->n(I)V

    invoke-virtual {v13, v1}, Lp3h;->d(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x7

    iget-boolean v2, v6, Lhje;->m:Z

    if-eqz v2, :cond_6

    add-int/lit8 v0, v0, -0x9

    move v5, v0

    goto :goto_4

    :cond_6
    move v5, v1

    :goto_4
    iget-object v1, v6, Lhje;->h:Lrae;

    iget-wide v2, v6, Lhje;->s:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lhje;->h(Lrae;JII)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, v6, Lhje;->c:Lu4h;

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v1

    invoke-virtual {v6, v7, v1, v5}, Lhje;->i(Lu4h;[BI)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Lhje;->i:Lrae;

    invoke-interface {v1, v0, v5}, Lrae;->d(Lu4h;I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lu4h;->l(I)V

    iget-object v1, v6, Lhje;->i:Lrae;

    invoke-virtual {v0}, Lu4h;->F()I

    move-result v0

    const/16 v4, 0xa

    add-int/lit8 v5, v0, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lhje;->h(Lrae;JII)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lhje;->b:Lp3h;

    iget-object v1, v0, Lp3h;->a:[B

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v4

    aget-byte v2, v2, v4

    aput-byte v2, v1, v8

    invoke-virtual {v0, v10}, Lp3h;->l(I)V

    invoke-virtual {v0, v3}, Lp3h;->d(I)I

    move-result v0

    iget v1, v6, Lhje;->p:I

    if-eq v1, v9, :cond_9

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lhje;->e()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v6, Lhje;->n:Z

    if-nez v1, :cond_a

    iput-boolean v11, v6, Lhje;->n:Z

    iget v1, v6, Lhje;->q:I

    iput v1, v6, Lhje;->o:I

    iput v0, v6, Lhje;->p:I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lhje;->g()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v12

    :goto_5
    if-ge v5, v12, :cond_1c

    add-int/lit8 v13, v5, 0x1

    aget-byte v14, v0, v5

    and-int/lit16 v15, v14, 0xff

    iget v8, v6, Lhje;->l:I

    const/16 v4, 0x200

    if-ne v8, v4, :cond_15

    int-to-byte v8, v15

    invoke-static {v9, v8}, Lhje;->j(BB)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-boolean v8, v6, Lhje;->n:Z

    if-nez v8, :cond_12

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v5}, Lu4h;->l(I)V

    iget-object v4, v6, Lhje;->b:Lp3h;

    iget-object v2, v4, Lp3h;->a:[B

    invoke-static {v7, v2, v11}, Lhje;->k(Lu4h;[BI)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const/4 v10, 0x7

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v4, v3}, Lp3h;->l(I)V

    invoke-virtual {v4, v11}, Lp3h;->d(I)I

    move-result v2

    iget v1, v6, Lhje;->o:I

    if-eq v1, v9, :cond_e

    if-ne v2, v1, :cond_c

    :cond_e
    iget v1, v6, Lhje;->p:I

    if-eq v1, v9, :cond_10

    iget-object v1, v4, Lp3h;->a:[B

    invoke-static {v7, v1, v11}, Lhje;->k(Lu4h;[BI)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v4, v10}, Lp3h;->l(I)V

    invoke-virtual {v4, v3}, Lp3h;->d(I)I

    move-result v1

    iget v10, v6, Lhje;->p:I

    if-ne v1, v10, :cond_c

    add-int/lit8 v1, v5, 0x1

    invoke-virtual {v7, v1}, Lu4h;->l(I)V

    :cond_10
    iget-object v1, v4, Lp3h;->a:[B

    invoke-static {v7, v1, v3}, Lhje;->k(Lu4h;[BI)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0xe

    invoke-virtual {v4, v1}, Lp3h;->l(I)V

    const/16 v1, 0xd

    invoke-virtual {v4, v1}, Lp3h;->d(I)I

    move-result v4

    const/4 v10, 0x7

    if-lt v4, v10, :cond_16

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v1

    add-int/2addr v8, v4

    if-ge v8, v1, :cond_12

    aget-byte v4, v19, v8

    if-ne v4, v9, :cond_11

    add-int/2addr v8, v11

    if-eq v8, v1, :cond_12

    aget-byte v1, v19, v8

    invoke-static {v9, v1}, Lhje;->j(BB)Z

    move-result v4

    if-eqz v4, :cond_16

    and-int/lit8 v1, v1, 0x8

    const/4 v4, 0x3

    shr-int/2addr v1, v4

    if-ne v1, v2, :cond_16

    goto :goto_6

    :cond_11
    const/16 v2, 0x49

    if-ne v4, v2, :cond_16

    add-int/lit8 v2, v8, 0x1

    if-eq v2, v1, :cond_12

    aget-byte v2, v19, v2

    const/16 v4, 0x44

    if-ne v2, v4, :cond_16

    const/4 v2, 0x2

    add-int/2addr v8, v2

    if-eq v8, v1, :cond_12

    aget-byte v1, v19, v8

    const/16 v2, 0x33

    if-ne v1, v2, :cond_16

    :cond_12
    :goto_6
    and-int/lit8 v0, v14, 0x8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    iput v0, v6, Lhje;->q:I

    and-int/lit8 v0, v14, 0x1

    xor-int/2addr v0, v11

    if-eq v11, v0, :cond_13

    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    move v0, v11

    :goto_7
    iput-boolean v0, v6, Lhje;->m:Z

    iget-boolean v0, v6, Lhje;->n:Z

    if-nez v0, :cond_14

    iput v11, v6, Lhje;->j:I

    const/4 v0, 0x0

    iput v0, v6, Lhje;->k:I

    goto :goto_8

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lhje;->g()V

    :goto_8
    invoke-virtual {v7, v13}, Lu4h;->l(I)V

    const/4 v8, 0x0

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_15
    move v10, v2

    :cond_16
    :goto_9
    iget v1, v6, Lhje;->l:I

    or-int v2, v1, v15

    const/16 v4, 0x149

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x1ff

    if-eq v2, v4, :cond_1a

    const/16 v4, 0x344

    if-eq v2, v4, :cond_19

    const/16 v4, 0x433

    if-eq v2, v4, :cond_18

    const/16 v2, 0x100

    if-eq v1, v2, :cond_17

    iput v2, v6, Lhje;->l:I

    move v2, v10

    const/16 v1, 0xd

    const/4 v4, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x2

    goto/16 :goto_5

    :cond_17
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    goto :goto_b

    :cond_18
    const/4 v1, 0x2

    iput v1, v6, Lhje;->j:I

    const/4 v2, 0x3

    iput v2, v6, Lhje;->k:I

    const/4 v4, 0x0

    iput v4, v6, Lhje;->t:I

    iget-object v0, v6, Lhje;->c:Lu4h;

    invoke-virtual {v0, v4}, Lu4h;->l(I)V

    invoke-virtual {v7, v13}, Lu4h;->l(I)V

    move v10, v1

    move v8, v4

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x400

    :goto_a
    iput v5, v6, Lhje;->l:I

    goto :goto_b

    :cond_1a
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x200

    goto :goto_a

    :cond_1b
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x300

    goto :goto_a

    :goto_b
    move v8, v4

    move v5, v13

    move v4, v2

    move v2, v10

    move v10, v1

    const/16 v1, 0xd

    goto/16 :goto_5

    :cond_1c
    move v4, v8

    move v1, v10

    invoke-virtual {v7, v5}, Lu4h;->l(I)V

    goto/16 :goto_0

    :cond_1d
    return-void
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Lhje;->u:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 2

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhje;->g:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Lhje;->h:Lrae;

    iput-object v0, p0, Lhje;->v:Lrae;

    iget-boolean v0, p0, Lhje;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object p1

    iput-object p1, p0, Lhje;->i:Lrae;

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    iget-object p0, p0, Lhje;->f:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string p0, "application/id3"

    invoke-virtual {v0, p0}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p0

    invoke-interface {p1, p0}, Lrae;->f(Lerj;)V

    return-void

    :cond_0
    new-instance p1, Ls8e;

    invoke-direct {p1}, Ls8e;-><init>()V

    iput-object p1, p0, Lhje;->i:Lrae;

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhje;->n:Z

    invoke-virtual {p0}, Lhje;->f()V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhje;->j:I

    iput v0, p0, Lhje;->k:I

    const/16 v0, 0x100

    iput v0, p0, Lhje;->l:I

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lhje;->j:I

    const/4 v0, 0x0

    iput v0, p0, Lhje;->k:I

    return-void
.end method

.method public final h(Lrae;JII)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lhje;->j:I

    iput p4, p0, Lhje;->k:I

    iput-object p1, p0, Lhje;->v:Lrae;

    iput-wide p2, p0, Lhje;->w:J

    iput p5, p0, Lhje;->t:I

    return-void
.end method

.method public final i(Lu4h;[BI)Z
    .locals 2

    invoke-virtual {p1}, Lu4h;->u()I

    move-result v0

    iget v1, p0, Lhje;->k:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lhje;->k:I

    invoke-virtual {p1, p2, v1, v0}, Lu4h;->h([BII)V

    iget p1, p0, Lhje;->k:I

    add-int/2addr p1, v0

    iput p1, p0, Lhje;->k:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzc(Z)V
    .locals 0

    return-void
.end method

.method public final zze()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lhje;->u:J

    invoke-virtual {p0}, Lhje;->e()V

    return-void
.end method
