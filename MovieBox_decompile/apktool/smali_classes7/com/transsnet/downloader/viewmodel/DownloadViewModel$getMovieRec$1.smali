.class final Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->S(II)V
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
    c = "com.transsnet.downloader.viewmodel.DownloadViewModel$getMovieRec$1"
    f = "DownloadViewModel.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $page:I

.field final synthetic $perPage:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;IILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->$page:I

    .line 4
    .line 5
    iput p3, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->$perPage:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 4
    .line 5
    iget v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->$page:I

    .line 6
    .line 7
    iget v2, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->$perPage:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;-><init>(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;IILkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->L$1:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->L$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lokhttp3/RequestBody;

    .line 20
    .line 21
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :try_start_1
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 37
    .line 38
    invoke-static {p1, v3}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->C(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Z)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 42
    .line 43
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "page"

    .line 47
    .line 48
    iget v4, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->$page:I

    .line 49
    .line 50
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 55
    .line 56
    .line 57
    const-string v1, "perPage"

    .line 58
    .line 59
    iget v4, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->$perPage:I

    .line 60
    .line 61
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {p1, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v4, "toString(...)"

    .line 75
    .line 76
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p1}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iget-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->x(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;)Lcx/a;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iput-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->L$0:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    iput v3, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->label:I

    .line 96
    .line 97
    invoke-interface {v4, p1, p0}, Lcx/a;->l(Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-ne p1, v0, :cond_2

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_2
    move-object v0, v1

    .line 105
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->C(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_0
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->T()Landroidx/lifecycle/b0;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 125
    .line 126
    invoke-direct {v0}, Lcom/tn/lib/net/bean/BaseDto;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel$getMovieRec$1;->this$0:Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 133
    .line 134
    invoke-static {p1, v2}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->C(Lcom/transsnet/downloader/viewmodel/DownloadViewModel;Z)V

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    return-object p1
.end method
