.class final Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Dq:J

.field final synthetic EjP:Ljava/lang/String;

.field final synthetic HiB:Ljava/lang/String;

.field final synthetic Jcg:Ljava/lang/String;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic sP:Z

.field final synthetic vS:I


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->sP:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->EjP:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->HiB:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->vS:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Jcg:Ljava/lang/String;

    .line 14
    .line 15
    iput-wide p8, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Dq:J

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 10

    .line 1
    const-string v0, "error_msg"

    .line 2
    .line 3
    const-string v1, "error_code"

    .line 4
    .line 5
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Sj:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const v6, -0x5fc5e195

    .line 22
    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/4 v8, 0x2

    .line 26
    if-eq v5, v6, :cond_2

    .line 27
    .line 28
    const/16 v6, 0xc23

    .line 29
    .line 30
    if-eq v5, v6, :cond_1

    .line 31
    .line 32
    const v6, 0x2d9de0

    .line 33
    .line 34
    .line 35
    if-eq v5, v6, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v5, "adv3"

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    move v4, v8

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception v4

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    const-string v5, "ad"

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_3

    .line 58
    .line 59
    move v4, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-string v5, "endcard"

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    const/4 v4, -0x1

    .line 72
    :goto_1
    const-string v5, "md5"

    .line 73
    .line 74
    const-string v6, "id"

    .line 75
    .line 76
    const-string v9, "url"

    .line 77
    .line 78
    if-eqz v4, :cond_6

    .line 79
    .line 80
    if-eq v4, v7, :cond_5

    .line 81
    .line 82
    if-eq v4, v8, :cond_4

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    if-eqz v4, :cond_8

    .line 93
    .line 94
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/LqL;->TKC()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/LqL;->Sj()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/LqL;->sP()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Zq()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v7

    .line 128
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->vS()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->uvD()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->sP:Z

    .line 147
    .line 148
    if-eqz v4, :cond_7

    .line 149
    .line 150
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 151
    .line 152
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->efv()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    if-eqz v4, :cond_8

    .line 157
    .line 158
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_7
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->TKC:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 181
    .line 182
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->cF()Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    if-eqz v4, :cond_8

    .line 187
    .line 188
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v7

    .line 199
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    .line 208
    .line 209
    :cond_8
    :goto_2
    const-string v4, "ugen_status"

    .line 210
    .line 211
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->EjP:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    const-string v4, "from"

    .line 217
    .line 218
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->HiB:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    const-string v4, "ugen_scene"

    .line 224
    .line 225
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Sj:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    const-string v4, "fail"

    .line 231
    .line 232
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->EjP:Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_9

    .line 239
    .line 240
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->vS:I

    .line 241
    .line 242
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Jcg:Ljava/lang/String;

    .line 246
    .line 247
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    .line 249
    .line 250
    :cond_9
    const-string v4, "duration"

    .line 251
    .line 252
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/TKC$46;->Dq:J

    .line 253
    .line 254
    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :goto_3
    const/16 v5, 0x85

    .line 259
    .line 260
    :try_start_2
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 261
    .line 262
    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    .line 264
    .line 265
    const-string v5, "send template error "

    .line 266
    .line 267
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    .line 283
    .line 284
    :catchall_1
    :goto_4
    :try_start_3
    const-string v0, "ad_extra_data"

    .line 285
    .line 286
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 291
    .line 292
    .line 293
    :catchall_2
    return-object v2
.end method
