.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;


# direct methods
.method constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->l(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->g(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->k(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->i(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->h(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->j(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final g(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x3ec

    .line 14
    .line 15
    const-string v1, "request failure"

    .line 16
    .line 17
    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private static final h(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x3e8

    .line 14
    .line 15
    const-string v1, "data is null"

    .line 16
    .line 17
    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private static final i(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V
    .locals 7

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$dataJsonObject"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getStore()Lcom/cloud/config/AbsConfigStore;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigListener()Lcom/cloud/config/r;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getRequestUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v2, p1

    .line 32
    invoke-static/range {v1 .. v6}, Lcom/cloud/config/AbsConfigStore;->access$onLoadFromService(Lcom/cloud/config/AbsConfigStore;Lcom/google/gson/JsonObject;Lcom/cloud/config/r;Lcom/cloud/config/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private static final j(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$message"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v0, 0x3e9

    .line 19
    .line 20
    invoke-interface {p0, v0, p1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private static final k(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x3ea

    .line 14
    .line 15
    const-string v1, "gateway failure"

    .line 16
    .line 17
    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private static final l(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;->getConfigResultListener()Lcom/cloud/config/s;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x3eb

    .line 14
    .line 15
    const-string v1, "try catch exception"

    .line 16
    .line 17
    invoke-interface {p0, v0, v1}, Lcom/cloud/config/s;->onLoadDataFailure(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "e"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "getStackTraceString(e)"

    .line 22
    .line 23
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "config"

    .line 27
    .line 28
    invoke-virtual {p1, v0, p2}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/config/l;

    .line 38
    .line 39
    invoke-direct {v0, p2}, Lcom/cloud/config/l;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    const-string v2, "code"

    .line 6
    .line 7
    const-string v3, "config"

    .line 8
    .line 9
    const-string v4, "call"

    .line 10
    .line 11
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string p1, "response"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    .line 28
    .line 29
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget-object v4, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "response --> "

    .line 47
    .line 48
    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v5, v3, v6}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string v5, "responseStr"

    .line 56
    .line 57
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    const/4 v6, 0x2

    .line 62
    const/4 v7, 0x0

    .line 63
    invoke-static {p2, v2, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    if-eqz v8, :cond_6

    .line 68
    .line 69
    invoke-static {p2, v1, v7, v6, v5}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_6

    .line 74
    .line 75
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    const-string v5, "parseString(responseStr).asJsonObject"

    .line 84
    .line 85
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_3

    .line 97
    .line 98
    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    const-string v0, "jsonObject.get(\"data\").toString()"

    .line 107
    .line 108
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_1

    .line 116
    .line 117
    return-void

    .line 118
    :cond_1
    const-string v0, "{}"

    .line 119
    .line 120
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    new-instance v0, Lcom/cloud/config/m;

    .line 131
    .line 132
    invoke-direct {v0, p1}, Lcom/cloud/config/m;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 133
    .line 134
    .line 135
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    invoke-static {p2}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v0, "parseString(dataStr).asJsonObject"

    .line 150
    .line 151
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->io()Ljava/util/concurrent/ExecutorService;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Lcom/cloud/config/n;

    .line 159
    .line 160
    invoke-direct {v1, p1, p2}, Lcom/cloud/config/n;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Lcom/google/gson/JsonObject;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 168
    .line 169
    .line 170
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    const-string v1, "code isn\'t 0"

    .line 172
    .line 173
    if-nez p2, :cond_4

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    :try_start_1
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    if-nez p2, :cond_5

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_5
    move-object v1, p2

    .line 184
    :goto_0
    invoke-virtual {v4}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {p2, v3, v0}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    new-instance v0, Lcom/cloud/config/o;

    .line 200
    .line 201
    invoke-direct {v0, p1, v1}, Lcom/cloud/config/o;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_6
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    new-instance v0, Lcom/cloud/config/p;

    .line 213
    .line 214
    invoke-direct {v0, p1}, Lcom/cloud/config/p;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 215
    .line 216
    .line 217
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :goto_1
    sget-object p2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 222
    .line 223
    invoke-virtual {p2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const-string v0, "getStackTraceString(e)"

    .line 232
    .line 233
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p2, v3, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt$a;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;

    .line 244
    .line 245
    new-instance v0, Lcom/cloud/config/q;

    .line 246
    .line 247
    invoke-direct {v0, p2}, Lcom/cloud/config/q;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableShunt;)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 251
    .line 252
    .line 253
    :goto_2
    return-void
.end method
