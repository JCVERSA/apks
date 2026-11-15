.class public abstract Lb9e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I

.field public static final g:[I

.field public static final h:[I

.field public static final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/16 v5, 0x10

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    sput-object v6, Lb9e;->a:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    sput-object v6, Lb9e;->b:[I

    const/16 v6, 0x1d

    new-array v6, v6, [I

    fill-array-data v6, :array_2

    sput-object v6, Lb9e;->c:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_3

    sput-object v6, Lb9e;->d:[I

    const/16 v6, 0xa

    const/16 v7, 0xc

    filled-new-array {v3, v0, v6, v7}, [I

    move-result-object v8

    sput-object v8, Lb9e;->e:[I

    const/16 v8, 0xf

    const/16 v9, 0x9

    filled-new-array {v4, v9, v7, v8}, [I

    move-result-object v8

    sput-object v8, Lb9e;->f:[I

    filled-new-array {v1, v2, v4, v0}, [I

    move-result-object v1

    sput-object v1, Lb9e;->g:[I

    const/16 v1, 0xd

    const/16 v2, 0xb

    filled-new-array {v9, v2, v1, v5}, [I

    move-result-object v1

    sput-object v1, Lb9e;->h:[I

    filled-new-array {v3, v0, v6, v7}, [I

    move-result-object v0

    sput-object v0, Lb9e;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data

    :array_3
    .array-data 4
        0x1f40
        0x3e80
        0x7d00
        0xfa00
        0x1f400
        0x5622
        0xac44
        0x15888
        0x2b110
        0x56220
        0x2ee0
        0x5dc0
        0xbb80
        0x17700
        0x2ee00
        0x5dc00
    .end array-data
.end method

.method public static a([B)I
    .locals 2

    invoke-static {p0}, Lb9e;->g([B)Lp3h;

    move-result-object p0

    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Lp3h;->n(I)V

    invoke-virtual {p0}, Lp3h;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    invoke-virtual {p0, v0}, Lp3h;->d(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static b([B)I
    .locals 2

    invoke-static {p0}, Lb9e;->g([B)Lp3h;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lp3h;->n(I)V

    sget-object v0, Lb9e;->i:[I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lb9e;->f(Lp3h;[IZ)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public static c([BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzs;)Lerj;
    .locals 3

    invoke-static {p0}, Lb9e;->g([B)Lp3h;

    move-result-object p0

    const/16 p4, 0x3c

    invoke-virtual {p0, p4}, Lp3h;->n(I)V

    const/4 p4, 0x6

    invoke-virtual {p0, p4}, Lp3h;->d(I)I

    move-result p4

    sget-object p5, Lb9e;->a:[I

    aget p4, p5, p4

    const/4 p5, 0x4

    invoke-virtual {p0, p5}, Lp3h;->d(I)I

    move-result p5

    sget-object v0, Lb9e;->b:[I

    aget p5, v0, p5

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lp3h;->d(I)I

    move-result v0

    const/16 v1, 0x1d

    const/4 v2, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lb9e;->c:[I

    aget v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, v2

    :goto_0
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lp3h;->n(I)V

    invoke-virtual {p0, v2}, Lp3h;->d(I)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    add-int/2addr p4, p0

    new-instance p0, Lgpj;

    invoke-direct {p0}, Lgpj;-><init>()V

    invoke-virtual {p0, p1}, Lgpj;->o(Ljava/lang/String;)Lgpj;

    const-string p1, "video/mp2t"

    invoke-virtual {p0, p1}, Lgpj;->e(Ljava/lang/String;)Lgpj;

    const-string p1, "audio/vnd.dts"

    invoke-virtual {p0, p1}, Lgpj;->E(Ljava/lang/String;)Lgpj;

    invoke-virtual {p0, v0}, Lgpj;->a(I)Lgpj;

    invoke-virtual {p0, p4}, Lgpj;->b(I)Lgpj;

    invoke-virtual {p0, p5}, Lgpj;->F(I)Lgpj;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lgpj;->h(Lcom/google/android/gms/internal/ads/zzs;)Lgpj;

    invoke-virtual {p0, p2}, Lgpj;->s(Ljava/lang/String;)Lgpj;

    invoke-virtual {p0, p3}, Lgpj;->C(I)Lgpj;

    invoke-virtual {p0}, Lgpj;->K()Lerj;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Lu8e;
    .locals 17

    invoke-static/range {p0 .. p0}, Lb9e;->g([B)Lp3h;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lp3h;->n(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lp3h;->d(I)I

    move-result v2

    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/16 v5, 0x10

    goto :goto_0

    :cond_0
    const/16 v5, 0x14

    :goto_0
    const/16 v6, 0xc

    const/16 v7, 0x8

    if-eq v4, v3, :cond_1

    move v3, v7

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    invoke-virtual {v0, v3}, Lp3h;->n(I)V

    invoke-virtual {v0, v5}, Lp3h;->d(I)I

    move-result v3

    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v3

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v0, v1}, Lp3h;->d(I)I

    move-result v10

    const/4 v11, 0x3

    invoke-virtual {v0, v11}, Lp3h;->d(I)I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v14

    if-eqz v14, :cond_2

    const/16 v14, 0x24

    invoke-virtual {v0, v14}, Lp3h;->n(I)V

    :cond_2
    invoke-virtual {v0, v11}, Lp3h;->d(I)I

    move-result v14

    add-int/2addr v14, v4

    invoke-virtual {v0, v11}, Lp3h;->d(I)I

    move-result v11

    add-int/2addr v11, v4

    if-ne v14, v4, :cond_6

    if-ne v11, v4, :cond_6

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lp3h;->d(I)I

    move-result v11

    move v14, v9

    :goto_2
    if-ge v14, v2, :cond_4

    shr-int v15, v11, v14

    and-int/2addr v15, v4

    if-ne v15, v4, :cond_3

    invoke-virtual {v0, v7}, Lp3h;->n(I)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_4
    mul-int/lit16 v13, v13, 0x200

    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Lp3h;->n(I)V

    invoke-virtual {v0, v1}, Lp3h;->d(I)I

    move-result v2

    add-int/2addr v2, v4

    shl-int/2addr v2, v1

    invoke-virtual {v0, v1}, Lp3h;->d(I)I

    move-result v11

    add-int/2addr v11, v4

    :goto_3
    if-ge v9, v11, :cond_5

    invoke-virtual {v0, v2}, Lp3h;->n(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    move v9, v13

    goto :goto_4

    :cond_6
    const-string v0, "Multiple audio presentations or assets not supported"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_7
    move v10, v8

    :goto_4
    invoke-virtual {v0, v5}, Lp3h;->n(I)V

    invoke-virtual {v0, v6}, Lp3h;->n(I)V

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v2

    const/4 v5, 0x4

    if-eqz v2, :cond_8

    invoke-virtual {v0, v5}, Lp3h;->n(I)V

    :cond_8
    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lp3h;->n(I)V

    :cond_9
    invoke-virtual {v0}, Lp3h;->p()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lp3h;->d(I)I

    move-result v2

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lp3h;->o(I)V

    :cond_a
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lp3h;->n(I)V

    sget-object v2, Lb9e;->d:[I

    invoke-virtual {v0, v5}, Lp3h;->d(I)I

    move-result v5

    aget v2, v2, v5

    invoke-virtual {v0, v7}, Lp3h;->d(I)I

    move-result v0

    add-int/2addr v0, v4

    move v11, v2

    goto :goto_5

    :cond_b
    const v0, -0x7fffffff

    move v11, v0

    move v0, v8

    :goto_5
    if-eqz v3, :cond_f

    if-eqz v10, :cond_e

    if-eq v10, v4, :cond_d

    if-ne v10, v1, :cond_c

    const v1, 0xbb80

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported reference clock code in DTS HD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_d
    const v1, 0xac44

    goto :goto_6

    :cond_e
    const/16 v1, 0x7d00

    :goto_6
    int-to-long v2, v9

    int-to-long v6, v1

    sget-object v8, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v8}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    :goto_7
    move-wide v13, v1

    goto :goto_8

    :cond_f
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_7

    :goto_8
    new-instance v1, Lu8e;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    move-object v8, v1

    move v10, v0

    invoke-direct/range {v8 .. v16}, Lu8e;-><init>(Ljava/lang/String;IIIJILa9e;)V

    return-object v1
.end method

.method public static e([BLjava/util/concurrent/atomic/AtomicInteger;)Lu8e;
    .locals 19

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lb9e;->g([B)Lp3h;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lp3h;->d(I)I

    move-result v2

    sget-object v3, Lb9e;->e:[I

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lb9e;->f(Lp3h;[IZ)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    const v6, 0x40411bf2

    const/4 v7, 0x0

    if-ne v2, v6, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v3, -0x1

    aget-byte v8, v0, v6

    shl-int/lit8 v8, v8, 0x8

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    const v9, 0xffff

    invoke-static {v0, v7, v6, v9}, Lkfh;->z([BIII)I

    move-result v0

    int-to-char v6, v8

    or-int/2addr v3, v6

    const/4 v6, 0x0

    if-ne v3, v0, :cond_8

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lp3h;->d(I)I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_2

    if-ne v3, v0, :cond_1

    const/16 v3, 0x180

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported base duration index in DTS UHD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_2
    const/16 v3, 0x1e0

    goto :goto_1

    :cond_3
    const/16 v3, 0x200

    :goto_1
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Lp3h;->d(I)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v1, v0}, Lp3h;->d(I)I

    move-result v9

    if-eqz v9, :cond_6

    if-eq v9, v4, :cond_5

    if-ne v9, v0, :cond_4

    const v6, 0xbb80

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported clock rate index in DTS UHD header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_5
    const v6, 0xac44

    goto :goto_2

    :cond_6
    const/16 v6, 0x7d00

    :goto_2
    invoke-virtual {v1}, Lp3h;->p()Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x24

    invoke-virtual {v1, v9}, Lp3h;->n(I)V

    :cond_7
    mul-int/2addr v3, v8

    invoke-virtual {v1, v0}, Lp3h;->d(I)I

    move-result v0

    shl-int v0, v4, v0

    mul-int/2addr v0, v6

    int-to-long v12, v6

    int-to-long v8, v3

    const-wide/32 v10, 0xf4240

    sget-object v14, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v8 .. v14}, Lkfh;->P(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    :goto_3
    move v13, v0

    move-wide v15, v8

    goto :goto_4

    :cond_8
    const-string v0, "CRC check failed"

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_9
    const-string v0, "Only supports full channel mask-based audio presentation"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object v0

    throw v0

    :cond_a
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const v0, -0x7fffffff

    goto :goto_3

    :goto_4
    move v0, v7

    move v3, v0

    :goto_5
    if-ge v0, v2, :cond_b

    sget-object v0, Lb9e;->f:[I

    invoke-static {v1, v0, v4}, Lb9e;->f(Lp3h;[IZ)I

    move-result v0

    add-int/2addr v3, v0

    move v0, v4

    goto :goto_5

    :cond_b
    move v0, v7

    :goto_6
    if-gtz v0, :cond_e

    if-eqz v2, :cond_c

    sget-object v6, Lb9e;->g:[I

    invoke-static {v1, v6, v4}, Lb9e;->f(Lp3h;[IZ)I

    move-result v6

    move-object/from16 v8, p1

    invoke-virtual {v8, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_7

    :cond_c
    move-object/from16 v8, p1

    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Lb9e;->h:[I

    invoke-static {v1, v6, v4}, Lb9e;->f(Lp3h;[IZ)I

    move-result v6

    goto :goto_8

    :cond_d
    move v6, v7

    :goto_8
    add-int/2addr v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_e
    add-int v14, v5, v3

    new-instance v0, Lu8e;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v11, "audio/vnd.dts.uhd;profile=p2"

    const/4 v12, 0x2

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lu8e;-><init>(Ljava/lang/String;IIIJILa9e;)V

    return-object v0
.end method

.method public static f(Lp3h;[IZ)I
    .locals 4

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lp3h;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_1
    if-ge p2, v1, :cond_1

    aget v2, p1, p2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    add-int/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    aget p1, p1, v1

    invoke-virtual {p0, p1}, Lp3h;->d(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static g([B)Lp3h;
    .locals 6

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    const/16 v2, 0x40

    if-eq v1, v2, :cond_4

    const/16 v2, 0x71

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_1

    const/16 v2, -0xe

    if-eq v1, v2, :cond_1

    const/16 v2, -0x18

    if-ne v1, v2, :cond_2

    :cond_1
    move v1, v0

    :goto_0
    array-length v2, p0

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p0, v4

    aput-byte v5, p0, v1

    aput-byte v2, p0, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    new-instance v1, Lp3h;

    array-length v2, p0

    invoke-direct {v1, p0, v2}, Lp3h;-><init>([BI)V

    aget-byte v0, p0, v0

    const/16 v3, 0x1f

    if-ne v0, v3, :cond_3

    new-instance v0, Lp3h;

    invoke-direct {v0, p0, v2}, Lp3h;-><init>([BI)V

    :goto_1
    invoke-virtual {v0}, Lp3h;->a()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lp3h;->n(I)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lp3h;->d(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lp3h;->g(II)V

    goto :goto_1

    :cond_3
    array-length v0, p0

    invoke-virtual {v1, p0, v0}, Lp3h;->k([BI)V

    return-object v1

    :cond_4
    :goto_2
    new-instance v0, Lp3h;

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lp3h;-><init>([BI)V

    return-object v0
.end method
