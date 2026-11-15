.class public final Lgle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhle;


# static fields
.field public static final m:[I

.field public static final n:[I


# instance fields
.field public final a:Lf9e;

.field public final b:Lrae;

.field public final c:Lmle;

.field public final d:I

.field public final e:[B

.field public final f:Lu4h;

.field public final g:I

.field public final h:Lerj;

.field public i:I

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lgle;->m:[I

    const/16 v0, 0x59

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lgle;->n:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_1
    .array-data 4
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x10
        0x11
        0x13
        0x15
        0x17
        0x19
        0x1c
        0x1f
        0x22
        0x25
        0x29
        0x2d
        0x32
        0x37
        0x3c
        0x42
        0x49
        0x50
        0x58
        0x61
        0x6b
        0x76
        0x82
        0x8f
        0x9d
        0xad
        0xbe
        0xd1
        0xe6
        0xfd
        0x117
        0x133
        0x151
        0x173
        0x198
        0x1c1
        0x1ee
        0x220
        0x256
        0x292
        0x2d4
        0x31c
        0x36c
        0x3c3
        0x424
        0x48e
        0x502
        0x583
        0x610
        0x6ab
        0x756
        0x812
        0x8e0
        0x9c3
        0xabd
        0xbd0
        0xcff
        0xe4c
        0xfba
        0x114c
        0x1307
        0x14ee
        0x1706
        0x1954
        0x1bdc
        0x1ea5
        0x21b6
        0x2515
        0x28ca
        0x2cdf
        0x315b
        0x364b
        0x3bb9
        0x41b2
        0x4844
        0x4f7e
        0x5771
        0x602f
        0x69ce
        0x7462
        0x7fff
    .end array-data
.end method

.method public constructor <init>(Lf9e;Lrae;Lmle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgle;->a:Lf9e;

    iput-object p2, p0, Lgle;->b:Lrae;

    iput-object p3, p0, Lgle;->c:Lmle;

    iget p1, p3, Lmle;->c:I

    div-int/lit8 p1, p1, 0xa

    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lgle;->g:I

    new-instance v0, Lu4h;

    iget-object v1, p3, Lmle;->f:[B

    invoke-direct {v0, v1}, Lu4h;-><init>([B)V

    invoke-virtual {v0}, Lu4h;->E()I

    invoke-virtual {v0}, Lu4h;->E()I

    move-result v0

    iput v0, p0, Lgle;->d:I

    iget v1, p3, Lmle;->b:I

    mul-int/lit8 v2, v1, 0x4

    iget v3, p3, Lmle;->d:I

    sub-int v2, v3, v2

    iget v4, p3, Lmle;->e:I

    mul-int/2addr v4, v1

    mul-int/lit8 v2, v2, 0x8

    div-int/2addr v2, v4

    add-int/2addr v2, p2

    if-ne v0, v2, :cond_0

    sget p2, Lkfh;->a:I

    add-int p2, p1, v0

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, v0

    mul-int/2addr v3, p2

    new-array v2, v3, [B

    iput-object v2, p0, Lgle;->e:[B

    new-instance v2, Lu4h;

    add-int v3, v0, v0

    mul-int/2addr v3, v1

    mul-int/2addr p2, v3

    invoke-direct {v2, p2}, Lu4h;-><init>(I)V

    iput-object v2, p0, Lgle;->f:Lu4h;

    iget p2, p3, Lmle;->c:I

    iget v2, p3, Lmle;->d:I

    mul-int/2addr p2, v2

    mul-int/lit8 p2, p2, 0x8

    div-int/2addr p2, v0

    new-instance v0, Lgpj;

    invoke-direct {v0}, Lgpj;-><init>()V

    const-string v2, "audio/raw"

    invoke-virtual {v0, v2}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {v0, p2}, Lgpj;->a(I)Lgpj;

    invoke-virtual {v0, p2}, Lgpj;->y(I)Lgpj;

    add-int/2addr p1, p1

    mul-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lgpj;->t(I)Lgpj;

    iget p1, p3, Lmle;->b:I

    invoke-virtual {v0, p1}, Lgpj;->b(I)Lgpj;

    iget p1, p3, Lmle;->c:I

    invoke-virtual {v0, p1}, Lgpj;->F(I)Lgpj;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lgpj;->x(I)Lgpj;

    invoke-virtual {v0}, Lgpj;->K()Lerj;

    move-result-object p1

    iput-object p1, p0, Lgle;->h:Lerj;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected frames per block: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lgle;->i:I

    iput-wide p1, p0, Lgle;->j:J

    iput v0, p0, Lgle;->k:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lgle;->l:J

    return-void
.end method

.method public final b(IJ)V
    .locals 8

    new-instance v7, Lple;

    iget-object v1, p0, Lgle;->c:Lmle;

    iget v2, p0, Lgle;->d:I

    int-to-long v3, p1

    move-object v0, v7

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lple;-><init>(Lmle;IJJ)V

    iget-object p1, p0, Lgle;->a:Lf9e;

    invoke-interface {p1, v7}, Lf9e;->i(Lkae;)V

    iget-object p1, p0, Lgle;->b:Lrae;

    iget-object p0, p0, Lgle;->h:Lerj;

    invoke-interface {p1, p0}, Lrae;->f(Lerj;)V

    invoke-virtual {v7}, Lple;->zza()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lrae;->c(J)V

    return-void
.end method

.method public final c(Ld9e;J)Z
    .locals 25

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    iget v3, v0, Lgle;->k:I

    invoke-virtual {v0, v3}, Lgle;->d(I)I

    move-result v3

    iget v4, v0, Lgle;->g:I

    sub-int v3, v4, v3

    sget v5, Lkfh;->a:I

    iget v5, v0, Lgle;->d:I

    add-int/2addr v3, v5

    const/4 v6, -0x1

    add-int/2addr v3, v6

    div-int/2addr v3, v5

    iget-object v7, v0, Lgle;->c:Lmle;

    iget v8, v7, Lmle;->d:I

    mul-int/2addr v3, v8

    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    const/4 v11, 0x1

    if-nez v9, :cond_0

    :goto_0
    move v9, v11

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_2

    iget v12, v0, Lgle;->i:I

    if-ge v12, v3, :cond_2

    sub-int v12, v3, v12

    int-to-long v12, v12

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    iget-object v13, v0, Lgle;->e:[B

    iget v14, v0, Lgle;->i:I

    move-object/from16 v15, p1

    invoke-interface {v15, v13, v14, v12}, Ld9e;->b([BII)I

    move-result v12

    if-ne v12, v6, :cond_1

    goto :goto_0

    :cond_1
    iget v13, v0, Lgle;->i:I

    add-int/2addr v13, v12

    iput v13, v0, Lgle;->i:I

    goto :goto_1

    :cond_2
    iget v1, v0, Lgle;->i:I

    div-int/2addr v1, v8

    if-lez v1, :cond_8

    iget-object v2, v0, Lgle;->e:[B

    iget-object v3, v0, Lgle;->f:Lu4h;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_7

    const/4 v12, 0x0

    :goto_3
    iget v13, v7, Lmle;->b:I

    if-ge v12, v13, :cond_6

    invoke-virtual {v3}, Lu4h;->n()[B

    move-result-object v14

    mul-int v15, v6, v8

    div-int v16, v8, v13

    add-int/lit8 v16, v16, -0x4

    mul-int/lit8 v17, v12, 0x4

    add-int v15, v15, v17

    add-int/lit8 v17, v15, 0x1

    aget-byte v10, v2, v17

    and-int/lit16 v10, v10, 0xff

    aget-byte v11, v2, v15

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v18, v15, 0x2

    move-object/from16 v19, v7

    aget-byte v7, v2, v18

    and-int/lit16 v7, v7, 0xff

    move/from16 v18, v9

    const/16 v9, 0x58

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget-object v20, Lgle;->n:[I

    aget v21, v20, v7

    mul-int v22, v6, v5

    mul-int v22, v22, v13

    add-int v22, v22, v12

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v10, v11

    int-to-short v10, v10

    and-int/lit16 v11, v10, 0xff

    add-int v22, v22, v22

    int-to-byte v11, v11

    aput-byte v11, v14, v22

    const/4 v11, 0x1

    add-int/lit8 v23, v22, 0x1

    shr-int/lit8 v11, v10, 0x8

    int-to-byte v11, v11

    aput-byte v11, v14, v23

    const/4 v11, 0x0

    :goto_4
    add-int v9, v16, v16

    if-ge v11, v9, :cond_5

    mul-int/lit8 v9, v13, 0x4

    add-int/2addr v9, v15

    div-int/lit8 v23, v11, 0x8

    div-int/lit8 v24, v11, 0x2

    rem-int/lit8 v24, v24, 0x4

    mul-int v23, v23, v13

    mul-int/lit8 v23, v23, 0x4

    add-int v9, v9, v23

    add-int v9, v9, v24

    aget-byte v9, v2, v9

    move-object/from16 v23, v2

    and-int/lit16 v2, v9, 0xff

    rem-int/lit8 v24, v11, 0x2

    if-nez v24, :cond_3

    and-int/lit8 v2, v9, 0xf

    goto :goto_5

    :cond_3
    shr-int/lit8 v2, v2, 0x4

    :goto_5
    and-int/lit8 v9, v2, 0x7

    add-int/2addr v9, v9

    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    mul-int v9, v9, v21

    and-int/lit8 v21, v2, 0x8

    shr-int/lit8 v9, v9, 0x3

    if-eqz v21, :cond_4

    neg-int v9, v9

    :cond_4
    add-int/2addr v10, v9

    const/16 v9, 0x7fff

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/16 v10, -0x8000

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v9, v13, v13

    add-int v22, v22, v9

    and-int/lit16 v9, v10, 0xff

    int-to-byte v9, v9

    aput-byte v9, v14, v22

    const/4 v9, 0x1

    add-int/lit8 v17, v22, 0x1

    shr-int/lit8 v9, v10, 0x8

    int-to-byte v9, v9

    aput-byte v9, v14, v17

    sget-object v9, Lgle;->m:[I

    aget v2, v9, v2

    add-int/2addr v7, v2

    const/16 v2, 0x58

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v9, 0x0

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aget v21, v20, v7

    const/16 v17, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v23

    goto :goto_4

    :cond_5
    move-object/from16 v23, v2

    const/4 v9, 0x0

    const/16 v17, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v17

    move/from16 v9, v18

    move-object/from16 v7, v19

    goto/16 :goto_3

    :cond_6
    move-object/from16 v23, v2

    move-object/from16 v19, v7

    move/from16 v18, v9

    move/from16 v17, v11

    const/4 v9, 0x0

    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v18

    goto/16 :goto_2

    :cond_7
    move/from16 v18, v9

    const/4 v9, 0x0

    mul-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lgle;->e(I)I

    move-result v2

    invoke-virtual {v3, v9}, Lu4h;->l(I)V

    invoke-virtual {v3, v2}, Lu4h;->k(I)V

    iget v2, v0, Lgle;->i:I

    mul-int/2addr v1, v8

    sub-int/2addr v2, v1

    iput v2, v0, Lgle;->i:I

    invoke-virtual {v3}, Lu4h;->x()I

    move-result v1

    iget-object v2, v0, Lgle;->b:Lrae;

    invoke-interface {v2, v3, v1}, Lrae;->d(Lu4h;I)V

    iget v2, v0, Lgle;->k:I

    add-int/2addr v2, v1

    iput v2, v0, Lgle;->k:I

    invoke-virtual {v0, v2}, Lgle;->d(I)I

    move-result v1

    if-lt v1, v4, :cond_9

    invoke-virtual {v0, v4}, Lgle;->f(I)V

    goto :goto_6

    :cond_8
    move/from16 v18, v9

    :cond_9
    :goto_6
    if-eqz v18, :cond_a

    iget v1, v0, Lgle;->k:I

    invoke-virtual {v0, v1}, Lgle;->d(I)I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v0, v1}, Lgle;->f(I)V

    :cond_a
    return v18
.end method

.method public final d(I)I
    .locals 0

    iget-object p0, p0, Lgle;->c:Lmle;

    iget p0, p0, Lmle;->b:I

    add-int/2addr p0, p0

    div-int/2addr p1, p0

    return p1
.end method

.method public final e(I)I
    .locals 0

    iget-object p0, p0, Lgle;->c:Lmle;

    add-int/2addr p1, p1

    iget p0, p0, Lmle;->b:I

    mul-int/2addr p1, p0

    return p1
.end method

.method public final f(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lgle;->c:Lmle;

    iget v1, v1, Lmle;->c:I

    int-to-long v6, v1

    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    iget-wide v9, v0, Lgle;->j:J

    iget-wide v2, v0, Lgle;->l:J

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v8}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    add-long v12, v9, v1

    invoke-virtual/range {p0 .. p1}, Lgle;->e(I)I

    move-result v1

    iget v2, v0, Lgle;->k:I

    sub-int v16, v2, v1

    iget-object v11, v0, Lgle;->b:Lrae;

    const/4 v14, 0x1

    const/16 v17, 0x0

    move v15, v1

    invoke-interface/range {v11 .. v17}, Lrae;->g(JIIILqae;)V

    iget-wide v2, v0, Lgle;->l:J

    move/from16 v4, p1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lgle;->l:J

    iget v2, v0, Lgle;->k:I

    sub-int/2addr v2, v1

    iput v2, v0, Lgle;->k:I

    return-void
.end method
