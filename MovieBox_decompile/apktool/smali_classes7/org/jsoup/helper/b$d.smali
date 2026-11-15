.class public Lorg/jsoup/helper/b$d;
.super Lorg/jsoup/helper/b$b;
.source "source.java"

# interfaces
.implements Lorg/jsoup/Connection$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/helper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static o:Ljavax/net/ssl/SSLSocketFactory;

.field private static final p:Ljava/util/regex/Pattern;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/nio/ByteBuffer;

.field private h:Ljava/io/InputStream;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Lorg/jsoup/Connection$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "(application|text)/\\w*\\+?xml.*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jsoup/helper/b$d;->p:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jsoup/helper/b$b;-><init>(Lorg/jsoup/helper/b$a;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/jsoup/helper/b$d;->k:Z

    .line 3
    iput-boolean v0, p0, Lorg/jsoup/helper/b$d;->l:Z

    .line 4
    iput v0, p0, Lorg/jsoup/helper/b$d;->m:I

    return-void
.end method

.method private constructor <init>(Lorg/jsoup/helper/b$d;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v1}, Lorg/jsoup/helper/b$b;-><init>(Lorg/jsoup/helper/b$a;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->k:Z

    .line 7
    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->l:Z

    .line 8
    iput v1, p0, Lorg/jsoup/helper/b$d;->m:I

    if-eqz p1, :cond_1

    .line 9
    iget v2, p1, Lorg/jsoup/helper/b$d;->m:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/jsoup/helper/b$d;->m:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p1}, Lorg/jsoup/helper/b$d;->f()Ljava/net/URL;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "Too many redirects occurred trying to load URL %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method private static I(Lorg/jsoup/Connection$b;)Ljava/net/HttpURLConnection;
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->i()Ljava/net/Proxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/net/URLConnection;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->i()Ljava/net/Proxy;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/net/URLConnection;

    .line 39
    .line 40
    :goto_0
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 41
    .line 42
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->timeout()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->timeout()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    div-int/lit8 v1, v1, 0x2

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 71
    .line 72
    .line 73
    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 74
    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->g()Ljavax/net/ssl/SSLSocketFactory;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    move-object v2, v0

    .line 84
    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->e()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    invoke-static {}, Lorg/jsoup/helper/b$d;->O()V

    .line 97
    .line 98
    .line 99
    move-object v1, v0

    .line 100
    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 101
    .line 102
    sget-object v2, Lorg/jsoup/helper/b$d;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lorg/jsoup/helper/b$d;->M()Ljavax/net/ssl/HostnameVerifier;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 126
    .line 127
    .line 128
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->k()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-lez v1, :cond_4

    .line 137
    .line 138
    const-string v1, "Cookie"

    .line 139
    .line 140
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->N(Lorg/jsoup/Connection$b;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->u()Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_6

    .line 164
    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    check-cast v1, Ljava/util/Map$Entry;

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    check-cast v2, Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_5

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Ljava/lang/String;

    .line 192
    .line 193
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    check-cast v4, Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v0, v4, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_6
    return-object v0
.end method

.method private static J(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    if-nez v3, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    goto :goto_0
.end method

.method static K(Lorg/jsoup/Connection$b;)Lorg/jsoup/helper/b$d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/jsoup/helper/b$d;->L(Lorg/jsoup/Connection$b;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method static L(Lorg/jsoup/Connection$b;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;
    .locals 9

    .line 1
    const-string v0, "Content-Encoding"

    .line 2
    .line 3
    const-string v1, "Location"

    .line 4
    .line 5
    const-string v2, "Request must not be null"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "http"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    const-string v3, "https"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    .line 36
    .line 37
    const-string p1, "Only http & https protocols supported"

    .line 38
    .line 39
    invoke-direct {p0, p1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lorg/jsoup/Connection$Method;->hasBody()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->v()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    const/4 v4, 0x1

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    move v3, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const/4 v3, 0x0

    .line 61
    :goto_1
    if-nez v2, :cond_3

    .line 62
    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v6, "Cannot set a request body for HTTP method "

    .line 69
    .line 70
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-static {v3, v5}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    const/4 v6, 0x0

    .line 96
    if-lez v5, :cond_5

    .line 97
    .line 98
    if-eqz v2, :cond_4

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    :cond_4
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->R(Lorg/jsoup/Connection$b;)V

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->S(Lorg/jsoup/Connection$b;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    goto :goto_3

    .line 113
    :cond_6
    :goto_2
    move-object v2, v6

    .line 114
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v7

    .line 118
    invoke-static {p0}, Lorg/jsoup/helper/b$d;->I(Lorg/jsoup/Connection$b;)Ljava/net/HttpURLConnection;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/net/URLConnection;->getDoOutput()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    if-eqz v5, :cond_7

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-static {p0, v5, v2}, Lorg/jsoup/helper/b$d;->U(Lorg/jsoup/Connection$b;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :catch_0
    move-exception p0

    .line 140
    goto/16 :goto_a

    .line 141
    .line 142
    :cond_7
    :goto_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    new-instance v5, Lorg/jsoup/helper/b$d;

    .line 147
    .line 148
    invoke-direct {v5, p1}, Lorg/jsoup/helper/b$d;-><init>(Lorg/jsoup/helper/b$d;)V

    .line 149
    .line 150
    .line 151
    invoke-direct {v5, v3, p1}, Lorg/jsoup/helper/b$d;->T(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$c;)V

    .line 152
    .line 153
    .line 154
    iput-object p0, v5, Lorg/jsoup/helper/b$d;->n:Lorg/jsoup/Connection$b;

    .line 155
    .line 156
    invoke-virtual {v5, v1}, Lorg/jsoup/helper/b$d;->s(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_b

    .line 161
    .line 162
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->l()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    const/16 p1, 0x133

    .line 169
    .line 170
    if-eq v2, p1, :cond_8

    .line 171
    .line 172
    sget-object p1, Lorg/jsoup/Connection$Method;->GET:Lorg/jsoup/Connection$Method;

    .line 173
    .line 174
    invoke-interface {p0, p1}, Lorg/jsoup/Connection$a;->r(Lorg/jsoup/Connection$Method;)Lorg/jsoup/Connection$a;

    .line 175
    .line 176
    .line 177
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 182
    .line 183
    .line 184
    invoke-interface {p0, v6}, Lorg/jsoup/Connection$b;->d(Ljava/lang/String;)Lorg/jsoup/Connection$b;

    .line 185
    .line 186
    .line 187
    const-string p1, "Content-Type"

    .line 188
    .line 189
    invoke-interface {p0, p1}, Lorg/jsoup/Connection$a;->n(Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 190
    .line 191
    .line 192
    :cond_8
    invoke-virtual {v5, v1}, Lorg/jsoup/helper/b$d;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_9

    .line 197
    .line 198
    const-string v0, "http:/"

    .line 199
    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    if-eqz v0, :cond_9

    .line 205
    .line 206
    const/4 v0, 0x6

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    const/16 v2, 0x2f

    .line 212
    .line 213
    if-eq v1, v2, :cond_9

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    :cond_9
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v0, p1}, Lorg/jsoup/helper/c;->n(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {p1}, Lorg/jsoup/helper/b;->f(Ljava/net/URL;)Ljava/net/URL;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    invoke-interface {p0, p1}, Lorg/jsoup/Connection$a;->p(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 232
    .line 233
    .line 234
    iget-object p1, v5, Lorg/jsoup/helper/b$b;->d:Ljava/util/Map;

    .line 235
    .line 236
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_a

    .line 249
    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Ljava/lang/String;

    .line 261
    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Ljava/lang/String;

    .line 267
    .line 268
    invoke-interface {p0, v1, v0}, Lorg/jsoup/Connection$a;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :cond_a
    invoke-static {p0, v5}, Lorg/jsoup/helper/b$d;->L(Lorg/jsoup/Connection$b;Lorg/jsoup/helper/b$d;)Lorg/jsoup/helper/b$d;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :cond_b
    const/16 p1, 0xc8

    .line 278
    .line 279
    if-lt v2, p1, :cond_c

    .line 280
    .line 281
    const/16 p1, 0x190

    .line 282
    .line 283
    if-lt v2, p1, :cond_d

    .line 284
    .line 285
    :cond_c
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->b()Z

    .line 286
    .line 287
    .line 288
    move-result p1

    .line 289
    if-eqz p1, :cond_15

    .line 290
    .line 291
    :cond_d
    invoke-virtual {v5}, Lorg/jsoup/helper/b$d;->H()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    if-eqz p1, :cond_f

    .line 296
    .line 297
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->t()Z

    .line 298
    .line 299
    .line 300
    move-result v1

    .line 301
    if-nez v1, :cond_f

    .line 302
    .line 303
    const-string v1, "text/"

    .line 304
    .line 305
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_f

    .line 310
    .line 311
    sget-object v1, Lorg/jsoup/helper/b$d;->p:Ljava/util/regex/Pattern;

    .line 312
    .line 313
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-eqz v1, :cond_e

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_e
    new-instance v0, Lorg/jsoup/UnsupportedMimeTypeException;

    .line 325
    .line 326
    const-string v1, "Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml"

    .line 327
    .line 328
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    invoke-direct {v0, v1, p1, p0}, Lorg/jsoup/UnsupportedMimeTypeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    throw v0

    .line 340
    :cond_f
    :goto_6
    if-eqz p1, :cond_10

    .line 341
    .line 342
    sget-object v1, Lorg/jsoup/helper/b$d;->p:Ljava/util/regex/Pattern;

    .line 343
    .line 344
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_10

    .line 353
    .line 354
    instance-of p1, p0, Lorg/jsoup/helper/b$c;

    .line 355
    .line 356
    if-eqz p1, :cond_10

    .line 357
    .line 358
    move-object p1, p0

    .line 359
    check-cast p1, Lorg/jsoup/helper/b$c;

    .line 360
    .line 361
    invoke-static {p1}, Lorg/jsoup/helper/b$c;->H(Lorg/jsoup/helper/b$c;)Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-nez p1, :cond_10

    .line 366
    .line 367
    invoke-static {}, Lorg/jsoup/parser/e;->g()Lorg/jsoup/parser/e;

    .line 368
    .line 369
    .line 370
    move-result-object p1

    .line 371
    invoke-interface {p0, p1}, Lorg/jsoup/Connection$b;->o(Lorg/jsoup/parser/e;)Lorg/jsoup/Connection$b;

    .line 372
    .line 373
    .line 374
    :cond_10
    iget-object p1, v5, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    .line 375
    .line 376
    invoke-static {p1}, Lorg/jsoup/helper/a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p1

    .line 380
    iput-object p1, v5, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    .line 383
    .line 384
    .line 385
    move-result p1

    .line 386
    if-eqz p1, :cond_14

    .line 387
    .line 388
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->method()Lorg/jsoup/Connection$Method;

    .line 389
    .line 390
    .line 391
    move-result-object p1

    .line 392
    sget-object v1, Lorg/jsoup/Connection$Method;->HEAD:Lorg/jsoup/Connection$Method;

    .line 393
    .line 394
    if-eq p1, v1, :cond_14

    .line 395
    .line 396
    iput-object v6, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 397
    .line 398
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    if-eqz p1, :cond_11

    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    goto :goto_7

    .line 409
    :cond_11
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    :goto_7
    iput-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 414
    .line 415
    const-string p1, "gzip"

    .line 416
    .line 417
    invoke-virtual {v5, v0, p1}, Lorg/jsoup/helper/b$d;->C(Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    if-eqz p1, :cond_12

    .line 422
    .line 423
    new-instance p1, Ljava/util/zip/GZIPInputStream;

    .line 424
    .line 425
    iget-object v0, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 426
    .line 427
    invoke-direct {p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 428
    .line 429
    .line 430
    iput-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 431
    .line 432
    goto :goto_8

    .line 433
    :cond_12
    const-string p1, "deflate"

    .line 434
    .line 435
    invoke-virtual {v5, v0, p1}, Lorg/jsoup/helper/b$d;->C(Ljava/lang/String;Ljava/lang/String;)Z

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-eqz p1, :cond_13

    .line 440
    .line 441
    new-instance p1, Ljava/util/zip/InflaterInputStream;

    .line 442
    .line 443
    iget-object v0, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 444
    .line 445
    new-instance v1, Ljava/util/zip/Inflater;

    .line 446
    .line 447
    invoke-direct {v1, v4}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 448
    .line 449
    .line 450
    invoke-direct {p1, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 451
    .line 452
    .line 453
    iput-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 454
    .line 455
    :cond_13
    :goto_8
    iget-object p1, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 456
    .line 457
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->w()I

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    const v1, 0x8000

    .line 462
    .line 463
    .line 464
    invoke-static {p1, v1, v0}, Lsz/a;->j(Ljava/io/InputStream;II)Lsz/a;

    .line 465
    .line 466
    .line 467
    move-result-object p1

    .line 468
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->timeout()I

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    int-to-long v0, p0

    .line 473
    invoke-virtual {p1, v7, v8, v0, v1}, Lsz/a;->h(JJ)Lsz/a;

    .line 474
    .line 475
    .line 476
    move-result-object p0

    .line 477
    iput-object p0, v5, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 478
    .line 479
    goto :goto_9

    .line 480
    :cond_14
    invoke-static {}, Lorg/jsoup/helper/a;->b()Ljava/nio/ByteBuffer;

    .line 481
    .line 482
    .line 483
    move-result-object p0

    .line 484
    iput-object p0, v5, Lorg/jsoup/helper/b$d;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .line 486
    :goto_9
    iput-boolean v4, v5, Lorg/jsoup/helper/b$d;->k:Z

    .line 487
    .line 488
    return-object v5

    .line 489
    :cond_15
    :try_start_1
    new-instance p1, Lorg/jsoup/HttpStatusException;

    .line 490
    .line 491
    const-string v0, "HTTP error fetching URL"

    .line 492
    .line 493
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 494
    .line 495
    .line 496
    move-result-object p0

    .line 497
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object p0

    .line 501
    invoke-direct {p1, v0, v2, p0}, Lorg/jsoup/HttpStatusException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 505
    :goto_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 506
    .line 507
    .line 508
    throw p0
.end method

.method private static M()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/helper/b$d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jsoup/helper/b$d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static N(Lorg/jsoup/Connection$b;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lorg/jsoup/helper/c;->o()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->k()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const/4 v1, 0x1

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const-string v3, "; "

    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x3d

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0
.end method

.method private static declared-synchronized O()V
    .locals 5

    .line 1
    const-class v0, Lorg/jsoup/helper/b$d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/jsoup/helper/b$d;->o:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lorg/jsoup/helper/b$d$b;

    .line 9
    .line 10
    invoke-direct {v1}, Lorg/jsoup/helper/b$d$b;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    :try_start_1
    const-string v1, "SSL"

    .line 20
    .line 21
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Ljava/security/SecureRandom;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v1, v4, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lorg/jsoup/helper/b$d;->o:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    .line 44
    .line 45
    const-string v2, "Can\'t create unsecure trust manager"

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_0
    :goto_0
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    throw v1
.end method

.method private Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    :catch_0
    iput-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iput-object v1, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 14
    .line 15
    throw v0

    .line 16
    :cond_0
    :goto_0
    return-void
.end method

.method private static R(Lorg/jsoup/Connection$b;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$a;->f()Ljava/net/URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lorg/jsoup/helper/c;->o()Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, "://"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, "?"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_0
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    new-instance v0, Ljava/net/URL;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p0, v0}, Lorg/jsoup/Connection$a;->p(Ljava/net/URL;)Lorg/jsoup/Connection$a;

    .line 77
    .line 78
    .line 79
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    throw p0
.end method

.method private static S(Lorg/jsoup/Connection$b;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "Content-Type"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lorg/jsoup/Connection$a;->s(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0}, Lorg/jsoup/helper/b;->c(Lorg/jsoup/Connection$b;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lorg/jsoup/helper/a;->d()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "multipart/form-data; boundary="

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {p0, v0, v2}, Lorg/jsoup/Connection$a;->q(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "application/x-www-form-urlencoded; charset="

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->c()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {p0, v0, v1}, Lorg/jsoup/Connection$a;->q(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 63
    .line 64
    .line 65
    :goto_0
    const/4 v1, 0x0

    .line 66
    :goto_1
    return-object v1
.end method

.method private T(Ljava/net/HttpURLConnection;Lorg/jsoup/Connection$c;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/jsoup/Connection$Method;->valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/jsoup/helper/b$b;->b:Lorg/jsoup/Connection$Method;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/jsoup/helper/b$b;->a:Ljava/net/URL;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lorg/jsoup/helper/b$d;->e:I

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/jsoup/helper/b$d;->f:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p1}, Lorg/jsoup/helper/b$d;->J(Ljava/net/HttpURLConnection;)Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lorg/jsoup/helper/b$d;->P(Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    if-eqz p2, :cond_1

    .line 43
    .line 44
    invoke-interface {p2}, Lorg/jsoup/Connection$a;->k()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lorg/jsoup/helper/b$d;->B(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    .line 80
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {p0, v0, p2}, Lorg/jsoup/helper/b$b;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private static U(Lorg/jsoup/Connection$b;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->j()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/io/BufferedWriter;

    .line 6
    .line 7
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 8
    .line 9
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v2, "--"

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string p0, "\r\n"

    .line 58
    .line 59
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p0, "Content-Disposition: form-data; name=\""

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_1
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->v()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-eqz p2, :cond_2

    .line 73
    .line 74
    invoke-interface {p0}, Lorg/jsoup/Connection$b;->v()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-nez p2, :cond_3

    .line 91
    .line 92
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-static {p0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    throw p1
.end method


# virtual methods
.method public bridge synthetic B(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->B(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic C(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jsoup/helper/b$b;->C(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic D(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->D(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic E(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->E(Ljava/lang/String;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method P(Ljava/util/Map;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/List;

    .line 35
    .line 36
    const-string v2, "Set-Cookie"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Ljava/lang/String;

    .line 59
    .line 60
    if-nez v3, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    new-instance v4, Lorg/jsoup/parser/g;

    .line 64
    .line 65
    invoke-direct {v4, v3}, Lorg/jsoup/parser/g;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v3, "="

    .line 69
    .line 70
    invoke-virtual {v4, v3}, Lorg/jsoup/parser/g;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v5, ";"

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Lorg/jsoup/parser/g;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-lez v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {p0, v3, v4}, Lorg/jsoup/helper/b$b;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {p0, v1, v2}, Lorg/jsoup/helper/b$b;->y(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/Connection$a;

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_5
    return-void
.end method

.method public bridge synthetic f()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/helper/b$b;->f()Ljava/net/URL;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic k()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jsoup/helper/b$b;->k()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m()Lorg/jsoup/nodes/Document;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/helper/b$d;->k:Z

    .line 2
    .line 3
    const-string v1, "Request must be executed (with .execute(), .get(), or .post() before parsing response"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->g:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 13
    .line 14
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->g:Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lorg/jsoup/helper/b$d;->l:Z

    .line 27
    .line 28
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/helper/b$d;->l:Z

    .line 29
    .line 30
    const-string v1, "Input stream already read and parsed, cannot re-read."

    .line 31
    .line 32
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->c(ZLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lorg/jsoup/helper/b$d;->h:Ljava/io/InputStream;

    .line 36
    .line 37
    iget-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v2, p0, Lorg/jsoup/helper/b$b;->a:Ljava/net/URL;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object v3, p0, Lorg/jsoup/helper/b$d;->n:Lorg/jsoup/Connection$b;

    .line 46
    .line 47
    invoke-interface {v3}, Lorg/jsoup/Connection$b;->x()Lorg/jsoup/parser/e;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v0, v1, v2, v3}, Lorg/jsoup/helper/a;->e(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/nodes/Document;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->g1()Lorg/jsoup/nodes/Document$OutputSettings;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->a()Ljava/nio/charset/Charset;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iput-object v1, p0, Lorg/jsoup/helper/b$d;->i:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    iput-boolean v1, p0, Lorg/jsoup/helper/b$d;->l:Z

    .line 71
    .line 72
    invoke-direct {p0}, Lorg/jsoup/helper/b$d;->Q()V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public bridge synthetic s(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/helper/b$b;->s(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
