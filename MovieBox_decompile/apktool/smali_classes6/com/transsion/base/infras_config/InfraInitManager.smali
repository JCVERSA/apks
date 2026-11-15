.class public final Lcom/transsion/base/infras_config/InfraInitManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/base/infras_config/InfraInitManager;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/base/infras_config/InfraInitManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/base/infras_config/InfraInitManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/base/infras_config/InfraInitManager;->a:Lcom/transsion/base/infras_config/InfraInitManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/base/infras_config/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/base/infras_config/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/base/infras_config/InfraInitManager;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/transsion/base/infras_config/api/InfraInitApi;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/base/infras_config/InfraInitManager;->b()Lcom/transsion/base/infras_config/api/InfraInitApi;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final b()Lcom/transsion/base/infras_config/api/InfraInitApi;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/base/infras_config/api/InfraInitApi;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/base/infras_config/api/InfraInitApi;

    .line 14
    .line 15
    return-object v0
.end method

.method private final c()Lcom/transsion/base/infras_config/api/InfraInitApi;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/base/infras_config/InfraInitManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/base/infras_config/api/InfraInitApi;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic g(Lcom/transsion/base/infras_config/InfraInitManager;Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v4, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v4, p2

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x4

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const-wide/32 v2, 0x36ee80

    .line 14
    .line 15
    .line 16
    move-wide v5, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-wide v5, p3

    .line 19
    :goto_1
    and-int/lit8 v0, p7, 0x8

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    move-object v7, v1

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-object v7, p5

    .line 26
    :goto_2
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move-object v8, p6

    .line 29
    invoke-virtual/range {v2 .. v8}, Lcom/transsion/base/infras_config/InfraInitManager;->f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method


# virtual methods
.method public final d(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;
    .locals 1

    .line 1
    const-string v0, "sourceType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lpi/b;->a:Lpi/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lpi/b;->c(Lcom/transsion/base/infras_config/model/InfrasSourceType;)Lcom/transsion/base/infras_config/model/ConfigInitDataItem;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p4, Lcom/transsion/base/infras_config/InfraInitManager$init$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/base/infras_config/InfraInitManager$init$1;-><init>(Lcom/transsion/base/infras_config/InfraInitManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 54
    .line 55
    .line 56
    move-result-object p4

    .line 57
    new-instance v2, Lcom/transsion/base/infras_config/InfraInitManager$init$2;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-direct {v2, p1, p2, p3, v4}, Lcom/transsion/base/infras_config/InfraInitManager$init$2;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    iput v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$init$1;->label:I

    .line 64
    .line 65
    invoke-static {p4, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    if-ne p4, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    check-cast p4, Lkotlin/Result;

    .line 73
    .line 74
    invoke-virtual {p4}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method public final f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;-><init>(Lcom/transsion/base/infras_config/InfraInitManager;Lkotlin/coroutines/Continuation;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->result:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v4, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;

    .line 62
    .line 63
    const/4 v12, 0x0

    .line 64
    move-object v6, v4

    .line 65
    move-wide/from16 v7, p3

    .line 66
    .line 67
    move-object v9, p1

    .line 68
    move-object v10, p2

    .line 69
    move-object/from16 v11, p5

    .line 70
    .line 71
    invoke-direct/range {v6 .. v12}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;-><init>(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 72
    .line 73
    .line 74
    iput v5, v1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$1;->label:I

    .line 75
    .line 76
    invoke-static {v0, v4, v1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-ne v0, v3, :cond_3

    .line 81
    .line 82
    return-object v3

    .line 83
    :cond_3
    :goto_1
    check-cast v0, Lkotlin/Result;

    .line 84
    .line 85
    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method public final h(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/rxjava3/core/j;
    .locals 8

    .line 1
    const-string v0, "sourceVersions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "initRx() start, sourceCount="

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v4, ", version="

    .line 30
    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v4, ", baseUrl="

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v3, "InfraInitManager"

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object v2, Lpi/b;->a:Lpi/b;

    .line 58
    .line 59
    check-cast p1, Ljava/util/Collection;

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/4 v4, 0x0

    .line 66
    if-eqz v3, :cond_0

    .line 67
    .line 68
    move-object v3, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object v3, p1

    .line 71
    :goto_0
    check-cast v3, Ljava/util/List;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Lpi/b;->l(Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    move-object p1, v4

    .line 83
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 84
    .line 85
    new-instance v2, Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;

    .line 86
    .line 87
    invoke-direct {v2, p1, p2}, Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/google/gson/Gson;

    .line 91
    .line 92
    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/transsion/base/infras_config/InfraInitManager;->c()Lcom/transsion/base/infras_config/api/InfraInitApi;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-interface {p1, p3, v2}, Lcom/transsion/base/infras_config/api/InfraInitApi;->initMobileInfra(Ljava/lang/String;Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;)Lio/reactivex/rxjava3/core/j;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 107
    .line 108
    invoke-virtual {p2}, Ldg/d;->e()Lio/reactivex/rxjava3/core/n;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    sget-object p2, Lcom/transsion/base/infras_config/InfraInitManager$a;->a:Lcom/transsion/base/infras_config/InfraInitManager$a;

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->y(Lyx/d;)Lio/reactivex/rxjava3/core/j;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Lcom/transsion/base/infras_config/InfraInitManager$b;

    .line 123
    .line 124
    invoke-direct {p2, v0, v1}, Lcom/transsion/base/infras_config/InfraInitManager$b;-><init>(J)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->u(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    new-instance p2, Lcom/transsion/base/infras_config/InfraInitManager$c;

    .line 132
    .line 133
    invoke-direct {p2, v0, v1}, Lcom/transsion/base/infras_config/InfraInitManager$c;-><init>(J)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->j(Lyx/f;)Lio/reactivex/rxjava3/core/j;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string p2, "doOnError(...)"

    .line 141
    .line 142
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-object p1
.end method
