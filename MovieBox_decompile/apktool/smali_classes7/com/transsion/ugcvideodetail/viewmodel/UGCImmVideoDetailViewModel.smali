.class public final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
.super Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;
    }
.end annotation


# static fields
.field public static final d0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;


# instance fields
.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private final K:Lkotlin/Lazy;

.field private final L:I

.field private M:Ljava/lang/String;

.field private N:I

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Z

.field private S:F

.field private final T:Landroidx/lifecycle/b0;

.field private final U:Landroidx/lifecycle/b0;

.field private final V:Landroidx/lifecycle/b0;

.field private final W:Landroidx/lifecycle/b0;

.field private final X:Landroidx/lifecycle/LiveData;

.field private final Y:Landroidx/lifecycle/b0;

.field private final Z:Landroidx/lifecycle/LiveData;

.field private final a0:Landroidx/lifecycle/b0;

.field private final b0:Landroidx/lifecycle/b0;

.field private final c0:Landroidx/lifecycle/LiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->d0:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/ugcvideodetail/viewmodel/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->K:Lkotlin/Lazy;

    .line 14
    .line 15
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->L:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Q:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->R:Z

    .line 25
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    .line 28
    iput v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->S:F

    .line 29
    .line 30
    new-instance v0, Landroidx/lifecycle/b0;

    .line 31
    .line 32
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->T:Landroidx/lifecycle/b0;

    .line 36
    .line 37
    new-instance v0, Landroidx/lifecycle/b0;

    .line 38
    .line 39
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->U:Landroidx/lifecycle/b0;

    .line 43
    .line 44
    new-instance v0, Landroidx/lifecycle/b0;

    .line 45
    .line 46
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->V:Landroidx/lifecycle/b0;

    .line 50
    .line 51
    new-instance v0, Landroidx/lifecycle/b0;

    .line 52
    .line 53
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W:Landroidx/lifecycle/b0;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->X:Landroidx/lifecycle/LiveData;

    .line 59
    .line 60
    new-instance v0, Landroidx/lifecycle/b0;

    .line 61
    .line 62
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y:Landroidx/lifecycle/b0;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Z:Landroidx/lifecycle/LiveData;

    .line 68
    .line 69
    new-instance v0, Landroidx/lifecycle/b0;

    .line 70
    .line 71
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    .line 75
    .line 76
    new-instance v0, Landroidx/lifecycle/b0;

    .line 77
    .line 78
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->b0:Landroidx/lifecycle/b0;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->c0:Landroidx/lifecycle/LiveData;

    .line 84
    .line 85
    return-void
.end method

