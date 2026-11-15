.class public final Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private category:Ljava/lang/Integer;

.field private classification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private classificationNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private desc:Ljava/lang/String;

.field private logoPath:Ljava/lang/String;

.field private logoUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private openTimestamp:J

.field private type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 8
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 10
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 11
    iput-object p8, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 12
    iput-wide p9, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 13
    iput-object p11, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 14
    iput-object p12, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v10, v1

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const-wide/16 v3, 0x0

    move-wide v12, v3

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v14, v2

    goto :goto_7

    :cond_7
    move-object/from16 v14, p11

    :goto_7
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move-object v15, v2

    goto :goto_8

    :cond_8
    move-object/from16 v15, p12

    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p4

    .line 2
    invoke-direct/range {v3 .. v15}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p13

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v4, p3

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 30
    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v5, p4

    .line 37
    .line 38
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 39
    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move-object/from16 v6, p5

    .line 46
    .line 47
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 48
    .line 49
    if-eqz v7, :cond_5

    .line 50
    .line 51
    iget-object v7, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-object/from16 v7, p6

    .line 55
    .line 56
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 57
    .line 58
    if-eqz v8, :cond_6

    .line 59
    .line 60
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move-object/from16 v8, p7

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 66
    .line 67
    if-eqz v9, :cond_7

    .line 68
    .line 69
    iget-object v9, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_7

    .line 72
    :cond_7
    move-object/from16 v9, p8

    .line 73
    .line 74
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 75
    .line 76
    if-eqz v10, :cond_8

    .line 77
    .line 78
    iget-wide v10, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move-wide/from16 v10, p9

    .line 82
    .line 83
    :goto_8
    and-int/lit16 v12, v1, 0x200

    .line 84
    .line 85
    if-eqz v12, :cond_9

    .line 86
    .line 87
    iget-object v12, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 88
    .line 89
    goto :goto_9

    .line 90
    :cond_9
    move-object/from16 v12, p11

    .line 91
    .line 92
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 93
    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    iget-object v1, v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 97
    .line 98
    goto :goto_a

    .line 99
    :cond_a
    move-object/from16 v1, p12

    .line 100
    .line 101
    :goto_a
    move-object p1, v2

    .line 102
    move-object p2, v3

    .line 103
    move-object/from16 p3, v4

    .line 104
    .line 105
    move-object/from16 p4, v5

    .line 106
    .line 107
    move-object/from16 p5, v6

    .line 108
    .line 109
    move-object/from16 p6, v7

    .line 110
    .line 111
    move-object/from16 p7, v8

    .line 112
    .line 113
    move-object/from16 p8, v9

    .line 114
    .line 115
    move-wide/from16 p9, v10

    .line 116
    .line 117
    move-object/from16 p11, v12

    .line 118
    .line 119
    move-object/from16 p12, v1

    .line 120
    .line 121
    invoke-virtual/range {p0 .. p12}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;)Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;)",
            "Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;"
        }
    .end annotation

    .line 1
    const-string v0, "appId"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "type"

    .line 8
    .line 9
    move-object/from16 v5, p4

    .line 10
    .line 11
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-object/from16 v3, p2

    .line 18
    .line 19
    move-object/from16 v4, p3

    .line 20
    .line 21
    move-object/from16 v6, p5

    .line 22
    .line 23
    move-object/from16 v7, p6

    .line 24
    .line 25
    move-object/from16 v8, p7

    .line 26
    .line 27
    move-object/from16 v9, p8

    .line 28
    .line 29
    move-wide/from16 v10, p9

    .line 30
    .line 31
    move-object/from16 v12, p11

    .line 32
    .line 33
    move-object/from16 v13, p12

    .line 34
    .line 35
    invoke-direct/range {v1 .. v13}, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 98
    .line 99
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 100
    .line 101
    cmp-long v1, v3, v5

    .line 102
    .line 103
    if-eqz v1, :cond_a

    .line 104
    .line 105
    return v2

    .line 106
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 107
    .line 108
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_b

    .line 115
    .line 116
    return v2

    .line 117
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 120
    .line 121
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_c

    .line 126
    .line 127
    return v2

    .line 128
    :cond_c
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategory()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClassification()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getClassificationNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogoPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpenTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getType()Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v0

    .line 43
    mul-int/lit8 v1, v1, 0x1f

    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    move v0, v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    :goto_2
    add-int/2addr v1, v0

    .line 56
    mul-int/lit8 v1, v1, 0x1f

    .line 57
    .line 58
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    move v0, v2

    .line 63
    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    :goto_3
    add-int/2addr v1, v0

    .line 69
    mul-int/lit8 v1, v1, 0x1f

    .line 70
    .line 71
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 72
    .line 73
    if-nez v0, :cond_4

    .line 74
    .line 75
    move v0, v2

    .line 76
    goto :goto_4

    .line 77
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    :goto_4
    add-int/2addr v1, v0

    .line 82
    mul-int/lit8 v1, v1, 0x1f

    .line 83
    .line 84
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    move v0, v2

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    :goto_5
    add-int/2addr v1, v0

    .line 95
    mul-int/lit8 v1, v1, 0x1f

    .line 96
    .line 97
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 98
    .line 99
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    .line 105
    .line 106
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 107
    .line 108
    if-nez v1, :cond_6

    .line 109
    .line 110
    move v1, v2

    .line 111
    goto :goto_6

    .line 112
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    :goto_6
    add-int/2addr v0, v1

    .line 117
    mul-int/lit8 v0, v0, 0x1f

    .line 118
    .line 119
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 120
    .line 121
    if-nez v1, :cond_7

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_7
    add-int/2addr v0, v2

    .line 129
    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setCategory(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setClassification(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/integration/model/ClassificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setClassificationNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLogoPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLogoUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpenTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 7
    .line 8
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->appId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->version:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->type:Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppType;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoUrl:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->logoPath:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->category:Ljava/lang/Integer;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->desc:Ljava/lang/String;

    .line 16
    .line 17
    iget-wide v8, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->openTimestamp:J

    .line 18
    .line 19
    iget-object v10, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classificationNames:Ljava/util/List;

    .line 20
    .line 21
    iget-object v11, p0, Lcom/cloud/tmc/miniapp/offlineapps/OfflineAppBean;->classification:Ljava/util/List;

    .line 22
    .line 23
    new-instance v12, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v13, "OfflineAppBean(appId="

    .line 29
    .line 30
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", version="

    .line 37
    .line 38
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", name="

    .line 45
    .line 46
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", type="

    .line 53
    .line 54
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", logoUrl="

    .line 61
    .line 62
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", logoPath="

    .line 69
    .line 70
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", category="

    .line 77
    .line 78
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", desc="

    .line 85
    .line 86
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", openTimestamp="

    .line 93
    .line 94
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", classificationNames="

    .line 101
    .line 102
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", classification="

    .line 109
    .line 110
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v0, ")"

    .line 117
    .line 118
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0
.end method
