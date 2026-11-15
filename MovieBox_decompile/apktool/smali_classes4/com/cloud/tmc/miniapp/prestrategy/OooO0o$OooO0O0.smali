.class public final Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V
    .locals 1

    .line 1
    const-string v0, "model"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    const-string v0, "Prefetch:StrategyExecuteManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "StrategyTask execute. (appId="

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", dataType="

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ") "

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getExpiredTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    const/16 v4, 0x3e8

    .line 59
    .line 60
    int-to-long v4, v4

    .line 61
    mul-long/2addr v2, v4

    .line 62
    cmp-long v0, v0, v2

    .line 63
    .line 64
    if-lez v0, :cond_0

    .line 65
    .line 66
    const-string v0, "Prefetch:StrategyExecuteManager"

    .line 67
    .line 68
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getAppId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "this strategy(appId="

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", dataType="

    .line 94
    .line 95
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v1, ") has expired."

    .line 102
    .line 103
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto/16 :goto_1

    .line 116
    .line 117
    :cond_0
    sget-object v0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0o0:Landroid/util/LruCache;

    .line 118
    .line 119
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    sget-boolean v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0O0:Z

    .line 121
    .line 122
    const/4 v2, 0x0

    .line 123
    if-nez v1, :cond_1

    .line 124
    .line 125
    const-string v1, "Prefetch:StrategyExecuteManager"

    .line 126
    .line 127
    const-string v3, "no network, push wait queue."

    .line 128
    .line 129
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    .line 140
    .line 141
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    return-void

    .line 143
    :catchall_1
    move-exception v1

    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getNetType()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    const/4 v3, 0x2

    .line 153
    if-ne v1, v3, :cond_2

    .line 154
    .line 155
    sget v1, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o;->OooO0OO:I

    .line 156
    .line 157
    if-eq v1, v3, :cond_2

    .line 158
    .line 159
    const-string v1, "Prefetch:StrategyExecuteManager"

    .line 160
    .line 161
    const-string v3, "this strategy require wifi. push wait queue."

    .line 162
    .line 163
    invoke-static {v1, v3}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 167
    .line 168
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    .line 174
    .line 175
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    return-void

    .line 177
    :cond_2
    :try_start_5
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    .line 179
    :try_start_6
    monitor-exit v0

    .line 180
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getDataType()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    if-eqz v0, :cond_a

    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    const/16 v2, 0x31

    .line 193
    .line 194
    if-eq v1, v2, :cond_7

    .line 195
    .line 196
    const/16 v2, 0x32

    .line 197
    .line 198
    if-eq v1, v2, :cond_5

    .line 199
    .line 200
    const/16 v2, 0x34

    .line 201
    .line 202
    if-eq v1, v2, :cond_3

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    const-string v1, "4"

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_4

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;

    .line 215
    .line 216
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 217
    .line 218
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO00o;->OooO00o()V

    .line 222
    .line 223
    .line 224
    goto :goto_2

    .line 225
    :cond_5
    const-string v1, "2"

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_6

    .line 232
    .line 233
    goto :goto_2

    .line 234
    :cond_6
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 237
    .line 238
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0O0;->OooO00o()V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_7
    const-string v1, "1"

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-nez v0, :cond_8

    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->getMiniappType()I

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-ne v0, v3, :cond_9

    .line 261
    .line 262
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;

    .line 263
    .line 264
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 265
    .line 266
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0o;->OooO00o()V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_9
    new-instance v0, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0OO;

    .line 274
    .line 275
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/OooO0o$OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    .line 276
    .line 277
    invoke-direct {v0, v1}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0OO;-><init>(Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/cloud/tmc/miniapp/prestrategy/task/OooO0OO;->OooO00o()V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :goto_0
    monitor-exit v0

    .line 285
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 286
    :goto_1
    const-string v1, "Prefetch:StrategyExecuteManager"

    .line 287
    .line 288
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    .line 290
    .line 291
    :cond_a
    :goto_2
    return-void
.end method
