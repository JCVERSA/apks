.class final Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->I0(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lnr/e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lnr/e;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lnr/e;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv.viewmodel.ShortTvViewModel$getTrailerItem$2"
    f = "ShortTvViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $subject:Lcom/transsion/shorttv/bean/Subject;

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/bean/Subject;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subjectId:Ljava/lang/String;

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
    new-instance p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;-><init>(Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lnr/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Subject;->getTrailer()Lcom/transsion/shorttv/bean/Trailer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p1, v0

    .line 22
    :goto_0
    new-instance v8, Lnr/e;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subjectId:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v6, 0xc

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v1, v8

    .line 33
    invoke-direct/range {v1 .. v7}, Lnr/e;-><init>(Ljava/lang/String;ILcom/transsion/shorttv/bean/ShortTVItem;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel$getTrailerItem$2;->$subject:Lcom/transsion/shorttv/bean/Subject;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v8, v2}, Lnr/e;->g(I)V

    .line 40
    .line 41
    .line 42
    new-instance v3, Lcom/google/gson/Gson;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Subject;->getShortTVFirstEp()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v1, v0

    .line 55
    :goto_1
    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    new-instance v3, Lcom/google/gson/Gson;

    .line 60
    .line 61
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    .line 63
    .line 64
    const-class v4, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 65
    .line 66
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    const-string v3, "0"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Lcom/transsion/shorttv/bean/ShortTVItem;->setId(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    if-eqz v1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->setVideoId(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/shorttv/bean/Trailer;->getVideoAddress()Lcom/transsion/shorttv/bean/PreVideoAddress;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_4

    .line 92
    .line 93
    invoke-static {p1}, Lnr/b;->a(Lcom/transsion/shorttv/bean/PreVideoAddress;)Lcom/transsion/shorttv/bean/Video;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move-object p1, v0

    .line 99
    :goto_2
    if-eqz v1, :cond_5

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Lcom/transsion/shorttv/bean/Media;->setVideoAddress(Lcom/transsion/shorttv/bean/Video;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/ShortTVItem;->getVideo()Lcom/transsion/shorttv/bean/Media;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/transsion/shorttv/bean/Media;->setAddressList(Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    if-eqz v1, :cond_7

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/transsion/shorttv/bean/ShortTVItem;->setEp(I)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v8, v1}, Lnr/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 127
    .line 128
    .line 129
    return-object v8

    .line 130
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 131
    .line 132
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
.end method
