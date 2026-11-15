.class public final Lcom/transsion/payment/lib/strategy/GoogleStrategy;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/payment/lib/strategy/g;
.implements Lyg/m;


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:Ljava/util/HashSet;

.field private final c:Ljava/util/HashSet;

.field private final d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Lkotlinx/coroutines/n0;

.field private j:Lcom/transsion/payment/lib/b;

.field private final k:Lcom/android/billingclient/api/v;

.field private final l:Lcom/android/billingclient/api/h;

.field private final m:Lkotlin/Lazy;

.field private n:J


# direct methods
.method public constructor <init>()V
    .locals 4

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
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->b:Ljava/util/HashSet;

    .line 17
    .line 18
    new-instance v1, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->c:Ljava/util/HashSet;

    .line 24
    .line 25
    sget-object v2, Lyg/k;->g:Lyg/k$a;

    .line 26
    .line 27
    invoke-virtual {v2}, Lyg/k$a;->a()Lyg/k;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2, p0}, Lyg/k;->D(Lyg/m;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x3

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    const/4 v3, 0x5

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    const/4 v3, -0x2

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x7

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const/4 v0, -0x3

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x6

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    const/4 v0, -0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x2

    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    const/16 v0, 0xc

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d:I

    .line 116
    .line 117
    const/16 v0, 0x7d0

    .line 118
    .line 119
    iput v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->f:I

    .line 120
    .line 121
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    .line 130
    .line 131
    new-instance v0, Lcom/transsion/payment/lib/strategy/a;

    .line 132
    .line 133
    invoke-direct {v0, p0}, Lcom/transsion/payment/lib/strategy/a;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->k:Lcom/android/billingclient/api/v;

    .line 137
    .line 138
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-static {v1}, Lcom/android/billingclient/api/h;->c(Landroid/content/Context;)Lcom/android/billingclient/api/h$a;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/h$a;->c(Lcom/android/billingclient/api/v;)Lcom/android/billingclient/api/h$a;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->b()Lcom/android/billingclient/api/h$a;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "build(...)"

    .line 159
    .line 160
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 164
    .line 165
    new-instance v0, Lcom/transsion/payment/lib/strategy/b;

    .line 166
    .line 167
    invoke-direct {v0}, Lcom/transsion/payment/lib/strategy/b;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m:Lkotlin/Lazy;

    .line 175
    .line 176
    return-void
.end method

.method private final B(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    instance-of v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;

    .line 11
    .line 12
    iget v2, v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I

    .line 13
    .line 14
    const/high16 v3, -0x80000000

    .line 15
    .line 16
    and-int v4, v2, v3

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    sub-int/2addr v2, v3

    .line 21
    iput v2, v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I

    .line 22
    .line 23
    :goto_0
    move-object v14, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;

    .line 26
    .line 27
    invoke-direct {v1, v8, v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->result:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v15

    .line 37
    iget v1, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I

    .line 38
    .line 39
    const-string v13, ""

    .line 40
    .line 41
    const/16 v17, -0x1e

    .line 42
    .line 43
    const/4 v9, 0x1

    .line 44
    const/4 v12, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    if-ne v1, v9, :cond_1

    .line 49
    .line 50
    iget-object v1, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    move-object v6, v10

    .line 58
    goto/16 :goto_8

    .line 59
    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object v6, v10

    .line 62
    goto/16 :goto_9

    .line 63
    .line 64
    :catch_0
    move-object v0, v1

    .line 65
    :catch_1
    move-object v6, v10

    .line 66
    move v1, v12

    .line 67
    move-object v2, v13

    .line 68
    goto/16 :goto_6

    .line 69
    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 82
    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->g()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move-object v4, v0

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    move-object v4, v10

    .line 92
    :goto_2
    if-eqz p1, :cond_4

    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->d()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    .line 100
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/String;

    .line 105
    .line 106
    move-object v3, v0

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    move-object v3, v10

    .line 109
    :goto_3
    if-eqz p1, :cond_5

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->a()Lcom/android/billingclient/api/a;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/android/billingclient/api/a;->a()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    goto :goto_4

    .line 122
    :cond_5
    move-object v0, v10

    .line 123
    :goto_4
    if-eqz p1, :cond_6

    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->b()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    move-object v6, v1

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    move-object v6, v10

    .line 132
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_9

    .line 137
    .line 138
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 143
    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_9

    .line 149
    .line 150
    if-eqz p1, :cond_9

    .line 151
    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->e()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-ne v1, v9, :cond_9

    .line 157
    .line 158
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 159
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v5, "handlePurchase \u652f\u4ed8\u7ed3\u679c orderId:"

    .line 166
    .line 167
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v5, " purchaseToken "

    .line 174
    .line 175
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v5, " productId "

    .line 182
    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string v5, " gpOrderId "

    .line 190
    .line 191
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    .line 203
    .line 204
    :try_start_2
    sget-object v11, Lcom/transsion/payment/lib/PayUtils;->a:Lcom/transsion/payment/lib/PayUtils;

    .line 205
    .line 206
    new-instance v16, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;

    .line 207
    .line 208
    const/4 v7, 0x0

    .line 209
    move-object/from16 v1, v16

    .line 210
    .line 211
    move-object/from16 v2, p0

    .line 212
    .line 213
    move-object v5, v0

    .line 214
    invoke-direct/range {v1 .. v7}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$2$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 215
    .line 216
    .line 217
    iput-object v0, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->L$0:Ljava/lang/Object;

    .line 218
    .line 219
    iput v9, v14, Lcom/transsion/payment/lib/strategy/GoogleStrategy$handlePurchase$1;->label:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .line 221
    const-wide/16 v1, 0x0

    .line 222
    .line 223
    const/4 v3, 0x0

    .line 224
    const/4 v4, 0x3

    .line 225
    const/4 v5, 0x0

    .line 226
    move-object v9, v11

    .line 227
    move-object v6, v10

    .line 228
    move-wide v10, v1

    .line 229
    move v1, v12

    .line 230
    move v12, v3

    .line 231
    move-object v2, v13

    .line 232
    move-object/from16 v13, v16

    .line 233
    .line 234
    move-object v3, v15

    .line 235
    move v15, v4

    .line 236
    move-object/from16 v16, v5

    .line 237
    .line 238
    :try_start_3
    invoke-static/range {v9 .. v16}, Lcom/transsion/payment/lib/PayUtils;->b(Lcom/transsion/payment/lib/PayUtils;JILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    if-ne v0, v3, :cond_c

    .line 243
    .line 244
    return-object v3

    .line 245
    :catchall_1
    move-exception v0

    .line 246
    goto :goto_9

    .line 247
    :catch_2
    :goto_6
    :try_start_4
    iget-object v3, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 248
    .line 249
    if-eqz v3, :cond_7

    .line 250
    .line 251
    invoke-interface {v3, v1}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 252
    .line 253
    .line 254
    :cond_7
    iget-object v3, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 255
    .line 256
    if-eqz v3, :cond_8

    .line 257
    .line 258
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-interface {v3, v4, v2, v1, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_8
    iput-object v6, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 266
    .line 267
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 268
    .line 269
    const-string v1, "handlePurchase \u53d1\u8d27\u8fdb\u884c\u4e2ding"

    .line 270
    .line 271
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :cond_9
    move-object v6, v10

    .line 276
    move v1, v12

    .line 277
    move-object v2, v13

    .line 278
    sget-object v3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 279
    .line 280
    const-string v4, "handlePurchase \u5931\u8d25"

    .line 281
    .line 282
    invoke-virtual {v3, v4}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v3, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 286
    .line 287
    if-eqz v3, :cond_b

    .line 288
    .line 289
    if-eqz p1, :cond_a

    .line 290
    .line 291
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/Purchase;->e()I

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    goto :goto_7

    .line 300
    :cond_a
    move-object v10, v6

    .line 301
    :goto_7
    invoke-interface {v3, v10, v2, v1, v0}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :cond_b
    iput-object v6, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 305
    .line 306
    :cond_c
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 307
    .line 308
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 312
    goto :goto_a

    .line 313
    :goto_9
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 314
    .line 315
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    :goto_a
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-nez v0, :cond_d

    .line 328
    .line 329
    goto :goto_e

    .line 330
    :cond_d
    instance-of v1, v0, Lretrofit2/HttpException;

    .line 331
    .line 332
    if-eqz v1, :cond_10

    .line 333
    .line 334
    iget-object v9, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 335
    .line 336
    if-eqz v9, :cond_11

    .line 337
    .line 338
    move-object v1, v0

    .line 339
    check-cast v1, Lretrofit2/HttpException;

    .line 340
    .line 341
    invoke-virtual {v1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    if-eqz v2, :cond_e

    .line 346
    .line 347
    invoke-virtual {v2}, Lretrofit2/j0;->b()I

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    goto :goto_b

    .line 356
    :cond_e
    move-object v10, v6

    .line 357
    :goto_b
    invoke-virtual {v1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    if-eqz v1, :cond_f

    .line 362
    .line 363
    invoke-virtual {v1}, Lretrofit2/j0;->f()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    move-object v11, v1

    .line 368
    goto :goto_c

    .line 369
    :cond_f
    move-object v11, v6

    .line 370
    :goto_c
    const/16 v14, 0x8

    .line 371
    .line 372
    const/4 v15, 0x0

    .line 373
    const/4 v12, 0x0

    .line 374
    const/4 v13, 0x0

    .line 375
    invoke-static/range {v9 .. v15}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    goto :goto_d

    .line 379
    :cond_10
    iget-object v1, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 380
    .line 381
    if-eqz v1, :cond_11

    .line 382
    .line 383
    invoke-static/range {v17 .. v17}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v17

    .line 387
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v18

    .line 391
    const/16 v21, 0x8

    .line 392
    .line 393
    const/16 v22, 0x0

    .line 394
    .line 395
    const/16 v19, 0x0

    .line 396
    .line 397
    const/16 v20, 0x0

    .line 398
    .line 399
    move-object/from16 v16, v1

    .line 400
    .line 401
    invoke-static/range {v16 .. v22}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    :cond_11
    :goto_d
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 405
    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    const-string v3, "throwable "

    .line 412
    .line 413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-virtual {v1, v0}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iput-object v6, v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 427
    .line 428
    :goto_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 429
    .line 430
    return-object v0
.end method

.method private static final D(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 6

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "purchaseList"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    .line 12
    .line 13
    new-instance v3, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-direct {v3, p2, p0, p1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$orderCheck$1$1;-><init>(Ljava/util/List;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final E()Lcom/transsion/payment/lib/PaymentService;
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

.method private static final F(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "billingResult"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 13
    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v6, v5

    .line 31
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v8, "PurchasesUpdatedListener responseCode:"

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v4, " "

    .line 45
    .line 46
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v2, v4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v6, "purchases: "

    .line 65
    .line 66
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v2, v4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    const/4 v6, 0x1

    .line 84
    if-nez v4, :cond_2

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    iput v2, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    .line 90
    .line 91
    iget-object v2, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 92
    .line 93
    if-eqz v2, :cond_1

    .line 94
    .line 95
    invoke-interface {v2, v6}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v9, Lcom/transsion/payment/lib/strategy/GoogleStrategy$purchasesUpdatedListener$1$1;

    .line 107
    .line 108
    invoke-direct {v9, v1, v0, v5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$purchasesUpdatedListener$1$1;-><init>(Ljava/util/List;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    .line 109
    .line 110
    .line 111
    const/4 v10, 0x3

    .line 112
    const/4 v11, 0x0

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ne v1, v6, :cond_4

    .line 124
    .line 125
    const-string v1, "PurchasesUpdatedListener USER_CANCELED"

    .line 126
    .line 127
    invoke-virtual {v2, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v7, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 131
    .line 132
    if-eqz v7, :cond_3

    .line 133
    .line 134
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    const/16 v12, 0x8

    .line 139
    .line 140
    const/4 v13, 0x0

    .line 141
    const-string v9, "User Cancelled"

    .line 142
    .line 143
    const/4 v10, 0x0

    .line 144
    const/4 v11, 0x0

    .line 145
    invoke-static/range {v7 .. v13}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :cond_3
    iput-object v5, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    iget-object v14, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 152
    .line 153
    if-eqz v14, :cond_5

    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v16

    .line 167
    const/16 v19, 0x8

    .line 168
    .line 169
    const/16 v20, 0x0

    .line 170
    .line 171
    const/16 v17, 0x0

    .line 172
    .line 173
    const/16 v18, 0x0

    .line 174
    .line 175
    invoke-static/range {v14 .. v20}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    iput-object v5, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 179
    .line 180
    :goto_1
    return-void
.end method

.method private final G(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V
    .locals 8

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const-string v0, "subs"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "inapp"

    .line 7
    .line 8
    :goto_0
    invoke-static {}, Lcom/android/billingclient/api/w$b;->a()Lcom/android/billingclient/api/w$b$a;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/w$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/w$b$a;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/w$b$a;->c(Ljava/lang/String;)Lcom/android/billingclient/api/w$b$a;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/android/billingclient/api/w$b$a;->a()Lcom/android/billingclient/api/w$b;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const-string v0, "build(...)"

    .line 25
    .line 26
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/android/billingclient/api/w;->a()Lcom/android/billingclient/api/w$a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x1

    .line 34
    new-array v2, v2, [Lcom/android/billingclient/api/w$b;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object p2, v2, v3

    .line 38
    .line 39
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/w$a;->b(Ljava/util/List;)Lcom/android/billingclient/api/w$a;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p2}, Lcom/android/billingclient/api/w$a;->a()Lcom/android/billingclient/api/w;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 55
    .line 56
    new-instance v7, Lcom/transsion/payment/lib/strategy/f;

    .line 57
    .line 58
    move-object v1, v7

    .line 59
    move v2, p4

    .line 60
    move-object v3, p3

    .line 61
    move-object v4, p0

    .line 62
    move-object v5, p5

    .line 63
    move-object v6, p1

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/f;-><init>(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p2, v7}, Lcom/android/billingclient/api/h;->d(Lcom/android/billingclient/api/w;Lcom/android/billingclient/api/s;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private static final H(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 5

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "productDetailsList"

    .line 7
    .line 8
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {p6}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "queryProductDetailsAsync resultCode: "

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, " result size: "

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {p6}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    if-lez v1, :cond_4

    .line 55
    .line 56
    invoke-interface {p6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p6

    .line 60
    check-cast p6, Lcom/android/billingclient/api/r;

    .line 61
    .line 62
    if-eqz p6, :cond_3

    .line 63
    .line 64
    new-instance p5, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "productDetail is "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/android/billingclient/api/m$b;->a()Lcom/android/billingclient/api/m$b$a;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, p6}, Lcom/android/billingclient/api/m$b$a;->c(Lcom/android/billingclient/api/r;)Lcom/android/billingclient/api/m$b$a;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "setProductDetails(...)"

    .line 98
    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    if-eqz p0, :cond_2

    .line 103
    .line 104
    invoke-virtual {p6}, Lcom/android/billingclient/api/r;->d()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    if-eqz p0, :cond_0

    .line 109
    .line 110
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    check-cast p0, Lcom/android/billingclient/api/r$d;

    .line 115
    .line 116
    if-eqz p0, :cond_0

    .line 117
    .line 118
    invoke-virtual {p0}, Lcom/android/billingclient/api/r$d;->a()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    if-nez p0, :cond_1

    .line 123
    .line 124
    :cond_0
    const-string p0, ""

    .line 125
    .line 126
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/billingclient/api/m$b$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/m$b$a;

    .line 127
    .line 128
    .line 129
    :cond_2
    invoke-virtual {v1}, Lcom/android/billingclient/api/m$b$a;->a()Lcom/android/billingclient/api/m$b;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p6, "build(...)"

    .line 134
    .line 135
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    invoke-static {}, Lcom/android/billingclient/api/m;->a()Lcom/android/billingclient/api/m$a;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0, p5}, Lcom/android/billingclient/api/m$a;->c(Ljava/util/List;)Lcom/android/billingclient/api/m$a;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/billingclient/api/m$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/m$a;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lcom/android/billingclient/api/m$a;->a()Lcom/android/billingclient/api/m;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iput-object p3, p2, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 161
    .line 162
    const-string p1, "Launch billing flow"

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p2, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 168
    .line 169
    invoke-virtual {p1, p4, p0}, Lcom/android/billingclient/api/h;->b(Landroid/app/Activity;Lcom/android/billingclient/api/m;)Lcom/android/billingclient/api/n;

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_3
    const-string p0, "billingFlowParams productDetail null"

    .line 174
    .line 175
    invoke-virtual {v0, p0}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    .line 179
    .line 180
    .line 181
    move-result p0

    .line 182
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p2

    .line 190
    invoke-interface {p3, p0, p2, v2, p1}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p2

    .line 206
    invoke-interface {p3, p0, p2, v2, p1}, Lcom/transsion/payment/lib/b;->a(Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->b()I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    invoke-virtual {p5}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string p3, "queryProductDetailsAsync failed list: "

    .line 223
    .line 224
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string p3, ", code: "

    .line 231
    .line 232
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    const-string p0, ", message: "

    .line 239
    .line 240
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-virtual {v0, p0}, Lcom/transsion/payment/lib/d;->b(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :goto_0
    return-void
.end method

.method private static final I(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final J(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p4, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

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
    iput v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    .line 42
    .line 43
    iget-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    iget-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    .line 57
    .line 58
    iget-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p3, Lkotlin/jvm/functions/Function1;

    .line 61
    .line 62
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    :goto_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :cond_4
    iget p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    .line 70
    .line 71
    add-int/lit8 v2, p4, 0x1

    .line 72
    .line 73
    iput v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    .line 74
    .line 75
    iget v2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d:I

    .line 76
    .line 77
    if-ge p4, v2, :cond_6

    .line 78
    .line 79
    iget-boolean p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->h:Z

    .line 80
    .line 81
    if-nez p4, :cond_6

    .line 82
    .line 83
    const-wide/16 v5, 0x0

    .line 84
    .line 85
    cmp-long p4, p1, v5

    .line 86
    .line 87
    if-lez p4, :cond_5

    .line 88
    .line 89
    iput-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    .line 90
    .line 91
    iput-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    .line 92
    .line 93
    iput v4, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    .line 94
    .line 95
    invoke-static {p1, p2, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p4

    .line 99
    if-ne p4, v1, :cond_5

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_5
    :goto_2
    iput-object p3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->L$0:Ljava/lang/Object;

    .line 103
    .line 104
    iput-wide p1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->J$0:J

    .line 105
    .line 106
    iput v3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$retryCheck$1;->label:I

    .line 107
    .line 108
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p4

    .line 112
    if-ne p4, v1, :cond_4

    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1
.end method

.method private final K()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v4, Lcom/transsion/payment/lib/strategy/c;

    .line 12
    .line 13
    invoke-direct {v4, p0}, Lcom/transsion/payment/lib/strategy/c;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    move-object v1, p0

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/g$a;->b(Lcom/transsion/payment/lib/strategy/g;Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final L(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->w()V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method public static synthetic c(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->D(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->H(ZLjava/lang/String;Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;Landroid/app/Activity;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->I(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->E()Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->F(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/n;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->L(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlinx/coroutines/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic l(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lcom/transsion/payment/lib/PaymentService;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->z()Lcom/transsion/payment/lib/PaymentService;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->a:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic o(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic p(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->B(Lcom/android/billingclient/api/Purchase;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->G(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/transsion/payment/lib/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcom/transsion/payment/lib/strategy/GoogleStrategy;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->J(JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic t(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j:Lcom/transsion/payment/lib/b;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic u(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic v(Lcom/transsion/payment/lib/strategy/GoogleStrategy;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->e:I

    .line 2
    .line 3
    return-void
.end method

.method private final z()Lcom/transsion/payment/lib/PaymentService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->m:Lkotlin/Lazy;

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


# virtual methods
.method public final A()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public C()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/x;->a()Lcom/android/billingclient/api/x$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "inapp"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/x$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/x$a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "setProductType(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/billingclient/api/x$a;->a()Lcom/android/billingclient/api/x;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Lcom/transsion/payment/lib/strategy/e;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsion/payment/lib/strategy/e;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/h;->e(Lcom/android/billingclient/api/x;Lcom/android/billingclient/api/u;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public a(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V
    .locals 9

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "createOrderReq"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "payCallback"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->x()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " --> requestPay() --> \u8bf7\u6c42\u63a5\u53e3\u521b\u5efa\u8ba2\u5355...."

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-interface {p4, v0}, Lcom/transsion/payment/lib/b;->b(Z)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/billingclient/api/h;->a()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 57
    .line 58
    new-instance v7, Lcom/transsion/payment/lib/strategy/d;

    .line 59
    .line 60
    move-object v1, v7

    .line 61
    move-object v2, p0

    .line 62
    move-object v3, p1

    .line 63
    move-object v4, p2

    .line 64
    move v5, p3

    .line 65
    move-object v6, p4

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/d;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v0, p4, v7}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->b(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    .line 76
    .line 77
    new-instance v8, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;

    .line 78
    .line 79
    const/4 v7, 0x0

    .line 80
    move-object v1, v8

    .line 81
    move-object v2, p0

    .line 82
    move-object v3, p2

    .line 83
    move-object v4, p1

    .line 84
    move v5, p3

    .line 85
    move-object v6, p4

    .line 86
    invoke-direct/range {v1 .. v7}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$requestPay$1$2;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lcom/transsion/payment/lib/bean/CreateOrderReq;Landroidx/appcompat/app/AppCompatActivity;ZLcom/transsion/payment/lib/b;Lkotlin/coroutines/Continuation;)V

    .line 87
    .line 88
    .line 89
    const/4 v4, 0x3

    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    const/4 v2, 0x0

    .line 93
    move-object v3, v8

    .line 94
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    goto :goto_1

    .line 103
    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-nez p1, :cond_1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_1
    instance-of p2, p1, Lretrofit2/HttpException;

    .line 121
    .line 122
    if-eqz p2, :cond_4

    .line 123
    .line 124
    check-cast p1, Lretrofit2/HttpException;

    .line 125
    .line 126
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    const/4 p3, 0x0

    .line 131
    if-eqz p2, :cond_2

    .line 132
    .line 133
    invoke-virtual {p2}, Lretrofit2/j0;->b()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    move-object v1, p2

    .line 142
    goto :goto_2

    .line 143
    :cond_2
    move-object v1, p3

    .line 144
    :goto_2
    invoke-virtual {p1}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eqz p1, :cond_3

    .line 149
    .line 150
    invoke-virtual {p1}, Lretrofit2/j0;->f()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    :cond_3
    move-object v2, p3

    .line 155
    const/16 v5, 0x8

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v3, 0x0

    .line 159
    const/4 v4, 0x0

    .line 160
    move-object v0, p4

    .line 161
    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_4
    const/16 p2, -0xa

    .line 166
    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const/16 v5, 0x8

    .line 176
    .line 177
    const/4 v6, 0x0

    .line 178
    const/4 v3, 0x0

    .line 179
    const/4 v4, 0x0

    .line 180
    move-object v0, p4

    .line 181
    invoke-static/range {v0 .. v6}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :goto_3
    return-void
.end method

.method public b(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->g:Z

    .line 8
    .line 9
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 10
    .line 11
    const-string v1, "startBillingConnection start"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->n:J

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->l:Lcom/android/billingclient/api/h;

    .line 23
    .line 24
    new-instance v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;

    .line 25
    .line 26
    invoke-direct {v1, p0, p3, p1, p2}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h;->f(Lcom/android/billingclient/api/j;)V

    .line 30
    .line 31
    .line 32
    return-void
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
    sget-object p1, Lyg/k;->g:Lyg/k$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lyg/k$a;->a()Lyg/k;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lyg/k;->D(Lyg/m;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onConnected()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyg/m$a;->a(Lyg/m;)V

    return-void
.end method

.method public onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->K()V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public w()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i:Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    new-instance v3, Lcom/transsion/payment/lib/strategy/GoogleStrategy$fetchSkuList$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$fetchSkuList$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/coroutines/Continuation;)V

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

.method public x()Ljava/lang/String;
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

.method public final y()Ljava/util/HashSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->c:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object v0
.end method
