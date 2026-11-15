.class final Lcom/mbridge/msdk/reward/adapter/b$l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/foundation/download/download/H5DownLoadManager$ZipDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/reward/adapter/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# instance fields
.field private a:Z

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private g:I

.field private h:Landroid/os/Handler;

.field private i:Lcom/mbridge/msdk/reward/adapter/b$n;

.field private j:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;ILandroid/os/Handler;Lcom/mbridge/msdk/reward/adapter/b$n;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            "I",
            "Landroid/os/Handler;",
            "Lcom/mbridge/msdk/reward/adapter/b$n;",
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
    iput-boolean v0, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->a:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 16
    .line 17
    iput p6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->g:I

    .line 18
    .line 19
    iput-object p7, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 20
    .line 21
    iput-object p8, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->i:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 22
    .line 23
    iput-object p9, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iput-wide p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->k:J

    .line 30
    .line 31
    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/reward/adapter/b$l;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    return-object p0
.end method

.method private a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 5
    new-instance v8, Lcom/mbridge/msdk/reward/adapter/b$l$b;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/mbridge/msdk/reward/adapter/b$l$b;-><init>(Lcom/mbridge/msdk/reward/adapter/b$l;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3
    new-instance v6, Lcom/mbridge/msdk/reward/adapter/b$l$a;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mbridge/msdk/reward/adapter/b$l$a;-><init>(Lcom/mbridge/msdk/reward/adapter/b$l;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->e()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/reward/adapter/b$l;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/reward/adapter/b$l;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->a:Z

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
    invoke-virtual {v0, p2, v1}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->k:J

    .line 14
    .line 15
    sub-long v6, v0, v2

    .line 16
    .line 17
    iget v0, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->g:I

    .line 18
    .line 19
    const/16 v1, 0x139

    .line 20
    .line 21
    const-string v2, "message"

    .line 22
    .line 23
    const-string v3, "key"

    .line 24
    .line 25
    const-string v4, "url"

    .line 26
    .line 27
    const-string v5, "request_id"

    .line 28
    .line 29
    const-string v8, "unit_id"

    .line 30
    .line 31
    const-string v9, "_"

    .line 32
    .line 33
    if-eq v0, v1, :cond_3

    .line 34
    .line 35
    const/16 v1, 0x1f1

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    const/16 v1, 0x35b

    .line 40
    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    goto/16 :goto_1

    .line 44
    .line 45
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/16 v1, 0xcb

    .line 50
    .line 51
    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    .line 53
    new-instance v1, Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object v6, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v7, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 100
    .line 101
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->i:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 127
    .line 128
    const-string v1, ""

    .line 129
    .line 130
    if-eqz v0, :cond_1

    .line 131
    .line 132
    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/out/MBridgeIds;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v4, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 139
    .line 140
    invoke-direct {v0, v2, v3, v4}, Lcom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->i:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 144
    .line 145
    iget-object v3, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    const v5, 0xd6d86

    .line 149
    .line 150
    .line 151
    invoke-static {v5, v0, v1, v4, v4}, Lcom/mbridge/msdk/reward/adapter/b;->a(ILcom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)Lcom/mbridge/msdk/foundation/error/b;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-interface {v2, p2, v3, v0}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/error/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v2, "RewardCampaignsResourceManager"

    .line 165
    .line 166
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 170
    invoke-direct {p0, v0, p2, p1, v1}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto/16 :goto_1

    .line 174
    .line 175
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const/16 v1, 0xc9

    .line 180
    .line 181
    iput v1, v0, Landroid/os/Message;->what:I

    .line 182
    .line 183
    new-instance v1, Landroid/os/Bundle;

    .line 184
    .line 185
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    .line 187
    .line 188
    iget-object v10, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v1, v8, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sget-object v8, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v10, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 196
    .line 197
    invoke-virtual {v1, v8, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v8, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 201
    .line 202
    invoke-virtual {v1, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 222
    .line 223
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget-object v5, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    .line 255
    .line 256
    iget-boolean p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->a:Z

    .line 257
    .line 258
    if-eqz p1, :cond_4

    .line 259
    .line 260
    const-string v9, "zip download failed"

    .line 261
    .line 262
    const-string v10, ""

    .line 263
    .line 264
    const/4 v5, 0x3

    .line 265
    move-object v4, p0

    .line 266
    move-object v8, p2

    .line 267
    invoke-direct/range {v4 .. v10}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    const/16 v1, 0x65

    .line 276
    .line 277
    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    .line 279
    new-instance v1, Landroid/os/Bundle;

    .line 280
    .line 281
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 282
    .line 283
    .line 284
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v1, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    sget-object v6, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v7, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 304
    .line 305
    .line 306
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 307
    .line 308
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget-object v6, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 323
    .line 324
    invoke-virtual {v6}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    invoke-virtual {v1, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v1, v4, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 345
    .line 346
    .line 347
    iget-object p1, p0, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 348
    .line 349
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 350
    .line 351
    .line 352
    :cond_4
    :goto_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14

    .line 1
    move-object v7, p0

    .line 2
    move-object v4, p1

    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->getInstance()Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/mbridge/msdk/foundation/download/download/ResDownloadCheckManager;->setZipDownloadDone(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-wide v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->k:J

    .line 16
    .line 17
    sub-long/2addr v2, v5

    .line 18
    iget v0, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->g:I

    .line 19
    .line 20
    const/16 v5, 0x139

    .line 21
    .line 22
    const-string v6, "url"

    .line 23
    .line 24
    const/16 v8, 0x65

    .line 25
    .line 26
    const-string v9, "key"

    .line 27
    .line 28
    const-string v10, "request_id"

    .line 29
    .line 30
    const-string v11, "unit_id"

    .line 31
    .line 32
    const-string v12, "_"

    .line 33
    .line 34
    if-eq v0, v5, :cond_3

    .line 35
    .line 36
    const/16 v5, 0x1f1

    .line 37
    .line 38
    if-eq v0, v5, :cond_2

    .line 39
    .line 40
    const/16 v2, 0x35b

    .line 41
    .line 42
    if-eq v0, v2, :cond_0

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/16 v2, 0x67

    .line 51
    .line 52
    iput v2, v0, Landroid/os/Message;->what:I

    .line 53
    .line 54
    new-instance v2, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v2, v11, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v2, v10, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 98
    .line 99
    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v2, v9, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 117
    .line 118
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    .line 120
    .line 121
    iget-object v0, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->i:Lcom/mbridge/msdk/reward/adapter/b$n;

    .line 122
    .line 123
    if-eqz v0, :cond_1

    .line 124
    .line 125
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 126
    .line 127
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v0, v2, v3, v5, p1}, Lcom/mbridge/msdk/reward/adapter/b$n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    if-nez p3, :cond_4

    .line 135
    .line 136
    const-string v0, ""

    .line 137
    .line 138
    move-object/from16 v13, p2

    .line 139
    .line 140
    invoke-direct {p0, v1, p1, v0, v13}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_2
    move-object/from16 v13, p2

    .line 146
    .line 147
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iput v8, v0, Landroid/os/Message;->what:I

    .line 152
    .line 153
    new-instance v1, Landroid/os/Bundle;

    .line 154
    .line 155
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    .line 157
    .line 158
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v1, v11, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-object v5, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v8, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1, v5, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v5, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v1, v10, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v8, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 181
    .line 182
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-object v8, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-object v8, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 197
    .line 198
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    invoke-virtual {v1, v9, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 221
    .line 222
    .line 223
    iget-boolean v0, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->a:Z

    .line 224
    .line 225
    if-eqz v0, :cond_4

    .line 226
    .line 227
    const/4 v1, 0x1

    .line 228
    const-string v5, ""

    .line 229
    .line 230
    move-object v0, p0

    .line 231
    move-object v4, p1

    .line 232
    move-object/from16 v6, p2

    .line 233
    .line 234
    invoke-direct/range {v0 .. v6}, Lcom/mbridge/msdk/reward/adapter/b$l;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_0

    .line 238
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    iput v8, v0, Landroid/os/Message;->what:I

    .line 243
    .line 244
    new-instance v1, Landroid/os/Bundle;

    .line 245
    .line 246
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 247
    .line 248
    .line 249
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v1, v11, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    sget-object v2, Lcom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    .line 255
    .line 256
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->d:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    iget-object v2, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v1, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->c:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->e:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v3, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->f:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 288
    .line 289
    invoke-virtual {v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getSecondRequestIndex()I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v6, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 307
    .line 308
    .line 309
    iget-object v1, v7, Lcom/mbridge/msdk/reward/adapter/b$l;->h:Landroid/os/Handler;

    .line 310
    .line 311
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    .line 313
    .line 314
    :cond_4
    :goto_0
    return-void
.end method
