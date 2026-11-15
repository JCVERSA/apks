.class final Lcom/mbridge/msdk/reward/adapter/b$i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$IH5SourceDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:Lcom/mbridge/msdk/reward/adapter/b$n;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private final j:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/reward/adapter/b$n;Landroid/os/Handler;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Lcom/mbridge/msdk/reward/adapter/b$n;",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    .line 6
    .line 7
    iput p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->b:I

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    iput-object p6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 18
    .line 19
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 20
    .line 21
    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    iput-wide p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->j:J

    .line 28
    .line 29
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/adapter/b$i;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 3
    new-instance v8, Lcom/mbridge/msdk/reward/adapter/b$i$a;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/reward/adapter/b$i$a;-><init>(Lcom/mbridge/msdk/reward/adapter/b$i;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/adapter/b$i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->b:I

    .line 10
    .line 11
    const/16 v1, 0x139

    .line 12
    .line 13
    const-string v2, "url"

    .line 14
    .line 15
    const/16 v3, 0xc9

    .line 16
    .line 17
    const-string v4, "message"

    .line 18
    .line 19
    const-string v5, "key"

    .line 20
    .line 21
    const-string v6, "request_id"

    .line 22
    .line 23
    const-string v7, "unit_id"

    .line 24
    .line 25
    const-string v8, "_"

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x1f1

    .line 30
    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    const/16 v1, 0x35b

    .line 34
    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/16 v1, 0xcd

    .line 44
    .line 45
    iput v1, v0, Landroid/os/Message;->what:I

    .line 46
    .line 47
    new-instance v1, Landroid/os/Bundle;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, v7, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v1, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 118
    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {v0, v1, v2, v3}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 135
    .line 136
    const v3, 0xd6d86

    .line 137
    .line 138
    .line 139
    const/4 v4, 0x0

    .line 140
    invoke-static {v3, v0, p2, v4, v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-interface {v1, p1, v2, p2}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .line 146
    .line 147
    goto/16 :goto_0

    .line 148
    .line 149
    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string p2, "RewardCampaignsResourceManager"

    .line 155
    .line 156
    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iput v3, v0, Landroid/os/Message;->what:I

    .line 166
    .line 167
    new-instance v1, Landroid/os/Bundle;

    .line 168
    .line 169
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    .line 171
    .line 172
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v7, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 211
    .line 212
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 233
    .line 234
    .line 235
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 236
    .line 237
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 238
    .line 239
    .line 240
    iget-boolean p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    .line 241
    .line 242
    if-eqz p2, :cond_3

    .line 243
    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 245
    .line 246
    .line 247
    move-result-wide v0

    .line 248
    iget-wide v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->j:J

    .line 249
    .line 250
    sub-long v6, v0, v2

    .line 251
    .line 252
    const-string v9, "url download failed"

    .line 253
    .line 254
    const-string v10, ""

    .line 255
    .line 256
    const/4 v5, 0x3

    .line 257
    move-object v4, p0

    .line 258
    move-object v8, p1

    .line 259
    invoke-direct/range {v4 .. v10}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto :goto_0

    .line 263
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iput v3, v0, Landroid/os/Message;->what:I

    .line 268
    .line 269
    new-instance v1, Landroid/os/Bundle;

    .line 270
    .line 271
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 272
    .line 273
    .line 274
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 275
    .line 276
    invoke-virtual {v1, v7, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 280
    .line 281
    iget-object v7, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 282
    .line 283
    invoke-virtual {v1, v3, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 287
    .line 288
    invoke-virtual {v1, v6, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 305
    .line 306
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 313
    .line 314
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    invoke-virtual {v1, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 335
    .line 336
    .line 337
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 338
    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    .line 341
    .line 342
    :cond_3
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p3, p1, v0}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->b:I

    .line 10
    .line 11
    const/16 v0, 0x139

    .line 12
    .line 13
    const-string v1, "url"

    .line 14
    .line 15
    const/16 v2, 0x65

    .line 16
    .line 17
    const-string v3, "key"

    .line 18
    .line 19
    const-string v4, "request_id"

    .line 20
    .line 21
    const-string v5, "unit_id"

    .line 22
    .line 23
    const-string v6, "_"

    .line 24
    .line 25
    if-eq p3, v0, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x1f1

    .line 28
    .line 29
    if-eq p3, v0, :cond_1

    .line 30
    .line 31
    const/16 p2, 0x35b

    .line 32
    .line 33
    if-eq p3, p2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/16 p3, 0x69

    .line 42
    .line 43
    iput p3, p2, Landroid/os/Message;->what:I

    .line 44
    .line 45
    new-instance p3, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p3, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 105
    .line 106
    .line 107
    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 108
    .line 109
    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->g:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 113
    .line 114
    if-eqz p2, :cond_3

    .line 115
    .line 116
    iget-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 121
    .line 122
    invoke-interface {p2, p3, v0, v1, p1}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_0

    .line 126
    .line 127
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 128
    .line 129
    .line 130
    move-result-object p3

    .line 131
    iput v2, p3, Landroid/os/Message;->what:I

    .line 132
    .line 133
    new-instance v0, Landroid/os/Bundle;

    .line 134
    .line 135
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 199
    .line 200
    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .line 202
    .line 203
    iget-boolean p3, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->a:Z

    .line 204
    .line 205
    if-eqz p3, :cond_3

    .line 206
    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 208
    .line 209
    .line 210
    move-result-wide v0

    .line 211
    iget-wide v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->j:J

    .line 212
    .line 213
    sub-long v6, v0, v2

    .line 214
    .line 215
    const/4 v5, 0x1

    .line 216
    const-string v9, ""

    .line 217
    .line 218
    move-object v4, p0

    .line 219
    move-object v8, p1

    .line 220
    move-object v10, p2

    .line 221
    invoke-direct/range {v4 .. v10}, Lcom/mbridge/msdk/reward/adapter/b$i;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    iput v2, p2, Landroid/os/Message;->what:I

    .line 230
    .line 231
    new-instance p3, Landroid/os/Bundle;

    .line 232
    .line 233
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 237
    .line 238
    invoke-virtual {p3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    sget-object v0, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 242
    .line 243
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->c:Ljava/lang/String;

    .line 244
    .line 245
    invoke-virtual {p3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {p3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .line 257
    .line 258
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->d:Ljava/lang/String;

    .line 259
    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->e:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 275
    .line 276
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {p3, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p3, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 294
    .line 295
    .line 296
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$i;->h:Landroid/os/Handler;

    .line 297
    .line 298
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    .line 300
    .line 301
    :cond_3
    :goto_0
    return-void
.end method
