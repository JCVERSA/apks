.class public Lorg/mvel2/sh/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/sh/a$a;
    }
.end annotation


# static fields
.field private static final m:[Ljava/lang/String;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Map;

.field private c:Ljava/util/Map;

.field d:Lorg/mvel2/ParserContext;

.field e:Lorg/mvel2/integration/VariableResolverFactory;

.field private f:I

.field private g:Z

.field private h:I

.field private i:Ljava/io/PrintStream;

.field private j:Ljava/lang/String;

.field k:Lorg/mvel2/util/s;

.field final l:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lorg/mvel2/sh/a;->m:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/mvel2/sh/a;->a:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v1, Lorg/mvel2/ParserContext;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/mvel2/ParserContext;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/mvel2/sh/a;->d:Lorg/mvel2/ParserContext;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lorg/mvel2/sh/a;->g:Z

    .line 20
    .line 21
    iput v1, p0, Lorg/mvel2/sh/a;->h:I

    .line 22
    .line 23
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 24
    .line 25
    iput-object v1, p0, Lorg/mvel2/sh/a;->i:Ljava/io/PrintStream;

    .line 26
    .line 27
    new-instance v2, Lorg/mvel2/util/s;

    .line 28
    .line 29
    invoke-direct {v2}, Lorg/mvel2/util/s;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v2, p0, Lorg/mvel2/sh/a;->k:Lorg/mvel2/util/s;

    .line 33
    .line 34
    new-instance v2, Ljava/io/BufferedReader;

    .line 35
    .line 36
    new-instance v3, Ljava/io/InputStreamReader;

    .line 37
    .line 38
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    .line 39
    .line 40
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, p0, Lorg/mvel2/sh/a;->l:Ljava/io/BufferedReader;

    .line 47
    .line 48
    const-string v2, "Starting session..."

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lorg/mvel2/sh/a;->b:Ljava/util/Map;

    .line 59
    .line 60
    new-instance v1, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 66
    .line 67
    new-instance v1, Ld00/a;

    .line 68
    .line 69
    invoke-direct {v1}, Ld00/a;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ld00/a;->a()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Le00/c;

    .line 80
    .line 81
    invoke-direct {v1}, Le00/c;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Le00/c;->a()Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 92
    .line 93
    const-string v1, "$PROMPT"

    .line 94
    .line 95
    const-string v2, "[@{ new java.text.SimpleDateFormat(\'hh:mmaa\').format(new java.util.Date(System.currentTimeMillis()))}] mvel2$ "

    .line 96
    .line 97
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 101
    .line 102
    const-string v1, "os.name"

    .line 103
    .line 104
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "$OS_NAME"

    .line 109
    .line 110
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 114
    .line 115
    const-string v2, "os.version"

    .line 116
    .line 117
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const-string v3, "$OS_VERSION"

    .line 122
    .line 123
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 127
    .line 128
    const-string v2, "$JAVA_VERSION"

    .line 129
    .line 130
    invoke-static {}, Lorg/mvel2/util/n;->f()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 138
    .line 139
    new-instance v2, Ljava/io/File;

    .line 140
    .line 141
    const-string v3, "."

    .line 142
    .line 143
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    const-string v3, "$CWD"

    .line 151
    .line 152
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 156
    .line 157
    const-string v2, "$COMMAND_PASSTRU"

    .line 158
    .line 159
    const-string v3, "false"

    .line 160
    .line 161
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 165
    .line 166
    const-string v2, "$PRINTOUTPUT"

    .line 167
    .line 168
    const-string v4, "true"

    .line 169
    .line 170
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 174
    .line 175
    const-string v2, "$ECHO"

    .line 176
    .line 177
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 181
    .line 182
    const-string v2, "$SHOW_TRACES"

    .line 183
    .line 184
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 188
    .line 189
    const-string v2, "$USE_OPTIMIZER_ALWAYS"

    .line 190
    .line 191
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 195
    .line 196
    const-string v2, ""

    .line 197
    .line 198
    const-string v3, "$PATH"

    .line 199
    .line 200
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :try_start_0
    const-string v0, ".mvelsh.properties"

    .line 204
    .line 205
    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_0

    .line 218
    .line 219
    iget-object v4, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0, v5}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 236
    .line 237
    const-string v2, "No config file found.  Loading default config."

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const-string v1, "windows"

    .line 251
    .line 252
    invoke-static {v0, v1}, Lorg/mvel2/util/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_0

    .line 257
    .line 258
    iget-object v0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 259
    .line 260
    const-string v1, "/bin:/usr/bin:/sbin:/usr/sbin"

    .line 261
    .line 262
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    :cond_0
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 266
    .line 267
    iget-object v1, p0, Lorg/mvel2/sh/a;->b:Ljava/util/Map;

    .line 268
    .line 269
    new-instance v2, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    .line 270
    .line 271
    iget-object v3, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 272
    .line 273
    invoke-direct {v2, v3}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    .line 274
    .line 275
    .line 276
    invoke-direct {v0, v1, v2}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 277
    .line 278
    .line 279
    iput-object v0, p0, Lorg/mvel2/sh/a;->e:Lorg/mvel2/integration/VariableResolverFactory;

    .line 280
    .line 281
    return-void
.end method

.method static synthetic a(Lorg/mvel2/sh/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/mvel2/sh/a;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lorg/mvel2/sh/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mvel2/sh/a;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lorg/mvel2/sh/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/mvel2/sh/a;->h:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lorg/mvel2/sh/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/sh/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lorg/mvel2/sh/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mvel2/sh/a;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lorg/mvel2/sh/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/sh/a;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lorg/mvel2/sh/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/sh/a;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lorg/mvel2/sh/a;)Ljava/io/PrintStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mvel2/sh/a;->i:Ljava/io/PrintStream;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lorg/mvel2/sh/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/mvel2/sh/a;->f:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public j(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    const-string v2, " "

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
