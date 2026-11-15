.class public final Lcom/transsion/push/bean/FSNConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u001f\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\t\u0010 \u001a\u00020\u0003H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\t\u0010#\u001a\u00020\tH\u00c6\u0003J\t\u0010$\u001a\u00020\tH\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u000eH\u00c6\u0003JY\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u0010)\u001a\u00020\u00032\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\tH\u00d6\u0001J\t\u0010,\u001a\u00020\u000eH\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0016\u0010\u000b\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0016R\u0016\u0010\u000c\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0012R\u0016\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/push/bean/FSNConfig;",
        "",
        "enable",
        "",
        "delayTime",
        "",
        "banTimeScope",
        "",
        "localBanStartHour",
        "",
        "localBanEndHour",
        "effectInterval",
        "only4SilentUser",
        "deepLink",
        "",
        "<init>",
        "(ZJ[IIIJZLjava/lang/String;)V",
        "getEnable",
        "()Z",
        "setEnable",
        "(Z)V",
        "getDelayTime",
        "()J",
        "getBanTimeScope",
        "()[I",
        "getLocalBanStartHour",
        "()I",
        "getLocalBanEndHour",
        "getEffectInterval",
        "getOnly4SilentUser",
        "getDeepLink",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final banTimeScope:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "banTimeScope"
    .end annotation
.end field

.field private final deepLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deepLink"
    .end annotation
.end field

.field private final delayTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "delayTime"
    .end annotation
.end field

.field private final effectInterval:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "effectInterval"
    .end annotation
.end field

.field private enable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable"
    .end annotation
.end field

.field private final localBanEndHour:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localBanEndHour"
    .end annotation
.end field

.field private final localBanStartHour:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localBanStartHour"
    .end annotation
.end field

