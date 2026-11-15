.class public Lcom/tmc/monitor/AppMonitor;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/monitor/AppMonitor$a;
    }
.end annotation


# static fields
.field private static b:Ljava/util/Set;

.field private static c:Ljava/util/Map;

.field private static d:Ljava/util/Map;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tmc/monitor/AppMonitor;->b:Ljava/util/Set;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/tmc/monitor/AppMonitor;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/tmc/monitor/AppMonitor;->d:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xeab

    .line 3
    iput v0, p0, Lcom/tmc/monitor/AppMonitor;->a:I

    .line 4
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getAppMonitorId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getAppMonitorId()I

    move-result v0

    iput v0, p0, Lcom/tmc/monitor/AppMonitor;->a:I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/tmc/monitor/AppMonitor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tmc/monitor/AppMonitor;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tmc/monitor/AppMonitor;Lpf/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tmc/monitor/AppMonitor;->b(Lpf/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Lpf/c;)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/tmc/monitor/AppMonitor;->b:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/tmc/monitor/AppMonitor;->e(Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_2

    .line 19
    .line 20
    :cond_0
    :goto_0
    const-class v1, Lpf/b;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lpf/b;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-interface {v1}, Lpf/b;->id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v1}, Lpf/b;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    sget-object v3, Lcom/tmc/monitor/AppMonitor;->c:Ljava/util/Map;

    .line 47
    .line 48
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/util/List;

    .line 53
    .line 54
    if-eqz v0, :cond_d

    .line 55
    .line 56
    new-instance v3, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "object_id"

    .line 62
    .line 63
    invoke-virtual {v3, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v2, "object_name"

    .line 67
    .line 68
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_c

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Ljava/lang/reflect/Field;

    .line 86
    .line 87
    sget-object v2, Lcom/tmc/monitor/AppMonitor;->d:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_4

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 124
    .line 125
    .line 126
    move-result-wide v4

    .line 127
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-eqz v5, :cond_5

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_5
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 148
    .line 149
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-eqz v5, :cond_6

    .line 154
    .line 155
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 164
    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_7

    .line 170
    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_7
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 180
    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-eqz v5, :cond_8

    .line 186
    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    .line 188
    .line 189
    .line 190
    move-result v1

    .line 191
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_8
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 196
    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 198
    .line 199
    .line 200
    move-result v5

    .line 201
    if-eqz v5, :cond_9

    .line 202
    .line 203
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 208
    .line 209
    .line 210
    goto/16 :goto_1

    .line 211
    .line 212
    :cond_9
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 213
    .line 214
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    if-eqz v5, :cond_a

    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    .line 221
    .line 222
    .line 223
    move-result-wide v4

    .line 224
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_a
    const-class v5, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    if-eqz v5, :cond_b

    .line 236
    .line 237
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    check-cast v1, Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_b
    sget-object v1, Lrf/b;->a:Lrf/b;

    .line 249
    .line 250
    new-instance v5, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    const-string v6, " error type = "

    .line 256
    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v4, ", fieldName = "

    .line 264
    .line 265
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Lrf/b;->c(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_1

    .line 279
    .line 280
    :cond_c
    sget-object p1, Lrf/b;->a:Lrf/b;

    .line 281
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v1, " Bundle data = "

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {p1, v0}, Lrf/b;->c(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    new-instance p1, Lhi/a;

    .line 307
    .line 308
    const-string v0, "network"

    .line 309
    .line 310
    iget v1, p0, Lcom/tmc/monitor/AppMonitor;->a:I

    .line 311
    .line 312
    invoke-direct {p1, v0, v1}, Lhi/a;-><init>(Ljava/lang/String;I)V

    .line 313
    .line 314
    .line 315
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, v3, v0}, Lhi/a;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lhi/a;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p1}, Lhi/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :goto_2
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 325
    .line 326
    invoke-virtual {v0, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 327
    .line 328
    .line 329
    :cond_d
    :goto_3
    return-void
.end method

.method public static d()Lcom/tmc/monitor/AppMonitor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tmc/monitor/AppMonitor$a;->a()Lcom/tmc/monitor/AppMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private e(Ljava/lang/Class;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/tmc/monitor/AppMonitor;->b:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-class v0, Lpf/b;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lpf/b;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    array-length v2, v0

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_3

    .line 35
    .line 36
    aget-object v4, v0, v3

    .line 37
    .line 38
    const-class v5, Lpf/a;

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Lpf/a;

    .line 45
    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    const/4 v5, 0x1

    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    sget-object v6, Lcom/tmc/monitor/AppMonitor;->d:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Lcom/tmc/monitor/AppMonitor;->c:Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    sget-object v0, Lcom/tmc/monitor/AppMonitor;->b:Ljava/util/Set;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public c(Lpf/c;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    sget-object v0, Lcom/tmc/network/NetworkConfig;->INSTANCE:Lcom/tmc/network/NetworkConfig;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->isNetworkMonitorEnable()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/tmc/network/NetworkConfig;->getAppMonitorRandom()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    mul-double/2addr v1, v3

    .line 26
    double-to-int v1, v1

    .line 27
    if-le v1, v0, :cond_1

    .line 28
    .line 29
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "abort report. data = "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lrf/b;->c(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object v0, Lrf/c;->c:Lrf/c$a;

    .line 59
    .line 60
    invoke-virtual {v0}, Lrf/c$a;->a()Lrf/c;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/tmc/monitor/AppMonitor$1;

    .line 65
    .line 66
    invoke-direct {v1, p0, p1}, Lcom/tmc/monitor/AppMonitor$1;-><init>(Lcom/tmc/monitor/AppMonitor;Lpf/c;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lrf/c;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :goto_0
    sget-object v0, Lrf/b;->a:Lrf/b;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_1
    return-void
.end method
