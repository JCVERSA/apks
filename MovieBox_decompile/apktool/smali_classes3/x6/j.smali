.class public final Lx6/j;
.super Lcom/cloud/hisavana/net/impl/StringCallback;
.source "source.java"


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/cloud/hisavana/net/RequestParams;

.field public final synthetic e:J

.field public final synthetic f:Lx6/i$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;JLx6/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx6/j;->c:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lx6/j;->d:Lcom/cloud/hisavana/net/RequestParams;

    .line 4
    .line 5
    iput-wide p3, p0, Lx6/j;->e:J

    .line 6
    .line 7
    iput-object p5, p0, Lx6/j;->f:Lx6/i$a;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/StringCallback;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final x(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string p3, "ADSDK"

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    invoke-static {p3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    new-instance p3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v0, "----- onFailure full url = "

    .line 13
    .line 14
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lx6/j;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, " \n----- postBodyString = "

    .line 23
    .line 24
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lx6/j;->d:Lcom/cloud/hisavana/net/RequestParams;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/cloud/hisavana/net/RequestParams;->e()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v0, 0x7d

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p3, " \n ----- status code =  "

    .line 58
    .line 59
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p3, "\n ----- response = "

    .line 66
    .line 67
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string p3, "ABTEST"

    .line 78
    .line 79
    invoke-virtual {v0, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    sget-object p2, Lx6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    iget-wide v0, p0, Lx6/j;->e:J

    .line 85
    .line 86
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    invoke-virtual {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lx6/j;->f:Lx6/i$a;

    .line 94
    .line 95
    iget-wide v0, p0, Lx6/j;->e:J

    .line 96
    .line 97
    invoke-virtual {p2, v0, v1, p1}, Lx6/i$a;->a(JI)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public final y(ILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "ADSDK"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "ABTEST"

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "----- onSuccess full url = "

    .line 15
    .line 16
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lx6/j;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " \n----- postBodyString = "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lx6/j;->d:Lcom/cloud/hisavana/net/RequestParams;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/cloud/hisavana/net/RequestParams;->e()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x7d

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, " \n ----- status code =  "

    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, "\n ----- response = "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    sget-object v0, Lx6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    iget-wide v2, p0, Lx6/j;->e:J

    .line 85
    .line 86
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    iget-wide v2, p0, Lx6/j;->e:J

    .line 94
    .line 95
    iget-object v0, p0, Lx6/j;->f:Lx6/i$a;

    .line 96
    .line 97
    const/16 v4, 0xc8

    .line 98
    .line 99
    if-eq p1, v4, :cond_1

    .line 100
    .line 101
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v5, "response fail, statusCode = "

    .line 108
    .line 109
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {p2, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v2, v3, p1}, Lx6/i$a;->a(JI)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_3

    .line 126
    .line 127
    :cond_1
    const/4 p1, 0x1

    .line 128
    const/4 v4, 0x0

    .line 129
    if-eqz p2, :cond_5

    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    if-nez v5, :cond_2

    .line 136
    .line 137
    goto/16 :goto_2

    .line 138
    .line 139
    :cond_2
    :try_start_0
    const-class v5, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;

    .line 140
    .line 141
    invoke-static {p2, v5}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v5

    .line 149
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v8, "response fail, error = "

    .line 156
    .line 157
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {v6, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/16 v5, 0x2711

    .line 175
    .line 176
    invoke-virtual {v0, v2, v3, v5}, Lx6/i$a;->a(JI)V

    .line 177
    .line 178
    .line 179
    move-object v5, v4

    .line 180
    :goto_0
    if-eqz v5, :cond_6

    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    if-nez v6, :cond_3

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    cmp-long v6, v2, v6

    .line 194
    .line 195
    if-eqz v6, :cond_4

    .line 196
    .line 197
    :goto_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    new-instance p2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    const-string v4, "response fail, layerId is diff, layerId = "

    .line 204
    .line 205
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    .line 209
    .line 210
    .line 211
    move-result-object v4

    .line 212
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/16 p1, 0x2712

    .line 223
    .line 224
    invoke-virtual {v0, v2, v3, p1}, Lx6/i$a;->a(JI)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_4
    sget-object v0, Lx6/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 229
    .line 230
    invoke-virtual {v5}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 235
    .line 236
    .line 237
    move-result-wide v0

    .line 238
    new-instance v2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 239
    .line 240
    invoke-direct {v2, v4, p1, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v0, v1}, Lx6/z;->setLayerId(J)V

    .line 244
    .line 245
    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v0

    .line 250
    invoke-virtual {v2, v0, v1}, Lx6/z;->setRequestTime(J)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, p2}, Lx6/z;->setInfo(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v5}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    .line 257
    .line 258
    .line 259
    invoke-static {v2}, Lx6/e;->e(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_5
    :goto_2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    const-string v0, "response success, response is null"

    .line 268
    .line 269
    invoke-virtual {p2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    new-instance p2, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;

    .line 273
    .line 274
    invoke-direct {p2, v4, p1, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2, v2, v3}, Lx6/z;->setLayerId(J)V

    .line 278
    .line 279
    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 281
    .line 282
    .line 283
    move-result-wide v0

    .line 284
    invoke-virtual {p2, v0, v1}, Lx6/z;->setRequestTime(J)V

    .line 285
    .line 286
    .line 287
    const-string p1, "{}"

    .line 288
    .line 289
    invoke-virtual {p2, p1}, Lx6/z;->setInfo(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2, v4}, Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;->setAbLayerInfo(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)V

    .line 293
    .line 294
    .line 295
    invoke-static {p2}, Lx6/e;->e(Lcom/cloud/hisavana/abtestkit/bean/OnlineABLayerDTO;)V

    .line 296
    .line 297
    .line 298
    :cond_6
    :goto_3
    return-void
.end method
