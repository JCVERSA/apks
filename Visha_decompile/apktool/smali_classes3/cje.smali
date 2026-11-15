.class public final Lcje;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc9e;


# instance fields
.field public final a:Lfje;

.field public final b:Lu4h;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfje;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "audio/ac4"

    invoke-direct {v0, v1, v2, v3}, Lfje;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcje;->a:Lfje;

    new-instance v0, Lu4h;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lu4h;-><init>(I)V

    iput-object v0, p0, Lcje;->b:Lu4h;

    return-void
.end method


# virtual methods
.method public final b(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcje;->c:Z

    iget-object p0, p0, Lcje;->a:Lfje;

    invoke-virtual {p0}, Lfje;->zze()V

    return-void
.end method

.method public final d(Ld9e;Ly9e;)I
    .locals 4

    iget-object p2, p0, Lcje;->b:Lu4h;

    invoke-virtual {p2}, Lu4h;->n()[B

    move-result-object v0

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Ld9e;->b([BII)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, v2}, Lu4h;->l(I)V

    invoke-virtual {p2, p1}, Lu4h;->k(I)V

    iget-boolean p1, p0, Lcje;->c:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcje;->a:Lfje;

    const-wide/16 v0, 0x0

    const/4 v3, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lfje;->b(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcje;->c:Z

    :cond_1
    iget-object p0, p0, Lcje;->a:Lfje;

    invoke-virtual {p0, p2}, Lfje;->a(Lu4h;)V

    return v2
.end method

.method public final e(Ld9e;)Z
    .locals 16

    const/4 v0, 0x2

    const/4 v1, 0x1

    new-instance v2, Lu4h;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lu4h;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v6

    move-object/from16 v7, p1

    check-cast v7, Lm8e;

    invoke-virtual {v7, v6, v4, v3, v4}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v2, v4}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->I()I

    move-result v6

    const v8, 0x494433

    const/4 v9, 0x3

    if-eq v6, v8, :cond_7

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    move-object/from16 v6, p1

    check-cast v6, Lm8e;

    invoke-virtual {v6, v5, v4}, Lm8e;->k(IZ)Z

    move v3, v4

    move v7, v5

    :goto_1
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v8

    const/4 v10, 0x7

    invoke-virtual {v6, v8, v4, v10, v4}, Lm8e;->e([BIIZ)Z

    invoke-virtual {v2, v4}, Lu4h;->l(I)V

    invoke-virtual {v2}, Lu4h;->K()I

    move-result v8

    const v11, 0xac40

    const v12, 0xac41

    if-eq v8, v11, :cond_1

    if-eq v8, v12, :cond_1

    invoke-interface/range {p1 .. p1}, Ld9e;->zzj()V

    add-int/2addr v7, v1

    sub-int v3, v7, v5

    const/16 v8, 0x2000

    if-ge v3, v8, :cond_0

    invoke-virtual {v6, v7, v4}, Lm8e;->k(IZ)Z

    move v3, v4

    goto :goto_1

    :cond_0
    return v4

    :cond_1
    add-int/2addr v3, v1

    const/4 v11, 0x4

    if-lt v3, v11, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lu4h;->n()[B

    move-result-object v13

    sget-object v14, La8e;->a:[I

    array-length v14, v13

    const/4 v15, -0x1

    if-ge v14, v10, :cond_3

    move v1, v15

    goto :goto_3

    :cond_3
    aget-byte v14, v13, v0

    and-int/lit16 v14, v14, 0xff

    aget-byte v1, v13, v9

    shl-int/lit8 v14, v14, 0x8

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v14

    const v14, 0xffff

    if-ne v1, v14, :cond_4

    aget-byte v1, v13, v11

    and-int/lit16 v1, v1, 0xff

    const/4 v11, 0x5

    aget-byte v11, v13, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 v11, v11, 0x8

    const/4 v14, 0x6

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v1, v11

    or-int/2addr v1, v13

    goto :goto_2

    :cond_4
    move v10, v11

    :goto_2
    if-ne v8, v12, :cond_5

    add-int/2addr v10, v0

    :cond_5
    add-int/2addr v1, v10

    :goto_3
    if-ne v1, v15, :cond_6

    return v4

    :cond_6
    add-int/lit8 v1, v1, -0x7

    invoke-virtual {v6, v1, v4}, Lm8e;->k(IZ)Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v9}, Lu4h;->m(I)V

    invoke-virtual {v2}, Lu4h;->F()I

    move-result v1

    add-int/lit8 v6, v1, 0xa

    add-int/2addr v5, v6

    invoke-virtual {v7, v1, v4}, Lm8e;->k(IZ)Z

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public final f(Lf9e;)V
    .locals 4

    new-instance v0, Lcle;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Lcle;-><init>(III)V

    iget-object p0, p0, Lcje;->a:Lfje;

    invoke-virtual {p0, p1, v0}, Lfje;->c(Lf9e;Lcle;)V

    invoke-interface {p1}, Lf9e;->zzG()V

    new-instance p0, Ljae;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Ljae;-><init>(JJ)V

    invoke-interface {p1, p0}, Lf9e;->i(Lkae;)V

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
