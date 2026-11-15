.class public final Lcom/apm/insight/entity/Header;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "aid"

    .line 2
    .line 3
    const-string v1, "update_version_code"

    .line 4
    .line 5
    const-string v2, "version_code"

    .line 6
    .line 7
    const-string v3, "manifest_version_code"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/apm/insight/entity/Header;->a:[Ljava/lang/String;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    sput v0, Lcom/apm/insight/entity/Header;->e:I

    .line 20
    .line 21
    sput v0, Lcom/apm/insight/entity/Header;->f:I

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/apm/insight/entity/Header;->b:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static a(J)Lcom/apm/insight/entity/Header;
    .locals 4

    .line 5
    const-string v0, "aid"

    invoke-static {}, Lcom/apm/insight/runtime/o;->a()Lcom/apm/insight/runtime/o;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 7
    :cond_0
    invoke-virtual {v1, p0, p1}, Lcom/apm/insight/runtime/o;->a(J)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const/16 p1, 0x115c

    .line 10
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    :cond_2
    new-instance p1, Lcom/apm/insight/entity/Header;

    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apm/insight/entity/Header;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apm/insight/entity/Header;->a(Landroid/content/Context;)Lcom/apm/insight/entity/Header;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/apm/insight/entity/Header;->c()Lorg/json/JSONObject;

    .line 14
    :try_start_1
    iget-object v0, p1, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 15
    const-string v1, "errHeader"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :catchall_0
    :goto_1
    invoke-static {p1}, Lcom/apm/insight/entity/Header;->b(Lcom/apm/insight/entity/Header;)V

    .line 17
    invoke-virtual {p1, p0}, Lcom/apm/insight/entity/Header;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/apm/insight/entity/Header;
    .locals 3

    .line 1
    new-instance v0, Lcom/apm/insight/entity/Header;

    invoke-direct {v0, p0}, Lcom/apm/insight/entity/Header;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p0, v0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 3
    :try_start_0
    const-string v1, "sdk_version"

    const/16 v2, 0x4e79

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    const-string v1, "sdk_version_name"

    const-string v2, "2008-20250701130429"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Lcom/apm/insight/entity/Header;)Lcom/apm/insight/entity/Header;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 49
    invoke-static {v0}, Lcom/apm/insight/entity/Header;->addRuntimeHeader(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public static a()Z
    .locals 2

    .line 18
    sget v0, Lcom/apm/insight/entity/Header;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 19
    invoke-static {}, Lcom/apm/insight/entity/Header;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/apm/insight/entity/Header;->e:I

    .line 20
    :cond_0
    sget v0, Lcom/apm/insight/entity/Header;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static addOtherHeader(Lorg/json/JSONObject;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lcom/apm/insight/l/d;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const-string v1, "MIUI-"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Lcom/apm/insight/l/d;->c()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    const-string v1, "FLYME-"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-static {}, Lcom/apm/insight/l/d;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/apm/insight/l/d;->a(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_3

    .line 42
    .line 43
    const-string v2, "EMUI-"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "-"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-lez v1, :cond_5

    .line 72
    .line 73
    const-string v1, "rom"

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :cond_5
    const-string v0, "rom_version"

    .line 83
    .line 84
    invoke-static {}, Lcom/apm/insight/l/l;->a()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 104
    .line 105
    const/16 v2, 0x78

    .line 106
    .line 107
    if-eq v1, v2, :cond_8

    .line 108
    .line 109
    const/16 v2, 0xf0

    .line 110
    .line 111
    if-eq v1, v2, :cond_7

    .line 112
    .line 113
    const/16 v2, 0x140

    .line 114
    .line 115
    if-eq v1, v2, :cond_6

    .line 116
    .line 117
    const-string v2, "mdpi"

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    const-string v2, "xhdpi"

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_7
    const-string v2, "hdpi"

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_8
    const-string v2, "ldpi"

    .line 127
    .line 128
    :goto_1
    const-string v3, "density_dpi"

    .line 129
    .line 130
    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const-string v1, "display_density"

    .line 134
    .line 135
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    const-string v1, "resolution"

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, "x"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 156
    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_9

    .line 190
    .line 191
    const-string v1, "language"

    .line 192
    .line 193
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    .line 195
    .line 196
    :cond_9
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    const v1, 0x36ee80

    .line 205
    .line 206
    .line 207
    div-int/2addr v0, v1

    .line 208
    const/16 v1, -0xc

    .line 209
    .line 210
    if-ge v0, v1, :cond_a

    .line 211
    .line 212
    move v0, v1

    .line 213
    :cond_a
    const/16 v1, 0xc

    .line 214
    .line 215
    if-le v0, v1, :cond_b

    .line 216
    .line 217
    move v0, v1

    .line 218
    :cond_b
    const-string v1, "timezone"

    .line 219
    .line 220
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    .line 222
    .line 223
    :catch_1
    :try_start_3
    const-string v0, "os"

    .line 224
    .line 225
    const-string v1, "Android"

    .line 226
    .line 227
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    const-string v0, "device_id"

    .line 231
    .line 232
    invoke-static {}, Lcom/apm/insight/e;->c()Lcom/apm/insight/runtime/g;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Lcom/apm/insight/runtime/g;->a()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    const-string v0, "os_version"

    .line 244
    .line 245
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 246
    .line 247
    const-string v2, "."

    .line 248
    .line 249
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_c

    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v1, ".0"

    .line 265
    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    :goto_2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    .line 275
    .line 276
    const-string v0, "os_api"

    .line 277
    .line 278
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 279
    .line 280
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 281
    .line 282
    .line 283
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 284
    .line 285
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 286
    .line 287
    if-nez v0, :cond_d

    .line 288
    .line 289
    move-object v0, v1

    .line 290
    goto :goto_3

    .line 291
    :cond_d
    if-eqz v1, :cond_e

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    if-nez v2, :cond_e

    .line 298
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const/16 v3, 0x20

    .line 308
    .line 309
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    goto :goto_3

    .line 320
    :catchall_1
    move-exception v0

    .line 321
    goto :goto_4

    .line 322
    :cond_e
    :goto_3
    const-string v2, "device_model"

    .line 323
    .line 324
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    .line 326
    .line 327
    const-string v0, "device_brand"

    .line 328
    .line 329
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    .line 331
    .line 332
    const-string v0, "device_manufacturer"

    .line 333
    .line 334
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 335
    .line 336
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    .line 338
    .line 339
    const-string v0, "cpu_abi"

    .line 340
    .line 341
    invoke-static {}, Lcom/apm/insight/entity/Header;->g()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    .line 347
    .line 348
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    const-string v2, "package"

    .line 357
    .line 358
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    const/4 v3, 0x0

    .line 366
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 371
    .line 372
    if-eqz v2, :cond_10

    .line 373
    .line 374
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 375
    .line 376
    const-string v3, "display_name"

    .line 377
    .line 378
    if-lez v2, :cond_f

    .line 379
    .line 380
    :try_start_4
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    .line 386
    .line 387
    goto :goto_5

    .line 388
    :cond_f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-virtual {p0, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    .line 404
    .line 405
    :cond_10
    :goto_5
    invoke-static {p0}, Lcom/apm/insight/entity/d;->a(Lorg/json/JSONObject;)V

    .line 406
    .line 407
    .line 408
    return-void
.end method

.method public static addRuntimeHeader(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "access"

    .line 2
    .line 3
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/apm/insight/l/k;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    .line 18
    .line 19
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "phone"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    const-string v2, "carrier"

    .line 44
    .line 45
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_1
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_1

    .line 60
    .line 61
    const-string v1, "mcc_mnc"

    .line 62
    .line 63
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void

    .line 67
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/apm/insight/entity/Header;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->a(Landroid/content/Context;)Lcom/apm/insight/entity/Header;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->a(Lcom/apm/insight/entity/Header;)Lcom/apm/insight/entity/Header;

    .line 3
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->b(Lcom/apm/insight/entity/Header;)V

    .line 4
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->c()Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->d()Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lcom/apm/insight/entity/Header;->e()Lorg/json/JSONObject;

    return-object p0
.end method

.method public static b(Lcom/apm/insight/entity/Header;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 12
    invoke-static {p0}, Lcom/apm/insight/entity/Header;->addOtherHeader(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 7
    sget v0, Lcom/apm/insight/entity/Header;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/apm/insight/entity/Header;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput v0, Lcom/apm/insight/entity/Header;->f:I

    .line 9
    :cond_0
    sget v0, Lcom/apm/insight/entity/Header;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Lorg/json/JSONObject;)Z
    .locals 2

    .line 10
    const-string v0, "unauthentic_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static c(Lorg/json/JSONObject;)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "app_version"

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "version_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "version_code"

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "update_version_code"

    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const-string v1, "aid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 7
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    :cond_3
    :goto_0
    return v0
.end method

.method private static g()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "unknown"

    .line 2
    .line 3
    sget-object v1, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v1, :cond_4

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 13
    .line 14
    array-length v2, v2

    .line 15
    if-lez v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    if-ge v2, v4, :cond_2

    .line 22
    .line 23
    aget-object v4, v3, v2

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    array-length v3, v3

    .line 29
    add-int/lit8 v3, v3, -0x1

    .line 30
    .line 31
    if-eq v2, v3, :cond_0

    .line 32
    .line 33
    const-string v3, ", "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_0
    move-exception v1

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    sput-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    sput-object v1, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :goto_2
    invoke-static {v1}, Lcom/apm/insight/a;->b(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 74
    .line 75
    :cond_4
    :goto_3
    sget-object v0, Lcom/apm/insight/entity/Header;->d:Ljava/lang/String;

    .line 76
    .line 77
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 9
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 28
    const-string v0, "manifest_version_code"

    const-string v1, "version_code"

    const-string v2, "version_name"

    const-string v3, "iid"

    if-nez p1, :cond_0

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1

    .line 30
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 31
    iget-object v6, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 32
    iget-object v6, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 33
    :cond_2
    sget-object v4, Lcom/apm/insight/entity/Header;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_4

    aget-object v6, v4, v5

    .line 34
    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v7, :cond_3

    .line 35
    :try_start_1
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 36
    iget-object v8, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 37
    :catchall_0
    :try_start_2
    iget-object v7, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 38
    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v4, :cond_5

    .line 39
    :try_start_3
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 40
    iget-object v4, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :catchall_1
    :cond_5
    :try_start_4
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    const-string v1, "udid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    :cond_6
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 47
    :catchall_2
    :cond_7
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 25
    :try_start_0
    iget-object v2, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object p1
.end method

.method public final c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    invoke-static {}, Lcom/apm/insight/e;->a()Lcom/apm/insight/nativecrash/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apm/insight/entity/Header;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-static {}, Lcom/apm/insight/e;->c()Lcom/apm/insight/runtime/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apm/insight/runtime/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/apm/insight/e;->a()Lcom/apm/insight/nativecrash/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/apm/insight/nativecrash/b;->f()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v2, v0, v2

    .line 12
    .line 13
    if-lez v2, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 16
    .line 17
    const-string v3, "user_id"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 28
    .line 29
    return-object v0
.end method

.method public final f()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/apm/insight/entity/Header;->c:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
