.class public final Lbce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lu4h;

.field public b:Lf9e;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Ljde;

.field public h:Ld9e;

.field public i:Lece;

.field public j:Lmfe;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu4h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Lbce;->a:Lu4h;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbce;->f:J

    return-void
.end method

.method private final a(Ld9e;)I
    .locals 3

    iget-object p0, p0, Lbce;->a:Lu4h;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lu4h;->i(I)V

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v1

    check-cast p1, Lm8e;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0, v2}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0}, Lu4h;->K()I

    move-result p0

    return p0
.end method

.method private final c()V
    .locals 6

    iget-object v0, p0, Lbce;->b:Lf9e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lf9e;->zzG()V

    iget-object v0, p0, Lbce;->b:Lf9e;

    new-instance v1, Ljae;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljae;-><init>(JJ)V

    invoke-interface {v0, v1}, Lf9e;->i(Lkae;)V

    const/4 v0, 0x6

    iput v0, p0, Lbce;->c:I

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lbce;->c:I

    const/4 p1, 0x0

    iput-object p1, p0, Lbce;->j:Lmfe;

    return-void

    :cond_0
    iget v0, p0, Lbce;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lbce;->j:Lmfe;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmfe;->b(JJ)V

    :cond_1
    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v0, Lbce;->c:I

    const/4 v7, 0x4

    const-wide/16 v8, -0x1

    const/4 v10, 0x2

    if-eqz v6, :cond_19

    if-eq v6, v5, :cond_18

    if-eq v6, v10, :cond_a

    const/4 v8, 0x5

    if-eq v6, v7, :cond_5

    if-eq v6, v8, :cond_1

    const/4 v0, 0x6

    if-ne v6, v0, :cond_0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-object v3, v0, Lbce;->i:Lece;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lbce;->h:Ld9e;

    if-eq v1, v3, :cond_3

    :cond_2
    iput-object v1, v0, Lbce;->h:Ld9e;

    new-instance v3, Lece;

    iget-wide v6, v0, Lbce;->f:J

    invoke-direct {v3, v1, v6, v7}, Lece;-><init>(Ld9e;J)V

    iput-object v3, v0, Lbce;->i:Lece;

    :cond_3
    iget-object v1, v0, Lbce;->j:Lmfe;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lbce;->i:Lece;

    invoke-virtual {v1, v3, v2}, Lmfe;->d(Ld9e;Ly9e;)I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-wide v3, v2, Ly9e;->a:J

    iget-wide v5, v0, Lbce;->f:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Ly9e;->a:J

    :cond_4
    return v1

    :cond_5
    invoke-interface/range {p1 .. p1}, Ld9e;->zzf()J

    move-result-wide v9

    iget-wide v11, v0, Lbce;->f:J

    cmp-long v3, v9, v11

    if-nez v3, :cond_9

    iget-object v2, v0, Lbce;->a:Lu4h;

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v2

    invoke-interface {v1, v2, v4, v5, v5}, Ld9e;->e([BIIZ)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lbce;->c()V

    goto :goto_0

    :cond_6
    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    iget-object v2, v0, Lbce;->j:Lmfe;

    if-nez v2, :cond_7

    new-instance v2, Lmfe;

    sget-object v3, Lvge;->a:Lvge;

    const/16 v6, 0x8

    invoke-direct {v2, v3, v6}, Lmfe;-><init>(Lvge;I)V

    iput-object v2, v0, Lbce;->j:Lmfe;

    :cond_7
    new-instance v2, Lece;

    iget-wide v9, v0, Lbce;->f:J

    invoke-direct {v2, v1, v9, v10}, Lece;-><init>(Ld9e;J)V

    iput-object v2, v0, Lbce;->i:Lece;

    iget-object v1, v0, Lbce;->j:Lmfe;

    invoke-virtual {v1, v2}, Lmfe;->e(Ld9e;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lbce;->j:Lmfe;

    new-instance v2, Lgce;

    iget-wide v9, v0, Lbce;->f:J

    iget-object v3, v0, Lbce;->b:Lf9e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v9, v10, v3}, Lgce;-><init>(JLf9e;)V

    invoke-virtual {v1, v2}, Lmfe;->f(Lf9e;)V

    iget-object v1, v0, Lbce;->g:Ljde;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lbce;->b:Lf9e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x400

    invoke-interface {v2, v3, v7}, Lf9e;->j(II)Lrae;

    move-result-object v2

    new-instance v3, Lgpj;

    invoke-direct {v3}, Lgpj;-><init>()V

    const-string v6, "image/jpeg"

    invoke-virtual {v3, v6}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    new-instance v6, Lhre;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    new-array v5, v5, [Liqe;

    aput-object v1, v5, v4

    invoke-direct {v6, v9, v10, v5}, Lhre;-><init>(J[Liqe;)V

    invoke-virtual {v3, v6}, Lgpj;->w(Lhre;)Lgpj;

    invoke-virtual {v3}, Lgpj;->K()Lerj;

    move-result-object v1

    invoke-interface {v2, v1}, Lrae;->f(Lerj;)V

    iput v8, v0, Lbce;->c:I

    goto :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lbce;->c()V

    :goto_0
    return v4

    :cond_9
    iput-wide v11, v2, Ly9e;->a:J

    return v5

    :cond_a
    iget v2, v0, Lbce;->d:I

    const v5, 0xffe1

    if-ne v2, v5, :cond_17

    new-instance v2, Lu4h;

    iget v5, v0, Lbce;->e:I

    invoke-direct {v2, v5}, Lu4h;-><init>(I)V

    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v5

    iget v6, v0, Lbce;->e:I

    invoke-interface {v1, v5, v4, v6}, Ld9e;->h([BII)V

    iget-object v5, v0, Lbce;->g:Ljde;

    if-nez v5, :cond_16

    invoke-virtual {v2, v4}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v5

    const-string v6, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v2, v4}, Lu4h;->S(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-interface/range {p1 .. p1}, Ld9e;->zzd()J

    move-result-wide v5

    cmp-long v1, v5, v8

    if-nez v1, :cond_c

    :cond_b
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_6

    :cond_c
    invoke-static {v2}, Lhce;->a(Ljava/lang/String;)Ldce;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    iget-object v2, v1, Ldce;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v11, v10, :cond_e

    goto :goto_1

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v10, v3

    move v11, v4

    move-wide v12, v8

    move-wide v14, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v18

    :goto_2
    if-ltz v10, :cond_13

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lcce;

    iget-object v4, v7, Lcce;->a:Ljava/lang/String;

    const-string v8, "video/mp4"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v11

    if-nez v10, :cond_f

    iget-wide v7, v7, Lcce;->c:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    :goto_3
    move-wide/from16 v22, v5

    move-wide v5, v7

    move-wide/from16 v7, v22

    goto :goto_4

    :cond_f
    iget-wide v7, v7, Lcce;->b:J

    sub-long v7, v5, v7

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_10

    cmp-long v9, v5, v7

    if-eqz v9, :cond_10

    sub-long v20, v7, v5

    move-wide/from16 v18, v5

    const/4 v11, 0x0

    goto :goto_5

    :cond_10
    move v11, v4

    :goto_5
    if-nez v10, :cond_11

    move-wide v14, v7

    :cond_11
    if-nez v10, :cond_12

    move-wide v12, v5

    :cond_12
    add-int/2addr v10, v3

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_13
    move-wide v4, v8

    cmp-long v2, v18, v4

    if-eqz v2, :cond_b

    cmp-long v2, v20, v4

    if-eqz v2, :cond_b

    cmp-long v2, v12, v4

    if-eqz v2, :cond_b

    cmp-long v2, v14, v4

    if-nez v2, :cond_14

    goto :goto_1

    :cond_14
    iget-wide v1, v1, Ldce;->a:J

    new-instance v7, Ljde;

    move-object v11, v7

    move-wide/from16 v16, v1

    invoke-direct/range {v11 .. v21}, Ljde;-><init>(JJJJJ)V

    :goto_6
    iput-object v7, v0, Lbce;->g:Ljde;

    if-eqz v7, :cond_15

    iget-wide v1, v7, Ljde;->d:J

    iput-wide v1, v0, Lbce;->f:J

    :cond_15
    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_16
    move v2, v4

    goto :goto_8

    :cond_17
    iget v2, v0, Lbce;->e:I

    invoke-interface {v1, v2}, Ld9e;->f(I)V

    goto :goto_7

    :goto_8
    iput v2, v0, Lbce;->c:I

    return v2

    :cond_18
    move v2, v4

    iget-object v3, v0, Lbce;->a:Lu4h;

    invoke-virtual {v3, v10}, Lu4h;->i(I)V

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    invoke-interface {v1, v4, v2, v10}, Ld9e;->h([BII)V

    invoke-virtual {v3}, Lu4h;->K()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lbce;->e:I

    iput v10, v0, Lbce;->c:I

    return v2

    :cond_19
    move v2, v4

    iget-object v3, v0, Lbce;->a:Lu4h;

    invoke-virtual {v3, v10}, Lu4h;->i(I)V

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v4

    invoke-interface {v1, v4, v2, v10}, Ld9e;->h([BII)V

    invoke-virtual {v3}, Lu4h;->K()I

    move-result v1

    iput v1, v0, Lbce;->d:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1c

    iget-wide v1, v0, Lbce;->f:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1b

    iput v7, v0, Lbce;->c:I

    :cond_1a
    :goto_9
    const/4 v0, 0x0

    goto :goto_a

    :cond_1b
    invoke-direct/range {p0 .. p0}, Lbce;->c()V

    goto :goto_9

    :cond_1c
    const v2, 0xffd0

    if-lt v1, v2, :cond_1d

    const v2, 0xffd9

    if-le v1, v2, :cond_1a

    :cond_1d
    const v2, 0xff01

    if-eq v1, v2, :cond_1a

    iput v5, v0, Lbce;->c:I

    goto :goto_9

    :goto_a
    return v0
.end method

.method public final e(Ld9e;)Z
    .locals 5

    invoke-direct {p0, p1}, Lbce;->a(Ld9e;)I

    move-result v0

    const v1, 0xffd8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lbce;->a(Ld9e;)I

    move-result v0

    iput v0, p0, Lbce;->d:I

    const v1, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lbce;->a:Lu4h;

    invoke-virtual {v0, v3}, Lu4h;->i(I)V

    invoke-virtual {v0}, Lu4h;->n()[B

    move-result-object v1

    move-object v4, p1

    check-cast v4, Lm8e;

    invoke-virtual {v4, v1, v2, v3, v2}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v0}, Lu4h;->K()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v4, v0, v2}, Lm8e;->k(IZ)Z

    invoke-direct {p0, p1}, Lbce;->a(Ld9e;)I

    move-result v0

    iput v0, p0, Lbce;->d:I

    :cond_1
    const v1, 0xffe1

    if-ne v0, v1, :cond_2

    check-cast p1, Lm8e;

    invoke-virtual {p1, v3, v2}, Lm8e;->k(IZ)Z

    iget-object p0, p0, Lbce;->a:Lu4h;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lu4h;->i(I)V

    invoke-virtual {p0}, Lu4h;->n()[B

    move-result-object v1

    invoke-virtual {p1, v1, v2, v0, v2}, Lm8e;->e([BIIZ)Z

    invoke-virtual {p0}, Lu4h;->O()J

    move-result-wide v0

    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    cmp-long p1, v0, v3

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lu4h;->K()I

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public final f(Lf9e;)V
    .locals 0

    iput-object p1, p0, Lbce;->b:Lf9e;

    return-void
.end method

.method public final synthetic zzc()Lc9e;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method
