.class public Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/transsion/infra/gateway/core/sercurity/c;


# direct methods
.method public constructor <init>(Lcom/transsion/infra/gateway/core/sercurity/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->a:Lcom/transsion/infra/gateway/core/sercurity/c;

    .line 5
    .line 6
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/net/URI;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_0

    .line 41
    .line 42
    const-string v1, "?"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    const-string p1, ""

    .line 60
    .line 61
    return-object p1
.end method

.method public static b(Lcom/transsion/infra/gateway/core/bean/RequestBean;)Ljava/lang/String;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 5
    .line 6
    const-string v1, "request bean is null"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getMethod()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 19
    .line 20
    const-string v1, "request method is null"

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 37
    .line 38
    const-string v1, "request url is null"

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "request key is null"

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_4

    .line 67
    .line 68
    sget-object p0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 69
    .line 70
    invoke-virtual {p0, v2}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-object v0

    .line 74
    :cond_4
    invoke-static {}, Lcom/transsion/infra/gateway/core/utils/a;->a()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/transsion/infra/gateway/core/utils/d;->a(Landroid/content/Context;)Lcom/transsion/infra/gateway/core/utils/d;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "time_offset"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/d;->b(Ljava/lang/String;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    add-long/2addr v2, v0

    .line 93
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKey()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/transsion/infra/gateway/core/sercurity/a;

    .line 102
    .line 103
    invoke-direct {v1, v0}, Lcom/transsion/infra/gateway/core/sercurity/a;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v4, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;

    .line 107
    .line 108
    invoke-direct {v4, v1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;-><init>(Lcom/transsion/infra/gateway/core/sercurity/c;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getMethod()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getAccept()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getContentType()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getUrl()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getBody()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getAlgorithm()Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;

    .line 136
    .line 137
    .line 138
    move-result-object v12

    .line 139
    move-wide v10, v2

    .line 140
    invoke-virtual/range {v4 .. v12}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v2, "|"

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/RequestBean;->getKey()Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p0}, Lcom/transsion/infra/gateway/core/bean/GatewaySignKey;->getKeyVersion()I

    .line 162
    .line 163
    .line 164
    move-result p0

    .line 165
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 179
    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "x-tr-signature: "

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    return-object p0
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    new-instance p1, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner$1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner$1;-><init>(Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    .line 39
    const-string v2, ""

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, "="

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "&"

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-lez v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/lit8 v0, v0, -0x1

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-object p1

    .line 100
    :catch_0
    const/4 p1, 0x0

    .line 101
    return-object p1
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v2, ""

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    int-to-long v5, v0

    .line 21
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const v7, 0x19000

    .line 29
    .line 30
    .line 31
    if-le v0, v7, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    move-object v8, p5

    .line 35
    invoke-virtual {p5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/transsion/infra/gateway/core/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v8, p5

    .line 47
    invoke-static {p5}, Lcom/transsion/infra/gateway/core/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception v0

    .line 53
    move-wide v5, v3

    .line 54
    :goto_0
    sget-object v7, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 55
    .line 56
    new-instance v8, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v9, "generateContent exception"

    .line 62
    .line 63
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v7, v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    move-object v0, v2

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 83
    .line 84
    const-string v5, "request body is null"

    .line 85
    .line 86
    invoke-virtual {v0, v5}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    move-object v0, v2

    .line 90
    move-wide v5, v3

    .line 91
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v7, "\n"

    .line 99
    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    if-nez p2, :cond_2

    .line 104
    .line 105
    move-object v8, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    move-object v8, p2

    .line 108
    :goto_2
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    if-nez p3, :cond_3

    .line 115
    .line 116
    move-object v8, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_3
    move-object v8, p3

    .line 119
    :goto_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    cmp-long v3, v5, v3

    .line 126
    .line 127
    if-nez v3, :cond_4

    .line 128
    .line 129
    move-object v3, v2

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-wide/from16 v3, p6

    .line 142
    .line 143
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-eqz v3, :cond_5

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_5
    move-object v2, v0

    .line 157
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    move-object v2, p0

    .line 164
    move-object v3, p4

    .line 165
    invoke-direct {p0, p4}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/transsion/infra/gateway/core/utils/c;->a:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v0, v3}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "&"

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    array-length v2, p1

    .line 15
    const/4 v3, 0x0

    .line 16
    move v4, v3

    .line 17
    :goto_0
    if-ge v4, v2, :cond_0

    .line 18
    .line 19
    aget-object v5, p1, v4

    .line 20
    .line 21
    const-string v6, "="

    .line 22
    .line 23
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    :try_start_0
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    invoke-static {v7, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    add-int/lit8 v6, v6, 0x1

    .line 36
    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {v5, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception v5

    .line 50
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0, v1}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->c(Ljava/util/Map;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method


# virtual methods
.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/transsion/infra/gateway/core/sercurity/HttpSigner;->a:Lcom/transsion/infra/gateway/core/sercurity/c;

    .line 6
    .line 7
    invoke-virtual {p2, p8, p1}, Lcom/transsion/infra/gateway/core/sercurity/c;->a(Lcom/transsion/infra/gateway/core/sercurity/SignAlgorithm;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
