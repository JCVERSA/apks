.class public final Lcom/cloud/hisavana/sdk/common/bean/RewardedState;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008#\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000eJ\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\u0007H\u00c6\u0003J\t\u0010$\u001a\u00020\u0007H\u00c6\u0003J\t\u0010%\u001a\u00020\u0007H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0007H\u00c6\u0003J\t\u0010(\u001a\u00020\u0007H\u00c6\u0003Jc\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\u0007H\u00c6\u0001J\t\u0010*\u001a\u00020+H\u00d6\u0001J\u0013\u0010,\u001a\u00020\u00072\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020+H\u00d6\u0001J\u0008\u00100\u001a\u000201H\u0016J\u0019\u00102\u001a\u0002032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020+H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\r\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0013\"\u0004\u0008\u0016\u0010\u0015R\u001a\u0010\n\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\u001a\u0010\t\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0013\"\u0004\u0008\u0018\u0010\u0015R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0013\"\u0004\u0008\u0019\u0010\u0015R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0013\"\u0004\u0008\u001a\u0010\u0015R\u001a\u0010\u000c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0013\"\u0004\u0008\u001b\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u00067"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;",
        "Landroid/os/Parcelable;",
        "countdownRemainDuration",
        "",
        "videoVolume",
        "",
        "isAlreadyMeasure",
        "",
        "isRewarded",
        "isPlayStart",
        "isPlayComplete",
        "isShowRetainDialog",
        "isShowRuDialog",
        "isPaused",
        "(JFZZZZZZZ)V",
        "getCountdownRemainDuration",
        "()J",
        "setCountdownRemainDuration",
        "(J)V",
        "()Z",
        "setAlreadyMeasure",
        "(Z)V",
        "setPaused",
        "setPlayComplete",
        "setPlayStart",
        "setRewarded",
        "setShowRetainDialog",
        "setShowRuDialog",
        "getVideoVolume",
        "()F",
        "setVideoVolume",
        "(F)V",
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
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private countdownRemainDuration:J

.field private isAlreadyMeasure:Z

.field private isPaused:Z

.field private isPlayComplete:Z

.field private isPlayStart:Z

.field private isRewarded:Z

.field private isShowRetainDialog:Z

.field private isShowRuDialog:Z

.field private videoVolume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v12}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;-><init>(JFZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(JFZZZZZZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 4
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 5
    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 6
    iput-boolean p5, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 7
    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 8
    iput-boolean p7, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 9
    iput-boolean p8, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 10
    iput-boolean p9, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 11
    iput-boolean p10, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    return-void
.end method

.method public synthetic constructor <init>(JFZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v5

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move v10, v5

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v5, p10

    :goto_8
    move-object p1, p0

    move-wide p2, v1

    move p4, v3

    move/from16 p5, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v5

    .line 12
    invoke-direct/range {p1 .. p11}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;-><init>(JFZZZZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/hisavana/sdk/common/bean/RewardedState;JFZZZZZZZILjava/lang/Object;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p11

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-wide v2, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide v2, p1

    .line 12
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 13
    .line 14
    if-eqz v4, :cond_1

    .line 15
    .line 16
    iget v4, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v4, p3

    .line 20
    :goto_1
    and-int/lit8 v5, v1, 0x4

    .line 21
    .line 22
    if-eqz v5, :cond_2

    .line 23
    .line 24
    iget-boolean v5, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v5, p4

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget-boolean v6, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

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
    iget-boolean v7, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v7, p6

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v8, v1, 0x20

    .line 47
    .line 48
    if-eqz v8, :cond_5

    .line 49
    .line 50
    iget-boolean v8, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move/from16 v8, p7

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v9, v1, 0x40

    .line 56
    .line 57
    if-eqz v9, :cond_6

    .line 58
    .line 59
    iget-boolean v9, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v9, p8

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v10, v1, 0x80

    .line 65
    .line 66
    if-eqz v10, :cond_7

    .line 67
    .line 68
    iget-boolean v10, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move/from16 v10, p9

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget-boolean v1, v0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move/from16 v1, p10

    .line 81
    .line 82
    :goto_8
    move-wide p1, v2

    .line 83
    move p3, v4

    .line 84
    move p4, v5

    .line 85
    move/from16 p5, v6

    .line 86
    .line 87
    move/from16 p6, v7

    .line 88
    .line 89
    move/from16 p7, v8

    .line 90
    .line 91
    move/from16 p8, v9

    .line 92
    .line 93
    move/from16 p9, v10

    .line 94
    .line 95
    move/from16 p10, v1

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p10}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->copy(JFZZZZZZZ)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component9()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(JFZZZZZZZ)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;
    .locals 12

    .line 1
    new-instance v11, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 2
    .line 3
    move-object v0, v11

    .line 4
    move-wide v1, p1

    .line 5
    move v3, p3

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
    move/from16 v8, p8

    .line 15
    .line 16
    move/from16 v9, p9

    .line 17
    .line 18
    move/from16 v10, p10

    .line 19
    .line 20
    invoke-direct/range {v0 .. v10}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;-><init>(JFZZZZZZZ)V

    .line 21
    .line 22
    .line 23
    return-object v11
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
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
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

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
    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 23
    .line 24
    iget v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 25
    .line 26
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 34
    .line 35
    iget-boolean v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 36
    .line 37
    if-eq v1, v3, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 41
    .line 42
    iget-boolean v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 48
    .line 49
    iget-boolean v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 50
    .line 51
    if-eq v1, v3, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 55
    .line 56
    iget-boolean v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 57
    .line 58
    if-eq v1, v3, :cond_7

    .line 59
    .line 60
    return v2

    .line 61
    :cond_7
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 62
    .line 63
    iget-boolean v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 64
    .line 65
    if-eq v1, v3, :cond_8

    .line 66
    .line 67
    return v2

    .line 68
    :cond_8
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 69
    .line 70
    iget-boolean v3, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 71
    .line 72
    if-eq v1, v3, :cond_9

    .line 73
    .line 74
    return v2

    .line 75
    :cond_9
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 76
    .line 77
    iget-boolean p1, p1, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 78
    .line 79
    if-eq v1, p1, :cond_a

    .line 80
    .line 81
    return v2

    .line 82
    :cond_a
    return v0
.end method

.method public final getCountdownRemainDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getVideoVolume()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 37
    .line 38
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 46
    .line 47
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 55
    .line 56
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 64
    .line 65
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 73
    .line 74
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    return v0
.end method

.method public final isAlreadyMeasure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPaused()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPlayComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPlayStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRewarded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isShowRetainDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isShowRuDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAlreadyMeasure(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCountdownRemainDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPaused(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayComplete(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRewarded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowRetainDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowRuDialog(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoVolume(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "RewardedState(countdownRemainDuration="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", videoVolume="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", isAlreadyMeasure="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", isRewarded="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", isPlayStart="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", isPlayComplete="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", isShowRetainDialog="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", isShowRuDialog="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", isPaused="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x29

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    const-string p2, "out"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->countdownRemainDuration:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->videoVolume:F

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isAlreadyMeasure:Z

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isRewarded:Z

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart:Z

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete:Z

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRetainDialog:Z

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isShowRuDialog:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-boolean p2, p0, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPaused:Z

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
