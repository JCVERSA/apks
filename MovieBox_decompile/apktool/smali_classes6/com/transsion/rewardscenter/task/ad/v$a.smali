.class public final Lcom/transsion/rewardscenter/task/ad/v$a;
.super Lcom/transsion/rewardscenter/task/ad/v;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/rewardscenter/task/ad/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

.field private b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field private c:Lcom/transsion/ad/bidding/base/r;

.field private d:Lcom/transsion/ad/bidding/base/u;

.field private e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)V
    .locals 1

    const-string v0, "adBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTaskState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/transsion/rewardscenter/task/ad/v;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 6
    iput-object p2, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 7
    iput-object p3, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    .line 8
    iput-object p4, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 9
    iput-object p5, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    iput-object p6, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    .line 11
    iput-boolean p7, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 12
    iput-boolean p8, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 13
    iput-wide p9, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_3

    .line 1
    sget-object v4, Lcom/transsion/rewardscenter/task/ad/AdTaskState;->NORMAL:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_4

    .line 2
    const-string v5, ""

    goto :goto_4

    :cond_4
    move-object/from16 v5, p6

    :goto_4
    and-int/lit8 v6, v0, 0x40

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_5

    :cond_5
    move/from16 v6, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v7, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    const-wide/16 v8, 0x0

    goto :goto_7

    :cond_7
    move-wide/from16 v8, p9

    :goto_7
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object/from16 p6, v2

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p9, v6

    move/from16 p10, v7

    move-wide/from16 p11, v8

    .line 3
    invoke-direct/range {p2 .. p12}, Lcom/transsion/rewardscenter/task/ad/v$a;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/rewardscenter/task/ad/v$a;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJILjava/lang/Object;)Lcom/transsion/rewardscenter/task/ad/v$a;
    .locals 12

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
    iget-object v2, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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
    iget-object v3, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

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
    iget-object v4, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object/from16 v5, p4

    .line 36
    .line 37
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 38
    .line 39
    if-eqz v6, :cond_4

    .line 40
    .line 41
    iget-object v6, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move-object/from16 v6, p5

    .line 45
    .line 46
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 47
    .line 48
    if-eqz v7, :cond_5

    .line 49
    .line 50
    iget-object v7, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_5

    .line 53
    :cond_5
    move-object/from16 v7, p6

    .line 54
    .line 55
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 56
    .line 57
    if-eqz v8, :cond_6

    .line 58
    .line 59
    iget-boolean v8, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 60
    .line 61
    goto :goto_6

    .line 62
    :cond_6
    move/from16 v8, p7

    .line 63
    .line 64
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 65
    .line 66
    if-eqz v9, :cond_7

    .line 67
    .line 68
    iget-boolean v9, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 69
    .line 70
    goto :goto_7

    .line 71
    :cond_7
    move/from16 v9, p8

    .line 72
    .line 73
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 74
    .line 75
    if-eqz v1, :cond_8

    .line 76
    .line 77
    iget-wide v10, v0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 78
    .line 79
    goto :goto_8

    .line 80
    :cond_8
    move-wide/from16 v10, p9

    .line 81
    .line 82
    :goto_8
    move-object p1, v2

    .line 83
    move-object p2, v3

    .line 84
    move-object p3, v4

    .line 85
    move-object/from16 p4, v5

    .line 86
    .line 87
    move-object/from16 p5, v6

    .line 88
    .line 89
    move-object/from16 p6, v7

    .line 90
    .line 91
    move/from16 p7, v8

    .line 92
    .line 93
    move/from16 p8, v9

    .line 94
    .line 95
    move-wide/from16 p9, v10

    .line 96
    .line 97
    invoke-virtual/range {p0 .. p10}, Lcom/transsion/rewardscenter/task/ad/v$a;->a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)Lcom/transsion/rewardscenter/task/ad/v$a;
    .locals 12

    .line 1
    const-string v0, "adBean"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "adTaskState"

    .line 8
    .line 9
    move-object/from16 v6, p5

    .line 10
    .line 11
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "packageName"

    .line 15
    .line 16
    move-object/from16 v7, p6

    .line 17
    .line 18
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    move-object v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move-object/from16 v5, p4

    .line 27
    .line 28
    move/from16 v8, p7

    .line 29
    .line 30
    move/from16 v9, p8

    .line 31
    .line 32
    move-wide/from16 v10, p9

    .line 33
    .line 34
    invoke-direct/range {v1 .. v11}, Lcom/transsion/rewardscenter/task/ad/v$a;-><init>(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/u;Lcom/transsion/rewardscenter/task/ad/AdTaskState;Ljava/lang/String;ZZJ)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public final c()Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lcom/transsion/ad/bidding/base/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Lcom/transsion/rewardscenter/task/ad/AdTaskState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 2
    .line 3
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
    instance-of v1, p1, Lcom/transsion/rewardscenter/task/ad/v$a;

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
    check-cast p1, Lcom/transsion/rewardscenter/task/ad/v$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 60
    .line 61
    if-eq v1, v3, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

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
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 76
    .line 77
    iget-boolean v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 78
    .line 79
    if-eq v1, v3, :cond_8

    .line 80
    .line 81
    return v2

    .line 82
    :cond_8
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 83
    .line 84
    iget-boolean v3, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 85
    .line 86
    if-eq v1, v3, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-wide v3, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 90
    .line 91
    iget-wide v5, p1, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 92
    .line 93
    cmp-long p1, v3, v5

    .line 94
    .line 95
    if-eqz p1, :cond_a

    .line 96
    .line 97
    return v2

    .line 98
    :cond_a
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final h()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

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
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

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
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    :goto_2
    add-int/2addr v0, v2

    .line 46
    mul-int/lit8 v0, v0, 0x1f

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/2addr v0, v1

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 67
    .line 68
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    add-int/2addr v0, v1

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-boolean v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 76
    .line 77
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-wide v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 85
    .line 86
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    add-int/2addr v0, v1

    .line 91
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcom/transsion/ad/bidding/base/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public final l(Lcom/transsion/ad/bidding/base/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    .line 2
    .line 3
    return-void
.end method

.method public final m(Lcom/transsion/rewardscenter/task/ad/AdTaskState;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 7
    .line 8
    return-void
.end method

.method public final n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public final o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public final p(Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    return-void
.end method

.method public final q(Lcom/transsion/ad/bidding/base/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->a:Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->b:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->c:Lcom/transsion/ad/bidding/base/r;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->d:Lcom/transsion/ad/bidding/base/u;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->e:Lcom/transsion/rewardscenter/task/ad/AdTaskState;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->f:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v6, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->g:Z

    .line 14
    .line 15
    iget-boolean v7, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->h:Z

    .line 16
    .line 17
    iget-wide v8, p0, Lcom/transsion/rewardscenter/task/ad/v$a;->i:J

    .line 18
    .line 19
    new-instance v10, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v11, "RegularItem(adBean="

    .line 25
    .line 26
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, ", nativeAdView="

    .line 33
    .line 34
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", adLayoutProvider="

    .line 41
    .line 42
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", sspLayoutProvider="

    .line 49
    .line 50
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", adTaskState="

    .line 57
    .line 58
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", packageName="

    .line 65
    .line 66
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", isPullNewAd="

    .line 73
    .line 74
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", bind="

    .line 81
    .line 82
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", downloadStartTime="

    .line 89
    .line 90
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ")"

    .line 97
    .line 98
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method
