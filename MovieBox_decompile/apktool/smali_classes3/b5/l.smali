.class public abstract Lb5/l;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public final a:Lcom/alibaba/fastjson/util/d;

.field protected final b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb5/l;->b:Ljava/lang/Class;

    .line 5
    .line 6
    iput-object p2, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 7
    .line 8
    return-void
.end method

.method private static a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p2, p3}, Lb5/l;->e(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "set"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x3

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-array v3, v1, [Ljava/lang/Class;

    .line 45
    .line 46
    aput-object p1, v3, v0

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-array p1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p3, p1, v0

    .line 55
    .line 56
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :catch_0
    return v0
.end method

.method private static e(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lb5/l;->b:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract d(La5/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
.end method

.method public f(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public g(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

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
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 17
    .line 18
    const-class v2, Ljava/lang/String;

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->t:Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v1, "trim"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast p2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    :cond_1
    :try_start_0
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->b:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    const-class v2, Ljava/util/Map;

    .line 45
    .line 46
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    .line 50
    const-class v5, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    .line 52
    const-string v6, "java.util.Collections$Unmodifiable"

    .line 53
    .line 54
    if-eqz v1, :cond_17

    .line 55
    .line 56
    :try_start_1
    iget-boolean v7, v0, Lcom/alibaba/fastjson/util/d;->h:Z

    .line 57
    .line 58
    if-eqz v7, :cond_16

    .line 59
    .line 60
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 61
    .line 62
    const/4 v7, 0x0

    .line 63
    if-ne v0, v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {v1, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    .line 75
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :catch_0
    move-exception p1

    .line 85
    goto/16 :goto_7

    .line 86
    .line 87
    :cond_2
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 90
    .line 91
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto/16 :goto_6

    .line 95
    .line 96
    :cond_3
    if-ne v0, v4, :cond_5

    .line 97
    .line 98
    invoke-virtual {v1, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 109
    .line 110
    .line 111
    move-result-wide p1

    .line 112
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :cond_4
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 120
    .line 121
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :cond_5
    if-ne v0, v3, :cond_7

    .line 127
    .line 128
    invoke-virtual {v1, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    .line 134
    if-eqz v0, :cond_6

    .line 135
    .line 136
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_6

    .line 146
    .line 147
    :cond_6
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 148
    .line 149
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 150
    .line 151
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto/16 :goto_6

    .line 155
    .line 156
    :cond_7
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 161
    .line 162
    .line 163
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    if-eqz v0, :cond_e

    .line 165
    .line 166
    :try_start_2
    invoke-virtual {v1, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    check-cast v0, Ljava/util/Map;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    .line 172
    if-eqz v0, :cond_d

    .line 173
    .line 174
    :try_start_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    if-ne v0, v2, :cond_8

    .line 179
    .line 180
    return-void

    .line 181
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_9

    .line 186
    .line 187
    move-object v2, p2

    .line 188
    check-cast v2, Ljava/util/Map;

    .line 189
    .line 190
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_9

    .line 195
    .line 196
    return-void

    .line 197
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    const-string v3, "java.util.ImmutableCollections$Map1"

    .line 206
    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_c

    .line 212
    .line 213
    const-string v3, "java.util.ImmutableCollections$MapN"

    .line 214
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-nez v3, :cond_c

    .line 220
    .line 221
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_a

    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    const-string v3, "kotlin.collections.EmptyMap"

    .line 237
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-eqz v2, :cond_b

    .line 243
    .line 244
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 247
    .line 248
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :cond_b
    check-cast p2, Ljava/util/Map;

    .line 253
    .line 254
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :cond_c
    :goto_0
    return-void

    .line 260
    :cond_d
    if-eqz p2, :cond_21

    .line 261
    .line 262
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 265
    .line 266
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    goto/16 :goto_6

    .line 270
    .line 271
    :catch_1
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 272
    .line 273
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 274
    .line 275
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    .line 277
    .line 278
    return-void

    .line 279
    :cond_e
    :try_start_4
    invoke-virtual {v1, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    check-cast v0, Ljava/util/Collection;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 284
    .line 285
    if-eqz v0, :cond_15

    .line 286
    .line 287
    if-eqz p2, :cond_15

    .line 288
    .line 289
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    if-eq v0, v3, :cond_14

    .line 302
    .line 303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    if-eq v0, v3, :cond_14

    .line 308
    .line 309
    const-string v3, "java.util.ImmutableCollections$ListN"

    .line 310
    .line 311
    if-eq v2, v3, :cond_14

    .line 312
    .line 313
    const-string v3, "java.util.ImmutableCollections$List12"

    .line 314
    .line 315
    if-eq v2, v3, :cond_14

    .line 316
    .line 317
    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-eqz v3, :cond_f

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_f
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    if-nez v3, :cond_10

    .line 329
    .line 330
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 331
    .line 332
    .line 333
    goto :goto_1

    .line 334
    :cond_10
    move-object v3, p2

    .line 335
    check-cast v3, Ljava/util/Collection;

    .line 336
    .line 337
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_11

    .line 342
    .line 343
    return-void

    .line 344
    :cond_11
    :goto_1
    const-string v3, "kotlin.collections.EmptyList"

    .line 345
    .line 346
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    if-nez v3, :cond_13

    .line 351
    .line 352
    const-string v3, "kotlin.collections.EmptySet"

    .line 353
    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_12

    .line 359
    .line 360
    goto :goto_2

    .line 361
    :cond_12
    check-cast p2, Ljava/util/Collection;

    .line 362
    .line 363
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 364
    .line 365
    .line 366
    goto/16 :goto_6

    .line 367
    .line 368
    :cond_13
    :goto_2
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 371
    .line 372
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    :cond_14
    :goto_3
    return-void

    .line 376
    :cond_15
    if-nez v0, :cond_21

    .line 377
    .line 378
    if-eqz p2, :cond_21

    .line 379
    .line 380
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 381
    .line 382
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 383
    .line 384
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    goto/16 :goto_6

    .line 388
    .line 389
    :catch_2
    iget-object v0, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 390
    .line 391
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 392
    .line 393
    invoke-static {v0, v1, p1, p2}, Lb5/l;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :cond_16
    const/4 v0, 0x1

    .line 398
    new-array v0, v0, [Ljava/lang/Object;

    .line 399
    .line 400
    const/4 v2, 0x0

    .line 401
    aput-object p2, v0, v2

    .line 402
    .line 403
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    goto/16 :goto_6

    .line 407
    .line 408
    :cond_17
    iget-object v1, v0, Lcom/alibaba/fastjson/util/d;->c:Ljava/lang/reflect/Field;

    .line 409
    .line 410
    iget-boolean v7, v0, Lcom/alibaba/fastjson/util/d;->h:Z

    .line 411
    .line 412
    if-eqz v7, :cond_20

    .line 413
    .line 414
    iget-object v0, v0, Lcom/alibaba/fastjson/util/d;->e:Ljava/lang/Class;

    .line 415
    .line 416
    if-ne v0, v5, :cond_18

    .line 417
    .line 418
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 423
    .line 424
    if-eqz p1, :cond_21

    .line 425
    .line 426
    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 427
    .line 428
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 429
    .line 430
    .line 431
    move-result p2

    .line 432
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_6

    .line 436
    .line 437
    :cond_18
    if-ne v0, v4, :cond_19

    .line 438
    .line 439
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 444
    .line 445
    if-eqz p1, :cond_21

    .line 446
    .line 447
    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    .line 448
    .line 449
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 450
    .line 451
    .line 452
    move-result-wide v0

    .line 453
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 454
    .line 455
    .line 456
    goto/16 :goto_6

    .line 457
    .line 458
    :cond_19
    if-ne v0, v3, :cond_1a

    .line 459
    .line 460
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 465
    .line 466
    if-eqz p1, :cond_21

    .line 467
    .line 468
    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 469
    .line 470
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 471
    .line 472
    .line 473
    move-result p2

    .line 474
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_1a
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 479
    .line 480
    .line 481
    move-result v0

    .line 482
    if-eqz v0, :cond_1d

    .line 483
    .line 484
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    check-cast p1, Ljava/util/Map;

    .line 489
    .line 490
    if-eqz p1, :cond_21

    .line 491
    .line 492
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-eq p1, v0, :cond_1c

    .line 497
    .line 498
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 507
    .line 508
    .line 509
    move-result v0

    .line 510
    if-eqz v0, :cond_1b

    .line 511
    .line 512
    goto :goto_4

    .line 513
    :cond_1b
    check-cast p2, Ljava/util/Map;

    .line 514
    .line 515
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 516
    .line 517
    .line 518
    goto :goto_6

    .line 519
    :cond_1c
    :goto_4
    return-void

    .line 520
    :cond_1d
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p1

    .line 524
    check-cast p1, Ljava/util/Collection;

    .line 525
    .line 526
    if-eqz p1, :cond_21

    .line 527
    .line 528
    if-eqz p2, :cond_21

    .line 529
    .line 530
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-eq p1, v0, :cond_1f

    .line 535
    .line 536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    if-eq p1, v0, :cond_1f

    .line 541
    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    if-eqz v0, :cond_1e

    .line 555
    .line 556
    goto :goto_5

    .line 557
    :cond_1e
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 558
    .line 559
    .line 560
    check-cast p2, Ljava/util/Collection;

    .line 561
    .line 562
    invoke-interface {p1, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 563
    .line 564
    .line 565
    goto :goto_6

    .line 566
    :cond_1f
    :goto_5
    return-void

    .line 567
    :cond_20
    if-eqz v1, :cond_21

    .line 568
    .line 569
    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 570
    .line 571
    .line 572
    :cond_21
    :goto_6
    return-void

    .line 573
    :goto_7
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 574
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v1, "set property error, "

    .line 581
    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget-object v1, p0, Lb5/l;->b:Ljava/lang/Class;

    .line 586
    .line 587
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    const-string v1, "#"

    .line 595
    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    iget-object v1, p0, Lb5/l;->a:Lcom/alibaba/fastjson/util/d;

    .line 600
    .line 601
    iget-object v1, v1, Lcom/alibaba/fastjson/util/d;->a:Ljava/lang/String;

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    .line 612
    .line 613
    throw p2
.end method

.method public i(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public j(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lb5/l;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
