.class public final Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;
.super Lcom/transsnet/downloader/viewmodel/a;
.source "source.java"


# instance fields
.field private final b:Landroidx/lifecycle/b0;

.field private final c:Landroidx/lifecycle/b0;

.field private final d:Lkotlin/Lazy;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private final h:Lkotlin/Lazy;

.field private final i:Lkotlin/Lazy;

.field private final j:Lkotlin/Lazy;

.field private final k:Lkotlin/Lazy;

.field private final l:Lkotlin/Lazy;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->b:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v0, Landroidx/lifecycle/b0;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->c:Landroidx/lifecycle/b0;

    .line 17
    .line 18
    new-instance v0, Lcom/transsnet/downloader/viewmodel/b0;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/b0;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->d:Lkotlin/Lazy;

    .line 28
    .line 29
    new-instance v0, Landroidx/lifecycle/b0;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->e:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    new-instance v0, Lcom/transsnet/downloader/viewmodel/c0;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/c0;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->f:Lkotlin/Lazy;

    .line 46
    .line 47
    new-instance v0, Lcom/transsnet/downloader/viewmodel/d0;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/d0;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->g:Lkotlin/Lazy;

    .line 57
    .line 58
    new-instance v0, Lcom/transsnet/downloader/viewmodel/e0;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/e0;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->h:Lkotlin/Lazy;

    .line 68
    .line 69
    new-instance v0, Lcom/transsnet/downloader/viewmodel/f0;

    .line 70
    .line 71
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/f0;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->i:Lkotlin/Lazy;

    .line 79
    .line 80
    new-instance v0, Lcom/transsnet/downloader/viewmodel/g0;

    .line 81
    .line 82
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/g0;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->j:Lkotlin/Lazy;

    .line 90
    .line 91
    new-instance v0, Lcom/transsnet/downloader/viewmodel/h0;

    .line 92
    .line 93
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/h0;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->k:Lkotlin/Lazy;

    .line 101
    .line 102
    new-instance v0, Lcom/transsnet/downloader/viewmodel/i0;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/transsnet/downloader/viewmodel/i0;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->l:Lkotlin/Lazy;

    .line 112
    .line 113
    const-string v0, "lastFormatTime"

    .line 114
    .line 115
    iput-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->m:Ljava/lang/String;

    .line 116
    .line 117
    const/16 v0, 0xa

    .line 118
    .line 119
    iput v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->o:I

    .line 120
    .line 121
    return-void
.end method

