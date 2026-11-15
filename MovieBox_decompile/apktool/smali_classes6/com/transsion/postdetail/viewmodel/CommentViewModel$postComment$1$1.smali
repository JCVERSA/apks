.class final Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/moviedetailapi/bean/CommentBean;",
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
    c = "com.transsion.postdetail.viewmodel.CommentViewModel$postComment$1$1"
    f = "CommentViewModel.kt"
    l = {
        0x31,
        0x33,
        0x35
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $commentBody:Lcom/transsion/postdetail/bean/CommentBody;

.field final synthetic $topicType:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/bean/CommentBody;Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/bean/CommentBody;",
            "Ljava/lang/String;",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->$commentBody:Lcom/transsion/postdetail/bean/CommentBody;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->$topicType:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

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
    new-instance v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->$commentBody:Lcom/transsion/postdetail/bean/CommentBody;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->$topicType:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;-><init>(Lcom/transsion/postdetail/bean/CommentBody;Ljava/lang/String;Lcom/transsion/postdetail/viewmodel/CommentViewModel;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, v0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lokhttp3/RequestBody;

    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lokhttp3/RequestBody;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_2
    iget-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$1:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lokhttp3/RequestBody;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Lkotlinx/coroutines/flow/b;

    .line 66
    .line 67
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->$commentBody:Lcom/transsion/postdetail/bean/CommentBody;

    .line 70
    .line 71
    invoke-static {v5}, Lcom/blankj/utilcode/util/o;->j(Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v6, "toJson(...)"

    .line 76
    .line 77
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v5}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_7

    .line 85
    .line 86
    iget-object v5, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->$topicType:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v6, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->this$0:Lcom/transsion/postdetail/viewmodel/CommentViewModel;

    .line 89
    .line 90
    sget-object v7, Lcom/transsion/postdetailapi/CommentTopicType;->POST:Lcom/transsion/postdetailapi/CommentTopicType;

    .line 91
    .line 92
    invoke-virtual {v7}, Lcom/transsion/postdetailapi/CommentTopicType;->getValue()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_5

    .line 101
    .line 102
    invoke-static {v6}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lao/a;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    sget-object v5, Lgg/a;->a:Lgg/a$a;

    .line 107
    .line 108
    invoke-virtual {v5}, Lgg/a$a;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 113
    .line 114
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$1:Ljava/lang/Object;

    .line 115
    .line 116
    iput v4, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->label:I

    .line 117
    .line 118
    invoke-interface {v3, v5, v1, p0}, Lao/a;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    if-ne v3, v0, :cond_4

    .line 123
    .line 124
    return-object v0

    .line 125
    :cond_4
    move-object v8, v3

    .line 126
    move-object v3, p1

    .line 127
    move-object p1, v8

    .line 128
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    invoke-static {v6}, Lcom/transsion/postdetail/viewmodel/CommentViewModel;->d(Lcom/transsion/postdetail/viewmodel/CommentViewModel;)Lao/a;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    sget-object v5, Lgg/a;->a:Lgg/a$a;

    .line 136
    .line 137
    invoke-virtual {v5}, Lgg/a$a;->a()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iput-object p1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$1:Ljava/lang/Object;

    .line 144
    .line 145
    iput v3, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->label:I

    .line 146
    .line 147
    invoke-interface {v4, v5, v1, p0}, Lao/a;->e(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    if-ne v3, v0, :cond_6

    .line 152
    .line 153
    return-object v0

    .line 154
    :cond_6
    move-object v8, v3

    .line 155
    move-object v3, p1

    .line 156
    move-object p1, v8

    .line 157
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 158
    .line 159
    :goto_2
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$0:Ljava/lang/Object;

    .line 164
    .line 165
    const/4 v1, 0x0

    .line 166
    iput-object v1, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->L$1:Ljava/lang/Object;

    .line 167
    .line 168
    iput v2, p0, Lcom/transsion/postdetail/viewmodel/CommentViewModel$postComment$1$1;->label:I

    .line 169
    .line 170
    invoke-interface {v3, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-ne p1, v0, :cond_7

    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 178
    .line 179
    return-object p1
.end method
