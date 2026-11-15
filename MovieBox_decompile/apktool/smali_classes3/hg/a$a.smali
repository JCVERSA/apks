.class public final Lhg/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhg/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/tn/lib/net/exception/ApiException;
    .locals 4

    .line 1
    instance-of v0, p1, Lretrofit2/HttpException;

    .line 2
    .line 3
    const-string v1, "Oops\uff0csomething went wrong"

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Lretrofit2/HttpException;

    .line 9
    .line 10
    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/j0;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lretrofit2/j0;->d()Lokhttp3/ResponseBody;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    const-class v3, Lcom/tn/lib/net/bean/BaseDto;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/o;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/tn/lib/net/bean/BaseDto;

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    new-instance v1, Lcom/tn/lib/net/exception/ApiException;

    .line 39
    .line 40
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0}, Lretrofit2/HttpException;->message()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, p1, v2, v0}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/tn/lib/net/bean/BaseDto;->setMsg(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    new-instance v1, Lcom/tn/lib/net/exception/ApiException;

    .line 71
    .line 72
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v2}, Lcom/tn/lib/net/bean/BaseDto;->getMsg()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {v1, p1, v0, v2}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto/16 :goto_3

    .line 88
    .line 89
    :cond_3
    instance-of v0, p1, Lcom/tn/lib/net/exception/ServerException;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    new-instance v1, Lcom/tn/lib/net/exception/ApiException;

    .line 94
    .line 95
    move-object v0, p1

    .line 96
    check-cast v0, Lcom/tn/lib/net/exception/ServerException;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/tn/lib/net/exception/ServerException;->getErrCode()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0}, Lcom/tn/lib/net/exception/ServerException;->getErrMsg()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-direct {v1, p1, v2, v0}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_3

    .line 110
    .line 111
    :cond_4
    instance-of v0, p1, Lcom/google/gson/JsonParseException;

    .line 112
    .line 113
    if-nez v0, :cond_a

    .line 114
    .line 115
    instance-of v0, p1, Lorg/json/JSONException;

    .line 116
    .line 117
    if-nez v0, :cond_a

    .line 118
    .line 119
    instance-of v0, p1, Landroid/net/ParseException;

    .line 120
    .line 121
    if-nez v0, :cond_a

    .line 122
    .line 123
    instance-of v0, p1, Landroid/util/MalformedJsonException;

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    instance-of v0, p1, Ljava/net/ConnectException;

    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    .line 133
    .line 134
    invoke-static {}, Lhg/a;->a()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :goto_1
    move-object v1, v0

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 148
    .line 149
    if-eqz v0, :cond_7

    .line 150
    .line 151
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    .line 152
    .line 153
    invoke-static {}, Lhg/a;->c()I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_7
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 166
    .line 167
    if-eqz v0, :cond_8

    .line 168
    .line 169
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    .line 170
    .line 171
    invoke-static {}, Lhg/a;->a()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_8
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    .line 184
    .line 185
    if-eqz p1, :cond_9

    .line 186
    .line 187
    invoke-static {}, Lhg/a;->d()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    .line 200
    .line 201
    const-string v0, "\u672a\u77e5\u5f02\u5e38"

    .line 202
    .line 203
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p1

    .line 207
    :cond_a
    :goto_2
    new-instance v0, Lcom/tn/lib/net/exception/ApiException;

    .line 208
    .line 209
    invoke-static {}, Lhg/a;->b()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-direct {v0, p1, v2, v1}, Lcom/tn/lib/net/exception/ApiException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :goto_3
    return-object v1
.end method
