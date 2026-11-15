.class public final Lcom/tn/tranpay/helper/PaymentMMKV;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/tranpay/helper/PaymentMMKV;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lcom/google/gson/Gson;

.field private static final d:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 7
    .line 8
    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV$mmkv$2;->INSTANCE:Lcom/tn/tranpay/helper/PaymentMMKV$mmkv$2;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->b:Lkotlin/Lazy;

    .line 15
    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 22
    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 24
    .line 25
    const-string v1, "yyyyMMdd"

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    .line 35
    .line 36
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


# virtual methods
.method public final a(Lcom/tn/tranpay/bean/CurrencyInfoBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

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
    iput v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;-><init>(Lcom/tn/tranpay/helper/PaymentMMKV;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p2, Lcom/tn/tranpay/helper/IPHelper;->a:Lcom/tn/tranpay/helper/IPHelper;

    .line 63
    .line 64
    iput-object p0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    iput-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    .line 67
    .line 68
    iput v3, v0, Lcom/tn/tranpay/helper/PaymentMMKV$cacheCurrencyInfoByIP$1;->label:I

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    invoke-static {p2, v2, v0, v3, v4}, Lcom/tn/tranpay/helper/IPHelper;->j(Lcom/tn/tranpay/helper/IPHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    if-ne p2, v1, :cond_3

    .line 76
    .line 77
    return-object v1

    .line 78
    :cond_3
    move-object v0, p0

    .line 79
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f\u5931\u8d25: "

    .line 82
    .line 83
    const-string v2, "_"

    .line 84
    .line 85
    const/4 v3, 0x2

    .line 86
    if-eqz p2, :cond_5

    .line 87
    .line 88
    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    .line 96
    .line 97
    new-instance v6, Ljava/util/Date;

    .line 98
    .line 99
    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v7, "k_currency_info_ip_cache_"

    .line 112
    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    :try_start_0
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 130
    .line 131
    invoke-virtual {v5, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0, v2, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    .line 141
    .line 142
    sget-object p1, Llh/a;->a:Llh/a;

    .line 143
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v2, "\u4f7f\u7528IP\u5730\u5740\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f: "

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-static {p1, p2, v4, v3, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_0
    move-exception p1

    .line 166
    sget-object p2, Llh/a;->a:Llh/a;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p2, p1, v4, v3, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_5
    :goto_3
    sget-object p2, Llh/a;->a:Llh/a;

    .line 194
    .line 195
    const-string v5, "\u65e0\u6cd5\u83b7\u53d6IP\u5730\u5740\uff0c\u4f7f\u7528\u8bbe\u5907ID\u4f5c\u4e3afallback"

    .line 196
    .line 197
    invoke-static {p2, v5, v4, v3, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    sget-object v5, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    .line 201
    .line 202
    invoke-virtual {v5}, Lcom/tn/tranpay/device/TNDeviceHelper;->c()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    sget-object v6, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    .line 207
    .line 208
    new-instance v7, Ljava/util/Date;

    .line 209
    .line 210
    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v8, "k_currency_info_ip_cache_device_"

    .line 223
    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    :try_start_1
    sget-object v6, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 241
    .line 242
    invoke-virtual {v6, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v0, v2, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    .line 252
    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    const-string v0, "\u4f7f\u7528\u8bbe\u5907ID\u7f13\u5b58\u8d27\u5e01\u4fe1\u606f: "

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-static {p2, p1, v4, v3, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catch_1
    move-exception p1

    .line 275
    sget-object p2, Llh/a;->a:Llh/a;

    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {p2, p1, v4, v3, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 300
    .line 301
    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/tn/tranpay/bean/CurrencyInfoBean;)V
    .locals 3

    .line 1
    const-string v0, "region"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "currencyInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "k_currency_info_cache_"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "k_currency_info_cache_time_"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :try_start_0
    sget-object v1, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 46
    .line 47
    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-virtual {p2, p1, v0, v1}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    sget-object p2, Llh/a;->a:Llh/a;

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const-string v1, "\u7f13\u5b58region\u8d27\u5e01\u4fe1\u606f\u5931\u8d25: "

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 v0, 0x2

    .line 95
    const/4 v1, 0x0

    .line 96
    invoke-static {p2, p1, v1, v0, v1}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->d()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->e()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final d()V
    .locals 14

    .line 1
    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    array-length v2, v1

    .line 23
    const/4 v3, 0x0

    .line 24
    move v4, v3

    .line 25
    :goto_0
    if-ge v4, v2, :cond_1

    .line 26
    .line 27
    aget-object v11, v1, v4

    .line 28
    .line 29
    const-string v5, "key"

    .line 30
    .line 31
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v5, "k_currency_info_ip_cache_"

    .line 35
    .line 36
    const/4 v12, 0x2

    .line 37
    const/4 v13, 0x0

    .line 38
    invoke-static {v11, v5, v3, v12, v13}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    const/4 v9, 0x6

    .line 45
    const/4 v10, 0x0

    .line 46
    const-string v6, "_"

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    move-object v5, v11

    .line 51
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->v0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const/4 v6, -0x1

    .line 56
    if-eq v5, v6, :cond_0

    .line 57
    .line 58
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    add-int/lit8 v6, v6, -0x1

    .line 63
    .line 64
    if-ge v5, v6, :cond_0

    .line 65
    .line 66
    add-int/lit8 v5, v5, 0x1

    .line 67
    .line 68
    invoke-virtual {v11, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const-string v6, "substring(...)"

    .line 73
    .line 74
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_0

    .line 82
    .line 83
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 84
    .line 85
    invoke-virtual {v5}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v5, v11}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object v5, Llh/a;->a:Llh/a;

    .line 93
    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v7, "\u6e05\u9664\u8fc7\u671fIP\u7f13\u5b58: "

    .line 100
    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    invoke-static {v5, v6, v13, v12, v13}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method

.method public final e()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/tencent/mmkv/MMKV;->a()[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    const/4 v4, 0x0

    .line 17
    move v5, v4

    .line 18
    :goto_0
    if-ge v5, v3, :cond_1

    .line 19
    .line 20
    aget-object v6, v2, v5

    .line 21
    .line 22
    const-string v7, "key"

    .line 23
    .line 24
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x2

    .line 28
    const/4 v8, 0x0

    .line 29
    const-string v9, "k_currency_info_cache_time_"

    .line 30
    .line 31
    invoke-static {v6, v9, v4, v7, v8}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    sget-object v7, Lcom/tn/tranpay/helper/PaymentMMKV;->a:Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 38
    .line 39
    invoke-virtual {v7}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const-wide/16 v10, 0x0

    .line 44
    .line 45
    invoke-virtual {v8, v6, v10, v11}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v12

    .line 49
    cmp-long v8, v12, v10

    .line 50
    .line 51
    if-lez v8, :cond_0

    .line 52
    .line 53
    sub-long v10, v0, v12

    .line 54
    .line 55
    const-wide v12, 0x9a7ec800L

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    cmp-long v8, v10, v12

    .line 61
    .line 62
    if-lez v8, :cond_0

    .line 63
    .line 64
    invoke-static {v6, v9}, Lkotlin/text/StringsKt;->I0(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v10, "k_currency_info_cache_"

    .line 74
    .line 75
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v7}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v9, v8}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7, v6}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    return-void
.end method

.method public final f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

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
    iput v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;-><init>(Lcom/tn/tranpay/helper/PaymentMMKV;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    iget-object v1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/lang/String;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/tn/tranpay/helper/PaymentMMKV;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/tn/tranpay/helper/PaymentMMKV;->d:Ljava/text/SimpleDateFormat;

    .line 63
    .line 64
    new-instance v2, Ljava/util/Date;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object v2, Lcom/tn/tranpay/helper/IPHelper;->a:Lcom/tn/tranpay/helper/IPHelper;

    .line 74
    .line 75
    iput-object p0, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput-object p1, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    iput v3, v0, Lcom/tn/tranpay/helper/PaymentMMKV$getCachedCurrencyInfoByIP$1;->label:I

    .line 80
    .line 81
    const/4 v5, 0x0

    .line 82
    invoke-static {v2, v5, v0, v3, v4}, Lcom/tn/tranpay/helper/IPHelper;->j(Lcom/tn/tranpay/helper/IPHelper;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-ne v0, v1, :cond_3

    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_3
    move-object v1, p1

    .line 90
    move-object p1, v0

    .line 91
    move-object v0, p0

    .line 92
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    const-class v2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 95
    .line 96
    const-string v3, ""

    .line 97
    .line 98
    const-string v5, "_"

    .line 99
    .line 100
    const/4 v6, 0x2

    .line 101
    if-eqz p1, :cond_6

    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_4

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v8, "k_currency_info_ip_cache_"

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-virtual {v8, v7, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    if-eqz v8, :cond_6

    .line 142
    .line 143
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    if-nez v9, :cond_5

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    :try_start_0
    sget-object v1, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 151
    .line 152
    invoke-virtual {v1, v8, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    check-cast v1, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 157
    .line 158
    sget-object v2, Llh/a;->a:Llh/a;

    .line 159
    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    const-string v5, "\u4f7f\u7528IP\u5730\u5740\u7f13\u5b58: "

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v2, p1, v4, v6, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    move-object v4, v1

    .line 181
    goto :goto_2

    .line 182
    :catch_0
    move-exception p1

    .line 183
    sget-object v1, Llh/a;->a:Llh/a;

    .line 184
    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v3, "\u89e3\u6790IP\u7f13\u5b58\u5931\u8d25: "

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {v1, p1, v4, v6, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1, v7}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_2
    return-object v4

    .line 217
    :cond_6
    :goto_3
    sget-object p1, Lcom/tn/tranpay/device/TNDeviceHelper;->a:Lcom/tn/tranpay/device/TNDeviceHelper;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/tn/tranpay/device/TNDeviceHelper;->c()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v8, "k_currency_info_ip_cache_device_"

    .line 229
    .line 230
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    invoke-virtual {v5, v1, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    if-eqz v3, :cond_8

    .line 255
    .line 256
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-nez v5, :cond_7

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_7
    :try_start_1
    sget-object v5, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 264
    .line 265
    invoke-virtual {v5, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    check-cast v2, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 270
    .line 271
    sget-object v3, Llh/a;->a:Llh/a;

    .line 272
    .line 273
    new-instance v5, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    const-string v7, "\u4f7f\u7528\u8bbe\u5907ID fallback\u7f13\u5b58: "

    .line 279
    .line 280
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-static {v3, p1, v4, v6, v4}, Llh/a;->g(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    .line 292
    .line 293
    move-object v4, v2

    .line 294
    goto :goto_4

    .line 295
    :catch_1
    move-exception p1

    .line 296
    sget-object v2, Llh/a;->a:Llh/a;

    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    const-string v5, "\u89e3\u6790\u8bbe\u5907ID\u7f13\u5b58\u5931\u8d25: "

    .line 308
    .line 309
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-static {v2, p1, v4, v6, v4}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-virtual {p1, v1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    :cond_8
    :goto_4
    return-object v4
.end method

.method public final g(Ljava/lang/String;)Lcom/tn/tranpay/bean/CurrencyInfoBean;
    .locals 8

    .line 1
    const-string v0, "region"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "k_currency_info_cache_"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v2, "k_currency_info_cache_time_"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    cmp-long v1, v4, v2

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    sub-long/2addr v6, v4

    .line 60
    const-wide v3, 0x9a7ec800L

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    cmp-long v1, v6, v3

    .line 66
    .line 67
    if-lez v1, :cond_0

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const-string v3, ""

    .line 75
    .line 76
    invoke-virtual {v1, v0, v3}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    :try_start_0
    sget-object v3, Lcom/tn/tranpay/helper/PaymentMMKV;->c:Lcom/google/gson/Gson;

    .line 90
    .line 91
    const-class v4, Lcom/tn/tranpay/bean/CurrencyInfoBean;

    .line 92
    .line 93
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/tn/tranpay/bean/CurrencyInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    move-object v2, v1

    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    sget-object v3, Llh/a;->a:Llh/a;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v5, "\u89e3\u6790region\u7f13\u5b58\u5931\u8d25: "

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const/4 v4, 0x2

    .line 126
    invoke-static {v3, v1, v2, v4, v2}, Llh/a;->e(Llh/a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_0
    return-object v2

    .line 144
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1, v0}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/tn/tranpay/helper/PaymentMMKV;->h()Lcom/tencent/mmkv/MMKV;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0, p1}, Lcom/tencent/mmkv/MMKV;->M(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return-object v2
.end method

.method public final h()Lcom/tencent/mmkv/MMKV;
    .locals 2

    .line 1
    sget-object v0, Lcom/tn/tranpay/helper/PaymentMMKV;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "<get-mmkv>(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/tencent/mmkv/MMKV;

    .line 13
    .line 14
    return-object v0
.end method
