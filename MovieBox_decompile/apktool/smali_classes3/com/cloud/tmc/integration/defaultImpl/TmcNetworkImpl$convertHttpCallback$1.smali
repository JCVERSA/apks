.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/tmc/network/INetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->convertHttpCallback(Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)Lcom/tmc/network/INetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1",
        "Lcom/tmc/network/INetworkCallback;",
        "onFailure",
        "",
        "call",
        "Lokhttp3/Call;",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Http Request Fail,onFailure_"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p2, ":R004"

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 33
    .line 34
    invoke-static {v2, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v2, "R004"

    .line 39
    .line 40
    invoke-static {v0, v2, p2, v1, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$requestFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 9

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
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0xc8

    .line 16
    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;

    .line 28
    .line 29
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    sget-object v0, Lokhttp3/Cookie;->Companion:Lokhttp3/Cookie$Companion;

    .line 34
    .line 35
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v0, v3, v5}, Lokhttp3/Cookie$Companion;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lokhttp3/Headers;->names()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Ljava/lang/Iterable;

    .line 60
    .line 61
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    const/16 v7, 0xa

    .line 64
    .line 65
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-static {v7}, Lkotlin/collections/MapsKt;->e(I)I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/16 v8, 0x10

    .line 74
    .line 75
    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 76
    .line 77
    .line 78
    move-result v7

    .line 79
    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_0

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    move-object v8, v7

    .line 97
    check-cast v8, Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v8}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p2

    .line 108
    goto :goto_1

    .line 109
    :cond_0
    invoke-static {v1, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_1

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getRequestMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getRequestMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    :cond_1
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-interface/range {v2 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;->onSuccess(ILjava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 149
    .line 150
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v4, "Http Request Fail,response.code="

    .line 172
    .line 173
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, ":"

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;

    .line 192
    .line 193
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 194
    .line 195
    invoke-static {v3, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    invoke-static {v0, v1, p2, v2, v3}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$requestFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 204
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v2, "Http Request Fail,onResponse_"

    .line 211
    .line 212
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string p2, ":R005"

    .line 219
    .line 220
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->$callback:Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;

    .line 228
    .line 229
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$convertHttpCallback$1;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 230
    .line 231
    invoke-static {v2, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    const-string v2, "R005"

    .line 236
    .line 237
    invoke-static {v0, v2, p2, v1, p1}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$requestFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_3
    :goto_2
    return-void
.end method
