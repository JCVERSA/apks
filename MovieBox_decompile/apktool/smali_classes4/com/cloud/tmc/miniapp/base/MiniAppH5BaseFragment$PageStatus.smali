.class public final Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PageStatus"
.end annotation


# instance fields
.field private canGoBack:Z

.field private isDomContentLoaded:Z

.field private isHomePage:Z

.field private isLoadError:Z

.field private isPageFinished:Z

.field private isProgressChangedTo100:Z

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

.field private url:Ljava/lang/String;

.field private virtual_h5PageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    const/16 v13, 0x7ff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "JZ)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtual_h5PageId"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressCollectList"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    .line 4
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 5
    iput-boolean p3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 6
    iput-boolean p4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 7
    iput-boolean p5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 8
    iput-boolean p6, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 9
    iput-object p7, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 10
    iput-object p8, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    iput-object p9, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 12
    iput-wide p10, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 13
    iput-boolean p12, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 14
    const-string p1, ""

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->pageRandomIdByGAID:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 15
    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    .line 16
    const-string v8, "0"

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 17
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    goto :goto_9

    :cond_9
    move-wide/from16 v11, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move/from16 v3, p12

    :goto_a
    move-object p1, p0

    move-object p2, v1

    move/from16 p3, v2

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-wide/from16 p11, v11

    move/from16 p13, v3

    .line 19
    invoke-direct/range {p1 .. p13}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZILjava/lang/Object;)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;
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
    iget-object v2, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

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
    iget-boolean v3, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

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
    iget-boolean v4, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v4, p3

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 30
    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    iget-boolean v5, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v5, p4

    .line 37
    .line 38
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 39
    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    iget-boolean v6, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move/from16 v6, p5

    .line 46
    .line 47
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 48
    .line 49
    if-eqz v7, :cond_5

    .line 50
    .line 51
    iget-boolean v7, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move/from16 v7, p6

    .line 55
    .line 56
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 57
    .line 58
    if-eqz v8, :cond_6

    .line 59
    .line 60
    iget-object v8, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

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
    iget-object v9, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

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
    iget-object v10, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move-object/from16 v10, p9

    .line 82
    .line 83
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 84
    .line 85
    if-eqz v11, :cond_9

    .line 86
    .line 87
    iget-wide v11, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 88
    .line 89
    goto :goto_9

    .line 90
    :cond_9
    move-wide/from16 v11, p10

    .line 91
    .line 92
    :goto_9
    and-int/lit16 v1, v1, 0x400

    .line 93
    .line 94
    if-eqz v1, :cond_a

    .line 95
    .line 96
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 97
    .line 98
    goto :goto_a

    .line 99
    :cond_a
    move/from16 v1, p12

    .line 100
    .line 101
    :goto_a
    move-object p1, v2

    .line 102
    move p2, v3

    .line 103
    move/from16 p3, v4

    .line 104
    .line 105
    move/from16 p4, v5

    .line 106
    .line 107
    move/from16 p5, v6

    .line 108
    .line 109
    move/from16 p6, v7

    .line 110
    .line 111
    move-object/from16 p7, v8

    .line 112
    .line 113
    move-object/from16 p8, v9

    .line 114
    .line 115
    move-object/from16 p9, v10

    .line 116
    .line 117
    move-wide/from16 p10, v11

    .line 118
    .line 119
    move/from16 p12, v1

    .line 120
    .line 121
    invoke-virtual/range {p0 .. p12}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->copy(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component11()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/util/concurrent/ConcurrentHashMap;
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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;",
            "JZ)",
            "Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;"
        }
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "virtual_h5PageId"

    .line 8
    .line 9
    move-object/from16 v8, p7

    .line 10
    .line 11
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "progressCollectList"

    .line 15
    .line 16
    move-object/from16 v9, p8

    .line 17
    .line 18
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    move/from16 v3, p2

    .line 25
    .line 26
    move/from16 v4, p3

    .line 27
    .line 28
    move/from16 v5, p4

    .line 29
    .line 30
    move/from16 v6, p5

    .line 31
    .line 32
    move/from16 v7, p6

    .line 33
    .line 34
    move-object/from16 v10, p9

    .line 35
    .line 36
    move-wide/from16 v11, p10

    .line 37
    .line 38
    move/from16 v13, p12

    .line 39
    .line 40
    invoke-direct/range {v1 .. v13}, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;-><init>(Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;JZ)V

    .line 41
    .line 42
    .line 43
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
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

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
    check-cast p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 39
    .line 40
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 53
    .line 54
    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    .line 74
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_9

    .line 79
    .line 80
    return v2

    .line 81
    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 82
    .line 83
    iget-object v3, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 84
    .line 85
    if-eq v1, v3, :cond_a

    .line 86
    .line 87
    return v2

    .line 88
    :cond_a
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 89
    .line 90
    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 91
    .line 92
    cmp-long v1, v3, v5

    .line 93
    .line 94
    if-eqz v1, :cond_b

    .line 95
    .line 96
    return v2

    .line 97
    :cond_b
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 98
    .line 99
    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 100
    .line 101
    if-eq v1, p1, :cond_c

    .line 102
    .line 103
    return v2

    .line 104
    :cond_c
    return v0
