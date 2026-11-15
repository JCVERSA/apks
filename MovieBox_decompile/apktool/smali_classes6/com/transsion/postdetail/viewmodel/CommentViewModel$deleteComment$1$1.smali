.class final Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/b;",
        "Lcom/tn/lib/net/bean/BaseDto;",
        "",
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
    c = "com.transsion.postdetail.viewmodel.CommentViewModel$deleteComment$1$1"
    f = "CommentViewModel.kt"
    l = {
        0x86,
        0x88,
        0x8b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $commentId:Ljava/lang/String;

.field final synthetic $topicType:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$topicType:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

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
    .locals 4
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
    new-instance v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$topicType:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Lkotlinx/coroutines/flow/b;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$topicType:Ljava/lang/String;

    .line 56
    .line 57
    sget-object v5, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lao/a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    sget-object v3, Lgg/a;->a:Lgg/a$a;

    .line 76
    .line 77
    invoke-virtual {v3}, Lgg/a$a;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 84
    .line 85
    iput v4, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    .line 86
    .line 87
    invoke-interface {p1, v3, v5, p0}, Lao/a;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-ne p1, v0, :cond_4

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_4
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lao/a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-object v4, Lgg/a;->a:Lgg/a$a;

    .line 104
    .line 105
    invoke-virtual {v4}, Lgg/a$a;->a()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    .line 110
    .line 111
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 112
    .line 113
    iput v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    .line 114
    .line 115
    invoke-interface {p1, v4, v5, p0}, Lao/a;->d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_6

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_6
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 123
    .line 124
    :goto_2
    if-eqz p1, :cond_7

    .line 125
    .line 126
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->$commentId:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v3}, Lcom/tn/lib/net/bean/BaseDto;->setData(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    :cond_7
    const/4 v3, 0x0

    .line 132
    iput-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->L$0:Ljava/lang/Object;

    .line 133
    .line 134
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$deleteComment$1$1;->label:I

    .line 135
    .line 136
    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v0, :cond_8

    .line 141
    .line 142
    return-object v0

    .line 143
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object p1
.end method
