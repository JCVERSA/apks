.class public final Lcom/transsion/payment/lib/PayUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/payment/lib/PayUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/payment/lib/PayUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/payment/lib/PayUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/payment/lib/PayUtils;->a:Lcom/transsion/payment/lib/PayUtils;

    .line 7
    .line 8
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

.method public static synthetic b(Lcom/transsion/payment/lib/PayUtils;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, 0xbb8

    .line 6
    .line 7
    :cond_0
    move-wide v1, p1

    .line 8
    const/4 p1, 0x2

    .line 9
    and-int/lit8 p2, p6, 0x2

    .line 10
    .line 11
    if-eqz p2, :cond_1

    .line 12
    .line 13
    move v3, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    move v3, p3

    .line 16
    :goto_0
    move-object v0, p0

    .line 17
    move-object v4, p4

    .line 18
    move-object v5, p5

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/payment/lib/PayUtils;->a(JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final a(JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p5, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;-><init>(Lcom/transsion/payment/lib/PayUtils;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v3, :cond_2

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    iget p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    .line 42
    .line 43
    iget-wide p2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    .line 44
    .line 45
    iget-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iget p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    .line 63
    .line 64
    iget-wide p2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    .line 65
    .line 66
    iget-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 69
    .line 70
    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :catch_0
    move-exception p5

    .line 75
    goto :goto_3

    .line 76
    :cond_3
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/y0;->a()Lkotlinx/coroutines/i0;

    .line 80
    .line 81
    .line 82
    move-result-object p5

    .line 83
    new-instance v2, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$2;

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-direct {v2, p4, v5}, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$2;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    iput-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-wide p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    .line 92
    .line 93
    iput p3, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    .line 94
    .line 95
    iput v3, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    .line 96
    .line 97
    invoke-static {p5, v2, v0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    if-ne p5, v1, :cond_4

    .line 102
    .line 103
    return-object v1

    .line 104
    :cond_4
    move-wide v7, p1

    .line 105
    move p1, p3

    .line 106
    move-wide p2, v7

    .line 107
    :goto_2
    :try_start_2
    const-string v2, "Action succeeded"

    .line 108
    .line 109
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 110
    .line 111
    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    return-object p5

    .line 115
    :catch_1
    move-exception p5

    .line 116
    move-wide v7, p1

    .line 117
    move p1, p3

    .line 118
    move-wide p2, v7

    .line 119
    :goto_3
    if-lez p1, :cond_6

    .line 120
    .line 121
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p5

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v5, "Action failed: "

    .line 131
    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string p5, ". Retries left: "

    .line 139
    .line 140
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p5

    .line 150
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 151
    .line 152
    invoke-virtual {v2, p5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iput-object p4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->L$0:Ljava/lang/Object;

    .line 156
    .line 157
    iput-wide p2, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->J$0:J

    .line 158
    .line 159
    iput p1, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->I$0:I

    .line 160
    .line 161
    iput v4, v0, Lcom/transsion/payment/lib/PayUtils$retryWithBackoff$1;->label:I

    .line 162
    .line 163
    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p5

    .line 167
    if-ne p5, v1, :cond_5

    .line 168
    .line 169
    return-object v1

    .line 170
    :cond_5
    :goto_4
    int-to-long v5, v4

    .line 171
    mul-long/2addr p2, v5

    .line 172
    add-int/lit8 p1, p1, -0x1

    .line 173
    .line 174
    move-wide v7, p2

    .line 175
    move p3, p1

    .line 176
    move-wide p1, v7

    .line 177
    goto :goto_1

    .line 178
    :cond_6
    const-string p1, "All retry attempts exhausted"

    .line 179
    .line 180
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 181
    .line 182
    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    throw p5
.end method
