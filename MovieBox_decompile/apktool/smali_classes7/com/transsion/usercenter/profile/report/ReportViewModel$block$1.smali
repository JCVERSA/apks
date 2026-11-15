.class final Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/report/ReportViewModel;->g(Ljava/lang/String;)V
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
    c = "com.transsion.usercenter.profile.report.ReportViewModel$block$1"
    f = "ReportViewModel.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $json:Lcom/google/gson/JsonObject;

.field label:I

.field final synthetic this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonObject;Lcom/transsion/usercenter/profile/report/ReportViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Lcom/transsion/usercenter/profile/report/ReportViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->$json:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

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
    new-instance p1, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->$json:Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;-><init>(Lcom/google/gson/JsonObject;Lcom/transsion/usercenter/profile/report/ReportViewModel;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->label:I

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
    new-instance p1, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->$json:Lcom/google/gson/JsonObject;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-direct {p1, v1, v3, v4}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;-><init>(Lcom/google/gson/JsonObject;Lcom/transsion/usercenter/profile/report/ReportViewModel;Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->t(Lkotlinx/coroutines/flow/a;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    new-instance v1, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$2;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

    .line 52
    .line 53
    invoke-direct {v1, v3, v4}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$2;-><init>(Lcom/transsion/usercenter/profile/report/ReportViewModel;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/c;->e(Lkotlinx/coroutines/flow/a;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/a;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    new-instance v1, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$a;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

    .line 63
    .line 64
    invoke-direct {v1, v3}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$a;-><init>(Lcom/transsion/usercenter/profile/report/ReportViewModel;)V

    .line 65
    .line 66
    .line 67
    iput v2, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->label:I

    .line 68
    .line 69
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/a;->a(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1
.end method
