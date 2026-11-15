.class public final Lcom/transsion/lib/push/Receiver/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/lib/push/Receiver/NotificationReceiver$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000cB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J#\u0010\t\u001a\u00020\u00082\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/transsion/lib/push/Receiver/NotificationReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "Landroid/os/Handler;",
        "a",
        "Landroid/os/Handler;",
        "handler",
        "b",
        "push_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/transsion/lib/push/Receiver/NotificationReceiver$a;


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/lib/push/Receiver/NotificationReceiver$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/lib/push/Receiver/NotificationReceiver$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/lib/push/Receiver/NotificationReceiver;->b:Lcom/transsion/lib/push/Receiver/NotificationReceiver$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/lib/push/Receiver/NotificationReceiver;->a:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/lib/push/Receiver/NotificationReceiver;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/pushapi/TriggerSource;->UNLOCK:Lcom/transsion/pushapi/TriggerSource;

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/transsion/push/utils/NotificationUtil;->P(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v6, p2

    .line 4
    .line 5
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v6, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v3, v2

    .line 16
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v5, "onReceiver\uff0c context:"

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v5, " action "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x1

    .line 42
    const-string v5, "NotificationReceiver"

    .line 43
    .line 44
    invoke-virtual {v0, v5, v3, v4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    sget-object v3, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 50
    .line 51
    if-eqz v6, :cond_1

    .line 52
    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v4, v2

    .line 59
    :goto_1
    invoke-virtual {v3, v4}, Lcom/transsion/baselib/report/k;->s(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v3, Lcom/transsion/push/utils/l;->a:Lcom/transsion/push/utils/l;

    .line 63
    .line 64
    if-eqz v6, :cond_2

    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    move-object v4, v2

    .line 72
    :goto_2
    invoke-virtual {v3, v4}, Lcom/transsion/push/utils/l;->a(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    if-eqz v6, :cond_3

    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    :cond_3
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    const-string v4, "extra_message_id"

    .line 88
    .line 89
    const-string v5, "extra_source"

    .line 90
    .line 91
    const-string v7, "MESSAGE_TYPE"

    .line 92
    .line 93
    const-string v8, "extra_channel_id"

    .line 94
    .line 95
    sparse-switch v3, :sswitch_data_0

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_3
    move-object/from16 v7, p0

    .line 99
    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :sswitch_0
    const-string v0, "com.community.oneroom.next_permanent_msg"

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_5
    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v6, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    if-eqz v10, :cond_4

    .line 128
    .line 129
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 130
    .line 131
    const/4 v4, 0x4

    .line 132
    const/4 v5, 0x0

    .line 133
    const/4 v3, 0x0

    .line 134
    move-object/from16 v1, p1

    .line 135
    .line 136
    move-object v2, v10

    .line 137
    invoke-static/range {v0 .. v5}, Lcom/transsion/push/utils/NotificationUtil;->Z(Lcom/transsion/push/utils/NotificationUtil;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    sget-object v9, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 141
    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    const/16 v19, 0x180

    .line 147
    .line 148
    const/16 v20, 0x0

    .line 149
    .line 150
    const/4 v15, 0x1

    .line 151
    const-string v16, "notification_next"

    .line 152
    .line 153
    const/16 v17, 0x0

    .line 154
    .line 155
    const/16 v18, 0x0

    .line 156
    .line 157
    invoke-static/range {v9 .. v20}, Lcom/transsion/push/helper/a;->b(Lcom/transsion/push/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :sswitch_1
    const-string v0, "com.community.oneroom.notification_delete"

    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_6
    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    const-string v0, "extra_notification_group_tag"

    .line 175
    .line 176
    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v2, "extra_notification_id"

    .line 181
    .line 182
    const/4 v3, 0x0

    .line 183
    invoke-virtual {v6, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v13

    .line 191
    invoke-virtual {v6, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v12

    .line 195
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    sget-object v3, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 200
    .line 201
    invoke-virtual {v3, v1, v0, v2}, Lcom/transsion/push/utils/NotificationUtil;->q(Landroid/content/Context;Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    sget-object v9, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 205
    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    const/16 v19, 0x180

    .line 211
    .line 212
    const/16 v20, 0x0

    .line 213
    .line 214
    const/4 v15, 0x1

    .line 215
    const-string v16, "notification_close"

    .line 216
    .line 217
    const/16 v17, 0x0

    .line 218
    .line 219
    const/16 v18, 0x0

    .line 220
    .line 221
    invoke-static/range {v9 .. v20}, Lcom/transsion/push/helper/a;->b(Lcom/transsion/push/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    goto :goto_3

    .line 225
    :sswitch_2
    const-string v0, "com.community.oneroom.last_permanent_msg"

    .line 226
    .line 227
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-nez v0, :cond_7

    .line 232
    .line 233
    goto/16 :goto_3

    .line 234
    .line 235
    :cond_7
    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v11

    .line 239
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-virtual {v6, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v12

    .line 247
    invoke-virtual {v6, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    if-eqz v10, :cond_4

    .line 252
    .line 253
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 254
    .line 255
    invoke-virtual {v0, v1, v10}, Lcom/transsion/push/utils/NotificationUtil;->X(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sget-object v9, Lcom/transsion/push/helper/a;->a:Lcom/transsion/push/helper/a;

    .line 259
    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 261
    .line 262
    .line 263
    move-result-object v14

    .line 264
    const/16 v19, 0x180

    .line 265
    .line 266
    const/16 v20, 0x0

    .line 267
    .line 268
    const/4 v15, 0x1

    .line 269
    const-string v16, "notification_last"

    .line 270
    .line 271
    const/16 v17, 0x0

    .line 272
    .line 273
    const/16 v18, 0x0

    .line 274
    .line 275
    invoke-static/range {v9 .. v20}, Lcom/transsion/push/helper/a;->b(Lcom/transsion/push/helper/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_3

    .line 279
    .line 280
    :sswitch_3
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 281
    .line 282
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    if-nez v1, :cond_8

    .line 287
    .line 288
    goto/16 :goto_3

    .line 289
    .line 290
    :cond_8
    move-object/from16 v7, p0

    .line 291
    .line 292
    goto :goto_5

    .line 293
    :sswitch_4
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 294
    .line 295
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-nez v0, :cond_9

    .line 300
    .line 301
    goto/16 :goto_3

    .line 302
    .line 303
    :cond_9
    move-object/from16 v7, p0

    .line 304
    .line 305
    goto :goto_4

    .line 306
    :sswitch_5
    const-string v0, "android.intent.action.USER_PRESENT"

    .line 307
    .line 308
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v0

    .line 312
    if-nez v0, :cond_9

    .line 313
    .line 314
    goto/16 :goto_3

    .line 315
    .line 316
    :goto_4
    iget-object v0, v7, Lcom/transsion/lib/push/Receiver/NotificationReceiver;->a:Landroid/os/Handler;

    .line 317
    .line 318
    new-instance v2, Lol/a;

    .line 319
    .line 320
    invoke-direct {v2, v1}, Lol/a;-><init>(Landroid/content/Context;)V

    .line 321
    .line 322
    .line 323
    const-wide/16 v3, 0x2710

    .line 324
    .line 325
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :sswitch_6
    move-object/from16 v7, p0

    .line 330
    .line 331
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 332
    .line 333
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-nez v0, :cond_a

    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_a
    sget-object v0, Lcom/transsion/push/utils/NotificationUtil;->a:Lcom/transsion/push/utils/NotificationUtil;

    .line 341
    .line 342
    sget-object v2, Lcom/transsion/pushapi/TriggerSource;->SCREEN_ON:Lcom/transsion/pushapi/TriggerSource;

    .line 343
    .line 344
    invoke-virtual {v0, v1, v2}, Lcom/transsion/push/utils/NotificationUtil;->P(Landroid/content/Context;Lcom/transsion/pushapi/TriggerSource;)V

    .line 345
    .line 346
    .line 347
    goto :goto_6

    .line 348
    :sswitch_7
    move-object/from16 v7, p0

    .line 349
    .line 350
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v1

    .line 356
    if-nez v1, :cond_b

    .line 357
    .line 358
    goto :goto_6

    .line 359
    :sswitch_8
    move-object/from16 v7, p0

    .line 360
    .line 361
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 362
    .line 363
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_b

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_b
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v1

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .line 378
    .line 379
    const-string v3, "onReceiver\uff0c "

    .line 380
    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    const/4 v4, 0x4

    .line 392
    const/4 v5, 0x0

    .line 393
    const-string v1, "NotificationReceiver"

    .line 394
    .line 395
    const/4 v3, 0x0

    .line 396
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    :goto_6
    return-void

    .line 400
    nop

    .line 401
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_8
        -0x7073f927 -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        0x311a1d6c -> :sswitch_5
        0x31af1c32 -> :sswitch_4
        0x3cbf870b -> :sswitch_3
        0x409672c6 -> :sswitch_2
        0x704e0b20 -> :sswitch_1
        0x743b0463 -> :sswitch_0
    .end sparse-switch
.end method
