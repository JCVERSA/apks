.class public final Lcom/cloud/tmc/miniapp/base/ShowPageData;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private isRedirect:Z

.field private loadFail:Z

.field private originalUrl:Ljava/lang/String;

.field private pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

.field private pageRandomIdByGAID:Ljava/lang/String;

.field private progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

.field private progressStartTime:J

.field private requestUrl:Ljava/lang/String;

.field private status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

.field private url:Ljava/lang/String;

.field private virtual_h5PageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/base/ShowPageStatus;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            "Z",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "J)V"
        }
    .end annotation

    const-string v0, "originalUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageRandomIdByGAID"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 7
    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 8
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 10
    iput-boolean p9, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 11
    iput-object p10, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    iput-object p11, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 13
    iput-wide p12, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_0

    .line 14
    sget-object v1, Lcom/cloud/tmc/miniapp/base/ShowPageStatus;->SHOULDOVERRIDEURKLOADING:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 15
    const-string v1, ""

    move-object v9, v1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p7

    :goto_2
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move-object v10, v3

    goto :goto_3

    :cond_3
    move-object/from16 v10, p8

    :goto_3
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p9

    :goto_4
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_5

    .line 16
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v12, v1

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    :goto_5
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_6

    move-object v13, v3

    goto :goto_6

    :cond_6
    move-object/from16 v13, p11

    :goto_6
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_7

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-wide v14, v0

    goto :goto_7

    :cond_7
    move-wide/from16 v14, p12

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 18
    invoke-direct/range {v2 .. v15}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/base/ShowPageData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JILjava/lang/Object;)Lcom/cloud/tmc/miniapp/base/ShowPageData;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p14

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v2, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v3, p2

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-object v4, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-object/from16 v4, p3

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    iget-object v5, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object/from16 v5, p4

    .line 39
    .line 40
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    iget-object v6, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move-object/from16 v6, p5

    .line 48
    .line 49
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 50
    .line 51
    if-eqz v7, :cond_5

    .line 52
    .line 53
    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move/from16 v7, p6

    .line 57
    .line 58
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 59
    .line 60
    if-eqz v8, :cond_6

    .line 61
    .line 62
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_6
    move-object/from16 v8, p7

    .line 66
    .line 67
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 68
    .line 69
    if-eqz v9, :cond_7

    .line 70
    .line 71
    iget-object v9, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move-object/from16 v9, p8

    .line 75
    .line 76
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 77
    .line 78
    if-eqz v10, :cond_8

    .line 79
    .line 80
    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 81
    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move/from16 v10, p9

    .line 84
    .line 85
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 86
    .line 87
    if-eqz v11, :cond_9

    .line 88
    .line 89
    iget-object v11, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 90
    .line 91
    goto :goto_9

    .line 92
    :cond_9
    move-object/from16 v11, p10

    .line 93
    .line 94
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 95
    .line 96
    if-eqz v12, :cond_a

    .line 97
    .line 98
    iget-object v12, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 99
    .line 100
    goto :goto_a

    .line 101
    :cond_a
    move-object/from16 v12, p11

    .line 102
    .line 103
    :goto_a
    and-int/lit16 v1, v1, 0x800

    .line 104
    .line 105
    if-eqz v1, :cond_b

    .line 106
    .line 107
    iget-wide v13, v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 108
    .line 109
    goto :goto_b

    .line 110
    :cond_b
    move-wide/from16 v13, p12

    .line 111
    .line 112
    :goto_b
    move-object/from16 p1, v2

    .line 113
    .line 114
    move-object/from16 p2, v3

    .line 115
    .line 116
    move-object/from16 p3, v4

    .line 117
    .line 118
    move-object/from16 p4, v5

    .line 119
    .line 120
    move-object/from16 p5, v6

    .line 121
    .line 122
    move/from16 p6, v7

    .line 123
    .line 124
    move-object/from16 p7, v8

    .line 125
    .line 126
    move-object/from16 p8, v9

    .line 127
    .line 128
    move/from16 p9, v10

    .line 129
    .line 130
    move-object/from16 p10, v11

    .line 131
    .line 132
    move-object/from16 p11, v12

    .line 133
    .line 134
    move-wide/from16 p12, v13

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p13}, Lcom/cloud/tmc/miniapp/base/ShowPageData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)Lcom/cloud/tmc/miniapp/base/ShowPageData;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/base/ShowPageStatus;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/integration/chain/page/PageChainContext;",
            "Z",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "J)",
            "Lcom/cloud/tmc/miniapp/base/ShowPageData;"
        }
    .end annotation

    .line 1
    const-string v0, "originalUrl"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "url"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "requestUrl"

    .line 16
    .line 17
    move-object/from16 v4, p3

    .line 18
    .line 19
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "virtual_h5PageId"

    .line 23
    .line 24
    move-object/from16 v5, p4

    .line 25
    .line 26
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "status"

    .line 30
    .line 31
    move-object/from16 v6, p5

    .line 32
    .line 33
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "pageRandomIdByGAID"

    .line 37
    .line 38
    move-object/from16 v8, p7

    .line 39
    .line 40
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "progressCollectList"

    .line 44
    .line 45
    move-object/from16 v11, p10

    .line 46
    .line 47
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    move/from16 v7, p6

    .line 54
    .line 55
    move-object/from16 v9, p8

    .line 56
    .line 57
    move/from16 v10, p9

    .line 58
    .line 59
    move-object/from16 v12, p11

    .line 60
    .line 61
    move-wide/from16 v13, p12

    .line 62
    .line 63
    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/miniapp/base/ShowPageData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/miniapp/base/ShowPageStatus;ZLjava/lang/String;Lcom/cloud/tmc/integration/chain/page/PageChainContext;ZLjava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;J)V

    .line 64
    .line 65
    .line 66
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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 65
    .line 66
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 83
    .line 84
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 85
    .line 86
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_9

    .line 91
    .line 92
    return v2

    .line 93
    :cond_9
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 94
    .line 95
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 96
    .line 97
    if-eq v1, v3, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 112
    .line 113
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 114
    .line 115
    if-eq v1, v3, :cond_c

    .line 116
    .line 117
    return v2

    .line 118
    :cond_c
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 119
    .line 120
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 121
    .line 122
    cmp-long p1, v3, v5

    .line 123
    .line 124
    if-eqz p1, :cond_d

    .line 125
    .line 126
    return v2

    .line 127
    :cond_d
    return v0
