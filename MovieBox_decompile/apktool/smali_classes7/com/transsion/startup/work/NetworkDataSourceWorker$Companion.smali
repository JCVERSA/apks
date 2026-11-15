.class public final Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/startup/work/NetworkDataSourceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;->label:I

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
    iput v1, v0, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;->label:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p1}, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;-><init>(Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion;Lkotlin/coroutines/Continuation;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p1, v4, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;->result:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;->label:I

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    if-eq v1, v3, :cond_2

    .line 40
    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    const/16 v5, 0x3c

    .line 66
    .line 67
    invoke-virtual {p1, v1, v5}, Lkotlin/random/Random$Default;->nextInt(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sget-object v5, Lwf/a;->a:Lwf/a$a;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v6, "doWork random * "

    .line 79
    .line 80
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const/4 v9, 0x4

    .line 91
    const/4 v10, 0x0

    .line 92
    const-string v6, "NetworkDataSourceWorker"

    .line 93
    .line 94
    const/4 v8, 0x0

    .line 95
    invoke-static/range {v5 .. v10}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    int-to-long v5, p1

    .line 99
    const-wide/16 v7, 0x3e8

    .line 100
    .line 101
    mul-long/2addr v5, v7

    .line 102
    iput v3, v4, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;->label:I

    .line 103
    .line 104
    invoke-static {v5, v6, v4}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-ne p1, v0, :cond_4

    .line 109
    .line 110
    return-object v0

    .line 111
    :cond_4
    :goto_2
    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;

    .line 112
    .line 113
    iput v2, v4, Lcom/transsion/startup/work/NetworkDataSourceWorker$Companion$realWork$1;->label:I

    .line 114
    .line 115
    const-string v2, "/wefeed-mobile-bff/ad/config"

    .line 116
    .line 117
    const/4 v3, 0x0

    .line 118
    const/4 v5, 0x2

    .line 119
    const/4 v6, 0x0

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;->u(Lcom/transsion/ad/monopoly/manager/AdPlansRequestManager;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-ne p1, v0, :cond_5

    .line 125
    .line 126
    return-object v0

    .line 127
    :cond_5
    :goto_3
    sget-object p1, Lbm/e;->a:Lbm/e;

    .line 128
    .line 129
    const/4 v0, 0x3

    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-static {p1, v1, v1, v0, v1}, Lbm/e;->p(Lbm/e;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 135
    .line 136
    return-object p1
.end method
