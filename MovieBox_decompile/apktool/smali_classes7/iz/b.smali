.class public Liz/b;
.super Lorg/apache/tools/ant/r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liz/b$b;,
        Liz/b$f;,
        Liz/b$d;,
        Liz/b$c;,
        Liz/b$e;,
        Liz/b$a;
    }
.end annotation


# static fields
.field private static b:Liz/b$a;

.field private static c:Liz/b$a;

.field private static d:Liz/b$a;

.field private static e:Liz/b$a;

.field private static final f:Lorg/apache/tools/ant/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Liz/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Liz/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Liz/b;->b:Liz/b$a;

    .line 7
    .line 8
    new-instance v0, Liz/b$f;

    .line 9
    .line 10
    invoke-direct {v0}, Liz/b$f;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Liz/b;->c:Liz/b$a;

    .line 14
    .line 15
    new-instance v0, Liz/b$c;

    .line 16
    .line 17
    invoke-direct {v0}, Liz/b$c;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Liz/b;->d:Liz/b$a;

    .line 21
    .line 22
    new-instance v0, Liz/b$d;

    .line 23
    .line 24
    invoke-direct {v0}, Liz/b$d;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Liz/b;->e:Liz/b$a;

    .line 28
    .line 29
    invoke-static {}, Lorg/apache/tools/ant/util/d;->k()Lorg/apache/tools/ant/util/d;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Liz/b;->f:Lorg/apache/tools/ant/util/d;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/tools/ant/r;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f()Lorg/apache/tools/ant/util/d;
    .locals 1

    .line 1
    sget-object v0, Liz/b;->f:Lorg/apache/tools/ant/util/d;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic g()Liz/b$a;
    .locals 1

    .line 1
    sget-object v0, Liz/b;->e:Liz/b$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic h()Liz/b$a;
    .locals 1

    .line 1
    sget-object v0, Liz/b;->c:Liz/b$a;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic i()Liz/b$a;
    .locals 1

    .line 1
    sget-object v0, Liz/b;->b:Liz/b$a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public j(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Liz/b$e;)V
    .locals 6

    .line 1
    invoke-static {p3}, Liz/b$e;->a(Liz/b$e;)Liz/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p2, Ljava/io/File;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast p2, Ljava/io/File;

    .line 11
    .line 12
    sget-object v1, Liz/b;->f:Lorg/apache/tools/ant/util/d;

    .line 13
    .line 14
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {v1, p2}, Lorg/apache/tools/ant/util/d;->o(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Liz/a;->q(Ljava/io/File;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v1, v0

    .line 30
    move-object v0, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    instance-of v0, p2, Ljava/net/URL;

    .line 33
    .line 34
    if-eqz v0, :cond_8

    .line 35
    .line 36
    check-cast p2, Ljava/net/URL;

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v1, v0

    .line 43
    move-object v0, p2

    .line 44
    move-object p2, v2

    .line 45
    :goto_0
    :try_start_0
    invoke-static {}, Lorg/apache/tools/ant/util/e;->c()Lorg/xml/sax/XMLReader;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    sget-object v0, Liz/b;->f:Lorg/apache/tools/ant/util/d;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v0, v4}, Lorg/apache/tools/ant/util/d;->r(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v4, Ljava/io/FileInputStream;

    .line 62
    .line 63
    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 64
    .line 65
    .line 66
    move-object v2, v4

    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    goto/16 :goto_9

    .line 70
    .line 71
    :catch_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :catch_1
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    :catch_2
    move-exception p1

    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :catch_3
    move-exception p1

    .line 79
    goto/16 :goto_5

    .line 80
    .line 81
    :catch_4
    move-exception p1

    .line 82
    goto/16 :goto_7

    .line 83
    .line 84
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :goto_1
    new-instance p2, Lorg/xml/sax/InputSource;

    .line 93
    .line 94
    invoke-direct {p2, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 95
    .line 96
    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    .line 103
    .line 104
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v5, "parsing buildfile "

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    const-string v5, " with URI = "

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const/4 v4, 0x3

    .line 128
    invoke-virtual {p1, v0, v4}, Lorg/apache/tools/ant/Project;->x(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 135
    .line 136
    .line 137
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v3, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .line 145
    .line 146
    invoke-static {v2}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :goto_2
    :try_start_1
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 151
    .line 152
    new-instance p3, Ljava/lang/StringBuffer;

    .line 153
    .line 154
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v0, "Error reading project file "

    .line 158
    .line 159
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    .line 164
    .line 165
    const-string v0, ": "

    .line 166
    .line 167
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .line 183
    .line 184
    throw p2

    .line 185
    :goto_3
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 186
    .line 187
    new-instance p3, Ljava/lang/StringBuffer;

    .line 188
    .line 189
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v0, "Encoding of project file "

    .line 193
    .line 194
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    .line 199
    .line 200
    const-string v0, " is invalid."

    .line 201
    .line 202
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-direct {p2, p3, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    throw p2

    .line 213
    :goto_4
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    .line 214
    .line 215
    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    .line 216
    .line 217
    .line 218
    throw p2

    .line 219
    :goto_5
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    instance-of p3, p2, Lorg/apache/tools/ant/BuildException;

    .line 224
    .line 225
    if-nez p3, :cond_4

    .line 226
    .line 227
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    .line 228
    .line 229
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-nez p2, :cond_3

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :cond_3
    move-object p1, p2

    .line 237
    :goto_6
    invoke-direct {p3, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    throw p3

    .line 241
    :cond_4
    check-cast p2, Lorg/apache/tools/ant/BuildException;

    .line 242
    .line 243
    throw p2

    .line 244
    :goto_7
    new-instance p2, Lorg/apache/tools/ant/Location;

    .line 245
    .line 246
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p3

    .line 250
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    invoke-direct {p2, p3, v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    .line 262
    .line 263
    .line 264
    move-result-object p3

    .line 265
    instance-of v0, p3, Lorg/apache/tools/ant/BuildException;

    .line 266
    .line 267
    if-eqz v0, :cond_6

    .line 268
    .line 269
    check-cast p3, Lorg/apache/tools/ant/BuildException;

    .line 270
    .line 271
    invoke-virtual {p3}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    .line 276
    .line 277
    if-ne p1, v0, :cond_5

    .line 278
    .line 279
    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 280
    .line 281
    .line 282
    :cond_5
    throw p3

    .line 283
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    .line 284
    .line 285
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-nez p3, :cond_7

    .line 290
    .line 291
    goto :goto_8

    .line 292
    :cond_7
    move-object p1, p3

    .line 293
    :goto_8
    invoke-direct {v0, v1, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    .line 294
    .line 295
    .line 296
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :goto_9
    invoke-static {v2}, Lorg/apache/tools/ant/util/d;->b(Ljava/io/InputStream;)V

    .line 298
    .line 299
    .line 300
    throw p1

    .line 301
    :cond_8
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 302
    .line 303
    new-instance p3, Ljava/lang/StringBuffer;

    .line 304
    .line 305
    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    .line 306
    .line 307
    .line 308
    const-string v0, "Source "

    .line 309
    .line 310
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    move-result-object p2

    .line 317
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p2

    .line 321
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    .line 323
    .line 324
    const-string p2, " not supported by this plugin"

    .line 325
    .line 326
    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p1
.end method

.method public k(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/w;
    .locals 4

    .line 1
    new-instance v0, Lorg/apache/tools/ant/t;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/tools/ant/t;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/t;->m(Lorg/apache/tools/ant/Project;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Liz/a;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Liz/a;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Liz/a;->a(Lorg/apache/tools/ant/t;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Liz/a;->t(Lorg/apache/tools/ant/t;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Liz/a;->m()Lorg/apache/tools/ant/Project;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance v2, Liz/b$e;

    .line 25
    .line 26
    sget-object v3, Liz/b;->b:Liz/b$a;

    .line 27
    .line 28
    invoke-direct {v2, v1, v3}, Liz/b$e;-><init>(Liz/a;Liz/b$a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, v2}, Liz/b;->j(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Liz/b$e;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lorg/apache/tools/ant/t;->f()[Lorg/apache/tools/ant/u;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    array-length p2, p1

    .line 39
    const/4 v0, 0x1

    .line 40
    if-ne p2, v0, :cond_0

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    aget-object p1, p1, p2

    .line 44
    .line 45
    check-cast p1, Lorg/apache/tools/ant/w;

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 49
    .line 50
    const-string p2, "No tasks defined"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method
