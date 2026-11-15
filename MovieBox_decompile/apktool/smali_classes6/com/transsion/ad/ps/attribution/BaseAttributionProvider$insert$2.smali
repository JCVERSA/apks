.class final Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->g(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.ps.attribution.BaseAttributionProvider$insert$2"
    f = "BaseAttributionProvider.kt"
    l = {
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $psId:Ljava/lang/String;

.field final synthetic $reportUrl:Ljava/lang/String;

.field final synthetic $type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;


# direct methods
.method constructor <init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$psId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$reportUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

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
    .locals 6
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
    new-instance p1, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$psId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$reportUrl:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;-><init>(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->this$0:Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;->b(Lcom/transsion/ad/ps/attribution/BaseAttributionProvider;)Lcom/transsion/ad/db/pslink/a;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4

    .line 39
    const-wide/16 v6, 0x2710

    .line 40
    .line 41
    sub-long v14, v4, v6

    .line 42
    .line 43
    new-instance v4, Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 44
    .line 45
    iget-object v10, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$psId:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v12, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$reportUrl:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v13, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->$type:Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 50
    .line 51
    const/16 v16, 0x5

    .line 52
    .line 53
    const/16 v17, 0x0

    .line 54
    .line 55
    const/4 v9, 0x0

    .line 56
    const/4 v11, 0x0

    .line 57
    move-object v8, v4

    .line 58
    invoke-direct/range {v8 .. v17}, Lcom/transsion/ad/db/pslink/AttributionPoint;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    iput v3, v0, Lcom/transsion/ad/ps/attribution/BaseAttributionProvider$insert$2;->label:I

    .line 62
    .line 63
    invoke-interface {v2, v4, v0}, Lcom/transsion/ad/db/pslink/a;->e(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-ne v2, v1, :cond_2

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object v1
.end method
