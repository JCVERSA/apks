.class final Lcom/yandex/mobile/ads/impl/bl2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hx1;


# instance fields
.field private final a:J

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JIJJ[J)V
    .locals 0
    .param p8    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/bl2;->a:J

    iput p3, p0, Lcom/yandex/mobile/ads/impl/bl2;->b:I

    iput-wide p4, p0, Lcom/yandex/mobile/ads/impl/bl2;->c:J

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/bl2;->f:[J

    iput-wide p6, p0, Lcom/yandex/mobile/ads/impl/bl2;->d:J

    const-wide/16 p3, -0x1

    cmp-long p5, p6, p3

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    add-long p3, p1, p6

    :goto_0
    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/bl2;->e:J

    return-void
.end method

.method public static a(JJLcom/yandex/mobile/ads/impl/f21$a;Lcom/yandex/mobile/ads/impl/ag1;)Lcom/yandex/mobile/ads/impl/bl2;
    .locals 22
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p4

    .line 1
    iget v3, v2, Lcom/yandex/mobile/ads/impl/f21$a;->g:I

    .line 2
    iget v4, v2, Lcom/yandex/mobile/ads/impl/f21$a;->d:I

    .line 3
    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/ag1;->h()I

    move-result v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 4
    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/ag1;->x()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v7, v6

    int-to-long v9, v3

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    int-to-long v11, v4

    .line 5
    invoke-static/range {v7 .. v12}, Lcom/yandex/mobile/ads/impl/f92;->a(JJJ)J

    move-result-wide v17

    const/4 v3, 0x6

    and-int/lit8 v4, v5, 0x6

    if-eq v4, v3, :cond_1

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/bl2;

    iget v1, v2, Lcom/yandex/mobile/ads/impl/f21$a;->c:I

    const-wide/16 v19, -0x1

    const/16 v21, 0x0

    move-object v13, v0

    move-wide/from16 v14, p2

    move/from16 v16, v1

    .line 7
    invoke-direct/range {v13 .. v21}, Lcom/yandex/mobile/ads/impl/bl2;-><init>(JIJJ[J)V

    return-object v0

    .line 8
    :cond_1
    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/ag1;->v()J

    move-result-wide v19

    const/16 v3, 0x64

    .line 9
    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 10
    invoke-virtual/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/ag1;->t()I

    move-result v6

    int-to-long v6, v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_3

    add-long v5, p2, v19

    cmp-long v3, v0, v5

    if-eqz v3, :cond_3

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "XING data size mismatch: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XingSeeker"

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/impl/et0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    new-instance v0, Lcom/yandex/mobile/ads/impl/bl2;

    iget v1, v2, Lcom/yandex/mobile/ads/impl/f21$a;->c:I

    move-object v13, v0

    move-wide/from16 v14, p2

    move/from16 v16, v1

    move-object/from16 v21, v4

    invoke-direct/range {v13 .. v21}, Lcom/yandex/mobile/ads/impl/bl2;-><init>(JIJJ[J)V

    return-object v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 13
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/bl2;->e:J

    return-wide v0
.end method

.method public final a(J)J
    .locals 12

    .line 14
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/bl2;->a:J

    sub-long/2addr p1, v0

    .line 15
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/bl2;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/yandex/mobile/ads/impl/bl2;->b:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_2

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bl2;->f:[J

    if-eqz v0, :cond_3

    long-to-double p1, p1

    const-wide/high16 v1, 0x4070000000000000L    # 256.0

    mul-double/2addr p1, v1

    .line 17
    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/bl2;->d:J

    long-to-double v1, v1

    div-double/2addr p1, v1

    double-to-long v1, p1

    const/4 v3, 0x1

    .line 18
    invoke-static {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/f92;->b([JJZ)I

    move-result v1

    .line 19
    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/bl2;->c:J

    int-to-long v4, v1

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    .line 20
    aget-wide v8, v0, v1

    add-int/lit8 p0, v1, 0x1

    int-to-long v10, p0

    mul-long/2addr v2, v10

    .line 21
    div-long/2addr v2, v6

    const/16 v6, 0x63

    if-ne v1, v6, :cond_1

    const-wide/16 v0, 0x100

    goto :goto_0

    .line 22
    :cond_1
    aget-wide v0, v0, p0

    :goto_0
    cmp-long p0, v8, v0

    if-nez p0, :cond_2

    const-wide/16 p0, 0x0

    goto :goto_1

    :cond_2
    long-to-double v6, v8

    sub-double/2addr p1, v6

    sub-long/2addr v0, v8

    long-to-double v0, v0

    div-double p0, p1, v0

    :goto_1
    sub-long/2addr v2, v4

    long-to-double v0, v2

    mul-double/2addr p0, v0

    .line 23
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    add-long/2addr p0, v4

    return-wide p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_4
    :goto_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final b(J)Lcom/yandex/mobile/ads/impl/ex1$a;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/bl2;->b()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Lcom/yandex/mobile/ads/impl/ex1$a;

    new-instance p2, Lcom/yandex/mobile/ads/impl/gx1;

    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/bl2;->a:J

    iget p0, p0, Lcom/yandex/mobile/ads/impl/bl2;->b:I

    int-to-long v5, p0

    add-long/2addr v3, v5

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/yandex/mobile/ads/impl/gx1;-><init>(JJ)V

    .line 3
    invoke-direct {p1, p2, p2}, Lcom/yandex/mobile/ads/impl/ex1$a;-><init>(Lcom/yandex/mobile/ads/impl/gx1;Lcom/yandex/mobile/ads/impl/gx1;)V

    return-object p1

    .line 4
    :cond_0
    iget-wide v3, p0, Lcom/yandex/mobile/ads/impl/bl2;->c:J

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    .line 5
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    .line 6
    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/bl2;->c:J

    long-to-double v4, v4

    div-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    const-wide/high16 v7, 0x4070000000000000L    # 256.0

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    cmpl-double v2, v0, v2

    if-ltz v2, :cond_2

    move-wide v4, v7

    goto :goto_1

    :cond_2
    double-to-int v2, v0

    .line 7
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/bl2;->f:[J

    if-eqz v3, :cond_4

    .line 8
    aget-wide v4, v3, v2

    long-to-double v4, v4

    const/16 v6, 0x63

    if-ne v2, v6, :cond_3

    move-wide v9, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v2, 0x1

    .line 9
    aget-wide v9, v3, v6

    long-to-double v9, v9

    :goto_0
    int-to-double v2, v2

    sub-double/2addr v0, v2

    sub-double/2addr v9, v4

    mul-double/2addr v9, v0

    add-double/2addr v4, v9

    :goto_1
    div-double/2addr v4, v7

    .line 10
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/bl2;->d:J

    long-to-double v0, v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 11
    iget v2, p0, Lcom/yandex/mobile/ads/impl/bl2;->b:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/bl2;->d:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    .line 12
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 13
    new-instance v2, Lcom/yandex/mobile/ads/impl/ex1$a;

    new-instance v3, Lcom/yandex/mobile/ads/impl/gx1;

    iget-wide v4, p0, Lcom/yandex/mobile/ads/impl/bl2;->a:J

    add-long/2addr v4, v0

    invoke-direct {v3, p1, p2, v4, v5}, Lcom/yandex/mobile/ads/impl/gx1;-><init>(JJ)V

    .line 14
    invoke-direct {v2, v3, v3}, Lcom/yandex/mobile/ads/impl/ex1$a;-><init>(Lcom/yandex/mobile/ads/impl/gx1;Lcom/yandex/mobile/ads/impl/gx1;)V

    return-object v2

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final b()Z
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/bl2;->f:[J

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/bl2;->c:J

    return-wide v0
.end method