.method static synthetic A(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->z(Ljava/util/List;Z)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final D(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->H()Lsi/a;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    if-eqz p2, :cond_3

    .line 62
    .line 63
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAudioRecord$1;->label:I

    .line 66
    .line 67
    invoke-interface {p2, p1, v0}, Lsi/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-ne p2, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    :goto_1
    sget-object p2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v1, "delete --- "

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " ---audio recording"

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p2, p1}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method

.method private final E(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    .line 69
    .line 70
    invoke-interface {p2, p1, v0}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->e(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-ne p2, v1, :cond_4

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/video/ShortTVPlayBean;

    .line 78
    .line 79
    if-eqz p2, :cond_5

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteShortTVRecord$1;->label:I

    .line 86
    .line 87
    invoke-interface {p1, p2, v0}, Lcom/transsion/baselib/db/video/ShortTVPlayDao;->j(Lcom/transsion/baselib/db/video/ShortTVPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v1, :cond_5

    .line 92
    .line 93
    return-object v1

    .line 94
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 95
    .line 96
    return-object p1
.end method

.method private final F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Ljava/util/Iterator;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 48
    .line 49
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

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
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p1, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 64
    .line 65
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    .line 83
    .line 84
    invoke-interface {p2, v2, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-ne p2, v1, :cond_4

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_4
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 92
    .line 93
    if-nez p2, :cond_5

    .line 94
    .line 95
    new-instance p2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    move-object v2, p1

    .line 105
    move-object p1, p2

    .line 106
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_7

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$0:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->L$1:Ljava/lang/Object;

    .line 125
    .line 126
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteStreamRecord$1;->label:I

    .line 127
    .line 128
    invoke-interface {v4, p2, v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;->h(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    if-ne p2, v1, :cond_6

    .line 133
    .line 134
    return-object v1

    .line 135
    :cond_7
    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v1, "delete --- "

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string p2, " --- video recording --> success"

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p1
.end method

.method private final G(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setRead(I)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    invoke-virtual {p1, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPlayTimeStamp(J)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v4, v5}, Lcom/transsion/baselib/db/download/DownloadBean;->setReadProgress(J)V

    .line 66
    .line 67
    .line 68
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->L$0:Ljava/lang/Object;

    .line 75
    .line 76
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteVideoRecord$1;->label:I

    .line 77
    .line 78
    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->b0(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-ne p2, v1, :cond_3

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_3
    :goto_1
    sget-object p2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v1, "delete --- "

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p1, " --- video recording --> success"

    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, p1}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    return-object p1
.end method

.method private final H()Lsi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lsi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final K()Lep/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final L()Lep/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->l:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lep/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Ljava/util/Iterator;

    .line 48
    .line 49
    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Ljava/util/List;

    .line 52
    .line 53
    iget-object v6, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Ljava/util/List;

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_5

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lcom/transsnet/downloader/viewmodel/j0;

    .line 73
    .line 74
    iget-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Ljava/util/Iterator;

    .line 77
    .line 78
    iget-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v5, Ljava/util/List;

    .line 81
    .line 82
    iget-object v6, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v6, Ljava/util/List;

    .line 85
    .line 86
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object p2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/a0;->a()Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    return-object p1

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v5

    .line 116
    const-string v2, "\u5f00\u59cb\u83b7\u53d6\u7ad9\u5916\u89c6\u9891 "

    .line 117
    .line 118
    invoke-virtual {p2, v2}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Lcom/transsnet/downloader/viewmodel/a0;->n()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    new-instance v7, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v8

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v9

    .line 138
    sub-long/2addr v9, v5

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v6, "getOutsideVideoDownloadList --> videos = "

    .line 145
    .line 146
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v6, " --- consume = "

    .line 153
    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {p2, v5}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    check-cast v2, Ljava/lang/Iterable;

    .line 168
    .line 169
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    move-object v2, v7

    .line 174
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_a

    .line 179
    .line 180
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    move-object v11, v5

    .line 185
    check-cast v11, Lcom/transsnet/downloader/viewmodel/j0;

    .line 186
    .line 187
    sget-object v5, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 188
    .line 189
    invoke-virtual {v5}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    invoke-virtual {v11}, Lcom/transsnet/downloader/viewmodel/j0;->e()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    if-nez v6, :cond_5

    .line 198
    .line 199
    const-string v6, ""

    .line 200
    .line 201
    :cond_5
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    .line 202
    .line 203
    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    .line 204
    .line 205
    iput-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v11, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    .line 208
    .line 209
    iput v4, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    .line 210
    .line 211
    const/4 v7, 0x0

    .line 212
    const/4 v9, 0x2

    .line 213
    const/4 v10, 0x0

    .line 214
    move-object v8, v0

    .line 215
    invoke-static/range {v5 .. v10}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->F(Lcom/transsnet/downloader/manager/DownloadEsHelper;Ljava/lang/String;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    if-ne v5, v1, :cond_6

    .line 220
    .line 221
    return-object v1

    .line 222
    :cond_6
    move-object v6, p1

    .line 223
    move-object p1, v11

    .line 224
    move-object v12, v2

    .line 225
    move-object v2, p2

    .line 226
    move-object p2, v5

    .line 227
    move-object v5, v12

    .line 228
    :goto_2
    check-cast p2, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 229
    .line 230
    if-eqz p2, :cond_8

    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-eqz v7, :cond_7

    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_7
    invoke-virtual {p0, p2}, Lcom/transsnet/downloader/viewmodel/a;->c(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    :goto_3
    move-object p2, v2

    .line 254
    move-object v2, v5

    .line 255
    move-object p1, v6

    .line 256
    goto :goto_1

    .line 257
    :cond_8
    :goto_4
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/a;->b(Lcom/transsnet/downloader/viewmodel/j0;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    iput-object v6, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$0:Ljava/lang/Object;

    .line 268
    .line 269
    iput-object v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$1:Ljava/lang/Object;

    .line 270
    .line 271
    iput-object v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$2:Ljava/lang/Object;

    .line 272
    .line 273
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->L$3:Ljava/lang/Object;

    .line 274
    .line 275
    iput v3, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideVideoDownloadList$1;->label:I

    .line 276
    .line 277
    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->T(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    if-ne p2, v1, :cond_9

    .line 282
    .line 283
    return-object v1

    .line 284
    :cond_9
    :goto_5
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/viewmodel/a;->c(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_a
    sget-object p1, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 296
    .line 297
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/a;->d()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 302
    .line 303
    .line 304
    move-result p2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v1, "\u9700\u8981\u52a0\u8f7d\u7684\u5c01\u9762 coverVideoList = "

    .line 311
    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/a0;->t(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 326
    .line 327
    return-object p1
.end method

.method private final Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v5, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/util/List;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/util/List;

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-object v6, p2

    .line 52
    move-object p2, p1

    .line 53
    move-object p1, v0

    .line 54
    move-object v0, v6

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object p1, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$0:Ljava/lang/Object;

    .line 79
    .line 80
    iput-object p2, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->L$1:Ljava/lang/Object;

    .line 81
    .line 82
    iput v5, v0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$2;->label:I

    .line 83
    .line 84
    invoke-static {v2, v4, v0, v5, v3}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->O(Lcom/transsnet/downloader/manager/DownloadEsHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-ne v0, v1, :cond_3

    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_3
    :goto_1
    check-cast v0, Ljava/util/List;

    .line 92
    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 110
    .line 111
    invoke-virtual {p0, v1}, Lcom/transsnet/downloader/viewmodel/a;->c(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    if-eqz p1, :cond_5

    .line 120
    .line 121
    move-object v0, p2

    .line 122
    check-cast v0, Ljava/util/Collection;

    .line 123
    .line 124
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    :cond_5
    const/4 p1, 0x2

    .line 132
    invoke-static {p0, p2, v4, p1, v3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->A(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->T()Landroidx/lifecycle/b0;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {p2, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method

.method private final U()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->j:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method private final V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic X(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 7
    .line 8
    if-eqz p3, :cond_1

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->W(ZZ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final Z(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getUgcVideo()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->U()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getUgcVideo()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {v0, p1, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->j(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-ne p1, p2, :cond_0

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq v0, v1, :cond_4

    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    if-eq v0, v1, :cond_3

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    if-eq v0, v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_5

    .line 55
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->G(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-ne p1, p2, :cond_5

    .line 65
    .line 66
    return-object p1

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->E(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p1, p2, :cond_5

    .line 82
    .line 83
    return-object p1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    if-ne p1, p2, :cond_5

    .line 99
    .line 100
    return-object p1

    .line 101
    :cond_4
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->D(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-ne p1, p2, :cond_5

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1
.end method

.method private static final a0()Lep/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final b0()Lep/b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lep/b;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lep/b;

    .line 11
    .line 12
    return-object v0
.end method

.method private final d0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lep/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lep/a;->b(Lcom/transsion/baselib/db/audio/AudioBean;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    :goto_0
    if-eqz v0, :cond_3

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lep/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lep/a;->f()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne v0, v2, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v2, v1

    .line 37
    :goto_1
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lep/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-interface {p1}, Lep/a;->stop()V

    .line 46
    .line 47
    .line 48
    :cond_2
    return-void

    .line 49
    :cond_3
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->K()Lep/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-static {v0, p1, v1, v2, v3}, Lep/a$a;->a(Lep/a;Lcom/transsion/baselib/db/audio/AudioBean;ZILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->L()Lep/b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 67
    .line 68
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0, v1, p1}, Lep/b;->a(Ljava/lang/ref/WeakReference;Lcom/transsion/baselib/db/audio/AudioBean;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method public static synthetic e()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->j0()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final e0(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getDownloadFilePath()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, v0

    .line 10
    :goto_0
    sget-object v2, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/transsnet/downloader/viewmodel/a0;->o(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    if-nez v2, :cond_2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    if-eqz p2, :cond_6

    .line 29
    .line 30
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p2, p1, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->t0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_3
    :goto_1
    if-eqz p2, :cond_6

    .line 45
    .line 46
    const-string p3, "/movie/detail"

    .line 47
    .line 48
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_2

    .line 65
    :cond_4
    sget-object v1, Lcom/transsion/moviedetailapi/SubjectType;->MOVIE:Lcom/transsion/moviedetailapi/SubjectType;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    :goto_2
    const-string v2, "subject_type"

    .line 72
    .line 73
    invoke-virtual {p3, v2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move-object p1, v0

    .line 85
    :goto_3
    const-string v1, "id"

    .line 86
    .line 87
    invoke-virtual {p3, v1, p1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-class p3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;

    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    const-string v1, "module_name"

    .line 98
    .line 99
    invoke-virtual {p1, v1, p3}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const/4 p3, 0x2

    .line 104
    invoke-static {p1, p2, v0, p3, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_4
    return-void
.end method

.method public static synthetic f()Lep/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->b0()Lep/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final f0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    const-string p3, "/movie/detail"

    .line 4
    .line 5
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->MUSIC:Lcom/transsion/moviedetailapi/SubjectType;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, "subject_type"

    .line 16
    .line 17
    invoke-virtual {p3, v1, v0}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v0, v1

    .line 46
    :cond_2
    :goto_0
    const-string p1, "id"

    .line 47
    .line 48
    invoke-virtual {p3, p1, v0}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p3, 0x2

    .line 53
    invoke-static {p1, p2, v1, p3, v1}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    return-void
.end method

.method public static synthetic g()Lsi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->y()Lsi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final g0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p3, Lpr/a;->a:Lpr/a;

    .line 16
    .line 17
    invoke-virtual {p3}, Lpr/a;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    invoke-static {p3}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    const-string v0, "id"

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    const-string v0, "ep"

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    const-string v0, "ops"

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p3, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    const-string v0, "ms"

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 58
    .line 59
    .line 60
    move-result-wide v1

    .line 61
    invoke-virtual {p3, v0, v1, v2}, Lcom/therouter/router/Navigator;->G(Ljava/lang/String;J)Lcom/therouter/router/Navigator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 p3, 0x2

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-static {p1, p2, v0, p3, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, p2, p1, p3}, Lcom/transsnet/downloader/DownloadManagerApi;->s0(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic h()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->m0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final h0()Lkotlinx/coroutines/flow/x0;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lkotlinx/coroutines/flow/i1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static synthetic i()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->k0()Landroidx/lifecycle/b0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j()Lkotlinx/coroutines/flow/x0;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->h0()Lkotlinx/coroutines/flow/x0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final j0()Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->w1()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic k()Lep/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->a0()Lep/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final k0()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic l()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->l0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final l0()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->B1()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static final synthetic m(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Z)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->z(Ljava/util/List;Z)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final m0()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 2
    .line 3
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "getApp(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->C1()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static final synthetic n(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->D(Lcom/transsion/baselib/db/audio/AudioBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->E(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->F(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->G(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic s(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->O(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/ShortTVPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Q()Lcom/transsion/baselib/db/video/ShortTVPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->R(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic v(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->U()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;)Lcom/transsion/baselib/db/video/VideoDetailPlayDao;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->V()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->Z(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final y()Lsi/a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$f1;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/transsion/baselib/db/AppDatabase$f1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->n1()Lsi/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method private final z(Ljava/util/List;Z)Ljava/util/List;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 3
    .line 4
    const/16 v2, 0x10

    .line 5
    .line 6
    const/high16 v3, 0x3f400000    # 0.75f

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    invoke-direct {v1, v2, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 10
    .line 11
    .line 12
    check-cast p1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getOriginalFormatTime()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getOriginalFormatTime()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/util/List;

    .line 49
    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getOriginalFormatTime()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-nez v3, :cond_2

    .line 61
    .line 62
    const-string v3, ""

    .line 63
    .line 64
    :cond_2
    new-array v5, v4, [Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 65
    .line 66
    aput-object v2, v5, v0

    .line 67
    .line 68
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "lastFormatTime"

    .line 90
    .line 91
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    if-eqz v3, :cond_6

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/util/Map$Entry;

    .line 102
    .line 103
    const/4 v5, 0x0

    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    check-cast v6, Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 117
    .line 118
    invoke-virtual {v6}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-static {v6, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    if-nez v6, :cond_4

    .line 127
    .line 128
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/util/List;

    .line 133
    .line 134
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    new-instance v6, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 145
    .line 146
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    check-cast v7, Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    check-cast v7, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-direct {v6, v4, v5, v7, v5}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    check-cast v7, Ljava/lang/Iterable;

    .line 178
    .line 179
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_5

    .line 188
    .line 189
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    check-cast v8, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 194
    .line 195
    new-instance v9, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 196
    .line 197
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    check-cast v10, Ljava/util/List;

    .line 202
    .line 203
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    check-cast v10, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 208
    .line 209
    invoke-virtual {v10}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getFormatTime()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    const/4 v11, 0x2

    .line 214
    invoke-direct {v9, v11, v8, v10, v5}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;-><init>(ILcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_5
    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_6
    return-object p1
.end method


# virtual methods
.method public final B(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 7

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v4, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$delete$2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, p2, v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$delete$2;-><init>(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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

.method public final C(Lkotlin/jvm/functions/Function0;)V
    .locals 7

    .line 1
    const-string v0, "callback"

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
    new-instance v4, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAll$2;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$deleteAll$2;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

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

.method public final I()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->b:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->c:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public final N()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideLocalFileList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getOutsideLocalFileList$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final P()Lkotlinx/coroutines/flow/x0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->f:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkotlinx/coroutines/flow/x0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final S()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getTransferReceivedVideoDataList$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final T()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/b0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final W(ZZ)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p2, p0, p1, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$getVideoPlayHistoricalList$1;-><init>(ZLcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;ZLkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final Y()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v3, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v3, p0, v2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel$loadVideoCover$1;-><init>(Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;Lkotlin/coroutines/Continuation;)V

    .line 13
    .line 14
    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eq v0, v1, :cond_4

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x6

    .line 33
    if-eq v0, v1, :cond_2

    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->e0(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->f0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->g0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->d0(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Landroidx/fragment/app/FragmentActivity;)V

    .line 56
    .line 57
    .line 58
    :cond_5
    :goto_0
    return-void
.end method

.method public final i0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsnet/downloader/viewmodel/HistoricalPlayRecordViewModel;->n:I

    .line 2
    .line 3
    return-void
.end method
