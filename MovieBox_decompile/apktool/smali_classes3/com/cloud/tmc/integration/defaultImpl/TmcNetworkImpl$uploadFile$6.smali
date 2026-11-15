.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ZLcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6",
        "Lokhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lokhttp3/Response;",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

.field final synthetic $client:Lcom/tmc/network/HttpClient;

.field final synthetic $uploadInterceptor:Lokhttp3/Interceptor;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;


# direct methods
.method constructor <init>(Lcom/tmc/network/HttpClient;Lokhttp3/Interceptor;Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$client:Lcom/tmc/network/HttpClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$uploadInterceptor:Lokhttp3/Interceptor;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$url:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "e"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$client:Lcom/tmc/network/HttpClient;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tmc/network/HttpClient;->getConfig()Lcom/tmc/network/HttpClientConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/tmc/network/HttpClientConfig;->getInterceptors()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$uploadInterceptor:Lokhttp3/Interceptor;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$client:Lcom/tmc/network/HttpClient;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/tmc/network/HttpClient;->resetHttpClient()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$url:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "UploadFile fail,onFailure_"

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, ":U005"

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 62
    .line 63
    iget-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 64
    .line 65
    invoke-static {p2, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    const-string v3, "U005"

    .line 70
    .line 71
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$uploadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$client:Lcom/tmc/network/HttpClient;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/tmc/network/HttpClient;->getConfig()Lcom/tmc/network/HttpClientConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/tmc/network/HttpClientConfig;->getInterceptors()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$uploadInterceptor:Lokhttp3/Interceptor;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$client:Lcom/tmc/network/HttpClient;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/tmc/network/HttpClient;->resetHttpClient()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getUploadMap()Ljava/util/HashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getUploadMap()Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    const/16 v1, 0xc8

    .line 77
    .line 78
    if-eq v0, v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const/16 v1, 0xcc

    .line 85
    .line 86
    if-ne v0, v1, :cond_2

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$url:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v5, "UploadFile fail,response.code="

    .line 115
    .line 116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, ":"

    .line 123
    .line 124
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 135
    .line 136
    move-object v6, p1

    .line 137
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$uploadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catchall_0
    move-exception p2

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-eqz p2, :cond_4

    .line 148
    .line 149
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$url:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {v0, v1, p2, p1}, Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;->onFinish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :goto_1
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 162
    .line 163
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$url:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v3, "UploadFile fail,onResponse_"

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p2, ":U006"

    .line 179
    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    iget-object v5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$uploadFile$6;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;

    .line 188
    .line 189
    const-string v3, "U006"

    .line 190
    .line 191
    move-object v6, p1

    .line 192
    invoke-static/range {v1 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$uploadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IUploadCallback;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_2
    return-void
.end method
