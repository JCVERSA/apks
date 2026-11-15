.class final Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->n(Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V
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
    c = "com.transsion.ad.ps.attribution.AttributionProduceManager$reportUrl$1"
    f = "AttributionProduceManager.kt"
    l = {
        0x5a,
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

.field final synthetic $reportUrl:Ljava/lang/String;

.field final synthetic $type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

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
    new-instance p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;-><init>(Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x2

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    if-ne v1, v4, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_2

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
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "http"

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-static {p1, v1, v5, v4, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    return-object p1

    .line 54
    :cond_3
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 57
    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto :goto_0

    .line 69
    :cond_4
    move-object v1, v3

    .line 70
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v5, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    .line 77
    .line 78
    iput v2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->label:I

    .line 79
    .line 80
    invoke-virtual {p1, v1, v5, v6, p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->h(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v0, :cond_5

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_6

    .line 94
    .line 95
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_6
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionProduceManager;->c:Lcom/transsion/ad/ps/attribution/AttributionProduceManager;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$reportUrl:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 103
    .line 104
    iget-object v5, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->$recommendInfo:Lcom/transsion/ad/ps/model/RecommendInfo;

    .line 105
    .line 106
    if-eqz v5, :cond_7

    .line 107
    .line 108
    invoke-virtual {v5}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    .line 109
    .line 110
    .line 111
    move-result-wide v5

    .line 112
    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iput v4, p0, Lcom/transsion/ad/ps/attribution/AttributionProduceManager$reportUrl$1;->label:I

    .line 121
    .line 122
    invoke-virtual {p1, v1, v2, v3, p0}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->g(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v0, :cond_8

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_8
    :goto_2
    sget-object p1, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->c:Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/transsion/ad/ps/attribution/AttributionConsumeManager;->n()V

    .line 132
    .line 133
    .line 134
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method
