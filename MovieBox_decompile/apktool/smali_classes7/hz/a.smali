.class public final Lhz/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static synthetic e:Ljava/lang/Class;

.field static synthetic f:Ljava/lang/Class;

.field static synthetic g:Ljava/lang/Class;


# instance fields
.field public a:Ljava/io/Reader;

.field public b:I

.field public c:Ljava/util/Vector;

.field private d:Lorg/apache/tools/ant/Project;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    iput v0, p0, Lhz/a;->b:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/Vector;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lhz/a;->c:Ljava/util/Vector;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lhz/a;->d:Lorg/apache/tools/ant/Project;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    new-instance v0, Ljava/lang/NoClassDefFoundError;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method private f(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhz/a;->d:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v1, p1, Lgz/a;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast p1, Lgz/a;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lgz/a;->b(Lorg/apache/tools/ant/Project;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->K(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public b()Ljava/io/Reader;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lhz/a;->a:Ljava/io/Reader;

    .line 4
    .line 5
    if-eqz v2, :cond_c

    .line 6
    .line 7
    iget-object v3, p0, Lhz/a;->c:Ljava/util/Vector;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    new-instance v4, Ljava/util/Vector;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 16
    .line 17
    .line 18
    move v5, v0

    .line 19
    :goto_0
    if-ge v5, v3, :cond_1

    .line 20
    .line 21
    iget-object v6, p0, Lhz/a;->c:Ljava/util/Vector;

    .line 22
    .line 23
    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    check-cast v6, Lorg/apache/tools/ant/types/h;

    .line 28
    .line 29
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/h;->e()Ljava/util/Vector;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    move v8, v0

    .line 38
    :goto_1
    if-ge v8, v7, :cond_0

    .line 39
    .line 40
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-virtual {v4, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    add-int/2addr v8, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    add-int/2addr v5, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-lez v3, :cond_b

    .line 56
    .line 57
    move v5, v0

    .line 58
    :goto_2
    if-ge v5, v3, :cond_b

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    instance-of v6, v6, Lorg/apache/tools/ant/types/a;

    .line 65
    .line 66
    if-eqz v6, :cond_a

    .line 67
    .line 68
    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Lorg/apache/tools/ant/types/a;

    .line 73
    .line 74
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/a;->e()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/a;->g()Lorg/apache/tools/ant/types/m;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    invoke-virtual {v6}, Lorg/apache/tools/ant/q;->getProject()Lorg/apache/tools/ant/Project;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    if-eqz v7, :cond_a

    .line 87
    .line 88
    if-nez v8, :cond_2

    .line 89
    .line 90
    :try_start_0
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    goto :goto_3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :catch_1
    move-exception v0

    .line 99
    goto/16 :goto_6

    .line 100
    .line 101
    :catch_2
    move-exception v0

    .line 102
    goto/16 :goto_7

    .line 103
    .line 104
    :catch_3
    move-exception v0

    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_2
    invoke-virtual {v9, v8}, Lorg/apache/tools/ant/Project;->g(Lorg/apache/tools/ant/types/m;)Lorg/apache/tools/ant/a;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-static {v7, v1, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    :goto_3
    if-eqz v8, :cond_a

    .line 116
    .line 117
    sget-object v9, Lhz/a;->e:Ljava/lang/Class;

    .line 118
    .line 119
    if-nez v9, :cond_3

    .line 120
    .line 121
    const-string v9, "java.io.FilterReader"

    .line 122
    .line 123
    invoke-static {v9}, Lhz/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    move-result-object v9

    .line 127
    sput-object v9, Lhz/a;->e:Ljava/lang/Class;

    .line 128
    .line 129
    :cond_3
    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 130
    .line 131
    .line 132
    move-result v9

    .line 133
    if-eqz v9, :cond_9

    .line 134
    .line 135
    invoke-virtual {v8}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    move v10, v0

    .line 140
    :goto_4
    array-length v11, v9

    .line 141
    if-ge v10, v11, :cond_8

    .line 142
    .line 143
    aget-object v11, v9, v10

    .line 144
    .line 145
    invoke-virtual {v11}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    array-length v12, v11

    .line 150
    if-ne v12, v1, :cond_7

    .line 151
    .line 152
    aget-object v11, v11, v0

    .line 153
    .line 154
    sget-object v12, Lhz/a;->f:Ljava/lang/Class;

    .line 155
    .line 156
    if-nez v12, :cond_4

    .line 157
    .line 158
    const-string v12, "java.io.Reader"

    .line 159
    .line 160
    invoke-static {v12}, Lhz/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    sput-object v12, Lhz/a;->f:Ljava/lang/Class;

    .line 165
    .line 166
    :cond_4
    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    if-eqz v11, :cond_7

    .line 171
    .line 172
    new-array v7, v1, [Ljava/io/Reader;

    .line 173
    .line 174
    aput-object v2, v7, v0

    .line 175
    .line 176
    aget-object v2, v9, v10

    .line 177
    .line 178
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Ljava/io/Reader;

    .line 183
    .line 184
    invoke-direct {p0, v2}, Lhz/a;->f(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v7, Lhz/a;->g:Ljava/lang/Class;

    .line 188
    .line 189
    if-nez v7, :cond_5

    .line 190
    .line 191
    const-string v7, "org.apache.tools.ant.types.Parameterizable"

    .line 192
    .line 193
    invoke-static {v7}, Lhz/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    sput-object v7, Lhz/a;->g:Ljava/lang/Class;

    .line 198
    .line 199
    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 200
    .line 201
    .line 202
    move-result v7

    .line 203
    if-nez v7, :cond_6

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_6
    invoke-virtual {v6}, Lorg/apache/tools/ant/types/a;->i()[Lorg/apache/tools/ant/types/l;

    .line 207
    .line 208
    .line 209
    invoke-static {v2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .line 211
    .line 212
    const/4 v0, 0x0

    .line 213
    throw v0

    .line 214
    :cond_7
    add-int/2addr v10, v1

    .line 215
    goto :goto_4

    .line 216
    :cond_8
    :try_start_1
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 217
    .line 218
    new-instance v1, Ljava/lang/StringBuffer;

    .line 219
    .line 220
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    .line 225
    .line 226
    const-string v2, " does not define a public constructor"

    .line 227
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    .line 230
    .line 231
    const-string v2, " that takes in a Reader as its "

    .line 232
    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    .line 235
    .line 236
    const-string v2, "single argument."

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_9
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 250
    .line 251
    new-instance v1, Ljava/lang/StringBuffer;

    .line 252
    .line 253
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    .line 258
    .line 259
    const-string v2, " does not extend java.io.FilterReader"

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :goto_5
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 273
    .line 274
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    throw v1

    .line 278
    :goto_6
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 279
    .line 280
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    :goto_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 285
    .line 286
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    throw v1

    .line 290
    :goto_8
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    .line 291
    .line 292
    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 293
    .line 294
    .line 295
    throw v1

    .line 296
    :cond_a
    :goto_9
    add-int/2addr v5, v1

    .line 297
    goto/16 :goto_2

    .line 298
    .line 299
    :cond_b
    return-object v2

    .line 300
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 301
    .line 302
    const-string v1, "primaryReader must not be null."

    .line 303
    .line 304
    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v0
.end method

.method public c(Ljava/util/Vector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhz/a;->c:Ljava/util/Vector;

    .line 2
    .line 3
    return-void
.end method

.method public d(Ljava/io/Reader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhz/a;->a:Ljava/io/Reader;

    .line 2
    .line 3
    return-void
.end method

.method public e(Lorg/apache/tools/ant/Project;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhz/a;->d:Lorg/apache/tools/ant/Project;

    .line 2
    .line 3
    return-void
.end method
