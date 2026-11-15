.class public final Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/billingclient/api/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/payment/lib/strategy/GoogleStrategy;->b(Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

.field final synthetic b:Lkotlin/jvm/functions/Function0;

.field final synthetic c:Ljava/lang/Boolean;

.field final synthetic d:Lcom/transsion/payment/lib/b;


# direct methods
.method constructor <init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;Lcom/transsion/payment/lib/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/android/billingclient/api/n;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "billingResult"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v1, v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->u(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {v1, v4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->s(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->v(Lcom/transsion/payment/lib/strategy/GoogleStrategy;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 34
    .line 35
    const-string v2, "content Billing response OK"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->w()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->C()V

    .line 55
    .line 56
    .line 57
    goto/16 :goto_0

    .line 58
    .line 59
    :cond_1
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->y()Ljava/util/HashSet;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    sget-object v1, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 80
    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v6, "connect error code "

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v3, " msg "

    .line 103
    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v1, v3}, Lcom/transsion/payment/lib/d;->c(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    int-to-long v3, v1

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->A()J

    .line 131
    .line 132
    .line 133
    move-result-wide v7

    .line 134
    sub-long/2addr v5, v7

    .line 135
    sub-long v9, v3, v5

    .line 136
    .line 137
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->c:Ljava/lang/Boolean;

    .line 138
    .line 139
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 140
    .line 141
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_3

    .line 146
    .line 147
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 148
    .line 149
    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->o(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    iget-object v3, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 154
    .line 155
    invoke-static {v3}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->k(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-le v1, v3, :cond_2

    .line 160
    .line 161
    iget-object v11, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    .line 162
    .line 163
    if-eqz v11, :cond_5

    .line 164
    .line 165
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    .line 171
    .line 172
    move-result-object v12

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v13

    .line 177
    const/16 v16, 0x8

    .line 178
    .line 179
    const/16 v17, 0x0

    .line 180
    .line 181
    const/4 v14, 0x0

    .line 182
    const/4 v15, 0x0

    .line 183
    invoke-static/range {v11 .. v17}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 188
    .line 189
    invoke-static {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlinx/coroutines/n0;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    new-instance v5, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1;

    .line 194
    .line 195
    iget-object v8, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 196
    .line 197
    iget-object v11, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    .line 198
    .line 199
    const/4 v12, 0x0

    .line 200
    move-object v7, v5

    .line 201
    invoke-direct/range {v7 .. v12}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingSetupFinished$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 202
    .line 203
    .line 204
    const/4 v6, 0x3

    .line 205
    const/4 v7, 0x0

    .line 206
    const/4 v3, 0x0

    .line 207
    const/4 v4, 0x0

    .line 208
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_3
    iget-object v8, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    .line 213
    .line 214
    if-eqz v8, :cond_5

    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v9

    .line 224
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v10

    .line 228
    const/16 v13, 0x8

    .line 229
    .line 230
    const/4 v14, 0x0

    .line 231
    const/4 v11, 0x0

    .line 232
    const/4 v12, 0x0

    .line 233
    invoke-static/range {v8 .. v14}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_4
    iget-object v1, v0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->d:Lcom/transsion/payment/lib/b;

    .line 238
    .line 239
    if-eqz v1, :cond_5

    .line 240
    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->b()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/n;->a()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    const/16 v6, 0x8

    .line 254
    .line 255
    const/4 v7, 0x0

    .line 256
    const/4 v5, 0x0

    .line 257
    const/4 v8, 0x0

    .line 258
    move-object v2, v3

    .line 259
    move-object v3, v4

    .line 260
    move v4, v5

    .line 261
    move-object v5, v8

    .line 262
    invoke-static/range {v1 .. v7}, Lcom/transsion/payment/lib/b$a;->a(Lcom/transsion/payment/lib/b;Ljava/lang/Integer;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    :cond_5
    :goto_0
    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->u(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->s(Lcom/transsion/payment/lib/strategy/GoogleStrategy;Z)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    .line 13
    .line 14
    const-string v1, "content Service disconnected"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/transsion/payment/lib/d;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->j(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-long v0, v0

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-object v4, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->A()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    sub-long/2addr v2, v4

    .line 37
    sub-long v6, v0, v2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;->i(Lcom/transsion/payment/lib/strategy/GoogleStrategy;)Lkotlinx/coroutines/n0;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v11, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingServiceDisconnected$1;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->a:Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    .line 48
    .line 49
    iget-object v8, p0, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1;->b:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    move-object v4, v11

    .line 53
    invoke-direct/range {v4 .. v9}, Lcom/transsion/payment/lib/strategy/GoogleStrategy$startConnectPlatform$1$onBillingServiceDisconnected$1;-><init>(Lcom/transsion/payment/lib/strategy/GoogleStrategy;JLkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 54
    .line 55
    .line 56
    const/4 v12, 0x3

    .line 57
    const/4 v13, 0x0

    .line 58
    const/4 v10, 0x0

    .line 59
    move-object v8, v0

    .line 60
    invoke-static/range {v8 .. v13}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 61
    .line 62
    .line 63
    return-void
.end method
