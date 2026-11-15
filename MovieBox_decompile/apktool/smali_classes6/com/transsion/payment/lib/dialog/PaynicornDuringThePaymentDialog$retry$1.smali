.class final Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->P0(Ljava/lang/String;I)V
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
    c = "com.transsion.payment.lib.dialog.PaynicornDuringThePaymentDialog$retry$1"
    f = "PaynicornDuringThePaymentDialog.kt"
    l = {
        0x10a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $startTime:J

.field label:I

.field final synthetic this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;JLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->$startTime:J

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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
    new-instance p1, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 4
    .line 5
    iget-wide v1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->$startTime:J

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;-><init>(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;JLkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->label:I

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
    iget-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->u0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    iget-wide v7, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->$startTime:J

    .line 38
    .line 39
    sub-long/2addr v5, v7

    .line 40
    sub-long/2addr v3, v5

    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    invoke-static {v3, v4, v5, v6}, Lkotlin/ranges/RangesKt;->f(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {p1, v3, v4}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->D0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;J)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->t0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iput v2, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->label:I

    .line 57
    .line 58
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-ne p1, v0, :cond_2

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog$retry$1;->this$0:Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->y0(Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p1
.end method
