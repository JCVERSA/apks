.class final Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/b;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/transsion/moviedetailapi/bean/PostSubjectBean;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.postdetail.ui.fragment.preload.VideoDataLoader$loadDataFromService$1$1"
    f = "VideoDataLoader.kt"
    l = {
        0x19,
        0x1b,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;-><init>(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/b;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eqz v3, :cond_3

    .line 12
    .line 13
    if-eq v3, v1, :cond_2

    .line 14
    .line 15
    if-eq v3, v5, :cond_1

    .line 16
    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_2
    iget-object v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v3, p1

    .line 47
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->l(Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;)Lao/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v6, Lgg/a;->a:Lgg/a$a;

    .line 56
    .line 57
    invoke-virtual {v6}, Lgg/a$a;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    iget-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->this$0:Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;

    .line 62
    .line 63
    invoke-virtual {v7}, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader;->m()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    iput-object v3, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 68
    .line 69
    iput v1, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    .line 70
    .line 71
    invoke-interface {p1, v6, v7, p0}, Lao/b;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-ne p1, v2, :cond_4

    .line 76
    .line 77
    return-object v2

    .line 78
    :cond_4
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    const/4 v7, 0x0

    .line 85
    if-nez v6, :cond_5

    .line 86
    .line 87
    iput-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput v5, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    .line 90
    .line 91
    invoke-interface {v3, v7, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-ne p1, v2, :cond_6

    .line 96
    .line 97
    return-object v2

    .line 98
    :cond_5
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v5, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.PostSubjectItem"

    .line 103
    .line 104
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    check-cast p1, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 108
    .line 109
    new-instance v5, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;

    .line 110
    .line 111
    new-array v6, v1, [Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    .line 112
    .line 113
    aput-object p1, v6, v0

    .line 114
    .line 115
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    new-instance v6, Lcom/transsion/moviedetailapi/bean/Pager;

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v12

    .line 129
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v13

    .line 133
    const-string v10, "1"

    .line 134
    .line 135
    const-string v11, "1"

    .line 136
    .line 137
    move-object v8, v6

    .line 138
    invoke-direct/range {v8 .. v13}, Lcom/transsion/moviedetailapi/bean/Pager;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v5, p1, v6, v7, v7}, Lcom/transsion/moviedetailapi/bean/PostSubjectBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;Lcom/transsion/moviedetailapi/bean/Subject;Lcom/transsion/moviedetailapi/bean/Group;)V

    .line 142
    .line 143
    .line 144
    iput-object v7, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->L$0:Ljava/lang/Object;

    .line 145
    .line 146
    iput v4, p0, Lcom/transsion/postdetail/ui/fragment/preload/VideoDataLoader$loadDataFromService$1$1;->label:I

    .line 147
    .line 148
    invoke-interface {v3, v5, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-ne p1, v2, :cond_6

    .line 153
    .line 154
    return-object v2

    .line 155
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method
