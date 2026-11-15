.class public Lcom/squareup/okhttp/internal/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/e$c;,
        Lcom/squareup/okhttp/internal/e$b;,
        Lcom/squareup/okhttp/internal/e$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/squareup/okhttp/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/squareup/okhttp/internal/e;->e()Lcom/squareup/okhttp/internal/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/e;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static b(Ljava/util/List;)[B
    .locals 5

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/squareup/okhttp/Protocol;

    .line 18
    .line 19
    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    .line 20
    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {v3}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Lcom/squareup/okhttp/Protocol;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    .line 40
    .line 41
    .line 42
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method private static e()Lcom/squareup/okhttp/internal/e;
    .locals 14

    .line 1
    const-string v0, "org.eclipse.jetty.alpn.ALPN"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const-class v3, [B

    .line 6
    .line 7
    const-class v4, Ljava/net/Socket;

    .line 8
    .line 9
    const-class v5, Ljavax/net/ssl/SSLSocket;

    .line 10
    .line 11
    :try_start_0
    const-string v6, "com.android.org.conscrypt.OpenSSLSocketImpl"

    .line 12
    .line 13
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    :try_start_1
    const-string v6, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    .line 18
    .line 19
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    :goto_0
    new-instance v8, Lcom/squareup/okhttp/internal/d;

    .line 23
    .line 24
    const-string v6, "setUseSessionTickets"

    .line 25
    .line 26
    new-array v7, v1, [Ljava/lang/Class;

    .line 27
    .line 28
    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v9, v7, v2

    .line 31
    .line 32
    const/4 v9, 0x0

    .line 33
    invoke-direct {v8, v9, v6, v7}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    new-instance v6, Lcom/squareup/okhttp/internal/d;

    .line 37
    .line 38
    const-string v7, "setHostname"

    .line 39
    .line 40
    new-array v10, v1, [Ljava/lang/Class;

    .line 41
    .line 42
    const-class v11, Ljava/lang/String;

    .line 43
    .line 44
    aput-object v11, v10, v2

    .line 45
    .line 46
    invoke-direct {v6, v9, v7, v10}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 47
    .line 48
    .line 49
    :try_start_2
    const-string v7, "android.net.TrafficStats"

    .line 50
    .line 51
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const-string v10, "tagSocket"

    .line 56
    .line 57
    new-array v11, v1, [Ljava/lang/Class;

    .line 58
    .line 59
    aput-object v4, v11, v2

    .line 60
    .line 61
    invoke-virtual {v7, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v10
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    .line 65
    :try_start_3
    const-string v11, "untagSocket"

    .line 66
    .line 67
    new-array v12, v1, [Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v4, v12, v2

    .line 70
    .line 71
    invoke-virtual {v7, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    .line 75
    :try_start_4
    const-string v7, "android.net.Network"

    .line 76
    .line 77
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    new-instance v7, Lcom/squareup/okhttp/internal/d;

    .line 81
    .line 82
    const-string v11, "getAlpnSelectedProtocol"

    .line 83
    .line 84
    new-array v12, v2, [Ljava/lang/Class;

    .line 85
    .line 86
    invoke-direct {v7, v3, v11, v12}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1

    .line 87
    .line 88
    .line 89
    :try_start_5
    new-instance v11, Lcom/squareup/okhttp/internal/d;

    .line 90
    .line 91
    const-string v12, "setAlpnProtocols"

    .line 92
    .line 93
    new-array v13, v1, [Ljava/lang/Class;

    .line 94
    .line 95
    aput-object v3, v13, v2

    .line 96
    .line 97
    invoke-direct {v11, v9, v12, v13}, Lcom/squareup/okhttp/internal/d;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_2

    .line 98
    .line 99
    .line 100
    move-object v9, v11

    .line 101
    goto :goto_1

    .line 102
    :catch_1
    move-object v7, v9

    .line 103
    :catch_2
    :goto_1
    move-object v11, v4

    .line 104
    move-object v12, v7

    .line 105
    move-object v13, v9

    .line 106
    goto :goto_2

    .line 107
    :catch_3
    move-object v4, v9

    .line 108
    move-object v7, v4

    .line 109
    goto :goto_1

    .line 110
    :catch_4
    move-object v4, v9

    .line 111
    move-object v7, v4

    .line 112
    move-object v10, v7

    .line 113
    goto :goto_1

    .line 114
    :goto_2
    :try_start_6
    new-instance v3, Lcom/squareup/okhttp/internal/e$a;

    .line 115
    .line 116
    move-object v7, v3

    .line 117
    move-object v9, v6

    .line 118
    invoke-direct/range {v7 .. v13}, Lcom/squareup/okhttp/internal/e$a;-><init>(Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/d;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/squareup/okhttp/internal/d;Lcom/squareup/okhttp/internal/d;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 119
    .line 120
    .line 121
    return-object v3

    .line 122
    :catch_5
    :try_start_7
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v6, "$Provider"

    .line 135
    .line 136
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v7, "$ClientProvider"

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v0, "$ServerProvider"

    .line 177
    .line 178
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    move-result-object v12

    .line 189
    const-string v0, "put"

    .line 190
    .line 191
    const/4 v6, 0x2

    .line 192
    new-array v6, v6, [Ljava/lang/Class;

    .line 193
    .line 194
    aput-object v5, v6, v2

    .line 195
    .line 196
    aput-object v4, v6, v1

    .line 197
    .line 198
    invoke-virtual {v3, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    const-string v0, "get"

    .line 203
    .line 204
    new-array v4, v1, [Ljava/lang/Class;

    .line 205
    .line 206
    aput-object v5, v4, v2

    .line 207
    .line 208
    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    const-string v0, "remove"

    .line 213
    .line 214
    new-array v1, v1, [Ljava/lang/Class;

    .line 215
    .line 216
    aput-object v5, v1, v2

    .line 217
    .line 218
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    new-instance v0, Lcom/squareup/okhttp/internal/e$b;

    .line 223
    .line 224
    move-object v7, v0

    .line 225
    invoke-direct/range {v7 .. v12}, Lcom/squareup/okhttp/internal/e$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    .line 226
    .line 227
    .line 228
    return-object v0

    .line 229
    :catch_6
    new-instance v0, Lcom/squareup/okhttp/internal/e;

    .line 230
    .line 231
    invoke-direct {v0}, Lcom/squareup/okhttp/internal/e;-><init>()V

    .line 232
    .line 233
    .line 234
    return-object v0
.end method

.method public static f()Lcom/squareup/okhttp/internal/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/okhttp/internal/e;->a:Lcom/squareup/okhttp/internal/e;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "OkHttp"

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
