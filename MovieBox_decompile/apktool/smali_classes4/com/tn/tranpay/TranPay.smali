.class public final Lcom/tn/tranpay/TranPay;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/TranPay;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/tranpay/TranPay;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/TranPay;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/TranPay;->a:Lcom/tn/tranpay/TranPay;

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

.method public static synthetic c(Lcom/tn/tranpay/TranPay;Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;ILjava/lang/Object;)V
    .locals 12

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/tn/tranpay/logger/LogLevel;->INFO:Lcom/tn/tranpay/logger/LogLevel;

    .line 8
    .line 9
    move-object v7, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v7, p5

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    move v8, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move/from16 v8, p6

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    move v9, v1

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move/from16 v9, p7

    .line 30
    .line 31
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    move-object v10, v1

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object/from16 v10, p8

    .line 39
    .line 40
    :goto_3
    and-int/lit16 v0, v0, 0x100

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    sget-object v0, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/tn/tranpay/e$a;->b()Lcom/tn/tranpay/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    move-object v11, v0

    .line 51
    goto :goto_4

    .line 52
    :cond_4
    move-object/from16 v11, p9

    .line 53
    .line 54
    :goto_4
    move-object v2, p0

    .line 55
    move-object v3, p1

    .line 56
    move-object v4, p2

    .line 57
    move-object v5, p3

    .line 58
    move-object/from16 v6, p4

    .line 59
    .line 60
    invoke-virtual/range {v2 .. v11}, Lcom/tn/tranpay/TranPay;->b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lcom/tn/tranpay/logger/LoggerPlugin;)V
    .locals 1

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Llh/a;->a:Llh/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Llh/a;->a(Lcom/tn/tranpay/logger/LoggerPlugin;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tn/tranpay/logger/LogLevel;ZZLjava/lang/String;Lcom/tn/tranpay/e;)V
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    move/from16 v5, p6

    .line 12
    .line 13
    move-object/from16 v6, p8

    .line 14
    .line 15
    move-object/from16 v7, p9

    .line 16
    .line 17
    const-string v8, "application"

    .line 18
    .line 19
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v8, "cpId"

    .line 23
    .line 24
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v8, "appKey"

    .line 28
    .line 29
    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v8, "channel"

    .line 33
    .line 34
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v8, "level"

    .line 38
    .line 39
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v8, "theme"

    .line 43
    .line 44
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/tn/tranpay/TranPay;->b:Landroid/app/Application;

    .line 48
    .line 49
    invoke-static/range {p1 .. p1}, Lcom/tencent/mmkv/MMKV;->C(Landroid/content/Context;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    sget-object v8, Lcom/tn/tranpay/TranPayConfiguration;->a:Lcom/tn/tranpay/TranPayConfiguration;

    .line 53
    .line 54
    invoke-virtual {v8, v1}, Lcom/tn/tranpay/TranPayConfiguration;->x(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v8, v2}, Lcom/tn/tranpay/TranPayConfiguration;->v(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v8, v3}, Lcom/tn/tranpay/TranPayConfiguration;->w(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8, v6}, Lcom/tn/tranpay/TranPayConfiguration;->B(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8, v5}, Lcom/tn/tranpay/TranPayConfiguration;->y(Z)V

    .line 67
    .line 68
    .line 69
    move/from16 v2, p7

    .line 70
    .line 71
    invoke-virtual {v8, v2}, Lcom/tn/tranpay/TranPayConfiguration;->A(Z)V

    .line 72
    .line 73
    .line 74
    sget-object v2, Lcom/tn/tranpay/e;->c:Lcom/tn/tranpay/e$a;

    .line 75
    .line 76
    invoke-virtual {v2, v7}, Lcom/tn/tranpay/e$a;->a(Lcom/tn/tranpay/e;)V

    .line 77
    .line 78
    .line 79
    sget-object v2, Llh/a;->a:Llh/a;

    .line 80
    .line 81
    invoke-virtual {v2, v4, v5}, Llh/a;->h(Lcom/tn/tranpay/logger/LogLevel;Z)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Lcom/tn/tranpay/event/a;->b(Landroid/app/Application;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    new-instance v12, Lcom/tn/tranpay/TranPay$configure$1;

    .line 98
    .line 99
    const/4 v3, 0x0

    .line 100
    invoke-direct {v12, v0, v5, v6, v3}, Lcom/tn/tranpay/TranPay$configure$1;-><init>(Landroid/app/Application;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v7, "TranPay init succeed "

    .line 116
    .line 117
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", "

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const/4 v1, 0x2

    .line 148
    invoke-static {v2, v0, v3, v1, v3}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    const/4 v0, 0x1

    .line 152
    invoke-virtual {v8, v0}, Lcom/tn/tranpay/TranPayConfiguration;->z(Z)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method public final d()Landroid/app/Application;
    .locals 2

    .line 1
    sget-object v0, Lcom/tn/tranpay/TranPay;->b:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "TranPay SDK not initialized. Please call TranPay.configure() first."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.0.6.2"

    .line 2
    .line 3
    return-object v0
.end method