.end method

.method public final getCanGoBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPageRandomIdByGAID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->pageRandomIdByGAID:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressCurrentStep()Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVirtual_h5PageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    :cond_0
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move v1, v2

    .line 23
    :cond_1
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    move v1, v2

    .line 31
    :cond_2
    add-int/2addr v0, v1

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 35
    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    move v1, v2

    .line 39
    :cond_3
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 43
    .line 44
    if-eqz v1, :cond_4

    .line 45
    .line 46
    move v1, v2

    .line 47
    :cond_4
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v1, v0

    .line 57
    mul-int/lit8 v1, v1, 0x1f

    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v0, v0, 0x1f

    .line 67
    .line 68
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 69
    .line 70
    if-nez v1, :cond_5

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    :goto_0
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 82
    .line 83
    invoke-static {v3, v4}, Landroidx/collection/s;->a(J)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v1, v0

    .line 88
    mul-int/lit8 v1, v1, 0x1f

    .line 89
    .line 90
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    move v2, v0

    .line 96
    :goto_1
    add-int/2addr v1, v2

    .line 97
    return v1
.end method

.method public final isDomContentLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isHomePage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isLoadError()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPageFinished()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isProgressChangedTo100()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setCanGoBack(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDomContentLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHomePage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLoadError(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPageFinished(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPageRandomIdByGAID(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->pageRandomIdByGAID:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgressChangedTo100(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 2
    .line 3
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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public final setProgressCurrentStep(Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgressStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 2
    .line 3
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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->url:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isProgressChangedTo100:Z

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isPageFinished:Z

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isHomePage:Z

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isLoadError:Z

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->canGoBack:Z

    .line 12
    .line 13
    iget-object v6, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->virtual_h5PageId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCollectList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressCurrentStep:Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$ProgressStep;

    .line 18
    .line 19
    iget-wide v9, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->progressStartTime:J

    .line 20
    .line 21
    iget-boolean v11, p0, Lcom/cloud/tmc/miniapp/base/MiniAppH5BaseFragment$PageStatus;->isDomContentLoaded:Z

    .line 22
    .line 23
    new-instance v12, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v13, "PageStatus(url="

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
    const-string v0, ", isProgressChangedTo100="

    .line 37
    .line 38
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", isPageFinished="

    .line 45
    .line 46
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", isHomePage="

    .line 53
    .line 54
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", isLoadError="

    .line 61
    .line 62
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", canGoBack="

    .line 69
    .line 70
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ", virtual_h5PageId="

    .line 77
    .line 78
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, ", progressCollectList="

    .line 85
    .line 86
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, ", progressCurrentStep="

    .line 93
    .line 94
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v0, ", progressStartTime="

    .line 101
    .line 102
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ", isDomContentLoaded="

    .line 109
    .line 110
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
