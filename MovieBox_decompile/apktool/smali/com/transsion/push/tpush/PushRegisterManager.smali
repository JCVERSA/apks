.class public final Lcom/transsion/push/tpush/PushRegisterManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lyg/m;
.implements Lqx/b;


# static fields
.field public static final a:Lcom/transsion/push/tpush/PushRegisterManager;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;

.field private static final d:Lkotlin/Lazy;

.field private static final e:Lkotlin/Lazy;

.field private static f:Lkotlinx/coroutines/t1;

.field private static volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/tpush/PushRegisterManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/tpush/PushRegisterManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->a:Lcom/transsion/push/tpush/PushRegisterManager;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/push/tpush/j;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/push/tpush/j;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/push/tpush/k;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/transsion/push/tpush/k;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->c:Lkotlin/Lazy;

    .line 29
    .line 30
    new-instance v0, Lcom/transsion/push/tpush/l;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/transsion/push/tpush/l;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->d:Lkotlin/Lazy;

    .line 40
    .line 41
    new-instance v0, Lcom/transsion/push/tpush/m;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/transsion/push/tpush/m;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->e:Lkotlin/Lazy;

    .line 51
    .line 52
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

.method private final A(Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 3

    .line 1
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    .line 4
    .line 5
    const-string v2, "application/json"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private final B(JLjava/lang/String;)V
    .locals 10

    .line 1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onMessageReceive msgId "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " transData="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v4, 0x4

    .line 29
    const/4 v5, 0x0

    .line 30
    const-string v1, "PushRegisterManager"

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v0, v6

    .line 34
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    if-eqz p3, :cond_3

    .line 38
    .line 39
    :try_start_0
    const-string v0, "clientLogsRetrieve"

    .line 40
    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    invoke-static {p3, v0, v8, v7, v9}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    new-instance v3, Lcom/transsion/push/tpush/PushRegisterManager$handleTransData$1$1;

    .line 59
    .line 60
    invoke-direct {v3, p3, v9}, Lcom/transsion/push/tpush/PushRegisterManager$handleTransData$1$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    const/4 v5, 0x0

    .line 65
    const/4 v1, 0x0

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 68
    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :catch_0
    move-exception p1

    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_0
    const-string v0, "configRefreshPush"

    .line 76
    .line 77
    invoke-static {p3, v0, v8, v7, v9}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    const-class p1, Lcom/transsion/push/tpush/i;

    .line 84
    .line 85
    new-array p2, v8, [Ljava/lang/Object;

    .line 86
    .line 87
    invoke-static {p1, p2}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/transsion/push/tpush/i;

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/transsion/push/tpush/i;->a()V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_1

    .line 99
    .line 100
    :cond_1
    const-class v0, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 101
    .line 102
    invoke-static {p3, v0}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    check-cast p3, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 107
    .line 108
    if-eqz p3, :cond_3

    .line 109
    .line 110
    sget-object v0, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 111
    .line 112
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    const-string v3, "2"

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/push/helper/a;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p3, p1}, Lcom/transsion/baselib/db/notification/MsgBean;->setMessageId(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lcom/transsion/push/bean/MsgType;->ONLINE_JSON_PUSH:Lcom/transsion/push/bean/MsgType;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/transsion/push/bean/MsgType;->getType()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p3, p1}, Lcom/transsion/baselib/db/notification/MsgBean;->setType(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string p1, "fcm_push"

    .line 146
    .line 147
    invoke-virtual {p3, p1}, Lcom/transsion/baselib/db/notification/MsgBean;->setSource(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v1, "PushRegisterManager"

    .line 151
    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string p2, "msg.message: "

    .line 158
    .line 159
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    const/4 v4, 0x4

    .line 170
    const/4 v5, 0x0

    .line 171
    const/4 v3, 0x0

    .line 172
    move-object v0, v6

    .line 173
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 177
    .line 178
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 179
    .line 180
    .line 181
    sget-object p2, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 182
    .line 183
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v1, "id"

    .line 192
    .line 193
    invoke-virtual {p2, v0, v1}, Lcom/transsion/push/utils/NotificationUtil;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {p3}, Lcom/transsion/baselib/db/notification/MsgBean;->getDeeplink()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    const-string v1, "msg_type"

    .line 208
    .line 209
    invoke-virtual {p2, v0, v1}, Lcom/transsion/push/utils/NotificationUtil;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    const-string v1, "PushRegisterManager"

    .line 214
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v2, "msg_type: "

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    const/4 v4, 0x4

    .line 233
    const/4 v5, 0x0

    .line 234
    const/4 v3, 0x0

    .line 235
    move-object v0, v6

    .line 236
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 237
    .line 238
    .line 239
    const-string v0, "SportsLiveEventRemind"

    .line 240
    .line 241
    invoke-static {p2, v0, v8, v7, v9}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    if-eqz p2, :cond_2

    .line 246
    .line 247
    const-string v1, "PushRegisterManager"

    .line 248
    .line 249
    const-string v2, "\u63a5\u6536\u5230SportsLiveEventRemind\u7684\u901a\u77e5"

    .line 250
    .line 251
    const/4 v4, 0x4

    .line 252
    const/4 v5, 0x0

    .line 253
    const/4 v3, 0x0

    .line 254
    move-object v0, v6

    .line 255
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-static {p2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    new-instance v3, Lcom/transsion/push/tpush/PushRegisterManager$handleTransData$1$2$1;

    .line 267
    .line 268
    invoke-direct {v3, p1, p3, v9}, Lcom/transsion/push/tpush/PushRegisterManager$handleTransData$1$2$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/baselib/db/notification/MsgBean;Lkotlin/coroutines/Continuation;)V

    .line 269
    .line 270
    .line 271
    const/4 v4, 0x3

    .line 272
    const/4 v5, 0x0

    .line 273
    const/4 v1, 0x0

    .line 274
    const/4 v2, 0x0

    .line 275
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 276
    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_2
    sget-object p1, Lcom/transsion/push/helper/e;->a:Lcom/transsion/push/helper/e;

    .line 280
    .line 281
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 282
    .line 283
    .line 284
    move-result-object p2

    .line 285
    const-string v0, "getApp(...)"

    .line 286
    .line 287
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2, p3}, Lcom/transsion/push/helper/e;->i(Landroid/content/Context;Lcom/transsion/baselib/db/notification/MsgBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 295
    .line 296
    .line 297
    :cond_3
    :goto_1
    return-void
.end method

.method private static final D()Lqx/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lqx/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lqx/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private static final E()Luo/a;
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
    const-class v1, Luo/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Luo/a;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final F()Lcom/transsion/push/tpush/h;
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
    const-class v1, Lcom/transsion/push/tpush/h;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/push/tpush/h;

    .line 14
    .line 15
    return-object v0
.end method

.method private static final G()Lcom/transsion/push/tpush/PushRegisterManager$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/tpush/PushRegisterManager$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/tpush/PushRegisterManager$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final H()V
    .locals 15

    .line 1
    sget-object v0, Lcom/tn/lib/net/dns/or/CacheIpPool;->a:Lcom/tn/lib/net/dns/or/CacheIpPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tn/lib/net/dns/or/CacheIpPool;->l()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "test-mse-api.aoneroom.com"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "push_topic_country"

    .line 20
    .line 21
    const-string v4, ""

    .line 22
    .line 23
    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v5, "push_topic_zone"

    .line 32
    .line 33
    invoke-virtual {v3, v5, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string v6, "push_topic_language"

    .line 42
    .line 43
    invoke-virtual {v5, v6, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v6, "push_topic_app"

    .line 52
    .line 53
    invoke-virtual {v1, v6, v4}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "_test"

    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    move-object v8, v7

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    move-object v8, v4

    .line 72
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v10, "topic_country_"

    .line 78
    .line 79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v8}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    const-string v8, "getID(...)"

    .line 101
    .line 102
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v13, 0x4

    .line 106
    const/4 v14, 0x0

    .line 107
    const/16 v10, 0x2f

    .line 108
    .line 109
    const/16 v11, 0x5f

    .line 110
    .line 111
    const/4 v12, 0x0

    .line 112
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    if-eqz v0, :cond_1

    .line 117
    .line 118
    move-object v9, v7

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move-object v9, v4

    .line 121
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v11, "topic_zone_"

    .line 127
    .line 128
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    if-eqz v0, :cond_2

    .line 150
    .line 151
    move-object v10, v7

    .line 152
    goto :goto_2

    .line 153
    :cond_2
    move-object v10, v4

    .line 154
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v12, "topic_language_"

    .line 160
    .line 161
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    move-object v4, v7

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    const-string v7, "topic_appid_"

    .line 191
    .line 192
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_6

    .line 210
    .line 211
    if-eqz v2, :cond_5

    .line 212
    .line 213
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-nez v4, :cond_4

    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_4
    sget-object v4, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 221
    .line 222
    invoke-virtual {v4, v2}, Lcom/transsion/push/tpush/e;->r(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    :goto_3
    sget-object v2, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 226
    .line 227
    new-instance v4, Lcom/transsion/push/tpush/p;

    .line 228
    .line 229
    invoke-direct {v4, v6}, Lcom/transsion/push/tpush/p;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v6, v4}, Lcom/transsion/push/tpush/e;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 233
    .line 234
    .line 235
    :cond_6
    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-nez v2, :cond_9

    .line 240
    .line 241
    if-eqz v3, :cond_8

    .line 242
    .line 243
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_7

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_7
    sget-object v2, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Lcom/transsion/push/tpush/e;->r(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :cond_8
    :goto_4
    sget-object v2, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 256
    .line 257
    new-instance v3, Lcom/transsion/push/tpush/q;

    .line 258
    .line 259
    invoke-direct {v3, v8}, Lcom/transsion/push/tpush/q;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, v8, v3}, Lcom/transsion/push/tpush/e;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 263
    .line 264
    .line 265
    :cond_9
    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    if-nez v2, :cond_c

    .line 270
    .line 271
    if-eqz v5, :cond_b

    .line 272
    .line 273
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-nez v2, :cond_a

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_a
    sget-object v2, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 281
    .line 282
    invoke-virtual {v2, v5}, Lcom/transsion/push/tpush/e;->r(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    :cond_b
    :goto_5
    sget-object v2, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 286
    .line 287
    new-instance v3, Lcom/transsion/push/tpush/r;

    .line 288
    .line 289
    invoke-direct {v3, v9}, Lcom/transsion/push/tpush/r;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v9, v3}, Lcom/transsion/push/tpush/e;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 293
    .line 294
    .line 295
    :cond_c
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    if-nez v2, :cond_f

    .line 300
    .line 301
    if-eqz v1, :cond_e

    .line 302
    .line 303
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-nez v2, :cond_d

    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_d
    sget-object v2, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 311
    .line 312
    invoke-virtual {v2, v1}, Lcom/transsion/push/tpush/e;->r(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    :cond_e
    :goto_6
    sget-object v1, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 316
    .line 317
    new-instance v2, Lcom/transsion/push/tpush/s;

    .line 318
    .line 319
    invoke-direct {v2, v0}, Lcom/transsion/push/tpush/s;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1, v0, v2}, Lcom/transsion/push/tpush/e;->m(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    return-void
.end method

.method private static final I(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "push_topic_country"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final J(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "push_topic_zone"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final K(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "push_topic_language"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final L(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "push_topic_app"

    .line 10
    .line 11
    invoke-virtual {p1, v0, p0}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final M()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/push/tpush/PushRegisterManager;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/transsion/push/tpush/PushRegisterManager;->g:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->N()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final O(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    .line 1
    const-string v0, "regHash"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->f:Lkotlinx/coroutines/t1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v5, Lcom/transsion/push/tpush/PushRegisterManager$sendToServer$1$1;

    .line 24
    .line 25
    invoke-direct {v5, p0, p1, v1}, Lcom/transsion/push/tpush/PushRegisterManager$sendToServer$1$1;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    sput-object p0, Lcom/transsion/push/tpush/PushRegisterManager;->f:Lkotlinx/coroutines/t1;

    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method public static synthetic a()Lcom/transsion/push/tpush/h;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/tpush/PushRegisterManager;->F()Lcom/transsion/push/tpush/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->v(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Luo/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/tpush/PushRegisterManager;->E()Luo/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Lqx/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/tpush/PushRegisterManager;->D()Lqx/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/tpush/PushRegisterManager;->O(Lorg/json/JSONObject;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f()Lcom/transsion/push/tpush/PushRegisterManager$a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/push/tpush/PushRegisterManager;->G()Lcom/transsion/push/tpush/PushRegisterManager$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/tpush/PushRegisterManager;->I(Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/tpush/PushRegisterManager;->K(Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/tpush/PushRegisterManager;->L(Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Ljava/lang/String;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/push/tpush/PushRegisterManager;->J(Ljava/lang/String;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/push/tpush/PushRegisterManager;)Luo/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->x()Luo/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/transsion/push/tpush/PushRegisterManager;)Lcom/transsion/push/tpush/h;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->y()Lcom/transsion/push/tpush/h;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic m(Lcom/transsion/push/tpush/PushRegisterManager;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/push/tpush/PushRegisterManager;->A(Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/push/tpush/PushRegisterManager;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic o(Lcom/transsion/push/tpush/PushRegisterManager;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/push/tpush/PushRegisterManager;->B(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/transsion/push/tpush/PushRegisterManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/transsion/push/tpush/PushRegisterManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/transsion/push/tpush/PushRegisterManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method private final s()Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroidx/core/app/t;->b(Landroid/content/Context;)Landroidx/core/app/t;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroidx/core/app/t;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 v0, 0x1

    .line 15
    :goto_0
    return v0
.end method

.method private final t(Lkotlin/jvm/functions/Function1;)V
    .locals 11

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->w()Lqx/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, ""

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Lqx/a;->i()Lcom/transsnet/loginapi/bean/UserInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    :cond_0
    move-object v1, v2

    .line 30
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    sget-object v6, Ltg/b;->a:Ltg/b;

    .line 51
    .line 52
    invoke-virtual {v6}, Ltg/b;->n()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    sget-object v7, Lwg/a;->a:Lwg/a$a;

    .line 57
    .line 58
    sget-object v8, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 59
    .line 60
    invoke-virtual {v8}, Lcom/transsion/push/tpush/e;->j()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v8}, Lcom/transsion/push/tpush/e;->g()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, "|"

    .line 77
    .line 78
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v7, v0}, Lwg/a$a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v3, "push_ru"

    .line 135
    .line 136
    invoke-virtual {v1, v3, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_2

    .line 145
    .line 146
    return-void

    .line 147
    :cond_2
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private static final v(Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/transsion/push/tpush/PushRegisterManager;->a:Lcom/transsion/push/tpush/PushRegisterManager;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->N()V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method private final w()Lqx/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqx/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final x()Luo/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Luo/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y()Lcom/transsion/push/tpush/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/push/tpush/h;

    .line 8
    .line 9
    return-object v0
.end method

.method private final z()Lcom/transsion/push/tpush/PushRegisterManager$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/PushRegisterManager;->e:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/push/tpush/PushRegisterManager$a;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final C(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lyg/l;->l(Lyg/m;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/transsion/push/tpush/e;->k(Landroid/app/Application;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->z()Lcom/transsion/push/tpush/PushRegisterManager$a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/transsion/push/tpush/e;->l(Lcom/transsion/push/tpush/f;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->w()Lqx/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, p0}, Lqx/a;->e(Lqx/b;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final N()V
    .locals 10

    .line 1
    sget-object v0, Lcom/transsion/push/tpush/e;->a:Lcom/transsion/push/tpush/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/push/tpush/e;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/push/tpush/e;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->s()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    new-instance v2, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "firebaseToken"

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/transsion/push/tpush/e;->j()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    const-string v3, "twibidaClientId"

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/push/tpush/e;->g()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    xor-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    const-string v3, "notifySwitchOff"

    .line 55
    .line 56
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/push/tpush/e;->j()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0}, Lcom/transsion/push/tpush/e;->g()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v5, "onSuccess, firebaseToken:"

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, " twibidaClientId "

    .line 83
    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/4 v8, 0x4

    .line 95
    const/4 v9, 0x0

    .line 96
    const-string v5, "PushRegisterManager"

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/transsion/push/tpush/o;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/transsion/push/tpush/o;-><init>(Lorg/json/JSONObject;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0, v0}, Lcom/transsion/push/tpush/PushRegisterManager;->t(Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
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
    invoke-virtual {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->u()V

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 7

    .line 1
    const-string v0, "user"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lqx/b$a;->a(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "onLogin, "

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const/4 v5, 0x4

    .line 33
    const/4 v6, 0x0

    .line 34
    const-string v2, "PushRegisterManager"

    .line 35
    .line 36
    const/4 v4, 0x0

    .line 37
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/push/tpush/PushRegisterManager;->u()V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onLogout()V
    .locals 0

    .line 1
    invoke-static {p0}, Lqx/b$a;->b(Lqx/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lqx/b$a;->c(Lqx/b;Lcom/transsnet/loginapi/bean/UserInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final u()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/tpush/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/tpush/n;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/transsion/push/tpush/PushRegisterManager;->t(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
