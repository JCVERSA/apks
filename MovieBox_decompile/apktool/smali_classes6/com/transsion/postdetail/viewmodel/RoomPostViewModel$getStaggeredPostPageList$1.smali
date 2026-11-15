.class final Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;->O(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
    c = "com.transsion.postdetail.viewmodel.RoomPostViewModel$getStaggeredPostPageList$1"
    f = "RoomPostViewModel.kt"
    l = {
        0x227
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $entryPostId:Ljava/lang/String;

.field final synthetic $isFirstLoad:Z

.field final synthetic $isRefresh:Z

.field final synthetic $page:Ljava/lang/String;

.field final synthetic $perPage:I

.field final synthetic $tabId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;


# direct methods
.method constructor <init>(ZLjava/lang/String;ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isFirstLoad:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$tabId:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isRefresh:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$page:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$perPage:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$entryPostId:Ljava/lang/String;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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
    new-instance p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isFirstLoad:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$tabId:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isRefresh:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$page:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$perPage:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$entryPostId:Ljava/lang/String;

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;-><init>(ZLjava/lang/String;ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->label:I

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
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isFirstLoad:Z

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$tabId:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "post_staggered_page_cache_"

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v3, v1}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const/4 p1, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isRefresh:Z

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$isRefresh:Z

    .line 77
    .line 78
    :goto_1
    new-instance v10, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1$1;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$tabId:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$page:Ljava/lang/String;

    .line 85
    .line 86
    iget v7, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$perPage:I

    .line 87
    .line 88
    iget-object v8, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->$entryPostId:Ljava/lang/String;

    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    move-object v3, v10

    .line 92
    invoke-direct/range {v3 .. v9}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1$1;-><init>(Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v10}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/c;->t(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/a;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    new-instance v4, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1$2;

    .line 108
    .line 109
    invoke-direct {v4, v1}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v3, v4}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v3, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1$a;

    .line 117
    .line 118
    iget-object v4, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->this$0:Lcom/transsion/postdetail/viewmodel/RoomPostViewModel;

    .line 119
    .line 120
    invoke-direct {v3, p1, v4}, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1$a;-><init>(ZLcom/transsion/postdetail/viewmodel/RoomPostViewModel;)V

    .line 121
    .line 122
    .line 123
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/RoomPostViewModel$getStaggeredPostPageList$1;->label:I

    .line 124
    .line 125
    invoke-interface {v1, v3, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-ne p1, v0, :cond_5

    .line 130
    .line 131
    return-object v0

    .line 132
    :cond_5
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 133
    .line 134
    return-object p1
.end method
