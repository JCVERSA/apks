.class public final Lru/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "upgradeSdkLog"

    .line 4
    .line 5
    const-string v3, "msg"

    .line 6
    .line 7
    const-string v4, "tag"

    .line 8
    .line 9
    const-string v5, "DomainChangeInterceptor"

    .line 10
    .line 11
    const-string v0, "replace gslb: "

    .line 12
    .line 13
    const-string v6, "chain"

    .line 14
    .line 15
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v6, 0x3

    .line 19
    const-wide/16 v7, 0x1388

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    const/4 v10, 0x0

    .line 23
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 24
    .line 25
    .line 26
    move-result-object v11

    .line 27
    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 28
    .line 29
    .line 30
    move-result-object v12

    .line 31
    invoke-virtual {v12}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    const-string v13, "toString(...)"

    .line 36
    .line 37
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v13, Lqu/c;->d:Lqu/a;

    .line 41
    .line 42
    invoke-virtual {v13}, Lqu/a;->a()Lqu/c;

    .line 43
    .line 44
    .line 45
    const-string v13, "url"

    .line 46
    .line 47
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v12}, Lcom/transsion/gslb/GslbSdk;->isInitSuccess(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    if-eqz v13, :cond_0

    .line 55
    .line 56
    invoke-static {v12, v9}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v12

    .line 60
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v13

    .line 88
    sget-boolean v0, Ltu/g;->a:Z

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    sget-wide v15, Ltu/g;->b:J

    .line 94
    .line 95
    sub-long v15, v13, v15

    .line 96
    .line 97
    cmp-long v15, v15, v7

    .line 98
    .line 99
    if-gez v15, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    sput-wide v13, Ltu/g;->b:J

    .line 103
    .line 104
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    sput-boolean v9, Ltu/g;->a:Z

    .line 111
    .line 112
    :cond_3
    sget-boolean v0, Ltu/g;->a:Z

    .line 113
    .line 114
    :goto_1
    sget-object v13, Lqu/f;->o:Lqu/d;

    .line 115
    .line 116
    invoke-virtual {v13}, Lqu/d;->a()Lqu/f;

    .line 117
    .line 118
    .line 119
    move-result-object v13

    .line 120
    iget-boolean v13, v13, Lqu/f;->d:Z

    .line 121
    .line 122
    invoke-virtual {v11}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v12}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v11, "url(...)"

    .line 131
    .line 132
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 140
    .line 141
    const/16 v12, 0x1e

    .line 142
    .line 143
    invoke-interface {v1, v12, v11}, Lokhttp3/Interceptor$Chain;->withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lokhttp3/Interceptor$Chain;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    invoke-interface {v11, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 148
    .line 149
    .line 150
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_4

    .line 152
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v12, "error1: "

    .line 155
    .line 156
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v3

    .line 176
    sget-boolean v0, Ltu/g;->a:Z

    .line 177
    .line 178
    if-eqz v0, :cond_4

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_4
    sget-wide v11, Ltu/g;->b:J

    .line 182
    .line 183
    sub-long v11, v3, v11

    .line 184
    .line 185
    cmp-long v5, v11, v7

    .line 186
    .line 187
    if-gez v5, :cond_5

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_5
    sput-wide v3, Ltu/g;->b:J

    .line 191
    .line 192
    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    sput-boolean v9, Ltu/g;->a:Z

    .line 199
    .line 200
    :cond_6
    sget-boolean v0, Ltu/g;->a:Z

    .line 201
    .line 202
    :goto_3
    sget-object v2, Lqu/f;->o:Lqu/d;

    .line 203
    .line 204
    invoke-virtual {v2}, Lqu/d;->a()Lqu/f;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    iget-boolean v2, v2, Lqu/f;->d:Z

    .line 209
    .line 210
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    .line 215
    .line 216
    .line 217
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    goto :goto_4

    .line 219
    :catch_1
    move-object v0, v10

    .line 220
    :goto_4
    if-nez v0, :cond_7

    .line 221
    .line 222
    const-string v0, "The requested resource was not found."

    .line 223
    .line 224
    invoke-static {v10, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/ResponseBody;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    new-instance v2, Lokhttp3/Response$Builder;

    .line 229
    .line 230
    invoke-direct {v2}, Lokhttp3/Response$Builder;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    const/16 v2, 0x190

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const-string v2, "Internal Error"

    .line 254
    .line 255
    invoke-virtual {v1, v2}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1, v0}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    return-object v0
.end method
