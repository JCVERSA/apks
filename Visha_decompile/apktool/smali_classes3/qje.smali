.class public final Lqje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llje;


# static fields
.field public static final l:[F


# instance fields
.field public final a:Lfle;

.field public final b:Lu4h;

.field public final c:[Z

.field public final d:Loje;

.field public final e:Ldke;

.field public f:Lpje;

.field public g:J

.field public h:Ljava/lang/String;

.field public i:Lrae;

.field public j:Z

.field public k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lqje;->l:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lfle;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqje;->a:Lfle;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lqje;->c:[Z

    new-instance p1, Loje;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, Loje;-><init>(I)V

    iput-object p1, p0, Lqje;->d:Loje;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lqje;->k:J

    new-instance p1, Ldke;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, p2}, Ldke;-><init>(II)V

    iput-object p1, p0, Lqje;->e:Ldke;

    new-instance p1, Lu4h;

    invoke-direct {p1}, Lu4h;-><init>()V

    iput-object p1, p0, Lqje;->b:Lu4h;

    return-void
.end method


# virtual methods
.method public final a(Lu4h;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v2, 0x3

    iget-object v4, v0, Lqje;->f:Lpje;

    invoke-static {v4}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lqje;->i:Lrae;

    invoke-static {v4}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lu4h;->w()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lu4h;->x()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v6

    iget-wide v7, v0, Lqje;->g:J

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, v0, Lqje;->g:J

    iget-object v7, v0, Lqje;->i:Lrae;

    invoke-virtual/range {p1 .. p1}, Lu4h;->u()I

    move-result v8

    move-object/from16 v9, p1

    invoke-interface {v7, v9, v8}, Lrae;->d(Lu4h;I)V

    :goto_0
    iget-object v7, v0, Lqje;->c:[Z

    invoke-static {v6, v4, v5, v7}, Ljzh;->a([BII[Z)I

    move-result v7

    if-ne v7, v5, :cond_1

    iget-boolean v1, v0, Lqje;->j:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lqje;->d:Loje;

    invoke-virtual {v1, v6, v4, v5}, Loje;->a([BII)V

    :cond_0
    iget-object v1, v0, Lqje;->f:Lpje;

    invoke-virtual {v1, v6, v4, v5}, Lpje;->a([BII)V

    iget-object v0, v0, Lqje;->e:Ldke;

    invoke-virtual {v0, v6, v4, v5}, Ldke;->a([BII)V

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v8

    add-int/lit8 v10, v7, 0x3

    aget-byte v8, v8, v10

    and-int/lit16 v8, v8, 0xff

    sub-int v11, v7, v4

    iget-boolean v12, v0, Lqje;->j:Z

    if-nez v12, :cond_d

    if-lez v11, :cond_2

    iget-object v12, v0, Lqje;->d:Loje;

    invoke-virtual {v12, v6, v4, v7}, Loje;->a([BII)V

    :cond_2
    if-gez v11, :cond_3

    neg-int v12, v11

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    iget-object v14, v0, Lqje;->d:Loje;

    invoke-virtual {v14, v8, v12}, Loje;->c(II)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, v0, Lqje;->i:Lrae;

    iget v15, v14, Loje;->d:I

    iget-object v13, v0, Lqje;->h:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v14, Loje;->e:[B

    iget v14, v14, Loje;->c:I

    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    new-instance v14, Lp3h;

    array-length v1, v3

    invoke-direct {v14, v3, v1}, Lp3h;-><init>([BI)V

    invoke-virtual {v14, v15}, Lp3h;->o(I)V

    const/4 v1, 0x4

    invoke-virtual {v14, v1}, Lp3h;->o(I)V

    invoke-virtual {v14}, Lp3h;->m()V

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->p()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-virtual {v14, v1}, Lp3h;->n(I)V

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    :cond_4
    invoke-virtual {v14, v1}, Lp3h;->d(I)I

    move-result v1

    const/high16 v16, 0x3f800000    # 1.0f

    const-string v2, "Invalid aspect ratio"

    const-string v15, "H263Reader"

    const/16 v9, 0xf

    if-ne v1, v9, :cond_6

    const/16 v9, 0x8

    invoke-virtual {v14, v9}, Lp3h;->d(I)I

    move-result v1

    invoke-virtual {v14, v9}, Lp3h;->d(I)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v15, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move/from16 v1, v16

    goto :goto_3

    :cond_5
    int-to-float v1, v1

    int-to-float v2, v9

    div-float v16, v1, v2

    goto :goto_2

    :cond_6
    const/4 v9, 0x7

    if-ge v1, v9, :cond_7

    sget-object v2, Lqje;->l:[F

    aget v16, v2, v1

    goto :goto_2

    :cond_7
    invoke-static {v15, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v14}, Lp3h;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->p()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0xf

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->m()V

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->m()V

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->m()V

    const/4 v9, 0x3

    invoke-virtual {v14, v9}, Lp3h;->n(I)V

    const/16 v9, 0xb

    invoke-virtual {v14, v9}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->m()V

    invoke-virtual {v14, v2}, Lp3h;->n(I)V

    invoke-virtual {v14}, Lp3h;->m()V

    :cond_8
    const/4 v2, 0x2

    invoke-virtual {v14, v2}, Lp3h;->d(I)I

    move-result v9

    if-eqz v9, :cond_9

    const-string v2, "Unhandled video object layer shape"

    invoke-static {v15, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v14}, Lp3h;->m()V

    const/16 v2, 0x10

    invoke-virtual {v14, v2}, Lp3h;->d(I)I

    move-result v2

    invoke-virtual {v14}, Lp3h;->m()V

    invoke-virtual {v14}, Lp3h;->p()Z

    move-result v9

    if-eqz v9, :cond_c

    if-nez v2, :cond_a

    const-string v2, "Invalid vop_increment_time_resolution"

    invoke-static {v15, v2}, Lzrg;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, -0x1

    const/4 v9, 0x0

    :goto_4
    if-lez v2, :cond_b

    const/4 v15, 0x1

    shr-int/2addr v2, v15

    add-int/2addr v9, v15

    goto :goto_4

    :cond_b
    invoke-virtual {v14, v9}, Lp3h;->n(I)V

    :cond_c
    :goto_5
    invoke-virtual {v14}, Lp3h;->m()V

    const/16 v2, 0xd

    invoke-virtual {v14, v2}, Lp3h;->d(I)I

    move-result v9

    invoke-virtual {v14}, Lp3h;->m()V

    invoke-virtual {v14, v2}, Lp3h;->d(I)I

    move-result v2

    invoke-virtual {v14}, Lp3h;->m()V

    invoke-virtual {v14}, Lp3h;->m()V

    new-instance v14, Lgpj;

    invoke-direct {v14}, Lgpj;-><init>()V

    invoke-virtual {v14, v13}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    const-string v13, "video/mp2t"

    invoke-virtual {v14, v13}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string v13, "video/mp4v-es"

    invoke-virtual {v14, v13}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v14, v9}, Lgpj;->J(I)Lgpj;

    invoke-virtual {v14, v2}, Lgpj;->m(I)Lgpj;

    invoke-virtual {v14, v1}, Lgpj;->z(F)Lgpj;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v14, v1}, Lgpj;->p(Ljava/util/List;)Lgpj;

    invoke-virtual {v14}, Lgpj;->K()Lerj;

    move-result-object v1

    invoke-interface {v12, v1}, Lrae;->f(Lerj;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqje;->j:Z

    :cond_d
    iget-object v1, v0, Lqje;->f:Lpje;

    invoke-virtual {v1, v6, v4, v7}, Lpje;->a([BII)V

    iget-object v1, v0, Lqje;->e:Ldke;

    if-lez v11, :cond_e

    invoke-virtual {v1, v6, v4, v7}, Ldke;->a([BII)V

    const/4 v13, 0x0

    goto :goto_6

    :cond_e
    neg-int v13, v11

    :goto_6
    invoke-virtual {v1, v13}, Ldke;->d(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Ldke;->d:[B

    iget v3, v1, Ldke;->e:I

    invoke-static {v2, v3}, Ljzh;->c([BI)I

    move-result v2

    iget-object v3, v0, Lqje;->b:Lu4h;

    sget v4, Lkfh;->a:I

    iget-object v4, v1, Ldke;->d:[B

    invoke-virtual {v3, v4, v2}, Lu4h;->j([BI)V

    iget-object v2, v0, Lqje;->a:Lfle;

    iget-wide v11, v0, Lqje;->k:J

    invoke-virtual {v2, v11, v12, v3}, Lfle;->a(JLu4h;)V

    :cond_f
    const/16 v2, 0xb2

    if-ne v8, v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lu4h;->n()[B

    move-result-object v3

    const/4 v4, 0x2

    add-int/lit8 v8, v7, 0x2

    aget-byte v3, v3, v8

    const/4 v9, 0x1

    if-ne v3, v9, :cond_10

    invoke-virtual {v1, v2}, Ldke;->c(I)V

    :cond_10
    move v8, v2

    goto :goto_7

    :cond_11
    const/4 v4, 0x2

    const/4 v9, 0x1

    :goto_7
    sub-int v1, v5, v7

    iget-wide v2, v0, Lqje;->g:J

    int-to-long v11, v1

    sub-long/2addr v2, v11

    iget-object v7, v0, Lqje;->f:Lpje;

    iget-boolean v11, v0, Lqje;->j:Z

    invoke-virtual {v7, v2, v3, v1, v11}, Lpje;->b(JIZ)V

    iget-object v1, v0, Lqje;->f:Lpje;

    iget-wide v2, v0, Lqje;->k:J

    invoke-virtual {v1, v8, v2, v3}, Lpje;->c(IJ)V

    move-object/from16 v9, p1

    move v4, v10

    const/4 v2, 0x3

    goto/16 :goto_0
.end method

.method public final b(JI)V
    .locals 0

    iput-wide p1, p0, Lqje;->k:J

    return-void
.end method

.method public final c(Lf9e;Lcle;)V
    .locals 2

    invoke-virtual {p2}, Lcle;->c()V

    invoke-virtual {p2}, Lcle;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lqje;->h:Ljava/lang/String;

    invoke-virtual {p2}, Lcle;->a()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lf9e;->j(II)Lrae;

    move-result-object v0

    iput-object v0, p0, Lqje;->i:Lrae;

    new-instance v1, Lpje;

    invoke-direct {v1, v0}, Lpje;-><init>(Lrae;)V

    iput-object v1, p0, Lqje;->f:Lpje;

    iget-object p0, p0, Lqje;->a:Lfle;

    invoke-virtual {p0, p1, p2}, Lfle;->b(Lf9e;Lcle;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 4

    iget-object v0, p0, Lqje;->f:Lpje;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lqje;->f:Lpje;

    iget-wide v0, p0, Lqje;->g:J

    const/4 v2, 0x0

    iget-boolean v3, p0, Lqje;->j:Z

    invoke-virtual {p1, v0, v1, v2, v3}, Lpje;->b(JIZ)V

    iget-object p0, p0, Lqje;->f:Lpje;

    invoke-virtual {p0}, Lpje;->d()V

    :cond_0
    return-void
.end method

.method public final zze()V
    .locals 2

    iget-object v0, p0, Lqje;->c:[Z

    invoke-static {v0}, Ljzh;->i([Z)V

    iget-object v0, p0, Lqje;->d:Loje;

    invoke-virtual {v0}, Loje;->b()V

    iget-object v0, p0, Lqje;->f:Lpje;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpje;->d()V

    :cond_0
    iget-object v0, p0, Lqje;->e:Ldke;

    invoke-virtual {v0}, Ldke;->b()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lqje;->g:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lqje;->k:J

    return-void
.end method
