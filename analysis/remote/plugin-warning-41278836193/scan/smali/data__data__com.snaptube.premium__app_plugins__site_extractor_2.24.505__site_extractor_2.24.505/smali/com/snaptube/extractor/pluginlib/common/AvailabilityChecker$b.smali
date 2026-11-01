.class Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;


# direct methods
.method constructor <init>(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

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
    .locals 12

    .line 1
    const-string v0, "AvailabilityChecker"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    :try_start_0
    iget-object v5, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 8
    .line 9
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$300(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v7, "networkCountryIso is "

    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-string v6, "https://misc.api.thejeu.com/availability"

    .line 34
    .line 35
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    .line 37
    .line 38
    move-result-object v6
    :try_end_0
    .catch Lcom/snaptube/extractor/pluginlib/common/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 39
    :try_start_1
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-nez v8, :cond_0

    .line 48
    .line 49
    const-string v8, "networkCountryIso"

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v5

    .line 60
    :goto_0
    const/4 v7, 0x0

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :catch_0
    move-exception v5

    .line 64
    goto/16 :goto_4

    .line 65
    .line 66
    :cond_0
    :goto_1
    invoke-static {}, Lcom/snaptube/extractor/pluginlib/utils/PluginContextUtil;->getAppContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-static {v5}, Lo/n;->a(Landroid/content/Context;)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_1

    .line 75
    .line 76
    const-string v8, "vc"

    .line 77
    .line 78
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    .line 84
    .line 85
    :cond_1
    invoke-static {}, Ll/h;->b()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_2

    .line 94
    .line 95
    const-string v8, "gl"

    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-static {}, Lj/c;->d()Lj/c;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    invoke-virtual {v5}, Lj/c;->f()Lj/a;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-interface {v5}, Lj/a;->b()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    if-nez v8, :cond_3

    .line 121
    .line 122
    const-string v8, "udid"

    .line 123
    .line 124
    invoke-virtual {v7, v8, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 125
    .line 126
    .line 127
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    new-instance v5, Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v7, "Accept-Language"

    .line 137
    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    .line 140
    .line 141
    move-result-object v8

    .line 142
    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    invoke-static {v7, v5, v4}, Lcom/snaptube/extractor/pluginlib/utils/l;->i(Ljava/lang/String;Ljava/util/Map;Lcom/snaptube/extractor/pluginlib/common/SiteExtractLog;)Lcom/snaptube/video/videoextractor/net/c;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    if-eqz v5, :cond_4

    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/snaptube/video/videoextractor/net/c;->g()I

    .line 160
    .line 161
    .line 162
    move-result v7
    :try_end_1
    .catch Lcom/snaptube/extractor/pluginlib/common/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :try_start_2
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/utils/k;->a(Lcom/snaptube/video/videoextractor/net/c;)I

    .line 164
    .line 165
    .line 166
    move-result v5
    :try_end_2
    .catch Lcom/snaptube/extractor/pluginlib/common/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    int-to-long v8, v5

    .line 168
    goto :goto_2

    .line 169
    :catchall_1
    move-exception v5

    .line 170
    goto :goto_3

    .line 171
    :cond_4
    move-wide v8, v2

    .line 172
    const/4 v7, 0x0

    .line 173
    :goto_2
    const-string v5, ""

    .line 174
    .line 175
    goto :goto_5

    .line 176
    :catchall_2
    move-exception v5

    .line 177
    move-object v6, v4

    .line 178
    goto :goto_0

    .line 179
    :catch_1
    move-exception v5

    .line 180
    move-object v6, v4

    .line 181
    goto :goto_4

    .line 182
    :goto_3
    const-string v8, "request availability api failed"

    .line 183
    .line 184
    invoke-static {v0, v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .line 186
    .line 187
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    move-wide v8, v2

    .line 192
    goto :goto_5

    .line 193
    :goto_4
    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/common/HttpException;->getStatusCode()I

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v5}, Lcom/snaptube/extractor/pluginlib/common/HttpException;->getHeaders()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {v5}, Lcom/snaptube/extractor/pluginlib/utils/k;->c(Ljava/util/List;)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    int-to-long v9, v5

    .line 210
    move-object v5, v8

    .line 211
    move-wide v8, v9

    .line 212
    :goto_5
    sput v7, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->sHttpStatus:I

    .line 213
    .line 214
    const/16 v10, 0x1a2

    .line 215
    .line 216
    if-eq v7, v10, :cond_7

    .line 217
    .line 218
    const/16 v11, 0xc8

    .line 219
    .line 220
    if-eq v7, v11, :cond_7

    .line 221
    .line 222
    const/16 v11, 0xcc

    .line 223
    .line 224
    if-ne v7, v11, :cond_5

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 228
    .line 229
    if-nez v6, :cond_6

    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_6
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    :goto_6
    invoke-static {v0, v7, v5, v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$600(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_8

    .line 240
    :cond_7
    :goto_7
    if-eq v7, v10, :cond_8

    .line 241
    .line 242
    const/4 v1, 0x1

    .line 243
    :cond_8
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 244
    .line 245
    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;

    .line 246
    .line 247
    .line 248
    move-result-object v4

    .line 249
    if-eqz v4, :cond_9

    .line 250
    .line 251
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 252
    .line 253
    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$100(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Boolean;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-nez v4, :cond_a

    .line 262
    .line 263
    :cond_9
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 264
    .line 265
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-static {v4, v5}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$102(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 270
    .line 271
    .line 272
    :cond_a
    iget-object v4, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 273
    .line 274
    invoke-static {v4}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$400(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    if-eqz v1, :cond_b

    .line 279
    .line 280
    move-wide v2, v8

    .line 281
    :cond_b
    invoke-static {v4, v1, v2, v3}, Ll/d;->G(Landroid/content/Context;ZJ)V

    .line 282
    .line 283
    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v3, "Availability: "

    .line 290
    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 305
    .line 306
    invoke-static {v0, v7, v8, v9}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$500(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;IJ)V

    .line 307
    .line 308
    .line 309
    :goto_8
    iget-object v0, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 310
    .line 311
    invoke-static {v0}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$800(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Landroid/os/Handler;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker$b;->a:Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;

    .line 316
    .line 317
    invoke-static {v1}, Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;->access$700(Lcom/snaptube/extractor/pluginlib/common/AvailabilityChecker;)Ljava/lang/Runnable;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    .line 323
    .line 324
    return-void
.end method