.end method

.method public final getLoadFail()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOriginalUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageChainContext()Lcom/cloud/tmc/integration/chain/page/PageChainContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPageRandomIdByGAID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressCollectList()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRequestUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Lcom/cloud/tmc/miniapp/base/ShowPageStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVirtual_h5PageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move v1, v2

    .line 51
    :cond_0
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v1, v0

    .line 61
    mul-int/lit8 v1, v1, 0x1f

    .line 62
    .line 63
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    if-nez v0, :cond_1

    .line 67
    .line 68
    move v0, v3

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    :goto_0
    add-int/2addr v1, v0

    .line 75
    mul-int/lit8 v1, v1, 0x1f

    .line 76
    .line 77
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move v2, v0

    .line 83
    :goto_1
    add-int/2addr v1, v2

    .line 84
    mul-int/lit8 v1, v1, 0x1f

    .line 85
    .line 86
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    .line 94
    .line 95
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 96
    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    :goto_2
    add-int/2addr v0, v3

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    .line 106
    .line 107
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 108
    .line 109
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v1, v0

    .line 114
    return v1
.end method

.method public final isRedirect()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setLoadFail(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setOriginalUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPageChainContext(Lcom/cloud/tmc/integration/chain/page/PageChainContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 2
    .line 3
    return-void
.end method

.method public final setPageRandomIdByGAID(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgressCollectList(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgressStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRedirect(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setRequestUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setStatus(Lcom/cloud/tmc/miniapp/base/ShowPageStatus;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 7
    .line 8
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setVirtual_h5PageId(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->originalUrl:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->requestUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->virtual_h5PageId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->status:Lcom/cloud/tmc/miniapp/base/ShowPageStatus;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->loadFail:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageRandomIdByGAID:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->pageChainContext:Lcom/cloud/tmc/integration/chain/page/PageChainContext;

    .line 16
    .line 17
    iget-boolean v8, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->isRedirect:Z

    .line 18
    .line 19
    iget-object v9, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 22
    .line 23
    iget-wide v11, p0, Lcom/cloud/tmc/miniapp/base/ShowPageData;->progressStartTime:J

    .line 24
    .line 25
    new-instance v13, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v14, "ShowPageData(originalUrl="

    .line 31
    .line 32
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", url="

    .line 39
    .line 40
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", requestUrl="

    .line 47
    .line 48
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", virtual_h5PageId="

    .line 55
    .line 56
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", status="

    .line 63
    .line 64
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", loadFail="

    .line 71
    .line 72
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", pageRandomIdByGAID="

    .line 79
    .line 80
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ", pageChainContext="

    .line 87
    .line 88
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", isRedirect="

    .line 95
    .line 96
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, ", progressCollectList="

    .line 103
    .line 104
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ", progressCurrentStep="

    .line 111
    .line 112
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, ", progressStartTime="

    .line 119
    .line 120
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v13, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ")"

    .line 127
    .line 128
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method
