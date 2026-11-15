.class public final Lsde;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/ArrayDeque;

.field public final c:Lzde;

.field public d:Ltde;

.field public e:I

.field public f:I

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lsde;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lsde;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lzde;

    invoke-direct {v0}, Lzde;-><init>()V

    iput-object v0, p0, Lsde;->c:Lzde;

    return-void
.end method


# virtual methods
.method public final a(Ltde;)V
    .locals 0

    iput-object p1, p0, Lsde;->d:Ltde;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsde;->e:I

    iget-object v0, p0, Lsde;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, Lsde;->c:Lzde;

    invoke-virtual {p0}, Lzde;->e()V

    return-void
.end method

.method public final c(Ld9e;)Z
    .locals 13

    iget-object v0, p0, Lsde;->d:Ltde;

    invoke-static {v0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lsde;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lode;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v3

    invoke-static {v1}, Lode;->b(Lode;)J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lsde;->d:Ltde;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lode;

    invoke-static {p1}, Lode;->a(Lode;)I

    move-result p1

    check-cast p0, Lude;

    iget-object p0, p0, Lude;->a:Lxde;

    invoke-virtual {p0, p1}, Lxde;->h(I)V

    return v2

    :cond_1
    :goto_1
    iget v1, p0, Lsde;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lsde;->c:Lzde;

    invoke-virtual {v1, p1, v2, v4, v3}, Lzde;->d(Ld9e;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    invoke-interface {p1}, Ld9e;->zzj()V

    :goto_2
    iget-object v1, p0, Lsde;->a:[B

    invoke-interface {p1, v1, v4, v3}, Ld9e;->i([BII)V

    aget-byte v5, v1, v4

    invoke-static {v5}, Lzde;->b(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-gt v5, v3, :cond_3

    invoke-static {v1, v5, v4}, Lzde;->c([BIZ)J

    move-result-wide v6

    long-to-int v1, v6

    iget-object v6, p0, Lsde;->d:Ltde;

    check-cast v6, Lude;

    iget-object v6, v6, Lude;->a:Lxde;

    const v6, 0x1549a966

    if-eq v1, v6, :cond_2

    const v6, 0x1f43b675

    if-eq v1, v6, :cond_2

    const v6, 0x1c53bb6b

    if-eq v1, v6, :cond_2

    const v6, 0x1654ae6b

    if-ne v1, v6, :cond_3

    move v1, v6

    :cond_2
    invoke-interface {p1, v5}, Ld9e;->f(I)V

    int-to-long v5, v1

    goto :goto_3

    :cond_3
    invoke-interface {p1, v2}, Ld9e;->f(I)V

    goto :goto_2

    :cond_4
    :goto_3
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_5

    return v4

    :cond_5
    long-to-int v1, v5

    iput v1, p0, Lsde;->f:I

    iput v2, p0, Lsde;->e:I

    goto :goto_4

    :cond_6
    if-ne v1, v2, :cond_7

    :goto_4
    iget-object v1, p0, Lsde;->c:Lzde;

    const/16 v5, 0x8

    invoke-virtual {v1, p1, v4, v2, v5}, Lzde;->d(Ld9e;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lsde;->g:J

    const/4 v1, 0x2

    iput v1, p0, Lsde;->e:I

    :cond_7
    iget-object v1, p0, Lsde;->d:Ltde;

    iget v5, p0, Lsde;->f:I

    check-cast v1, Lude;

    iget-object v1, v1, Lude;->a:Lxde;

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_0

    iget-wide v0, p0, Lsde;->g:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ld9e;->f(I)V

    iput v4, p0, Lsde;->e:I

    goto/16 :goto_0

    :sswitch_0
    iget-wide v9, p0, Lsde;->g:J

    const-wide/16 v11, 0x4

    cmp-long v0, v9, v11

    if-eqz v0, :cond_9

    cmp-long v0, v9, v6

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid float size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :cond_9
    :goto_5
    long-to-int v0, v9

    invoke-virtual {p0, p1, v0}, Lsde;->d(Ld9e;I)J

    move-result-wide v6

    if-ne v0, v3, :cond_a

    long-to-int p1, v6

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v6, p1

    goto :goto_6

    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    :goto_6
    invoke-virtual {v1, v5, v6, v7}, Lxde;->i(ID)V

    iput v4, p0, Lsde;->e:I

    return v2

    :sswitch_1
    iget-wide v6, p0, Lsde;->g:J

    long-to-int v0, v6

    invoke-virtual {v1, v5, v0, p1}, Lxde;->g(IILd9e;)V

    iput v4, p0, Lsde;->e:I

    return v2

    :sswitch_2
    invoke-interface {p1}, Ld9e;->zzf()J

    move-result-wide v9

    iget-wide v6, p0, Lsde;->g:J

    add-long/2addr v6, v9

    new-instance p1, Lode;

    invoke-direct {p1, v5, v6, v7, v8}, Lode;-><init>(IJLpde;)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lsde;->d:Ltde;

    iget v7, p0, Lsde;->f:I

    iget-wide v0, p0, Lsde;->g:J

    check-cast p1, Lude;

    iget-object v6, p1, Lude;->a:Lxde;

    move-wide v8, v9

    move-wide v10, v0

    invoke-virtual/range {v6 .. v11}, Lxde;->k(IJJ)V

    iput v4, p0, Lsde;->e:I

    return v2

    :sswitch_3
    iget-wide v6, p0, Lsde;->g:J

    const-wide/32 v9, 0x7fffffff

    cmp-long v0, v6, v9

    if-gtz v0, :cond_d

    long-to-int v0, v6

    if-nez v0, :cond_b

    const-string p1, ""

    goto :goto_8

    :cond_b
    new-array v3, v0, [B

    invoke-interface {p1, v3, v4, v0}, Ld9e;->h([BII)V

    :goto_7
    if-lez v0, :cond_c

    add-int/lit8 p1, v0, -0x1

    aget-byte v6, v3, p1

    if-nez v6, :cond_c

    move v0, p1

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    :goto_8
    invoke-virtual {v1, v5, p1}, Lxde;->l(ILjava/lang/String;)V

    iput v4, p0, Lsde;->e:I

    return v2

    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "String element size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_4
    iget-wide v9, p0, Lsde;->g:J

    cmp-long v0, v9, v6

    if-gtz v0, :cond_e

    long-to-int v0, v9

    invoke-virtual {p0, p1, v0}, Lsde;->d(Ld9e;I)J

    move-result-wide v6

    invoke-virtual {v1, v5, v6, v7}, Lxde;->j(IJ)V

    iput v4, p0, Lsde;->e:I

    return v2

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid integer size: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v8}, Lcom/google/android/gms/internal/ads/zzaz;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaz;

    move-result-object p0

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method public final d(Ld9e;I)J
    .locals 5

    iget-object p0, p0, Lsde;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0, p2}, Ld9e;->h([BII)V

    const-wide/16 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v1, p1

    aget-byte p1, p0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-long v3, p1

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method
