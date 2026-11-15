.class public final Lcom/transsion/subtitle/helper/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/subtitle/helper/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/subtitle/helper/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/subtitle/helper/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/subtitle/helper/b;->a:Lcom/transsion/subtitle/helper/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xe04

    .line 6
    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/16 v1, 0xf2e

    .line 10
    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const v1, 0x5fb1675

    .line 14
    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "in_id"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, "id"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v0, "zh"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const-string p1, "zh-cn"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_4
    const-string v0, "pt"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    const-string p1, "pt-pt"

    .line 53
    .line 54
    :goto_0
    return-object p1
.end method

.method private final c(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    .line 2
    .line 3
    const-string v1, "UTF-8"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x200

    .line 9
    .line 10
    new-array v1, v1, [C

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuffer;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 18
    .line 19
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    const/4 v5, -0x1

    .line 29
    if-eq v4, v5, :cond_0

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-virtual {v2, v1, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_5

    .line 38
    :catch_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    goto :goto_3

    .line 42
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 47
    .line 48
    .line 49
    :catch_2
    return-object v0

    .line 50
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    .line 52
    .line 53
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :catch_3
    :goto_4
    const/4 p1, 0x0

    .line 62
    return-object p1

    .line 63
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 64
    .line 65
    .line 66
    :catch_4
    throw v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "lan"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    sparse-switch v0, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :sswitch_0
    const-string v0, "zh-cn"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_0

    .line 24
    .line 25
    :cond_0
    const-string p1, "\u4e2d\u6587(\u7b80\u4f53)"

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :sswitch_1
    const-string v0, "pt-pt"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_1
    const-string p1, "Portugu\u00eas"

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :sswitch_2
    const-string v0, "fil"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    const-string p1, "Filipino"

    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :sswitch_3
    const-string v0, "ur"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_3
    const-string p1, "\u0627\u0631\u062f\u0648"

    .line 68
    .line 69
    goto/16 :goto_1

    .line 70
    .line 71
    :sswitch_4
    const-string v0, "sw"

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const-string p1, "Swahili"

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :sswitch_5
    const-string v0, "ru"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_5
    const-string p1, "\u0420\u0443\u0441\u0441\u043a\u0438\u0439"

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :sswitch_6
    const-string v0, "id"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    const-string p1, "Indonesia"

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :sswitch_7
    const-string v0, "hi"

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-nez p1, :cond_7

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_7
    const-string p1, "\u0939\u093f\u0928\u094d\u0926\u0940"

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :sswitch_8
    const-string v0, "fr"

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_8

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    const-string p1, "Fran\u00e7ais"

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :sswitch_9
    const-string v0, "en"

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_9

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_9
    const-string p1, "English"

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :sswitch_a
    const-string v0, "bn"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-nez p1, :cond_a

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_a
    const-string p1, "\u09ac\u09be\u0982\u09b2\u09be"

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :sswitch_b
    const-string v0, "ar"

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_b

    .line 162
    .line 163
    :goto_0
    const-string p1, ""

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_b
    const-string p1, "\u0639\u0631\u0628\u064a"

    .line 167
    .line 168
    :goto_1
    return-object p1

    .line 169
    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_b
        0xc4c -> :sswitch_a
        0xca9 -> :sswitch_9
        0xccc -> :sswitch_8
        0xd01 -> :sswitch_7
        0xd1b -> :sswitch_6
        0xe43 -> :sswitch_5
        0xe64 -> :sswitch_4
        0xe9d -> :sswitch_3
        0x18c09 -> :sswitch_2
        0x65fba6d -> :sswitch_1
        0x6e72f6a -> :sswitch_0
    .end sparse-switch
.end method

.method public final d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    const-string p2, "application/json"

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    const-string v1, "https://vip-api.opensubtitles.com/api/v1/download"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    :try_start_0
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 10
    .line 11
    sget-object v5, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    new-instance v7, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v8, "Subtitle new api download info start:"

    .line 23
    .line 24
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-virtual {v4, v6, v7, v3}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Ljava/net/URL;

    .line 41
    .line 42
    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-static {v6}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Ljava/net/URLConnection;

    .line 54
    .line 55
    const-string v7, "null cannot be cast to non-null type java.net.HttpURLConnection"

    .line 56
    .line 57
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast v6, Ljava/net/HttpURLConnection;

    .line 61
    .line 62
    const/16 v7, 0x3a98

    .line 63
    .line 64
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 68
    .line 69
    .line 70
    const-string v7, "POST"

    .line 71
    .line 72
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v7, "User-Agent"

    .line 76
    .line 77
    const-string v8, "player2024"

    .line 78
    .line 79
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v7, "Api-Key"

    .line 83
    .line 84
    const-string v8, "ZRN9QpqcTxje5UH3bV1RuugwitxkqB53"

    .line 85
    .line 86
    invoke-virtual {v6, v7, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v7, "Content-Type"

    .line 90
    .line 91
    invoke-virtual {v6, v7, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v7, "Accept"

    .line 95
    .line 96
    invoke-virtual {v6, v7, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/net/URLConnection;->getDoOutput()Z

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 103
    .line 104
    .line 105
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    new-instance v7, Ljava/io/OutputStreamWriter;

    .line 107
    .line 108
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-direct {v7, p2, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 111
    .line 112
    .line 113
    new-instance v8, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string v9, "{\"file_id\":"

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string p1, "}"

    .line 127
    .line 128
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v7, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V

    .line 139
    .line 140
    .line 141
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    .line 143
    :try_start_2
    invoke-static {p2, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    const-string p2, "getInputStream(...)"

    .line 151
    .line 152
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    const/16 v6, 0xc8

    .line 160
    .line 161
    if-ne p2, v6, :cond_0

    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-string v5, "Subtitle new api, download info success "

    .line 168
    .line 169
    invoke-virtual {v4, p2, v5, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    .line 171
    .line 172
    invoke-direct {p0, p1}, Lcom/transsion/subtitle/helper/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_0

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    goto :goto_1

    .line 179
    :cond_0
    invoke-virtual {v5}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string p2, "Subtitle new api download info fail "

    .line 184
    .line 185
    invoke-virtual {v4, p1, p2, v3}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    move-object p1, v2

    .line 189
    :goto_0
    const-class p2, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;

    .line 190
    .line 191
    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Lcom/transsion/subtitle/bean/OpenSubtitleDownloadInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .line 197
    move-object v2, p1

    .line 198
    goto :goto_3

    .line 199
    :catchall_1
    move-exception p1

    .line 200
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 201
    :catchall_2
    move-exception v4

    .line 202
    :try_start_4
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 203
    .line 204
    .line 205
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    :goto_1
    invoke-static {}, Lrc/e;->c()Lrc/e;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    const-string v4, "GET"

    .line 211
    .line 212
    invoke-virtual {p2, v1, v4}, Lrc/e;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    const-string v1, "newHttpMetric(...)"

    .line 217
    .line 218
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 222
    .line 223
    if-eqz v1, :cond_1

    .line 224
    .line 225
    const/16 v1, 0x57

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_1
    instance-of v1, p1, Ljava/net/ProtocolException;

    .line 229
    .line 230
    if-eqz v1, :cond_2

    .line 231
    .line 232
    const/16 v1, 0x56

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_2
    instance-of v1, p1, Ljava/io/IOException;

    .line 236
    .line 237
    if-eqz v1, :cond_3

    .line 238
    .line 239
    const/16 v1, 0x58

    .line 240
    .line 241
    goto :goto_2

    .line 242
    :cond_3
    instance-of v1, p1, Ljava/util/concurrent/TimeoutException;

    .line 243
    .line 244
    if-eqz v1, :cond_4

    .line 245
    .line 246
    const/16 v1, 0x55

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_4
    const/16 v1, 0x59

    .line 250
    .line 251
    :goto_2
    invoke-virtual {p2, v1}, Lcom/google/firebase/perf/metrics/h;->a(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    .line 256
    .line 257
    sget-object p2, Lwf/a;->a:Lwf/a$a;

    .line 258
    .line 259
    sget-object v1, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    .line 260
    .line 261
    invoke-virtual {v1}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v5, "Subtitle new api download info fail: "

    .line 271
    .line 272
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    invoke-virtual {p2, v1, p1, v3}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 286
    .line 287
    .line 288
    :goto_3
    return-object v2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    const-string p5, "GET"

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[\\\\/:#*?\"<>|&,]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/transsion/subtitle/helper/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string v0, "&languages="

    const-string v2, "https://vip-api.opensubtitles.com/api/v1/subtitles?query="

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&season_number="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&episode_number="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 7
    :try_start_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    sget-object v2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new api getSubtitleInfo url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, p4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/URLConnection;

    const-string v4, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/net/HttpURLConnection;

    const/16 v4, 0x3a98

    .line 9
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 11
    invoke-virtual {v3, p5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 12
    const-string v4, "User-Agent"

    const-string v5, "player2024"

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v4, "Api-Key"

    const-string v5, "ZRN9QpqcTxje5UH3bV1RuugwitxkqB53"

    invoke-virtual {v3, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 15
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "getInputStream(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Subtitle new api success "

    invoke-virtual {v0, v2, v3, p4}, Lwf/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 18
    invoke-direct {p0, v4}, Lcom/transsion/subtitle/helper/b;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 19
    :cond_1
    invoke-virtual {v2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Subtitle new api fail "

    invoke-virtual {v0, v2, v3, p4}, Lwf/a$a;->x(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, p3

    .line 20
    :goto_1
    const-class v2, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->getData()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/transsion/subtitle/bean/OpenSubtitleResponse;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    goto :goto_3

    .line 23
    :cond_3
    :goto_2
    const-string v0, "data is null"

    invoke-virtual {p0, p2, v0}, Lcom/transsion/subtitle/helper/b;->f(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return-object p3

    .line 24
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    move-object v1, v2

    :goto_5
    invoke-virtual {p0, p2, v1}, Lcom/transsion/subtitle/helper/b;->f(ILjava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    invoke-static {}, Lrc/e;->c()Lrc/e;

    move-result-object p2

    invoke-virtual {p2, p1, p5}, Lrc/e;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/metrics/h;

    move-result-object p1

    const-string p2, "newHttpMetric(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of p2, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_5

    const/16 p2, 0x57

    goto :goto_6

    .line 28
    :cond_5
    instance-of p2, v0, Ljava/net/ProtocolException;

    if-eqz p2, :cond_6

    const/16 p2, 0x56

    goto :goto_6

    .line 29
    :cond_6
    instance-of p2, v0, Ljava/io/IOException;

    if-eqz p2, :cond_7

    const/16 p2, 0x58

    goto :goto_6

    .line 30
    :cond_7
    instance-of p2, v0, Ljava/util/concurrent/TimeoutException;

    if-eqz p2, :cond_8

    const/16 p2, 0x55

    goto :goto_6

    :cond_8
    const/16 p2, 0x59

    .line 31
    :goto_6
    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/metrics/h;->a(I)V

    .line 32
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    sget-object p2, Lcom/transsion/baselib/report/a;->a:Lcom/transsion/baselib/report/a;

    invoke-virtual {p2}, Lcom/transsion/baselib/report/a;->a()Ljava/lang/String;

    move-result-object p2

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new api getSubtitleInfo FAIL :"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p2, p5, p4}, Lwf/a$a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p3
.end method

.method public final f(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "from"

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string p1, "error_msg"

    .line 21
    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 26
    .line 27
    const-string p2, "subtitle_search"

    .line 28
    .line 29
    const-string v1, "app_perf"

    .line 30
    .line 31
    invoke-virtual {p1, p2, v1, v0}, Lqi/h;->q(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
