.class public final Lcom/transsion/shorttv/order/PayLoadingVM;
.super Landroidx/lifecycle/t0;
.source "source.java"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private final d:Landroidx/lifecycle/b0;

.field private final e:Landroidx/lifecycle/b0;

.field private final f:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/t0;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0xbb8

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->b:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->c:J

    .line 9
    .line 10
    new-instance v0, Landroidx/lifecycle/b0;

    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->d:Landroidx/lifecycle/b0;

    .line 16
    .line 17
    new-instance v0, Landroidx/lifecycle/b0;

    .line 18
    .line 19
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->e:Landroidx/lifecycle/b0;

    .line 23
    .line 24
    new-instance v0, Landroidx/lifecycle/b0;

    .line 25
    .line 26
    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    .line 30
    .line 31
    return-void
.end method

.method public static final synthetic b(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/shorttv/order/PayLoadingVM;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic d(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/shorttv/order/PayLoadingVM;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic f(Lcom/transsion/shorttv/order/PayLoadingVM;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/shorttv/order/PayLoadingVM;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/shorttv/order/PayLoadingVM;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/transsion/shorttv/order/PayLoadingVM;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->c:J

    .line 2
    .line 3
    return-void
.end method

.method private final k()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/shorttv/order/PayLoadingVM;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .line 1
    move-object v8, p0

    .line 2
    iget v0, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->a:I

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    .line 8
    .line 9
    new-instance v7, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;

    .line 10
    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    move-object/from16 v2, p2

    .line 16
    .line 17
    move-object/from16 v3, p1

    .line 18
    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/bean/HttpErrorBodyBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v7}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    iput v0, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->a:I

    .line 29
    .line 30
    sget-object v0, Lcom/transsion/shorttv/order/c;->a:Lcom/transsion/shorttv/order/c;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/transsion/shorttv/order/PayLoadingVM;->k()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget v2, v8, Lcom/transsion/shorttv/order/PayLoadingVM;->a:I

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " --> retry() --> code = "

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-object/from16 v1, p1

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " -- msg = "

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-object/from16 v1, p2

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, " --> retryCount = "

    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/transsion/shorttv/order/c;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    new-instance v12, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;

    .line 90
    .line 91
    const/4 v7, 0x0

    .line 92
    move-object v0, v12

    .line 93
    move-object v1, p0

    .line 94
    move-object/from16 v4, p3

    .line 95
    .line 96
    move-object/from16 v5, p4

    .line 97
    .line 98
    move/from16 v6, p5

    .line 99
    .line 100
    invoke-direct/range {v0 .. v7}, Lcom/transsion/shorttv/order/PayLoadingVM$retry$1;-><init>(Lcom/transsion/shorttv/order/PayLoadingVM;JLjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    .line 101
    .line 102
    .line 103
    const/4 v13, 0x3

    .line 104
    const/4 v14, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move v4, p3

    .line 12
    move-object v5, p0

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/transsion/shorttv/order/PayLoadingVM$checkPayOrderId$1;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, v7

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final j(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/u0;->a(Landroidx/lifecycle/t0;)Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v3, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p1, p0, v1}, Lcom/transsion/shorttv/order/PayLoadingVM$createPayOrderId$1;-><init>(Lcom/transsion/shorttv/order/bean/CreatePaynicornOrderReqBean;Lcom/transsion/shorttv/order/PayLoadingVM;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final l()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->d:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->e:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/order/PayLoadingVM;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method
