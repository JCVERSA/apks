.class public final Lcom/cloud/tmc/ad/bean/AdShowBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008%\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B_\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0006H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0006H\u00c6\u0003J\t\u0010-\u001a\u00020\nH\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u000eH\u00c6\u0003Jc\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u00102\u001a\u00020\u000e2\u0008\u00103\u001a\u0004\u0018\u000104H\u00d6\u0003J\t\u00105\u001a\u00020\u0003H\u00d6\u0001J\t\u00106\u001a\u00020\nH\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010\u0013R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0011\"\u0004\u0008%\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!\u00a8\u00067"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/AdShowBean;",
        "Ljava/io/Serializable;",
        "imageWidth",
        "",
        "imageHeight",
        "showTs",
        "",
        "isEffectiveShow",
        "showDuration",
        "showArea",
        "",
        "showReportTimeType",
        "showTimes",
        "isClose",
        "",
        "(IIJIJLjava/lang/String;IIZ)V",
        "getImageHeight",
        "()I",
        "setImageHeight",
        "(I)V",
        "getImageWidth",
        "setImageWidth",
        "()Z",
        "setClose",
        "(Z)V",
        "setEffectiveShow",
        "getShowArea",
        "()Ljava/lang/String;",
        "setShowArea",
        "(Ljava/lang/String;)V",
        "getShowDuration",
        "()J",
        "setShowDuration",
        "(J)V",
        "getShowReportTimeType",
        "setShowReportTimeType",
        "getShowTimes",
        "setShowTimes",
        "getShowTs",
        "setShowTs",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.miniad"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private isClose:Z

.field private isEffectiveShow:I

.field private showArea:Ljava/lang/String;

.field private showDuration:J

.field private showReportTimeType:I

.field private showTimes:I

.field private showTs:J


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    const/16 v12, 0x1ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJIJLjava/lang/String;IIZ)V
    .locals 1

    const-string v0, "showArea"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 4
    iput p2, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 5
    iput-wide p3, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 6
    iput p5, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 7
    iput-wide p6, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 8
    iput-object p8, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 9
    iput p9, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 10
    iput p10, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 11
    iput-boolean p11, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    return-void
.end method

