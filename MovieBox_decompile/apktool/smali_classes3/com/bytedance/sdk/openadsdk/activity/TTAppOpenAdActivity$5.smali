.class Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->zR(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-wide/16 v1, 0x0

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(J)V

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 82
    .line 83
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 84
    .line 85
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->ib(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v1

    .line 101
    const/high16 v3, 0x3f800000    # 1.0f

    .line 102
    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(JF)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Dq(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->HiB()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->TzV(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->TzV(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/vS/sP;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/vS/sP;->sP()V

    .line 130
    .line 131
    .line 132
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/TKC;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/component/TKC;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB()V

    .line 147
    .line 148
    .line 149
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 150
    .line 151
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->kF(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 155
    .line 156
    const v1, 0x1020002

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v2, Lorg/json/JSONObject;

    .line 164
    .line 165
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .line 167
    .line 168
    if-eqz v0, :cond_4

    .line 169
    .line 170
    :try_start_0
    const-string v3, "width"

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    .line 178
    .line 179
    const-string v3, "height"

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    const-string v3, "alpha"

    .line 189
    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    float-to-double v4, v0

    .line 195
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_4
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    .line 203
    .line 204
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v3, "root_view"

    .line 208
    .line 209
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    .line 215
    .line 216
    const-string v2, "ad_root"

    .line 217
    .line 218
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 219
    .line 220
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->uP(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 225
    .line 226
    .line 227
    const-string v2, "openad_creative_type"

    .line 228
    .line 229
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 230
    .line 231
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->TEQ(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-eqz v3, :cond_5

    .line 236
    .line 237
    const-string v3, "video_normal_ad"

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_5
    const-string v3, "image_normal_ad"

    .line 241
    .line 242
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    .line 244
    .line 245
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;->TKC()Landroid/graphics/drawable/Drawable;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    if-nez v2, :cond_6

    .line 250
    .line 251
    const-string v2, "appicon_acquirefail"

    .line 252
    .line 253
    const-string v3, "1"

    .line 254
    .line 255
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    .line 257
    .line 258
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 259
    .line 260
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->sef(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_7

    .line 265
    .line 266
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 267
    .line 268
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    .line 273
    .line 274
    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_8

    .line 277
    .line 278
    :cond_7
    const-string v2, "dynamic_show_type"

    .line 279
    .line 280
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 281
    .line 282
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->wE(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    .line 288
    .line 289
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 290
    .line 291
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 292
    .line 293
    .line 294
    :cond_8
    const-string v2, "is_icon_only"

    .line 295
    .line 296
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 297
    .line 298
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    const/4 v4, 0x1

    .line 307
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 308
    .line 309
    .line 310
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 311
    .line 312
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    const-string v3, "open_ad"

    .line 317
    .line 318
    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 328
    .line 329
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    new-instance v2, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    .line 334
    .line 335
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 336
    .line 337
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->wE(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)I

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;-><init>(I)V

    .line 342
    .line 343
    .line 344
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 348
    .line 349
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->Fmk(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 357
    .line 358
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->zR(Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .line 364
    .line 365
    return-void

    .line 366
    :goto_2
    const-string v1, "TTAppOpenAdActivity"

    .line 367
    .line 368
    const-string v2, "run: "

    .line 369
    .line 370
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .line 372
    .line 373
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity$5;->Sj:Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;

    .line 374
    .line 375
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TTAppOpenAdActivity;->finish()V

    .line 376
    .line 377
    .line 378
    return-void
.end method
