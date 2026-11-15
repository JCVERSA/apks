.class final Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V
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
    c = "com.transsion.postdetail.ad.BaseVideoAdHelper$closeSceneAd$1"
    f = "BaseVideoAdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

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
    .locals 1
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
    new-instance p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h0()Landroid/view/ViewGroup;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z1(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v1(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N0()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o1(Z)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;->this$0:Lcom/transsion/postdetail/ad/BaseVideoAdHelper;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 87
    .line 88
    .line 89
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p1

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 95
    .line 96
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method
