.class public Lcom/mbridge/msdk/videocommon/net/b;
.super Lcom/mbridge/msdk/foundation/same/net/wrapper/c;
.source "source.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->addExtraParams(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "platform"

    .line 7
    .line 8
    const-string v1, "1"

    .line 9
    .line 10
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string p1, "os_version"

    .line 14
    .line 15
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "package_name"

    .line 21
    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "app_version_name"

    .line 32
    .line 33
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->B(Landroid/content/Context;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "app_version_code"

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->A(Landroid/content/Context;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p1, "orientation"

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->F(Landroid/content/Context;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string p1, "model"

    .line 95
    .line 96
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->n()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "brand"

    .line 104
    .line 105
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->s()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/k0;->s(Landroid/content/Context;)I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const-string v1, "network_type"

    .line 119
    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {p2, v1, v2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v1, "network_str"

    .line 139
    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v3, p1}, Lcom/mbridge/msdk/foundation/tools/k0;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p1, "language"

    .line 165
    .line 166
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/k0;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string p1, "timezone"

    .line 176
    .line 177
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->w()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string p1, "useragent"

    .line 185
    .line 186
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->i()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    const-string p1, "sdk_version"

    .line 194
    .line 195
    const-string v1, "MAL_16.9.71"

    .line 196
    .line 197
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    const-string p1, "screen_size"

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 208
    .line 209
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v2, "x"

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 222
    .line 223
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Lcom/mbridge/msdk/util/b;->a()Z

    .line 238
    .line 239
    .line 240
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    const-string v1, "gaid"

    .line 242
    .line 243
    if-eqz p1, :cond_0

    .line 244
    .line 245
    :try_start_1
    invoke-virtual {p2, v1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string p1, "gp_version"

    .line 249
    .line 250
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/c;->mContext:Landroid/content/Context;

    .line 251
    .line 252
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/t;->d(Landroid/content/Context;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const-string p1, "is_clever"

    .line 260
    .line 261
    sget-object v0, Lcom/mbridge/msdk/foundation/same/a;->C:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto :goto_0

    .line 267
    :catch_0
    move-exception p1

    .line 268
    goto :goto_1

    .line 269
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->d()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {p2, v1, p1}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    :goto_0
    const-string p1, "gaid2"

    .line 277
    .line 278
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/f;->c()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-static {p2}, Lcom/mbridge/msdk/foundation/same/net/wrapper/f;->h(Lcom/mbridge/msdk/foundation/same/net/wrapper/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    .line 291
    .line 292
    :goto_2
    return-void
.end method
