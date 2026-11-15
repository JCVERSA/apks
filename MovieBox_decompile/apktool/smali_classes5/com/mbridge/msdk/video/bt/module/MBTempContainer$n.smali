.class final Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;
.super Lcom/mbridge/msdk/video/module/listener/impl/f;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Lcom/mbridge/msdk/video/module/listener/impl/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/module/listener/impl/f;->a(ILjava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    instance-of v0, p2, Lorg/json/JSONObject;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, p2

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->C(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    new-instance v1, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "type"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v2, "complete"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x2

    .line 48
    if-eq v0, v2, :cond_2

    .line 49
    .line 50
    const/4 v2, 0x3

    .line 51
    if-eq v0, v2, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 54
    .line 55
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->F:I

    .line 56
    .line 57
    invoke-static {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 62
    .line 63
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->E:I

    .line 64
    .line 65
    invoke-static {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 70
    .line 71
    sget v2, Lcom/mbridge/msdk/foundation/same/a;->D:I

    .line 72
    .line 73
    invoke-static {v0, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->c(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catch_0
    const-string v0, "NotifyListener"

    .line 83
    .line 84
    const-string v1, "PlayableResultListener ERROR"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_2
    const/16 v0, 0x78

    .line 90
    .line 91
    if-eq p1, v0, :cond_b

    .line 92
    .line 93
    const/16 v0, 0x83

    .line 94
    .line 95
    const-string v1, ""

    .line 96
    .line 97
    if-eq p1, v0, :cond_9

    .line 98
    .line 99
    const/16 v0, 0x7e

    .line 100
    .line 101
    if-eq p1, v0, :cond_8

    .line 102
    .line 103
    const/16 v0, 0x7f

    .line 104
    .line 105
    const/4 v2, 0x1

    .line 106
    if-eq p1, v0, :cond_7

    .line 107
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :pswitch_0
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_4

    .line 118
    .line 119
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainerDiff;->setChinaCTACallBack()V

    .line 122
    .line 123
    .line 124
    :cond_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 125
    .line 126
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-eqz p2, :cond_5

    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    :cond_5
    invoke-interface {p1, v2, v1}, Lcom/mbridge/msdk/video/signal/e;->click(ILjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_3

    .line 140
    .line 141
    :pswitch_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 142
    .line 143
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :pswitch_2
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 149
    .line 150
    invoke-static {p1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->a(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_6

    .line 164
    .line 165
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/a;->f()V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :pswitch_3
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-interface {p1}, Lcom/mbridge/msdk/video/signal/a;->f()V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_3

    .line 193
    .line 194
    :pswitch_4
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 195
    .line 196
    invoke-static {p1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->d(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 200
    .line 201
    iget-object p2, p1, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    .line 202
    .line 203
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->D(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/Runnable;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-wide/16 v0, 0xfa

    .line 208
    .line 209
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    .line 211
    .line 212
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_7
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 229
    .line 230
    invoke-static {p1, v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->b(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 234
    .line 235
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 240
    .line 241
    invoke-static {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->z(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 249
    .line 250
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 255
    .line 256
    invoke-static {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->I(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 261
    .line 262
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->K(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-interface {p1, p2, v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSContainerModule()Lcom/mbridge/msdk/video/signal/f;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const/16 p2, 0x64

    .line 276
    .line 277
    invoke-interface {p1, p2}, Lcom/mbridge/msdk/video/signal/f;->showEndcard(I)V

    .line 278
    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_8
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 282
    .line 283
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 288
    .line 289
    invoke-static {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->G(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 294
    .line 295
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->H(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    const/4 v1, 0x0

    .line 300
    invoke-interface {p1, v1, p2, v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_9
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSCommon()Lcom/mbridge/msdk/video/signal/d;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    if-eqz p2, :cond_a

    .line 311
    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    :cond_a
    const/4 p2, 0x4

    .line 317
    invoke-interface {p1, p2, v1}, Lcom/mbridge/msdk/video/signal/e;->click(ILjava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_3

    .line 321
    :cond_b
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 328
    .line 329
    invoke-static {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->E(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$n;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 334
    .line 335
    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->F(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-interface {p1, p2, v0}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :goto_3
    return-void

    .line 343
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
