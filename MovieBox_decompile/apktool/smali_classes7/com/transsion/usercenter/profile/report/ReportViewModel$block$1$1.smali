.class final Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0004\u001a\u00020\u0003*\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
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
    c = "com.transsion.usercenter.profile.report.ReportViewModel$block$1$1"
    f = "ReportViewModel.kt"
    l = {
        0x3b,
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $json:Lcom/google/gson/JsonObject;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

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
            "Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->$json:Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

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
    new-instance v0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->$json:Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;-><init>(Lcom/google/gson/JsonObject;Lcom/transsion/usercenter/profile/report/ReportViewModel;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/b;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->invoke(Lkotlinx/coroutines/flow/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->label:I

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
    iget-object v0, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$0:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lokhttp3/RequestBody;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

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
    iget-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lokhttp3/RequestBody;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$0:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v3, Lkotlinx/coroutines/flow/b;

    .line 38
    .line 39
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lkotlinx/coroutines/flow/b;

    .line 49
    .line 50
    sget-object v1, Lmg/b;->a:Lmg/b$a;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->$json:Lcom/google/gson/JsonObject;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v5, "toString(...)"

    .line 59
    .line 60
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Lmg/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget-object v4, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->this$0:Lcom/transsion/usercenter/profile/report/ReportViewModel;

    .line 70
    .line 71
    invoke-static {v4}, Lcom/transsion/usercenter/profile/report/ReportViewModel;->f(Lcom/transsion/usercenter/profile/report/ReportViewModel;)Lcom/transsion/usercenter/profile/report/b;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget-object v5, Lgg/a;->a:Lgg/a$a;

    .line 76
    .line 77
    invoke-virtual {v5}, Lgg/a$a;->a()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    iput-object p1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$1:Ljava/lang/Object;

    .line 84
    .line 85
    iput v3, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->label:I

    .line 86
    .line 87
    invoke-interface {v4, v5, v1, p0}, Lcom/transsion/usercenter/profile/report/b;->a(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-ne v3, v0, :cond_3

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_3
    move-object v6, v3

    .line 95
    move-object v3, p1

    .line 96
    move-object p1, v6

    .line 97
    :goto_0
    check-cast p1, Lcom/tn/lib/net/bean/BaseDto;

    .line 98
    .line 99
    iput-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$0:Ljava/lang/Object;

    .line 100
    .line 101
    const/4 v1, 0x0

    .line 102
    iput-object v1, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput v2, p0, Lcom/transsion/usercenter/profile/report/ReportViewModel$block$1$1;->label:I

    .line 105
    .line 106
    invoke-interface {v3, p1, p0}, Lkotlinx/coroutines/flow/b;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-ne p1, v0, :cond_4

    .line 111
    .line 112
    return-object v0

    .line 113
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p1
.end method
