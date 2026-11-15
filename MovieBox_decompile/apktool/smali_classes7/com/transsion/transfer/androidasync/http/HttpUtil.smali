.class public Lcom/transsion/transfer/androidasync/http/HttpUtil;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/transsion/transfer/androidasync/http/Headers;)J
    .locals 2

    .line 1
    const-string v0, "Content-Length"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-wide/16 v0, -0x1

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    return-wide v0
.end method

.method public static b(Lcom/transsion/transfer/androidasync/p;Lst/a;Lcom/transsion/transfer/androidasync/http/Headers;)Ltt/a;
    .locals 3

    .line 1
    const-string p0, "Content-Type"

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_5

    .line 8
    .line 9
    const-string p1, ";"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x0

    .line 16
    move v0, p2

    .line 17
    :goto_0
    array-length v1, p1

    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    aget-object v1, p1, v0

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    aput-object v1, p1, v0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    array-length v0, p1

    .line 32
    :goto_1
    if-ge p2, v0, :cond_5

    .line 33
    .line 34
    aget-object v1, p1, p2

    .line 35
    .line 36
    const-string v2, "application/x-www-form-urlencoded"

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    new-instance p0, Ltt/h;

    .line 45
    .line 46
    invoke-direct {p0}, Ltt/h;-><init>()V

    .line 47
    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_1
    const-string v2, "application/json"

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    new-instance p0, Ltt/b;

    .line 59
    .line 60
    invoke-direct {p0}, Ltt/b;-><init>()V

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_2
    const-string v2, "text/plain"

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    new-instance p0, Ltt/f;

    .line 73
    .line 74
    invoke-direct {p0}, Ltt/f;-><init>()V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_3
    if-eqz v1, :cond_4

    .line 79
    .line 80
    const-string v2, "multipart/"

    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_4

    .line 87
    .line 88
    new-instance p1, Ltt/c;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Ltt/c;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    const/4 p0, 0x0

    .line 98
    return-object p0
.end method

.method public static c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/http/Protocol;Lcom/transsion/transfer/androidasync/http/Headers;Z)Lcom/transsion/transfer/androidasync/p;
    .locals 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    :try_start_0
    const-string p1, "Content-Length"

    .line 4
    .line 5
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    :cond_0
    move-wide v2, v0

    .line 17
    :goto_0
    cmp-long p1, v0, v2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    const-wide/16 v4, 0x0

    .line 23
    .line 24
    cmp-long p1, v2, v4

    .line 25
    .line 26
    if-gez p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lcom/transsion/transfer/androidasync/http/BodyDecoderException;

    .line 33
    .line 34
    const-string p3, "not using chunked encoding, and no content-length found."

    .line 35
    .line 36
    invoke-direct {p2, p3}, Lcom/transsion/transfer/androidasync/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 44
    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_1
    if-nez p1, :cond_2

    .line 48
    .line 49
    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p1, v0}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Lvt/b;

    .line 62
    .line 63
    invoke-direct {p1, v2, v3}, Lvt/b;-><init>(J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    move-object p0, p1

    .line 70
    goto :goto_2

    .line 71
    :cond_3
    const-string p1, "Transfer-Encoding"

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const-string v1, "chunked"

    .line 78
    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    new-instance p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    if-eqz p3, :cond_5

    .line 95
    .line 96
    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1, v0}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 105
    .line 106
    .line 107
    return-object p1

    .line 108
    :cond_5
    :goto_2
    const-string p1, "Content-Encoding"

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    const-string v0, "gzip"

    .line 115
    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result p3

    .line 120
    if-eqz p3, :cond_6

    .line 121
    .line 122
    new-instance p1, Lvt/c;

    .line 123
    .line 124
    invoke-direct {p1}, Lvt/c;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 128
    .line 129
    .line 130
    :goto_3
    move-object p0, p1

    .line 131
    goto :goto_4

    .line 132
    :cond_6
    const-string p3, "deflate"

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    new-instance p1, Lvt/d;

    .line 145
    .line 146
    invoke-direct {p1}, Lvt/d;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_7
    :goto_4
    return-object p0
.end method

.method public static d(Lcom/transsion/transfer/androidasync/http/Protocol;Lcom/transsion/transfer/androidasync/http/Headers;)Z
    .locals 1

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 10
    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0

    .line 17
    :cond_1
    const-string p0, "keep-alive"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public static e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/Headers;)Z
    .locals 1

    .line 1
    const-string v0, "Connection"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    sget-object p1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    .line 14
    .line 15
    if-ne p0, p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0

    .line 21
    :cond_1
    const-string p0, "keep-alive"

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method
