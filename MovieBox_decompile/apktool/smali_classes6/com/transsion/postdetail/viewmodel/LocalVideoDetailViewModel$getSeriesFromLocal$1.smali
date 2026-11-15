.class final Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->h(Lcom/transsion/baselib/db/download/DownloadBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.viewmodel.LocalVideoDetailViewModel$getSeriesFromLocal$1"
    f = "LocalVideoDetailViewModel.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $curBean:Lcom/transsion/baselib/db/download/DownloadBean;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/baselib/db/download/DownloadBean;",
            "Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->$curBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->this$0:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->$curBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->this$0:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;-><init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->$curBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v1, :cond_3

    .line 42
    .line 43
    :cond_2
    const-string v1, ""

    .line 44
    .line 45
    :cond_3
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->label:I

    .line 46
    .line 47
    invoke-virtual {p1, v1, p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->H(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_4

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    new-instance v0, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    if-eqz p1, :cond_a

    .line 62
    .line 63
    check-cast p1, Ljava/lang/Iterable;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->this$0:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->$curBean:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 68
    .line 69
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const/4 v3, 0x0

    .line 74
    move v4, v3

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_a

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    add-int/lit8 v6, v4, 0x1

    .line 86
    .line 87
    if-gez v4, :cond_5

    .line 88
    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 90
    .line 91
    .line 92
    :cond_5
    check-cast v5, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 93
    .line 94
    sget-object v7, Lwf/a;->a:Lwf/a$a;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->c(Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 101
    .line 102
    .line 103
    move-result v9

    .line 104
    if-eqz v2, :cond_6

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    goto :goto_2

    .line 111
    :cond_6
    const/4 v10, -0x1

    .line 112
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v12, "on get series, episode = "

    .line 118
    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v9, ", cur epse = "

    .line 126
    .line 127
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v9, ", index = "

    .line 134
    .line 135
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    const/4 v11, 0x4

    .line 146
    const/4 v12, 0x0

    .line 147
    const/4 v10, 0x0

    .line 148
    invoke-static/range {v7 .. v12}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_9

    .line 156
    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    goto :goto_3

    .line 164
    :cond_7
    const/4 v4, 0x0

    .line 165
    :goto_3
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-nez v4, :cond_8

    .line 174
    .line 175
    invoke-virtual {v5, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setPlaying(Z)V

    .line 176
    .line 177
    .line 178
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    :cond_9
    move v4, v6

    .line 182
    goto :goto_1

    .line 183
    :cond_a
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel$getSeriesFromLocal$1;->this$0:Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/transsion/postdetail/viewmodel/LocalVideoDetailViewModel;->i()Landroidx/lifecycle/b0;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 193
    .line 194
    return-object p1
.end method
