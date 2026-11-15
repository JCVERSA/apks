.class final Lcom/tn/tranpay/TranPay$configure$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/TranPay;->b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.tn.tranpay.TranPay$configure$1"
    f = "TranPay.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $application:Landroid/app/Application;

.field final synthetic $debugMode:Z

.field final synthetic $region:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Application;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/tn/tranpay/TranPay$configure$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/TranPay$configure$1;->$application:Landroid/app/Application;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/tn/tranpay/TranPay$configure$1;->$debugMode:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tn/tranpay/TranPay$configure$1;->$region:Ljava/lang/String;

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
    new-instance p1, Lcom/tn/tranpay/TranPay$configure$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/tn/tranpay/TranPay$configure$1;->$application:Landroid/app/Application;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/tn/tranpay/TranPay$configure$1;->$debugMode:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/tn/tranpay/TranPay$configure$1;->$region:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/tn/tranpay/TranPay$configure$1;-><init>(Landroid/app/Application;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/TranPay$configure$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/tn/tranpay/TranPay$configure$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/tn/tranpay/TranPay$configure$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/tn/tranpay/TranPay$configure$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/tn/tranpay/TranPay$configure$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/tn/tranpay/TranPay$configure$1;->$application:Landroid/app/Application;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/device/TNDeviceHelper;->a(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/tn/tranpay/report/e;->a:Lcom/tn/tranpay/report/e;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/tn/tranpay/TranPay$configure$1;->$application:Landroid/app/Application;

    .line 21
    .line 22
    iget-boolean v4, p0, Lcom/tn/tranpay/TranPay$configure$1;->$debugMode:Z

    .line 23
    .line 24
    new-instance v6, Lcom/tn/tranpay/report/g;

    .line 25
    .line 26
    invoke-direct {v6}, Lcom/tn/tranpay/report/g;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "TranPay"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual/range {v1 .. v6}, Lcom/tn/tranpay/report/e;->c(Landroid/app/Application;Ljava/lang/String;ZZLcom/tn/tranpay/report/f;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/tn/tranpay/report/h;->a:Lcom/tn/tranpay/report/h;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/tn/tranpay/TranPay$configure$1;->$region:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/tn/tranpay/report/h;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/tn/tranpay/TranPayConfiguration;->C()V

    .line 45
    .line 46
    .line 47
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    return-object p1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method
