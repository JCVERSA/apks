.class final Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1"
    f = "ShortTvViewModel.kt"
    l = {
        0xac,
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $collectionId:Ljava/lang/String;

.field final synthetic $subjectId:Ljava/lang/String;

.field final synthetic $ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$collectionId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$subjectId:Ljava/lang/String;

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
    new-instance v6, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$collectionId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$subjectId:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->L$0:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lkotlinx/coroutines/n0;

    .line 30
    .line 31
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lkotlinx/coroutines/n0;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$ugcVideoIdMutable:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    move-object v5, v1

    .line 47
    check-cast v5, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v5, :cond_4

    .line 50
    .line 51
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$collectionId:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lus/a;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->label:I

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v9, 0x4

    .line 65
    const/4 v10, 0x0

    .line 66
    move-object v8, p0

    .line 67
    invoke-static/range {v4 .. v10}, Lus/a$a;->b(Lus/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v0, :cond_3

    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_3
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 81
    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    :cond_4
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->this$0:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->$subjectId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;->i(Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;)Lus/a;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    iput v2, p0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel$requestFirstVideo$1$2$1$ugcVideoDeferred$1;->label:I

    .line 96
    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v7, 0x2

    .line 99
    const/4 v8, 0x0

    .line 100
    move-object v6, p0

    .line 101
    invoke-static/range {v3 .. v8}, Lus/a$a;->c(Lus/a;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-ne p1, v0, :cond_5

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_5
    :goto_1
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getData()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    .line 115
    .line 116
    :cond_6
    return-object p1
.end method
