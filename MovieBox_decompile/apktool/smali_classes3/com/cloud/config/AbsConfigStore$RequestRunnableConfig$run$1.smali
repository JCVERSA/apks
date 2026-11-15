.class public final Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;


# direct methods
.method constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->c(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->d(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigResultListener()Lcom/cloud/config/s;

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

.method private static final d(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigResultListener()Lcom/cloud/config/s;

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
    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    .line 36
    .line 37
    new-instance v0, Lcom/cloud/config/e;

    .line 38
    .line 39
    invoke-direct {v0, p2}, Lcom/cloud/config/e;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

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
    .locals 11

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    const-string v1, "call"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string p1, "response"

    .line 9
    .line 10
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    goto/16 :goto_4

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    .line 22
    .line 23
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v1}, Lcom/cloud/config/AbsConfigStore;->access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    move-object v2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-static {v2}, Lcom/cloud/config/utils/ConstantsKt;->toStoreConfigName(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :goto_0
    invoke-virtual {v1, v2, p2}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/cloud/config/AbsConfigStore;->access$getStorageKV(Lcom/cloud/config/AbsConfigStore;)Lcom/tencent/mmkv/MMKV;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    move-object v2, v3

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-static {v2}, Lcom/cloud/config/utils/ConstantsKt;->toStoreMd5Name(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getContentMd5()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v1, v2, v4}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "response --> "

    .line 92
    .line 93
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->q(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v0, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/google/gson/Gson;

    .line 101
    .line 102
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 103
    .line 104
    .line 105
    new-instance v2, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1$onResponse$1$responseResult$1;

    .line 106
    .line 107
    invoke-direct {v2}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1$onResponse$1$responseResult$1;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v1, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    check-cast p2, Lcom/cloud/config/bean/CloudConfigResponse;

    .line 119
    .line 120
    if-nez p2, :cond_3

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    invoke-virtual {p2}, Lcom/cloud/config/bean/CloudConfigResponse;->getConditionInfo()Lcom/cloud/config/bean/ConditionInfo;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-nez v1, :cond_4

    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {v1}, Lcom/cloud/config/bean/ConditionInfo;->getMatchCacheUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    if-nez v5, :cond_5

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_5
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-virtual {p2}, Lcom/cloud/config/bean/CloudConfigResponse;->getConditionInfo()Lcom/cloud/config/bean/ConditionInfo;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {p2}, Lcom/cloud/config/bean/ConditionInfo;->get_conditionParam()Lcom/cloud/config/bean/ConditionParam;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    if-nez p2, :cond_6

    .line 150
    .line 151
    :goto_2
    move-object v6, v3

    .line 152
    goto :goto_3

    .line 153
    :cond_6
    invoke-virtual {p2}, Lcom/cloud/config/bean/ConditionParam;->getShuntInfo()Lcom/cloud/config/bean/ShuntInfo;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    goto :goto_2

    .line 158
    :goto_3
    invoke-static {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->access$getPackageName$p(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getStore()Lcom/cloud/config/AbsConfigStore;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigListener()Lcom/cloud/config/r;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;->getConfigResultListener()Lcom/cloud/config/s;

    .line 170
    .line 171
    .line 172
    move-result-object v10

    .line 173
    const/4 v9, 0x0

    .line 174
    invoke-static/range {v4 .. v10}, Lcom/cloud/config/AbsConfigStore;->access$prepareRequestConfigData(Lcom/cloud/config/AbsConfigStore;Ljava/lang/String;Lcom/cloud/config/bean/ShuntInfo;Ljava/lang/String;Lcom/cloud/config/AbsConfigStore;Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catchall_0
    move-exception p1

    .line 179
    sget-object p2, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    const-string v1, "getStackTraceString(e)"

    .line 190
    .line 191
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v0, p1}, Lcom/cloud/config/utils/XLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/cloud/config/utils/ExecutorUtils;->main()Ljava/util/concurrent/ExecutorService;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget-object p2, p0, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig$run$1;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;

    .line 202
    .line 203
    new-instance v0, Lcom/cloud/config/f;

    .line 204
    .line 205
    invoke-direct {v0, p2}, Lcom/cloud/config/f;-><init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfig;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    :goto_4
    return-void
.end method