.method public synthetic constructor <init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    move-wide v7, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move/from16 v4, p5

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 12
    const-string v9, ""

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    move v11, v2

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v2, p11

    :goto_8
    move-object p1, p0

    move p2, v1

    move p3, v3

    move-wide/from16 p4, v7

    move/from16 p6, v4

    move-wide/from16 p7, v5

    move-object/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v2

    .line 13
    invoke-direct/range {p1 .. p12}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/ad/bean/AdShowBean;IIJIJLjava/lang/String;IIZILjava/lang/Object;)Lcom/cloud/tmc/ad/bean/AdShowBean;
    .locals 12

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
    iget v2, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

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
    iget v3, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-wide v4, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-wide v4, p3

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget v6, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v6, p5

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v7, v1, 0x10

    .line 38
    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    iget-wide v7, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-wide/from16 v7, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v9, v1, 0x20

    .line 47
    .line 48
    if-eqz v9, :cond_5

    .line 49
    .line 50
    iget-object v9, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v9, p8

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v10, v1, 0x40

    .line 56
    .line 57
    if-eqz v10, :cond_6

    .line 58
    .line 59
    iget v10, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v10, p9

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v11, v1, 0x80

    .line 65
    .line 66
    if-eqz v11, :cond_7

    .line 67
    .line 68
    iget v11, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move/from16 v11, p10

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget-boolean v1, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move/from16 v1, p11

    .line 81
    .line 82
    :goto_8
    move p1, v2

    .line 83
    move p2, v3

    .line 84
    move-wide p3, v4

    .line 85
    move/from16 p5, v6

    .line 86
    .line 87
    move-wide/from16 p6, v7

    .line 88
    .line 89
    move-object/from16 p8, v9

    .line 90
    .line 91
    move/from16 p9, v10

    .line 92
    .line 93
    move/from16 p10, v11

    .line 94
    .line 95
    move/from16 p11, v1

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/ad/bean/AdShowBean;->copy(IIJIJLjava/lang/String;IIZ)Lcom/cloud/tmc/ad/bean/AdShowBean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final component9()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIJIJLjava/lang/String;IIZ)Lcom/cloud/tmc/ad/bean/AdShowBean;
    .locals 13

    .line 1
    const-string v0, "showArea"

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/cloud/tmc/ad/bean/AdShowBean;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move-wide/from16 v4, p3

    .line 14
    .line 15
    move/from16 v6, p5

    .line 16
    .line 17
    move-wide/from16 v7, p6

    .line 18
    .line 19
    move/from16 v10, p9

    .line 20
    .line 21
    move/from16 v11, p10

    .line 22
    .line 23
    move/from16 v12, p11

    .line 24
    .line 25
    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZ)V

    .line 26
    .line 27
    .line 28
    return-object v0
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
    instance-of v1, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;

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
    check-cast p1, Lcom/cloud/tmc/ad/bean/AdShowBean;

    .line 12
    .line 13
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 14
    .line 15
    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 21
    .line 22
    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 28
    .line 29
    iget-wide v5, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 30
    .line 31
    cmp-long v1, v3, v5

    .line 32
    .line 33
    if-eqz v1, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 37
    .line 38
    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 39
    .line 40
    if-eq v1, v3, :cond_5

    .line 41
    .line 42
    return v2

    .line 43
    :cond_5
    iget-wide v3, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 44
    .line 45
    iget-wide v5, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 46
    .line 47
    cmp-long v1, v3, v5

    .line 48
    .line 49
    if-eqz v1, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 64
    .line 65
    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 66
    .line 67
    if-eq v1, v3, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 71
    .line 72
    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 73
    .line 74
    if-eq v1, v3, :cond_9

    .line 75
    .line 76
    return v2

    .line 77
    :cond_9
    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 78
    .line 79
    iget-boolean p1, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 80
    .line 81
    if-eq v1, p1, :cond_a

    .line 82
    .line 83
    return v2

    .line 84
    :cond_a
    return v0
.end method

.method public final getImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowArea()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowReportTimeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShowTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 20
    .line 21
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-int/2addr v0, v1

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    .line 32
    .line 33
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 43
    .line 44
    add-int/2addr v0, v1

    .line 45
    mul-int/lit8 v0, v0, 0x1f

    .line 46
    .line 47
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 48
    .line 49
    add-int/2addr v0, v1

    .line 50
    mul-int/lit8 v0, v0, 0x1f

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    :cond_0
    add-int/2addr v0, v1

    .line 58
    return v0
.end method

.method public final isClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isEffectiveShow()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 2
    .line 3
    return v0
.end method

.method public final setClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setEffectiveShow(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImageHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImageWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowArea(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShowReportTimeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowTimes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShowTs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    .line 6
    .line 7
    iget v4, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    .line 10
    .line 11
    iget-object v7, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    .line 12
    .line 13
    iget v8, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    .line 14
    .line 15
    iget v9, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    .line 16
    .line 17
    iget-boolean v10, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    .line 18
    .line 19
    new-instance v11, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v12, "AdShowBean(imageWidth="

    .line 25
    .line 26
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", imageHeight="

    .line 33
    .line 34
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", showTs="

    .line 41
    .line 42
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", isEffectiveShow="

    .line 49
    .line 50
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", showDuration="

    .line 57
    .line 58
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", showArea="

    .line 65
    .line 66
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", showReportTimeType="

    .line 73
    .line 74
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", showTimes="

    .line 81
    .line 82
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", isClose="

    .line 89
    .line 90
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ")"

    .line 97
    .line 98
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
