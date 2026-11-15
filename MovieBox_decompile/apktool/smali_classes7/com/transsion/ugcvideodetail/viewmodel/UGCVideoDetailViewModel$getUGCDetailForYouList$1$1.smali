.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/ugcvideodetail/api/bean/UGCContentList;",
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
    c = "com.transsion.ugcvideodetail.viewmodel.UGCVideoDetailViewModel$getUGCDetailForYouList$1$1"
    f = "UGCVideoDetailViewModel.kt"
    l = {
        0x1e7,
        0x1e9,
        0x1eb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isRefresh:Z

.field final synthetic $ugcVideoId:Ljava/lang/String;

.field final synthetic $videoTitle:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;


# direct methods
.method constructor <init>(ZLcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$isRefresh:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$videoTitle:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$isRefresh:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$videoTitle:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;-><init>(ZLcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v9, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v10

    .line 6
    iget v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->label:I

    .line 7
    .line 8
    const/4 v11, 0x3

    .line 9
    const/4 v12, 0x2

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    if-eq v0, v12, :cond_1

    .line 16
    .line 17
    if-ne v0, v11, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_2
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Lkotlinx/coroutines/flow/b;

    .line 36
    .line 37
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    move-object v13, v0

    .line 41
    move-object/from16 v0, p1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 48
    .line 49
    move-object v13, v0

    .line 50
    check-cast v13, Lkotlinx/coroutines/flow/b;

    .line 51
    .line 52
    iget-boolean v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$isRefresh:Z

    .line 53
    .line 54
    const-string v2, ""

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 59
    .line 60
    invoke-static {v0, v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->s(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    iget-object v0, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->h(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)Lju/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v3, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$ugcVideoId:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v4, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->$videoTitle:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->this$0:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    .line 74
    .line 75
    invoke-static {v5}, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;->i(Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-nez v5, :cond_5

    .line 80
    .line 81
    move-object v5, v2

    .line 82
    :cond_5
    iput-object v13, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 83
    .line 84
    iput v1, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->label:I

    .line 85
    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/16 v8, 0x18

    .line 89
    .line 90
    const/4 v14, 0x0

    .line 91
    move-object v1, v3

    .line 92
    move-object v2, v4

    .line 93
    move-object v3, v5

    .line 94
    move v4, v6

    .line 95
    move-object v5, v7

    .line 96
    move-object v6, p0

    .line 97
    move v7, v8

    .line 98
    move-object v8, v14

    .line 99
    invoke-static/range {v0 .. v8}, Lju/a$a;->c(Lju/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-ne v0, v10, :cond_6

    .line 104
    .line 105
    return-object v10

    .line 106
    :cond_6
    :goto_1
    check-cast v0, Lcom/tn/lib/net/bean/BaseDto;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "0"

    .line 113
    .line 114
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    const/4 v2, 0x0

    .line 119
    if-nez v1, :cond_7

    .line 120
    .line 121
    iput-object v2, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 122
    .line 123
    iput v12, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->label:I

    .line 124
    .line 125
    invoke-interface {v13, v2, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-ne v0, v10, :cond_8

    .line 130
    .line 131
    return-object v10

    .line 132
    :cond_7
    invoke-virtual {v0}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v2, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->L$0:Ljava/lang/Object;

    .line 137
    .line 138
    iput v11, v9, Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel$getUGCDetailForYouList$1$1;->label:I

    .line 139
    .line 140
    invoke-interface {v13, v0, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-ne v0, v10, :cond_8

    .line 145
    .line 146
    return-object v10

    .line 147
    :cond_8
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object v0
.end method