.field private final only4SilentUser:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "only4SilentUser"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZJ[IIIJZLjava/lang/String;)V
    .locals 1

    const-string v0, "banTimeScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deepLink"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 3
    iput-wide p2, p0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

    .line 4
    iput-object p4, p0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 5
    iput p5, p0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 6
    iput p6, p0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 7
    iput-wide p7, p0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 8
    iput-boolean p9, p0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 9
    iput-object p10, p0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZJ[IIIJZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    and-int/lit8 v0, p11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_1

    .line 10
    new-array v0, v1, [I

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    move v7, v0

    goto :goto_2

    :cond_2
    move/from16 v7, p5

    :goto_2
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_3

    const/16 v0, 0x16

    move v8, v0

    goto :goto_3

    :cond_3
    move/from16 v8, p6

    :goto_3
    move-object v2, p0

    move-wide v4, p2

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Lcom/transsion/push/bean/FSNConfig;-><init>(ZJ[IIIJZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/push/bean/FSNConfig;ZJ[IIIJZLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/push/bean/FSNConfig;
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
    iget-boolean v2, v0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

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
    iget-wide v3, v0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

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
    iget-object v5, v0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v5, p4

    .line 28
    :goto_2
    and-int/lit8 v6, v1, 0x8

    .line 29
    .line 30
    if-eqz v6, :cond_3

    .line 31
    .line 32
    iget v6, v0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

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
    iget v7, v0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

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
    iget-wide v8, v0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-wide/from16 v8, p7

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v10, v1, 0x40

    .line 56
    .line 57
    if-eqz v10, :cond_6

    .line 58
    .line 59
    iget-boolean v10, v0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v10, p9

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 65
    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget-object v1, v0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move-object/from16 v1, p10

    .line 72
    .line 73
    :goto_7
    move p1, v2

    .line 74
    move-wide p2, v3

    .line 75
    move-object p4, v5

    .line 76
    move/from16 p5, v6

    .line 77
    .line 78
    move/from16 p6, v7

    .line 79
    .line 80
    move-wide/from16 p7, v8

    .line 81
    .line 82
    move/from16 p9, v10

    .line 83
    .line 84
    move-object/from16 p10, v1

    .line 85
    .line 86
    invoke-virtual/range {p0 .. p10}, Lcom/transsion/push/bean/FSNConfig;->copy(ZJ[IIIJZLjava/lang/String;)Lcom/transsion/push/bean/FSNConfig;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component7()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ZJ[IIIJZLjava/lang/String;)Lcom/transsion/push/bean/FSNConfig;
    .locals 12

    .line 1
    const-string v0, "banTimeScope"

    .line 2
    .line 3
    move-object/from16 v5, p4

    .line 4
    .line 5
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "deepLink"

    .line 9
    .line 10
    move-object/from16 v11, p10

    .line 11
    .line 12
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/transsion/push/bean/FSNConfig;

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    move v2, p1

    .line 19
    move-wide v3, p2

    .line 20
    move/from16 v6, p5

    .line 21
    .line 22
    move/from16 v7, p6

    .line 23
    .line 24
    move-wide/from16 v8, p7

    .line 25
    .line 26
    move/from16 v10, p9

    .line 27
    .line 28
    invoke-direct/range {v1 .. v11}, Lcom/transsion/push/bean/FSNConfig;-><init>(ZJ[IIIJZLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
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
    instance-of v1, p1, Lcom/transsion/push/bean/FSNConfig;

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
    check-cast p1, Lcom/transsion/push/bean/FSNConfig;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

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
    iget-object v1, p0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 30
    .line 31
    iget-object v3, p1, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 32
    .line 33
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget v1, p0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 41
    .line 42
    iget v3, p1, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 43
    .line 44
    if-eq v1, v3, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget v1, p0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 48
    .line 49
    iget v3, p1, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 50
    .line 51
    if-eq v1, v3, :cond_6

    .line 52
    .line 53
    return v2

    .line 54
    :cond_6
    iget-wide v3, p0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 55
    .line 56
    iget-wide v5, p1, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 57
    .line 58
    cmp-long v1, v3, v5

    .line 59
    .line 60
    if-eqz v1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget-boolean v1, p0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 64
    .line 65
    iget-boolean v3, p1, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 66
    .line 67
    if-eq v1, v3, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget-object v1, p0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_9

    .line 79
    .line 80
    return v2

    .line 81
    :cond_9
    return v0
.end method

.method public final getBanTimeScope()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEffectInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getLocalBanEndHour()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLocalBanStartHour()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOnly4SilentUser()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/e;->a(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

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
    iget-object v1, p0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

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
    iget v1, p0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v1, p0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 33
    .line 34
    add-int/2addr v0, v1

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    .line 36
    .line 37
    iget-wide v1, p0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 38
    .line 39
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget-boolean v1, p0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public final setEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/transsion/push/bean/FSNConfig;->enable:Z

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsion/push/bean/FSNConfig;->delayTime:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsion/push/bean/FSNConfig;->banTimeScope:[I

    .line 6
    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget v4, p0, Lcom/transsion/push/bean/FSNConfig;->localBanStartHour:I

    .line 12
    .line 13
    iget v5, p0, Lcom/transsion/push/bean/FSNConfig;->localBanEndHour:I

    .line 14
    .line 15
    iget-wide v6, p0, Lcom/transsion/push/bean/FSNConfig;->effectInterval:J

    .line 16
    .line 17
    iget-boolean v8, p0, Lcom/transsion/push/bean/FSNConfig;->only4SilentUser:Z

    .line 18
    .line 19
    iget-object v9, p0, Lcom/transsion/push/bean/FSNConfig;->deepLink:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v11, "FSNConfig(enable="

    .line 27
    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v0, ", delayTime="

    .line 35
    .line 36
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v0, ", banTimeScope="

    .line 43
    .line 44
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, ", localBanStartHour="

    .line 51
    .line 52
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v0, ", localBanEndHour="

    .line 59
    .line 60
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, ", effectInterval="

    .line 67
    .line 68
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", only4SilentUser="

    .line 75
    .line 76
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, ", deepLink="

    .line 83
    .line 84
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v0, ")"

    .line 91
    .line 92
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0
.end method
