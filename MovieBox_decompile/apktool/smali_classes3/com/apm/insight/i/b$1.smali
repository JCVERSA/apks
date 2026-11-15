.class final Lcom/apm/insight/i/b$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/apm/insight/runtime/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apm/insight/i/b;->b(JLjava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:J

.field private synthetic b:Ljava/lang/Throwable;

.field private synthetic c:Z

.field private synthetic d:J

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Z

.field private synthetic g:Ljava/lang/Thread;

.field private synthetic h:Ljava/lang/String;

.field private synthetic i:Ljava/io/File;

.field private synthetic j:Lcom/apm/insight/i/b;


# direct methods
.method constructor <init>(Lcom/apm/insight/i/b;Ljava/lang/Throwable;ZJLjava/lang/String;ZLjava/lang/Thread;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apm/insight/i/b$1;->j:Lcom/apm/insight/i/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/apm/insight/i/b$1;->b:Ljava/lang/Throwable;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/apm/insight/i/b$1;->c:Z

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/apm/insight/i/b$1;->d:J

    .line 8
    .line 9
    iput-object p6, p0, Lcom/apm/insight/i/b$1;->e:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p7, p0, Lcom/apm/insight/i/b$1;->f:Z

    .line 12
    .line 13
    iput-object p8, p0, Lcom/apm/insight/i/b$1;->g:Ljava/lang/Thread;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/apm/insight/i/b$1;->h:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p10, p0, Lcom/apm/insight/i/b$1;->i:Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    const-wide/16 p1, 0x0

    .line 23
    .line 24
    iput-wide p1, p0, Lcom/apm/insight/i/b$1;->a:J

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(ILcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/apm/insight/i/b$1;->a:J

    .line 6
    .line 7
    if-eqz p1, :cond_b

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eq p1, v0, :cond_7

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/4 v0, 0x3

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    const-string p1, "crash_uuid"

    .line 27
    .line 28
    iget-object v0, p0, Lcom/apm/insight/i/b$1;->h:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p2, p1, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_1
    iget-boolean p1, p0, Lcom/apm/insight/i/b$1;->c:Z

    .line 36
    .line 37
    if-nez p1, :cond_c

    .line 38
    .line 39
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->j:Lcom/apm/insight/i/b;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/apm/insight/i/b;->a(Lcom/apm/insight/i/b;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {p1, v0}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_2

    .line 53
    .line 54
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lcom/apm/insight/l/m;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    const-string v0, "all_thread_stacks"

    .line 69
    .line 70
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-static {}, Lcom/apm/insight/e;->f()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p1}, Lcom/apm/insight/runtime/h;->a(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "logcat"

    .line 82
    .line 83
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_4
    iget-boolean p1, p0, Lcom/apm/insight/i/b$1;->c:Z

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->j:Lcom/apm/insight/i/b;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/apm/insight/i/b;->a(Lcom/apm/insight/i/b;)Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p2}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {p1, v0}, Lcom/apm/insight/l/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 103
    .line 104
    .line 105
    :cond_5
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->j:Lcom/apm/insight/i/b;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/apm/insight/i/b;->a(Lcom/apm/insight/i/b;)Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/apm/insight/i/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string v0, "launch_did"

    .line 116
    .line 117
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/apm/insight/e;->x()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    invoke-static {}, Lcom/apm/insight/b/f;->b()Lcom/apm/insight/b/g;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/apm/insight/b/g;->b()Lorg/json/JSONArray;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v0

    .line 138
    invoke-static {}, Lcom/apm/insight/b/f;->b()Lcom/apm/insight/b/g;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2, v0, v1}, Lcom/apm/insight/b/g;->a(J)Lcom/apm/insight/b/g$e;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/apm/insight/b/g$e;->a()Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-static {v0, v1}, Lcom/apm/insight/b/j;->a(J)Lorg/json/JSONArray;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "history_message"

    .line 155
    .line 156
    invoke-virtual {p2, v1, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const-string p1, "current_message"

    .line 160
    .line 161
    invoke-virtual {p2, p1, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    const-string p1, "pending_messages"

    .line 165
    .line 166
    invoke-virtual {p2, p1, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    invoke-static {}, Lcom/apm/insight/runtime/a;->c()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    const-string v0, "disable_looper_monitor"

    .line 178
    .line 179
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/apm/insight/c/a;->a()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    const-string v0, "npth_force_apm_crash"

    .line 191
    .line 192
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 193
    .line 194
    .line 195
    goto/16 :goto_2

    .line 196
    .line 197
    :cond_7
    iget-wide v1, p0, Lcom/apm/insight/i/b$1;->d:J

    .line 198
    .line 199
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v1, "timestamp"

    .line 204
    .line 205
    invoke-virtual {p2, v1, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->j:Lcom/apm/insight/i/b;

    .line 209
    .line 210
    invoke-static {p1}, Lcom/apm/insight/i/b;->a(Lcom/apm/insight/i/b;)Landroid/content/Context;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1}, Lcom/apm/insight/l/a;->b(Landroid/content/Context;)Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    const-string v1, "main_process"

    .line 223
    .line 224
    invoke-virtual {p2, v1, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    const-string p1, "crash_type"

    .line 228
    .line 229
    sget-object v1, Lcom/apm/insight/CrashType;->JAVA:Lcom/apm/insight/CrashType;

    .line 230
    .line 231
    invoke-virtual {p2, p1, v1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->g:Ljava/lang/Thread;

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    goto :goto_0

    .line 243
    :cond_8
    const-string p1, ""

    .line 244
    .line 245
    :goto_0
    const-string v1, "crash_thread_name"

    .line 246
    .line 247
    invoke-virtual {p2, v1, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    const-string v1, "tid"

    .line 259
    .line 260
    invoke-virtual {p2, v1, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 261
    .line 262
    .line 263
    invoke-static {}, Lcom/apm/insight/Npth;->hasCrashWhenJavaCrash()Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    const-string v1, "false"

    .line 268
    .line 269
    const-string v2, "true"

    .line 270
    .line 271
    if-eqz p1, :cond_9

    .line 272
    .line 273
    move-object p1, v2

    .line 274
    goto :goto_1

    .line 275
    :cond_9
    move-object p1, v1

    .line 276
    :goto_1
    const-string v3, "crash_after_crash"

    .line 277
    .line 278
    invoke-virtual {p2, v3, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 279
    .line 280
    .line 281
    invoke-static {}, Lcom/apm/insight/nativecrash/NativeImpl;->e()Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_a

    .line 286
    .line 287
    move-object v1, v2

    .line 288
    :cond_a
    const-string p1, "crash_after_native"

    .line 289
    .line 290
    invoke-virtual {p2, p1, v1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 291
    .line 292
    .line 293
    invoke-static {}, Lcom/apm/insight/g/a;->a()Lcom/apm/insight/g/a;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget-object v1, p0, Lcom/apm/insight/i/b$1;->g:Ljava/lang/Thread;

    .line 298
    .line 299
    iget-object v2, p0, Lcom/apm/insight/i/b$1;->b:Ljava/lang/Throwable;

    .line 300
    .line 301
    invoke-virtual {p1, v1, v2, v0, p2}, Lcom/apm/insight/g/a;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZLcom/apm/insight/entity/a;)V

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_b
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->b:Ljava/lang/Throwable;

    .line 306
    .line 307
    invoke-static {p1}, Lcom/apm/insight/l/m;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    const-string v0, "stack"

    .line 312
    .line 313
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    .line 315
    .line 316
    const-string p1, "event_type"

    .line 317
    .line 318
    const-string v0, "start_crash"

    .line 319
    .line 320
    invoke-virtual {p2, p1, v0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    iget-boolean p1, p0, Lcom/apm/insight/i/b$1;->c:Z

    .line 324
    .line 325
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    const-string v0, "isOOM"

    .line 330
    .line 331
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 332
    .line 333
    .line 334
    iget-wide v0, p0, Lcom/apm/insight/i/b$1;->d:J

    .line 335
    .line 336
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    const-string v0, "crash_time"

    .line 341
    .line 342
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    invoke-static {}, Lcom/apm/insight/runtime/a/b;->b()I

    .line 346
    .line 347
    .line 348
    move-result p1

    .line 349
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    const-string v0, "launch_mode"

    .line 354
    .line 355
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    invoke-static {}, Lcom/apm/insight/runtime/a/b;->c()J

    .line 359
    .line 360
    .line 361
    move-result-wide v0

    .line 362
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    const-string v0, "launch_time"

    .line 367
    .line 368
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->e:Ljava/lang/String;

    .line 372
    .line 373
    if-eqz p1, :cond_c

    .line 374
    .line 375
    const-string v0, "crash_md5"

    .line 376
    .line 377
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lcom/apm/insight/i/b$1;->e:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 383
    .line 384
    .line 385
    iget-boolean p1, p0, Lcom/apm/insight/i/b$1;->f:Z

    .line 386
    .line 387
    if-eqz p1, :cond_c

    .line 388
    .line 389
    const-string v0, "has_ignore"

    .line 390
    .line 391
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-virtual {p2, v0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/a;

    .line 396
    .line 397
    .line 398
    :cond_c
    :goto_2
    return-object p2
.end method

.method public final b(ILcom/apm/insight/entity/a;)Lcom/apm/insight/entity/a;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/apm/insight/i/b$1;->i:Ljava/io/File;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/apm/insight/i/b$1;->i:Ljava/io/File;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, "."

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Lcom/apm/insight/l/f;->a(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-object p2
.end method
