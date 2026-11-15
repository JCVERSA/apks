.class public final Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/LoadingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadingAnimationModel"
.end annotation


# instance fields
.field private creatRender:I

.field private decompress:I

.field private download:I

.field private finishAnimationDuration:J

.field private firstDuration:J

.field private firstProgress:I

.field private loadRender:I

.field private secondDuration:J


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJIIIIJJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 4
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 5
    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 6
    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 7
    iput p5, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 8
    iput p6, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 9
    iput p7, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 10
    iput-wide p8, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 11
    iput-wide p10, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    return-void
.end method

.method public synthetic constructor <init>(IJIIIIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x5a

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0x5d

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/16 v5, 0x5f

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/16 v6, 0x61

    goto :goto_4

    :cond_4
    move/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/16 v7, 0x63

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const-wide/16 v8, 0x3e8

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-wide/16 v10, 0x64

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p10

    :goto_7
    move-object p1, p0

    move p2, v1

    move-wide p3, v2

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move-wide/from16 p9, v8

    move-wide/from16 p11, v10

    .line 2
    invoke-direct/range {p1 .. p12}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;IJIIIIJJILjava/lang/Object;)Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p12

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-wide v3, p2

    .line 20
    :goto_1
    and-int/lit8 v5, v1, 0x4

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v5, p4

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 30
    .line 31
    if-eqz v6, :cond_3

    .line 32
    .line 33
    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v6, p5

    .line 37
    .line 38
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 39
    .line 40
    if-eqz v7, :cond_4

    .line 41
    .line 42
    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move/from16 v7, p6

    .line 46
    .line 47
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 48
    .line 49
    if-eqz v8, :cond_5

    .line 50
    .line 51
    iget v8, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move/from16 v8, p7

    .line 55
    .line 56
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 57
    .line 58
    if-eqz v9, :cond_6

    .line 59
    .line 60
    iget-wide v9, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move-wide/from16 v9, p8

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 66
    .line 67
    if-eqz v1, :cond_7

    .line 68
    .line 69
    iget-wide v11, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 70
    .line 71
    goto :goto_7

    .line 72
    :cond_7
    move-wide/from16 v11, p10

    .line 73
    .line 74
    :goto_7
    move p1, v2

    .line 75
    move-wide p2, v3

    .line 76
    move/from16 p4, v5

    .line 77
    .line 78
    move/from16 p5, v6

    .line 79
    .line 80
    move/from16 p6, v7

    .line 81
    .line 82
    move/from16 p7, v8

    .line 83
    .line 84
    move-wide/from16 p8, v9

    .line 85
    .line 86
    move-wide/from16 p10, v11

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->copy(IJIIIIJJ)Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component8()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(IJIIIIJJ)Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    .locals 13

    .line 1
    new-instance v12, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 2
    .line 3
    move-object v0, v12

    .line 4
    move v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move/from16 v4, p4

    .line 7
    .line 8
    move/from16 v5, p5

    .line 9
    .line 10
    move/from16 v6, p6

    .line 11
    .line 12
    move/from16 v7, p7

    .line 13
    .line 14
    move-wide/from16 v8, p8

    .line 15
    .line 16
    move-wide/from16 v10, p10

    .line 17
    .line 18
    invoke-direct/range {v0 .. v11}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJ)V

    .line 19
    .line 20
    .line 21
    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    .line 12
    .line 13
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 14
    .line 15
    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 30
    .line 31
    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 32
    .line 33
    if-eq v1, v3, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 37
    .line 38
    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 39
    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 44
    .line 45
    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 46
    .line 47
    if-eq v1, v3, :cond_6

    .line 48
    .line 49
    return v2

    .line 50
    :cond_6
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 51
    .line 52
    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 53
    .line 54
    if-eq v1, v3, :cond_7

    .line 55
    .line 56
    return v2

    .line 57
    :cond_7
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 58
    .line 59
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 60
    .line 61
    cmp-long v1, v3, v5

    .line 62
    .line 63
    if-eqz v1, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 67
    .line 68
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 69
    .line 70
    cmp-long p1, v3, v5

    .line 71
    .line 72
    if-eqz p1, :cond_9

    .line 73
    .line 74
    return v2

    .line 75
    :cond_9
    return v0
.end method

.method public final getCreatRender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecompress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDownload()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 2
    .line 3
    return v0
.end method

.method public final getFinishAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFirstDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFirstProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLoadRender()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSecondDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, v0

    .line 12
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    .line 14
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 15
    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 20
    .line 21
    add-int/2addr v1, v0

    .line 22
    mul-int/lit8 v1, v1, 0x1f

    .line 23
    .line 24
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 25
    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 30
    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    .line 34
    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/lit8 v0, v0, 0x1f

    .line 42
    .line 43
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v1, v0

    .line 50
    return v1
.end method

.method public final setCreatRender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDecompress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDownload(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 2
    .line 3
    return-void
.end method

.method public final setFinishAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFirstProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadRender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSecondDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    .line 4
    .line 5
    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    .line 6
    .line 7
    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    .line 8
    .line 9
    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    .line 10
    .line 11
    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    .line 12
    .line 13
    iget-wide v7, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    .line 14
    .line 15
    iget-wide v9, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    .line 16
    .line 17
    new-instance v11, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v12, "LoadingAnimationModel(firstProgress="

    .line 23
    .line 24
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", firstDuration="

    .line 31
    .line 32
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", download="

    .line 39
    .line 40
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", decompress="

    .line 47
    .line 48
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", creatRender="

    .line 55
    .line 56
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", loadRender="

    .line 63
    .line 64
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", secondDuration="

    .line 71
    .line 72
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", finishAnimationDuration="

    .line 79
    .line 80
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ")"

    .line 87
    .line 88
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
