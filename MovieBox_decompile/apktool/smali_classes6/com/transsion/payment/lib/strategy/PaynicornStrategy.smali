.class public final Lcom/transsion/payment/lib/strategy/PaynicornStrategy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/payment/lib/strategy/g;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Lkotlin/Lazy;

.field private c:Lkotlinx/coroutines/n0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/payment/lib/strategy/h;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/payment/lib/strategy/h;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->c:Lkotlinx/coroutines/n0;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic c()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->j()Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;)Lcom/transsion/payment/lib/PaymentService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->i()Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->k(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final i()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/payment/lib/PaymentService;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final j()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/payment/lib/PaymentService;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final k(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->i()Lcom/transsion/payment/lib/PaymentService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/transsion/payment/lib/PaymentClientHelper;->d(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderRes;Lcom/transsion/payment/lib/b;Lcom/transsion/payment/lib/PaymentService;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V
    .locals 7

    .line 1
    const-string p3, "activity"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "orderRequest"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p3, "payCallback"

    .line 12
    .line 13
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->h()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " --> requestPay() --> \u8bf7\u6c42\u63a5\u53e3\u521b\u5efa\u8ba2\u5355...."

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p3, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    invoke-interface {p4, p3}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->c:Lkotlinx/coroutines/n0;

    .line 47
    .line 48
    new-instance p3, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;

    .line 49
    .line 50
    const/4 v6, 0x0

    .line 51
    move-object v1, p3

    .line 52
    move-object v2, p0

    .line 53
    move-object v3, p2

    .line 54
    move-object v4, p1

    .line 55
    move-object v5, p4

    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$requestPay$1;-><init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x3

    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    move-object v3, p3

    .line 64
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public b(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;->c:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$fetchSkuList$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy$fetchSkuList$1;-><init>(Lcom/transsion/payment/lib/strategy/PaynicornStrategy;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/transsion/payment/lib/strategy/g$a;->a(Lcom/transsion/payment/lib/strategy/g;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/transsion/payment/lib/PaymentClientHelper;->a:Lcom/transsion/payment/lib/PaymentClientHelper;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/payment/lib/PaymentClientHelper;->c()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
