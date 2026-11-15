.class public final Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:Lkotlin/Lazy;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "0"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/videodetail/music/data/b;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/b;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->c:Lkotlin/Lazy;

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/videodetail/music/data/c;

    .line 27
    .line 28
    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/c;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->d:Lkotlin/Lazy;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/videodetail/music/data/d;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/transsion/videodetail/music/data/d;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->e:Lkotlin/Lazy;

    .line 47
    .line 48
    new-instance v0, Landroidx/lifecycle/b0;

    .line 49
    .line 50
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f:Landroidx/lifecycle/b0;

    .line 54
    .line 55
    new-instance v0, Landroidx/lifecycle/b0;

    .line 56
    .line 57
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    .line 61
    .line 62
    return-void
.end method

.method private final A()Lxi/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lxi/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final D(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Lxi/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->q(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {v0, p1, p2}, Lxi/a;->f(Lcom/transsion/baselib/db/music/MusicLikedDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method

.method private final H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    instance-of v0, p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

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
    iput v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

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
    iget-object v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$3:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 44
    .line 45
    iget-object v4, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 48
    .line 49
    iget-object v5, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$1:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v5, Ljava/util/Iterator;

    .line 52
    .line 53
    iget-object v6, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v6, Ljava/util/List;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    move-object v10, v5

    .line 61
    move-object v11, v6

    .line 62
    move-object v5, v4

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Lxi/a;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput v4, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    .line 84
    .line 85
    invoke-interface {p1, v0}, Lxi/a;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v1, :cond_4

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    .line 93
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    .line 95
    .line 96
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .line 98
    .line 99
    check-cast p1, Ljava/lang/Iterable;

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    move-object v5, p1

    .line 106
    move-object v6, v2

    .line 107
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    move-object v2, p1

    .line 118
    check-cast v2, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 119
    .line 120
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->u()Lui/c;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v2}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->getSubjectId()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    iput-object v6, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$0:Ljava/lang/Object;

    .line 129
    .line 130
    iput-object v5, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$1:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$2:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v2, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->L$3:Ljava/lang/Object;

    .line 135
    .line 136
    iput v3, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadLocalData$1;->label:I

    .line 137
    .line 138
    invoke-interface {p1, v4, v0}, Lui/c;->D(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-ne p1, v1, :cond_5

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_5
    move-object v10, v5

    .line 146
    move-object v11, v6

    .line 147
    move-object v5, v2

    .line 148
    :goto_3
    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 149
    .line 150
    if-eqz p1, :cond_6

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    goto :goto_4

    .line 157
    :cond_6
    const/4 p1, 0x0

    .line 158
    :goto_4
    invoke-virtual {v2, p1}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;->setPath(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    .line 162
    .line 163
    const/4 v8, 0x6

    .line 164
    const/4 v9, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    const/4 v7, 0x0

    .line 167
    move-object v4, p1

    .line 168
    invoke-direct/range {v4 .. v9}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;-><init>(Lcom/transsion/baselib/db/music/MusicLikedDbBean;ILcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v11, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-object v5, v10

    .line 175
    move-object v6, v11

    .line 176
    goto :goto_2

    .line 177
    :cond_7
    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    .line 178
    .line 179
    invoke-virtual {p1, v6}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    return-object p1
.end method

.method private final I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    .line 1
    instance-of v0, p1, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

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
    iput v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    iget v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    .line 32
    .line 33
    const/4 v9, 0x4

    .line 34
    const/4 v10, 0x3

    .line 35
    const/4 v11, 0x2

    .line 36
    const/4 v12, 0x1

    .line 37
    const/4 v13, 0x0

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    if-eq v1, v12, :cond_4

    .line 41
    .line 42
    if-eq v1, v11, :cond_1

    .line 43
    .line 44
    if-eq v1, v10, :cond_3

    .line 45
    .line 46
    if-ne v1, v9, :cond_2

    .line 47
    .line 48
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto/16 :goto_7

    .line 55
    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_3
    iget-object v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Ljava/util/List;

    .line 67
    .line 68
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 81
    .line 82
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, " --> loadNetData() --> \u83b7\u53d6\u670d\u52a1\u7aef\u7684\u6570\u636e --> page = "

    .line 99
    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Lyv/a;->a(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->z()Lcom/transsion/videodetail/music/data/a;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    .line 118
    .line 119
    iput v12, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v6, 0x6

    .line 124
    const/4 v7, 0x0

    .line 125
    move-object v5, v0

    .line 126
    invoke-static/range {v1 .. v7}, Lcom/transsion/videodetail/music/data/a$a;->a(Lcom/transsion/videodetail/music/data/a;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v8, :cond_6

    .line 131
    .line 132
    return-object v8

    .line 133
    :cond_6
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    .line 140
    .line 141
    if-eqz v1, :cond_7

    .line 142
    .line 143
    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;->getItems()Ljava/util/List;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    iget-object v2, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    .line 150
    .line 151
    check-cast v1, Ljava/util/Collection;

    .line 152
    .line 153
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    :cond_7
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    check-cast v1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    .line 165
    .line 166
    if-eqz v1, :cond_8

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    if-eqz v1, :cond_8

    .line 173
    .line 174
    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Pager;->getHasMore()Ljava/lang/Boolean;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    goto :goto_2

    .line 187
    :cond_8
    const/4 v1, 0x0

    .line 188
    :goto_2
    if-eqz v1, :cond_a

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    .line 195
    .line 196
    if-eqz p1, :cond_9

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;->getPager()Lcom/transsion/moviedetailapi/bean/Pager;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_9

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Pager;->getNextPage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    goto :goto_3

    .line 209
    :cond_9
    move-object p1, v13

    .line 210
    :goto_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->a:Ljava/lang/String;

    .line 215
    .line 216
    iput v11, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    .line 217
    .line 218
    invoke-direct {p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    if-ne p1, v8, :cond_e

    .line 223
    .line 224
    return-object v8

    .line 225
    :cond_a
    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    .line 226
    .line 227
    check-cast p1, Ljava/lang/Iterable;

    .line 228
    .line 229
    new-instance v1, Ljava/util/ArrayList;

    .line 230
    .line 231
    const/16 v2, 0xa

    .line 232
    .line 233
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_b

    .line 249
    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    check-cast v2, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    .line 255
    .line 256
    invoke-direct {p0, v2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->q(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result p1

    .line 268
    if-nez p1, :cond_d

    .line 269
    .line 270
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Lxi/a;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    iput-object v1, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->L$0:Ljava/lang/Object;

    .line 275
    .line 276
    iput v10, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    .line 277
    .line 278
    invoke-interface {p1, v1, v0}, Lxi/a;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    if-ne p1, v8, :cond_c

    .line 283
    .line 284
    return-object v8

    .line 285
    :cond_c
    :goto_5
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 286
    .line 287
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v2, " --> loadNetData() --> \u6570\u636e\u5e93\u5199\u5165\u6210\u529f --> size = "

    .line 304
    .line 305
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {p1, v1}, Lyv/a;->a(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iput-object v13, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->L$0:Ljava/lang/Object;

    .line 319
    .line 320
    iput v9, v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$loadNetData$1;->label:I

    .line 321
    .line 322
    invoke-direct {p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    if-ne p1, v8, :cond_e

    .line 327
    .line 328
    return-object v8

    .line 329
    :cond_d
    sget-object p1, Lyv/a;->a:Lyv/a;

    .line 330
    .line 331
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v0, " --> loadNetData() --> \u672c\u5730\u548c\u670d\u52a1\u7aef\u90fd\u6ca1\u6570\u636e"

    .line 344
    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {p1, v0}, Lyv/a;->c(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    .line 356
    .line 357
    invoke-virtual {p1, v13}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    :cond_e
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 361
    .line 362
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    goto :goto_8

    .line 367
    :goto_7
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 368
    .line 369
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    :goto_8
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    if-nez p1, :cond_f

    .line 382
    .line 383
    goto :goto_9

    .line 384
    :cond_f
    sget-object v0, Lyv/a;->a:Lyv/a;

    .line 385
    .line 386
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    .line 395
    .line 396
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v1, " --> loadNetData() --> \u7f51\u7edc\u8bf7\u6c42\u5f02\u5e38 --> "

    .line 403
    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-virtual {v0, p1}, Lyv/a;->b(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object p1, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    .line 418
    .line 419
    invoke-virtual {p1, v13}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    :goto_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 423
    .line 424
    return-object p1
.end method

.method private static final J()Lcom/transsion/videodetail/music/data/a;
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
    const-class v1, Lcom/transsion/videodetail/music/data/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/videodetail/music/data/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final K()Lxi/a;
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
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->t1()Lxi/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public static synthetic b()Lxi/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->K()Lxi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/videodetail/music/data/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->J()Lcom/transsion/videodetail/music/data/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lui/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->s()Lui/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->r(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Lui/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->u()Lui/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Lcom/transsion/videodetail/music/data/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->z()Lcom/transsion/videodetail/music/data/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Lxi/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Lxi/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->D(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->H(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->I(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final q(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/baselib/db/music/MusicLikedDbBean;
    .locals 14

    .line 1
    new-instance v13, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSubjectId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    :cond_0
    move-object v1, v0

    .line 12
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getTitle()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    move-object v3, v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getCountryName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getGenre()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getReleaseDate()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getDurationSeconds()Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    :goto_2
    move v7, v0

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    goto :goto_2

    .line 56
    :goto_3
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSingerName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSingerAvatar()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getLikeTime()Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    :goto_4
    move-wide v11, v10

    .line 75
    goto :goto_5

    .line 76
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v10

    .line 80
    goto :goto_4

    .line 81
    :goto_5
    const-string v10, ""

    .line 82
    .line 83
    move-object v0, v13

    .line 84
    invoke-direct/range {v0 .. v12}, Lcom/transsion/baselib/db/music/MusicLikedDbBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    return-object v13
.end method

.method private final r(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->A()Lxi/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->getSubjectId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, ""

    .line 14
    .line 15
    :cond_0
    invoke-interface {v0, p1, p2}, Lxi/a;->d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-ne p1, p2, :cond_1

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p1
.end method

.method private static final s()Lui/c;
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
    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->o1()Lui/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method private final t()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final u()Lui/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lui/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final x()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getLocalMusicLiked$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getLocalMusicLiked$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

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

.method private final z()Lcom/transsion/videodetail/music/data/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/videodetail/music/data/a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final B(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLikedEntity$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLikedEntity$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

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

.method public final C()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final E(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isDownload$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isDownload$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

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

.method public final F(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isLiked$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$isLiked$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

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

.method public final G(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;)V
    .locals 7

    .line 1
    const-string v0, "action"

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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p2, p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$likedMusic$1;-><init>(Ljava/lang/String;Lcom/transsion/videodetail/music/bean/LikeListActionEnum;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final p(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 7

    .line 1
    const-string v0, "subject"

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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$clickLikedMusic$1;-><init>(Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Lkotlin/coroutines/Continuation;)V

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

.method public final v(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getDownloadEntity$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, p2, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getDownloadEntity$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

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

.method public final w()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "from"

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
    new-instance v4, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLiked$1;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel$getMusicLiked$1;-><init>(Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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
