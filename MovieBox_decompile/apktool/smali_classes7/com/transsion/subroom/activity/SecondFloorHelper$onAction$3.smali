.class final Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subroom/activity/SecondFloorHelper;->O(Ljava/lang/String;FF)V
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
    c = "com.transsion.subroom.activity.SecondFloorHelper$onAction$3"
    f = "SecondFloorHelper.kt"
    l = {
        0xb9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;


# direct methods
.method constructor <init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/subroom/activity/SecondFloorHelper;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;

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
    new-instance p1, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->label:I

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
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->k(Lcom/transsion/subroom/activity/SecondFloorHelper;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iput v2, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->label:I

    .line 34
    .line 35
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->h(Lcom/transsion/subroom/activity/SecondFloorHelper;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/transsion/subroom/activity/SecondFloorHelper;->n(Lcom/transsion/subroom/activity/SecondFloorHelper;)Lkotlinx/coroutines/n0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    new-instance v3, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3$1;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3;->this$0:Lcom/transsion/subroom/activity/SecondFloorHelper;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    invoke-direct {v3, v1, v2}, Lcom/transsion/subroom/activity/SecondFloorHelper$onAction$3$1;-><init>(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlin/coroutines/Continuation;)V

    .line 59
    .line 60
    .line 61
    const/4 v4, 0x3

    .line 62
    const/4 v5, 0x0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lcom/transsion/subroom/activity/SecondFloorHelper;->v(Lcom/transsion/subroom/activity/SecondFloorHelper;Lkotlinx/coroutines/t1;)V

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method
