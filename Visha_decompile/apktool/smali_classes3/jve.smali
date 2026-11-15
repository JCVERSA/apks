.class public abstract Ljve;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(JI)J
    .locals 6

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return-wide p0

    :cond_0
    mul-long v1, p0, p0

    shr-int/lit8 v3, p2, 0x1

    and-int/2addr p2, v0

    const-wide/32 v4, 0x4000ffff

    rem-long/2addr v1, v4

    if-nez p2, :cond_1

    invoke-static {v1, v2, v3}, Ljve;->a(JI)J

    move-result-wide p0

    :goto_0
    rem-long/2addr p0, v4

    return-wide p0

    :cond_1
    invoke-static {v1, v2, v3}, Ljve;->a(JI)J

    move-result-wide v0

    rem-long/2addr v0, v4

    mul-long/2addr p0, v0

    goto :goto_0
.end method

.method public static b([Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Unable to construct shingle"

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/lit8 v1, p2, -0x1

    if-ge p1, v1, :cond_1

    aget-object v1, p0, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c([Ljava/lang/String;IILjava/util/PriorityQueue;)V
    .locals 17

    move-object/from16 v0, p0

    array-length v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge v4, v2, :cond_0

    invoke-static {v0, v1, v4}, Ljve;->e([Ljava/lang/String;II)J

    move-result-wide v2

    invoke-static {v0, v1, v4}, Ljve;->b([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p1

    move-wide v1, v2

    move-object v3, v5

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v5}, Ljve;->d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    return-void

    :cond_0
    invoke-static {v0, v1, v2}, Ljve;->e([Ljava/lang/String;II)J

    move-result-wide v3

    invoke-static {v0, v1, v2}, Ljve;->b([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    move/from16 v6, p1

    move-wide v7, v3

    move-object/from16 v11, p3

    invoke-static/range {v6 .. v11}, Ljve;->d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    const/4 v1, 0x1

    :goto_0
    array-length v9, v0

    add-int/lit8 v5, v9, -0x5

    if-ge v1, v5, :cond_1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Lgve;->a(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v6, v1, 0x5

    aget-object v6, v0, v6

    invoke-static {v6}, Lgve;->a(Ljava/lang/String;)I

    move-result v6

    int-to-long v7, v5

    const-wide/32 v10, 0x4000ffff

    add-long/2addr v3, v10

    int-to-long v5, v6

    invoke-static {v0, v1, v2}, Ljve;->b([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    const-wide/32 v13, 0x7fffffff

    add-long/2addr v5, v13

    add-long/2addr v7, v13

    const-wide/32 v13, 0x1001fff

    const/4 v15, 0x5

    invoke-static {v13, v14, v15}, Ljve;->a(JI)J

    move-result-wide v15

    rem-long/2addr v7, v10

    mul-long/2addr v15, v7

    rem-long/2addr v15, v10

    sub-long/2addr v3, v15

    rem-long/2addr v3, v10

    mul-long/2addr v3, v13

    rem-long/2addr v3, v10

    rem-long/2addr v5, v10

    add-long/2addr v3, v5

    rem-long/2addr v3, v10

    move/from16 v5, p1

    move-wide v6, v3

    move-object v8, v12

    move-object/from16 v10, p3

    invoke-static/range {v5 .. v10}, Ljve;->d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static d(IJLjava/lang/String;ILjava/util/PriorityQueue;)V
    .locals 1

    new-instance v0, Live;

    invoke-direct {v0, p1, p2, p3, p4}, Live;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    if-ne p1, p0, :cond_0

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Live;

    iget p1, p1, Live;->c:I

    iget p2, v0, Live;->c:I

    if-gt p1, p2, :cond_2

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Live;

    iget-wide p1, p1, Live;->a:J

    iget-wide p3, v0, Live;->a:J

    cmp-long p1, p1, p3

    if-gtz p1, :cond_2

    :cond_0
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p5, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->size()I

    move-result p1

    if-le p1, p0, :cond_2

    invoke-virtual {p5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static e([Ljava/lang/String;II)J
    .locals 8

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-static {p1}, Lgve;->a(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    const-wide/32 v2, 0x7fffffff

    add-long/2addr v0, v2

    const-wide/32 v4, 0x4000ffff

    rem-long/2addr v0, v4

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p2, :cond_0

    const-wide/32 v6, 0x1001fff

    mul-long/2addr v0, v6

    rem-long/2addr v0, v4

    aget-object v6, p0, p1

    invoke-static {v6}, Lgve;->a(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    rem-long/2addr v6, v4

    add-long/2addr v0, v6

    rem-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method
