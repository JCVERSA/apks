.class public abstract Lcom/therouter/inject/DebugOnlyKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/ArrayList;

.field private static final b:Ljava/util/ArrayList;

.field private static final c:Ljava/util/HashMap;

.field private static volatile d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/therouter/inject/DebugOnlyKt;->a:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/therouter/inject/DebugOnlyKt;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/therouter/inject/DebugOnlyKt;->c:Ljava/util/HashMap;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    sput v0, Lcom/therouter/inject/DebugOnlyKt;->d:I

    .line 24
    .line 25
    return-void
.end method

.method public static final a(Landroid/content/Context;)V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, Lcom/therouter/router/d;

    .line 4
    .line 5
    const-class v3, Lcom/therouter/inject/b;

    .line 6
    .line 7
    const-string v4, "RouterInject"

    .line 8
    .line 9
    if-eqz p0, :cond_5

    .line 10
    .line 11
    sget v5, Lcom/therouter/inject/DebugOnlyKt;->d:I

    .line 12
    .line 13
    if-ltz v5, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    sput v1, Lcom/therouter/inject/DebugOnlyKt;->d:I

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v5, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v5, "getApplicationInfo(...)"

    .line 32
    .line 33
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v5, Ldalvik/system/DexFile;

    .line 39
    .line 40
    invoke-direct {v5, p0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5}, Ldalvik/system/DexFile;->entries()Ljava/util/Enumeration;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_4

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string v6, "a.ServiceProvider__TheRouter__"

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x2

    .line 66
    invoke-static {v5, v6, v1, v8, v7}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    const-string v12, "create class error for "

    .line 71
    .line 72
    const-string v9, "$"

    .line 73
    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    :try_start_1
    invoke-static {v5, v9, v1, v8, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    :try_start_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-virtual {v3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-nez v7, :cond_1

    .line 97
    .line 98
    sget-object v7, Lcom/therouter/inject/DebugOnlyKt;->a:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v8, "null cannot be cast to non-null type com.therouter.inject.Interceptor"

    .line 105
    .line 106
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    check-cast v6, Lcom/therouter/inject/b;

    .line 110
    .line 111
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception v6

    .line 116
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    new-instance v7, Lcom/therouter/inject/DebugOnlyKt$getAllDI$1;

    .line 132
    .line 133
    invoke-direct {v7, v6}, Lcom/therouter/inject/DebugOnlyKt$getAllDI$1;-><init>(Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    invoke-static {v4, v5, v7}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_1
    move-exception p0

    .line 141
    goto/16 :goto_1

    .line 142
    .line 143
    :cond_2
    const-string v6, "a.RouterMap__TheRouter__"

    .line 144
    .line 145
    invoke-static {v5, v6, v1, v8, v7}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eqz v6, :cond_3

    .line 150
    .line 151
    invoke-static {v5, v9, v1, v8, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    if-nez v6, :cond_3

    .line 156
    .line 157
    :try_start_4
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    invoke-virtual {v2, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_1

    .line 166
    .line 167
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    if-nez v7, :cond_1

    .line 172
    .line 173
    sget-object v7, Lcom/therouter/inject/DebugOnlyKt;->b:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const-string v8, "null cannot be cast to non-null type com.therouter.router.IRouterMapAPT"

    .line 180
    .line 181
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    check-cast v6, Lcom/therouter/router/d;

    .line 185
    .line 186
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    .line 188
    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :catch_2
    move-exception v6

    .line 192
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    new-instance v7, Lcom/therouter/inject/DebugOnlyKt$getAllDI$2;

    .line 208
    .line 209
    invoke-direct {v7, v6}, Lcom/therouter/inject/DebugOnlyKt$getAllDI$2;-><init>(Ljava/lang/Exception;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v4, v5, v7}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_3
    const-string v6, "__TheRouter__Autowired"

    .line 218
    .line 219
    invoke-static {v5, v6, v1, v8, v7}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_1

    .line 224
    .line 225
    invoke-static {v5, v9, v1, v8, v7}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 229
    if-nez v6, :cond_1

    .line 230
    .line 231
    :try_start_6
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    move-result-object v13

    .line 235
    const-string v7, "__TheRouter__Autowired"

    .line 236
    .line 237
    const-string v8, ""

    .line 238
    .line 239
    const/4 v10, 0x4

    .line 240
    const/4 v11, 0x0

    .line 241
    const/4 v9, 0x0

    .line 242
    move-object v6, v5

    .line 243
    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 248
    .line 249
    .line 250
    move-result-object v6

    .line 251
    sget-object v7, Lcom/therouter/inject/DebugOnlyKt;->c:Ljava/util/HashMap;

    .line 252
    .line 253
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    const-string v8, "autowiredInject"

    .line 257
    .line 258
    new-array v9, v0, [Ljava/lang/Class;

    .line 259
    .line 260
    const-class v10, Ljava/lang/Object;

    .line 261
    .line 262
    aput-object v10, v9, v1

    .line 263
    .line 264
    invoke-virtual {v13, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    const-string v9, "getDeclaredMethod(...)"

    .line 269
    .line 270
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0

    .line 277
    .line 278
    :catch_3
    move-exception v6

    .line 279
    :try_start_7
    new-instance v7, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    new-instance v7, Lcom/therouter/inject/DebugOnlyKt$getAllDI$3;

    .line 295
    .line 296
    invoke-direct {v7, v6}, Lcom/therouter/inject/DebugOnlyKt$getAllDI$3;-><init>(Ljava/lang/Exception;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v4, v5, v7}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_4
    sput v0, Lcom/therouter/inject/DebugOnlyKt;->d:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :goto_1
    new-instance v0, Lcom/therouter/inject/DebugOnlyKt$getAllDI$4;

    .line 308
    .line 309
    invoke-direct {v0, p0}, Lcom/therouter/inject/DebugOnlyKt$getAllDI$4;-><init>(Ljava/lang/Exception;)V

    .line 310
    .line 311
    .line 312
    const-string p0, "getAllDI error"

    .line 313
    .line 314
    invoke-static {v4, p0, v0}, Lcom/therouter/TheRouterKt;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 315
    .line 316
    .line 317
    :cond_5
    :goto_2
    return-void
.end method

.method public static final b()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/inject/DebugOnlyKt;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/inject/DebugOnlyKt;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final d()Ljava/util/ArrayList;
    .locals 1

    .line 1
    sget-object v0, Lcom/therouter/inject/DebugOnlyKt;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method