.method public static final synthetic A0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->M:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic B0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->O:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic C0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->N:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic D0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private final F()Lju/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->K:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lju/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final F0(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 10

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    move-object v1, v9

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p1

    .line 13
    move v6, p4

    .line 14
    move-object v7, p5

    .line 15
    invoke-direct/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZZLcom/transsion/moviedetailapi/bean/Pager;Lkotlin/coroutines/Continuation;)V

    .line 16
    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    move-object v3, v9

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method static synthetic G0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;ILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x4

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const/4 p3, -0x1

    .line 6
    :cond_0
    move v3, p3

    .line 7
    and-int/lit8 p3, p6, 0x8

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x1

    .line 12
    :cond_1
    move v4, p4

    .line 13
    and-int/lit8 p3, p6, 0x10

    .line 14
    .line 15
    if-eqz p3, :cond_2

    .line 16
    .line 17
    const/4 p5, 0x0

    .line 18
    :cond_2
    move-object v5, p5

    .line 19
    move-object v0, p0

    .line 20
    move v1, p1

    .line 21
    move-object v2, p2

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F0(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static synthetic Q0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;IIZZILjava/lang/Object;)V
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x10

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p5, 0x0

    .line 6
    :cond_0
    move v5, p5

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    move v4, p4

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->P0(Ljava/lang/String;IIZZ)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final a1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    instance-of v2, p3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;

    .line 4
    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    move-object v2, p3

    .line 8
    check-cast v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;

    .line 9
    .line 10
    iget v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    .line 11
    .line 12
    const/high16 v4, -0x80000000

    .line 13
    .line 14
    and-int v5, v3, v4

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    sub-int/2addr v3, v4

    .line 19
    iput v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;

    .line 23
    .line 24
    invoke-direct {v2, p0, p3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget v4, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    if-ne v4, v1, :cond_1

    .line 38
    .line 39
    iget p1, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->I$0:I

    .line 40
    .line 41
    iget-object p2, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :catchall_0
    move-exception p3

    .line 51
    goto/16 :goto_b

    .line 52
    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 65
    .line 66
    const/4 p3, 0x0

    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move-object v5, p3

    .line 75
    :goto_1
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move-object v6, p3

    .line 87
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v8, "onFirstVideoDetailSuccess id:"

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v5, ", position:"

    .line 101
    .line 102
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    filled-new-array {v5}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    const/4 v8, 0x4

    .line 117
    const/4 v9, 0x0

    .line 118
    const-string v5, "UGCImmVideoDetailViewModel"

    .line 119
    .line 120
    const/4 v7, 0x0

    .line 121
    invoke-static/range {v4 .. v9}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    if-eqz p1, :cond_5

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getPosition()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_5

    .line 137
    .line 138
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    goto :goto_3

    .line 143
    :cond_5
    const/4 v4, -0x1

    .line 144
    :goto_3
    new-instance v5, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 145
    .line 146
    invoke-direct {v5, p1, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    .line 147
    .line 148
    .line 149
    if-eqz p2, :cond_6

    .line 150
    .line 151
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getDownloadStatus()I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    goto :goto_4

    .line 156
    :cond_6
    move p2, v0

    .line 157
    :goto_4
    invoke-virtual {v5, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setDownloadStatus(I)V

    .line 158
    .line 159
    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    if-eqz p2, :cond_7

    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p3

    .line 172
    :cond_7
    if-eqz p3, :cond_9

    .line 173
    .line 174
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    if-nez p2, :cond_8

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    move p2, v0

    .line 182
    goto :goto_6

    .line 183
    :cond_9
    :goto_5
    move p2, v1

    .line 184
    :goto_6
    xor-int/2addr p2, v1

    .line 185
    invoke-virtual {v5, p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->b0:Landroidx/lifecycle/b0;

    .line 189
    .line 190
    invoke-virtual {p2, v5}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    if-eqz p1, :cond_e

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    if-eqz p2, :cond_e

    .line 200
    .line 201
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    if-eqz p2, :cond_e

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    if-eqz p3, :cond_a

    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object p3

    .line 217
    if-eqz p3, :cond_a

    .line 218
    .line 219
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    goto :goto_7

    .line 224
    :cond_a
    move p3, v0

    .line 225
    :goto_7
    if-gt p3, v1, :cond_c

    .line 226
    .line 227
    iget-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W:Landroidx/lifecycle/b0;

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    if-eqz v6, :cond_b

    .line 234
    .line 235
    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getVideoNum()Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    if-eqz v6, :cond_b

    .line 240
    .line 241
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    goto :goto_8

    .line 246
    :cond_b
    move v6, v1

    .line 247
    :goto_8
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    invoke-static {p2, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 252
    .line 253
    .line 254
    move-result-object v6

    .line 255
    new-array v7, v1, [Lkotlin/Pair;

    .line 256
    .line 257
    aput-object v6, v7, v0

    .line 258
    .line 259
    invoke-static {v7}, Lkotlin/collections/MapsKt;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-virtual {p3, v6}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_c
    :try_start_1
    sget-object p3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->z()Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;

    .line 269
    .line 270
    .line 271
    move-result-object p3

    .line 272
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    filled-new-array {p1}, [Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iput-object v5, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->L$0:Ljava/lang/Object;

    .line 288
    .line 289
    iput v4, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->I$0:I

    .line 290
    .line 291
    iput v1, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$onFirstVideoDetailSuccess$1;->label:I

    .line 292
    .line 293
    invoke-interface {p3, p2, p1, v2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;->a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    if-ne p1, v3, :cond_d

    .line 298
    .line 299
    return-object v3

    .line 300
    :cond_d
    move p1, v4

    .line 301
    move-object p2, v5

    .line 302
    :goto_9
    :try_start_2
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 303
    .line 304
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    :goto_a
    move v4, p1

    .line 309
    move-object v5, p2

    .line 310
    goto :goto_c

    .line 311
    :catchall_1
    move-exception p3

    .line 312
    move p1, v4

    .line 313
    move-object p2, v5

    .line 314
    :goto_b
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 315
    .line 316
    invoke-static {p3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object p3

    .line 320
    invoke-static {p3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object p3

    .line 324
    goto :goto_a

    .line 325
    :goto_c
    invoke-static {p3}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 326
    .line 327
    .line 328
    :cond_e
    invoke-virtual {v5}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->isCollectionList()Z

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    if-eqz p1, :cond_f

    .line 333
    .line 334
    if-lez v4, :cond_f

    .line 335
    .line 336
    new-array p1, v1, [Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 337
    .line 338
    aput-object v5, p1, v0

    .line 339
    .line 340
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {p0, p1, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->E0(Ljava/util/List;Z)V

    .line 345
    .line 346
    .line 347
    :cond_f
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 348
    .line 349
    return-object p1
.end method

.method public static synthetic o0()Lju/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->x()Lju/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic p0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F0(ZLcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/moviedetailapi/bean/Pager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->O:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->N:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic t0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Lju/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F()Lju/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->L:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic w0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->b0:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final x()Lju/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lju/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lju/a;

    .line 14
    .line 15
    return-object v0
.end method

.method public static final synthetic x0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->W:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final y(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;

    .line 11
    .line 12
    iget v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    .line 22
    .line 23
    move-object/from16 v3, p0

    .line 24
    .line 25
    :goto_0
    move-object v7, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance v2, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;

    .line 28
    .line 29
    move-object/from16 v3, p0

    .line 30
    .line 31
    invoke-direct {v2, v3, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    iget-object v1, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->result:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget v4, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    const/4 v5, 0x2

    .line 45
    const/4 v6, 0x1

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    if-eq v4, v6, :cond_2

    .line 49
    .line 50
    if-ne v4, v5, :cond_1

    .line 51
    .line 52
    iget-object v0, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 55
    .line 56
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_3

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_8

    .line 62
    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_2
    iget-object v0, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Ljava/lang/String;

    .line 74
    .line 75
    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :try_start_2
    sget-object v1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iput-object v0, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    .line 89
    .line 90
    iput v6, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    .line 91
    .line 92
    invoke-virtual {v1, v0, v7}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->R(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-ne v1, v2, :cond_4

    .line 97
    .line 98
    return-object v2

    .line 99
    :cond_4
    :goto_2
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 100
    .line 101
    invoke-direct/range {p0 .. p0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->F()Lju/a;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    iput-object v1, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->L$0:Ljava/lang/Object;

    .line 106
    .line 107
    iput v5, v7, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchVideoPlayInfoInternal$1;->label:I

    .line 108
    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v8, 0x2

    .line 111
    const/4 v9, 0x0

    .line 112
    move-object v5, v0

    .line 113
    invoke-static/range {v4 .. v9}, Lju/a$a;->i(Lju/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    if-ne v0, v2, :cond_5

    .line 118
    .line 119
    return-object v2

    .line 120
    :cond_5
    move-object/from16 v21, v1

    .line 121
    .line 122
    move-object v1, v0

    .line 123
    move-object/from16 v0, v21

    .line 124
    .line 125
    :goto_3
    check-cast v1, Lcom/tn/lib/net/bean/BaseDto;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 132
    .line 133
    if-eqz v2, :cond_7

    .line 134
    .line 135
    if-eqz v0, :cond_6

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    goto :goto_4

    .line 142
    :cond_6
    const/4 v4, 0x0

    .line 143
    :goto_4
    invoke-virtual {v2, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setDownloadStatus(I)V

    .line 144
    .line 145
    .line 146
    :cond_7
    if-eqz v0, :cond_c

    .line 147
    .line 148
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v2, :cond_c

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_8

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    const/4 v4, 0x5

    .line 166
    if-ne v2, v4, :cond_c

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 173
    .line 174
    if-eqz v2, :cond_c

    .line 175
    .line 176
    new-instance v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 177
    .line 178
    const-string v12, "Mp4"

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    const-string v6, ""

    .line 185
    .line 186
    if-nez v5, :cond_9

    .line 187
    .line 188
    move-object v13, v6

    .line 189
    goto :goto_5

    .line 190
    :cond_9
    move-object v13, v5

    .line 191
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    if-nez v5, :cond_a

    .line 196
    .line 197
    move-object v14, v6

    .line 198
    goto :goto_6

    .line 199
    :cond_a
    move-object v14, v5

    .line 200
    :goto_6
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 201
    .line 202
    .line 203
    move-result v5

    .line 204
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v15

    .line 208
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v16

    .line 216
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v17

    .line 224
    const-string v18, ""

    .line 225
    .line 226
    const-string v19, ""

    .line 227
    .line 228
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubtitleIdType()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-nez v0, :cond_b

    .line 233
    .line 234
    const-string v0, "ResourceId"

    .line 235
    .line 236
    :cond_b
    move-object/from16 v20, v0

    .line 237
    .line 238
    move-object v11, v4

    .line 239
    invoke-direct/range {v11 .. v20}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v2, v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->setResources(Ljava/util/List;)V

    .line 247
    .line 248
    .line 249
    :cond_c
    :goto_7
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const-string v2, "0"

    .line 254
    .line 255
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_d

    .line 260
    .line 261
    goto :goto_9

    .line 262
    :cond_d
    invoke-virtual {v1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    .line 268
    move-object v10, v0

    .line 269
    goto :goto_9

    .line 270
    :goto_8
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 271
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    const-string v2, "fetchVideoPlayInfoInternal error:"

    .line 278
    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    const/4 v8, 0x4

    .line 290
    const/4 v9, 0x0

    .line 291
    const-string v5, "UGCImmVideoDetailViewModel"

    .line 292
    .line 293
    const/4 v7, 0x0

    .line 294
    invoke-static/range {v4 .. v9}, Lwf/a$a;->l(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    :goto_9
    return-object v10
.end method

.method public static final synthetic y0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic z0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a1(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final E0(Ljava/util/List;Z)V
    .locals 4

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    if-eqz p2, :cond_5

    .line 69
    .line 70
    check-cast p1, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    if-eqz p2, :cond_7

    .line 81
    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->U(Ljava/util/List;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/Iterable;

    .line 109
    .line 110
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    if-eqz p2, :cond_7

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    if-nez v2, :cond_6

    .line 143
    .line 144
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_7
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    const-string v0, "<get-values>(...)"

    .line 169
    .line 170
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    :goto_3
    return-void
.end method

.method public final H0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->a0:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final I0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->c0:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "ugcVideoId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "getFirstVideoDetail--getFirstVideoDetail id:"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ",collectionId:"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v2, "UGCImmVideoDetailViewModel"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    new-instance v10, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1;

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-direct {v10, p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetail$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 53
    .line 54
    .line 55
    const/4 v11, 0x3

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final K0(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "subjectId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "getFirstVideoDetailBySubject id:"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v2, "UGCImmVideoDetailViewModel"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    new-instance v10, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-direct {v10, p0, p1, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getFirstVideoDetailBySubject$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 45
    .line 46
    .line 47
    const/4 v11, 0x3

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final L0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->U:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->V:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->X:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->T:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P0(Ljava/lang/String;IIZZ)V
    .locals 10

    .line 1
    const-string v0, "collectionId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1;

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    move-object v2, v0

    .line 14
    move-object v3, p0

    .line 15
    move-object v4, p1

    .line 16
    move v5, p2

    .line 17
    move v6, p3

    .line 18
    move v7, p4

    .line 19
    move v8, p5

    .line 20
    invoke-direct/range {v2 .. v9}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoList$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;IIZZLkotlin/coroutines/Continuation;)V

    .line 21
    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, v0

    .line 28
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final R0()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Z:Landroidx/lifecycle/LiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S0(ZLjava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p0, p2, v1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getImmVideoRecommentList$1;-><init>(ZLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final T0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "ugcVideoId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "getLocalDataWithoutNet id:"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ",collectionId:"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v2, "UGCImmVideoDetailViewModel"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-static/range {v1 .. v6}, Lwf/a$a;->r(Lwf/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v3, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;

    .line 57
    .line 58
    const/4 v12, 0x0

    .line 59
    move-object v7, v3

    .line 60
    move-object v8, p2

    .line 61
    move-object v9, p0

    .line 62
    move-object v10, p1

    .line 63
    invoke-direct/range {v7 .. v12}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$getLocalDataWithoutNet$1;-><init>(Ljava/lang/String;Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 64
    .line 65
    .line 66
    const/4 v4, 0x3

    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public final U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final V0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final W0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final X0()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->S:F

    .line 2
    .line 3
    return v0
.end method

.method public final Y0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->R:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Z0(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    const-string v0, "ugcVideoId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$loadImmHistory$1;-><init>(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->R:Z

    .line 2
    .line 3
    return-void
.end method

.method public final c1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Q:Z

    .line 2
    .line 3
    return-void
.end method

.method public final d1(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final e1(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->S:F

    .line 2
    .line 3
    return-void
.end method

.method public final f1(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJ)V
    .locals 10

    .line 1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;

    .line 10
    .line 11
    const/4 v9, 0x0

    .line 12
    move-object v2, v0

    .line 13
    move-object v3, p1

    .line 14
    move-wide v4, p4

    .line 15
    move-wide v6, p2

    .line 16
    move-object v8, p0

    .line 17
    invoke-direct/range {v2 .. v9}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$updateHistory$1;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;JJLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v4, v0

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 26
    .line 27
    .line 28
    return-void
.end method
