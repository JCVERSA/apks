.class public Lc5/o0;
.super Lc5/i1;
.source "source.java"


# instance fields
.field protected final j:Lc5/g1;

.field public final k:Lc5/j1;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/text/DateFormat;

.field private p:Ljava/lang/String;

.field protected q:Ljava/util/IdentityHashMap;

.field protected r:Lc5/e1;

.field protected s:Ljava/util/TimeZone;

.field protected t:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lc5/j1;

    invoke-direct {v0}, Lc5/j1;-><init>()V

    invoke-static {}, Lc5/g1;->g()Lc5/g1;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lc5/o0;-><init>(Lc5/j1;Lc5/g1;)V

    return-void
.end method

.method public constructor <init>(Lc5/j1;)V
    .locals 1

    .line 2
    invoke-static {}, Lc5/g1;->g()Lc5/g1;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc5/o0;-><init>(Lc5/j1;Lc5/g1;)V

    return-void
.end method

.method public constructor <init>(Lc5/j1;Lc5/g1;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lc5/i1;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc5/o0;->l:I

    .line 5
    const-string v0, "\t"

    iput-object v0, p0, Lc5/o0;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 7
    sget-object v0, Lcom/alibaba/fastjson/a;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lc5/o0;->s:Ljava/util/TimeZone;

    .line 8
    sget-object v0, Lcom/alibaba/fastjson/a;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lc5/o0;->t:Ljava/util/Locale;

    .line 9
    iput-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 10
    iput-object p2, p0, Lc5/o0;->j:Lc5/g1;

    return-void
.end method

.method private m(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    iget-object v1, p0, Lc5/o0;->t:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lc5/o0;->s:Ljava/util/TimeZone;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 4
    .line 5
    invoke-virtual {p1}, Lc5/j1;->h0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lc5/o0;->q(Ljava/lang/Class;)Lc5/z0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    move-object v2, p0

    .line 21
    move-object v3, p1

    .line 22
    :try_start_0
    invoke-interface/range {v1 .. v6}, Lc5/z0;->c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public final B(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lc5/k1;->a:Lc5/k1;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lc5/k1;->f(Lc5/o0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/j1;->h0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/o0;->r:Lc5/e1;

    .line 2
    .line 3
    iget-object v1, v0, Lc5/e1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 8
    .line 9
    const-string v0, "{\"$ref\":\"@\"}"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Lc5/e1;->a:Lc5/e1;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v1, v1, Lc5/e1;->b:Ljava/lang/Object;

    .line 20
    .line 21
    if-ne p1, v1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 24
    .line 25
    const-string v0, "{\"$ref\":\"..\"}"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    iget-object v1, v0, Lc5/e1;->a:Lc5/e1;

    .line 32
    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    iget-object v0, v0, Lc5/e1;->b:Ljava/lang/Object;

    .line 36
    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 40
    .line 41
    const-string v0, "{\"$ref\":\"$\"}"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 48
    .line 49
    const-string v1, "{\"$ref\":\""

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lc5/e1;

    .line 61
    .line 62
    invoke-virtual {p1}, Lc5/e1;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 72
    .line 73
    const-string v0, "\"}"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void

    .line 79
    :cond_3
    move-object v0, v1

    .line 80
    goto :goto_0
.end method

.method public final E(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lc5/o0;->F(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final F(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 4
    .line 5
    invoke-virtual {p1}, Lc5/j1;->h0()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catch_0
    move-exception p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lc5/o0;->q(Ljava/lang/Class;)Lc5/z0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, p0

    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    move-object v5, p3

    .line 23
    move v6, p4

    .line 24
    invoke-interface/range {v1 .. v6}, Lc5/z0;->c(Lc5/o0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw p2
.end method

.method public final G(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/util/Date;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const-string v0, "unixtime"

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p1, Ljava/util/Date;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    const-wide/16 v0, 0x3e8

    .line 20
    .line 21
    div-long/2addr p1, v0

    .line 22
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 23
    .line 24
    long-to-int p1, p1

    .line 25
    invoke-virtual {v0, p1}, Lc5/j1;->e0(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string v0, "millis"

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lc5/o0;->k:Lc5/j1;

    .line 38
    .line 39
    check-cast p1, Ljava/util/Date;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    invoke-virtual {p2, v0, v1}, Lc5/j1;->g0(J)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lc5/o0;->n()Ljava/text/DateFormat;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    :try_start_0
    invoke-direct {p0, p2}, Lc5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    .line 58
    .line 59
    .line 60
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    const-string v0, "T"

    .line 63
    .line 64
    const-string v1, "\'T\'"

    .line 65
    .line 66
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-direct {p0, p2}, Lc5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p2, p0, Lc5/o0;->p:Ljava/lang/String;

    .line 76
    .line 77
    if-eqz p2, :cond_3

    .line 78
    .line 79
    invoke-direct {p0, p2}, Lc5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    sget-object p2, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 85
    .line 86
    invoke-direct {p0, p2}, Lc5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/Date;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p2, p0, Lc5/o0;->k:Lc5/j1;

    .line 97
    .line 98
    invoke-virtual {p2, p1}, Lc5/j1;->o0(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_5
    instance-of v0, p1, [B

    .line 103
    .line 104
    if-eqz v0, :cond_a

    .line 105
    .line 106
    check-cast p1, [B

    .line 107
    .line 108
    const-string v0, "gzip"

    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_8

    .line 115
    .line 116
    const-string v0, "gzip,base64"

    .line 117
    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_6

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    const-string v0, "hex"

    .line 126
    .line 127
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_7

    .line 132
    .line 133
    iget-object p2, p0, Lc5/o0;->k:Lc5/j1;

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Lc5/j1;->d0([B)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_7
    iget-object p2, p0, Lc5/o0;->k:Lc5/j1;

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Lc5/j1;->r([B)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_8
    :goto_1
    const/4 p2, 0x0

    .line 146
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .line 150
    .line 151
    array-length v1, p1

    .line 152
    const/16 v2, 0x200

    .line 153
    .line 154
    if-ge v1, v2, :cond_9

    .line 155
    .line 156
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 157
    .line 158
    array-length v2, p1

    .line 159
    invoke-direct {v1, v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 160
    .line 161
    .line 162
    :goto_2
    move-object p2, v1

    .line 163
    goto :goto_3

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    goto :goto_6

    .line 166
    :catch_1
    move-exception p1

    .line 167
    goto :goto_5

    .line 168
    :cond_9
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    .line 169
    .line 170
    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Lc5/j1;->r([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    invoke-static {p2}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    .line 190
    .line 191
    .line 192
    :goto_4
    return-void

    .line 193
    :goto_5
    :try_start_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 194
    .line 195
    const-string v1, "write gzipBytes error"

    .line 196
    .line 197
    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    .line 199
    .line 200
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :goto_6
    invoke-static {p2}, Lcom/alibaba/fastjson/util/f;->a(Ljava/io/Closeable;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_a
    instance-of v0, p1, Ljava/util/Collection;

    .line 206
    .line 207
    if-eqz v0, :cond_d

    .line 208
    .line 209
    check-cast p1, Ljava/util/Collection;

    .line 210
    .line 211
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    iget-object v1, p0, Lc5/o0;->k:Lc5/j1;

    .line 216
    .line 217
    const/16 v2, 0x5b

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Lc5/j1;->write(I)V

    .line 220
    .line 221
    .line 222
    const/4 v1, 0x0

    .line 223
    :goto_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-ge v1, v2, :cond_c

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    if-eqz v1, :cond_b

    .line 234
    .line 235
    iget-object v3, p0, Lc5/o0;->k:Lc5/j1;

    .line 236
    .line 237
    const/16 v4, 0x2c

    .line 238
    .line 239
    invoke-virtual {v3, v4}, Lc5/j1;->write(I)V

    .line 240
    .line 241
    .line 242
    :cond_b
    invoke-virtual {p0, v2, p2}, Lc5/o0;->G(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    add-int/lit8 v1, v1, 0x1

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_c
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 249
    .line 250
    const/16 p2, 0x5d

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Lc5/j1;->write(I)V

    .line 253
    .line 254
    .line 255
    return-void

    .line 256
    :cond_d
    invoke-virtual {p0, p1}, Lc5/o0;->A(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    return-void
.end method

.method public j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lc5/j1;->j(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lc5/e1;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-ne p1, v2, :cond_2

    .line 21
    .line 22
    return v1

    .line 23
    :cond_2
    iget-object p1, v0, Lc5/e1;->c:Ljava/lang/Object;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    instance-of v0, p1, Ljava/lang/Integer;

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    instance-of p1, p1, Ljava/lang/String;

    .line 32
    .line 33
    if-eqz p1, :cond_4

    .line 34
    .line 35
    :cond_3
    const/4 v1, 0x1

    .line 36
    :cond_4
    return v1
.end method

.method public l()V
    .locals 1

    .line 1
    iget v0, p0, Lc5/o0;->l:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lc5/o0;->l:I

    .line 6
    .line 7
    return-void
.end method

.method public n()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->o:Ljava/text/DateFormat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lc5/o0;->n:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lc5/o0;->m(Ljava/lang/String;)Ljava/text/DateFormat;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lc5/o0;->o:Ljava/text/DateFormat;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lc5/o0;->o:Ljava/text/DateFormat;

    .line 16
    .line 17
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lc5/o0;->o:Ljava/text/DateFormat;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lc5/o0;->n:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(Ljava/lang/Class;)Lc5/z0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->j:Lc5/g1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc5/g1;->h(Ljava/lang/Class;)Lc5/z0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public r()Lc5/j1;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1
    iget v0, p0, Lc5/o0;->l:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lc5/o0;->l:I

    .line 6
    .line 7
    return-void
.end method

.method public t(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lc5/j1;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final u(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lc5/o0;->k:Lc5/j1;

    .line 14
    .line 15
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lc5/j1;->o(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lc5/o0;->r:Lc5/e1;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p1, Lc5/e1;->a:Lc5/e1;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    :cond_0
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lc5/j1;->write(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget v1, p0, Lc5/o0;->l:I

    .line 10
    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lc5/o0;->k:Lc5/j1;

    .line 14
    .line 15
    iget-object v2, p0, Lc5/o0;->m:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lc5/j1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method public w(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lc5/o0;->x(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public x(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lc5/o0;->k:Lc5/j1;

    .line 2
    .line 3
    iget-boolean v0, v0, Lc5/j1;->h:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lc5/e1;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move-object v2, p1

    .line 12
    move-object v3, p2

    .line 13
    move-object v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    invoke-direct/range {v1 .. v6}, Lc5/e1;-><init>(Lc5/e1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lc5/o0;->r:Lc5/e1;

    .line 20
    .line 21
    iget-object p1, p0, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lc5/o0;->q:Ljava/util/IdentityHashMap;

    .line 33
    .line 34
    iget-object p3, p0, Lc5/o0;->r:Lc5/e1;

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc5/o0;->n:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lc5/o0;->o:Ljava/text/DateFormat;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lc5/o0;->o:Ljava/text/DateFormat;

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc5/o0;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
