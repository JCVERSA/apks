.class public final Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->downloadPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;)V
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
        "com/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

.field final synthetic $callbackId:Ljava/lang/String;

.field final synthetic $downloadPath:Ljava/lang/String;

.field final synthetic $downloadUrl:Ljava/lang/String;

.field final synthetic $headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;


# direct methods
.method constructor <init>(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadPath:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 8

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
    invoke-interface {p1}, Lokhttp3/Call;->isCanceled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const-string v1, ":D006"

    .line 16
    .line 17
    const-string v2, "Download Fail,onFailure_"

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "Canceled"

    .line 26
    .line 27
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    const-string v2, "D006"

    .line 67
    .line 68
    move-object v1, v3

    .line 69
    move-object v3, v5

    .line 70
    move-object v4, p2

    .line 71
    move-object v5, v6

    .line 72
    move-object v6, v7

    .line 73
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 78
    .line 79
    iget-object v3, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 80
    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    iget-object v6, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 100
    .line 101
    iget-object v1, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 102
    .line 103
    iget-object v2, p0, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    .line 104
    .line 105
    invoke-static {v1, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    const-string v2, "D006"

    .line 110
    .line 111
    move-object v1, v3

    .line 112
    move-object v3, v5

    .line 113
    move-object v4, p2

    .line 114
    move-object v5, v6

    .line 115
    move-object v6, v7

    .line 116
    invoke-static/range {v0 .. v6}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadCancel(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "call"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "response"

    .line 11
    .line 12
    move-object/from16 v3, p2

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x800

    .line 18
    .line 19
    new-array v2, v2, [B

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    move-object v15, v4

    .line 35
    goto/16 :goto_b

    .line 36
    .line 37
    :cond_0
    move-object v6, v4

    .line 38
    :goto_0
    iget-object v7, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 39
    .line 40
    instance-of v8, v7, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;

    .line 41
    .line 42
    if-eqz v8, :cond_4

    .line 43
    .line 44
    check-cast v7, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;

    .line 45
    .line 46
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v7, v3}, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;->responseHeader(Lokhttp3/Headers;)Z

    .line 51
    .line 52
    .line 53
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const-string v7, "Download Fail,onFailure_"

    .line 55
    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    :try_start_1
    new-instance v12, Ljava/io/IOException;

    .line 59
    .line 60
    const-string v0, "responseHeader not allowed go on"

    .line 61
    .line 62
    invoke-direct {v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 66
    .line 67
    iget-object v9, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 68
    .line 69
    const-string v10, "D008"

    .line 70
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ":D008"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    iget-object v13, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 92
    .line 93
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 94
    .line 95
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    .line 96
    .line 97
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    invoke-static/range {v8 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    .line 104
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_1

    .line 111
    .line 112
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 119
    .line 120
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_1

    .line 125
    .line 126
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    :cond_1
    return-void

    .line 142
    :cond_2
    :try_start_2
    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 143
    .line 144
    check-cast v3, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;

    .line 145
    .line 146
    invoke-interface {v3, v6}, Lcom/cloud/tmc/kernel/proxy/network/OnFileDownloadCallback;->contentType(Lokhttp3/MediaType;)Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_4

    .line 151
    .line 152
    new-instance v12, Ljava/io/IOException;

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, " not supported!"

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {v12, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 175
    .line 176
    iget-object v9, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 177
    .line 178
    const-string v10, "D009"

    .line 179
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v2, ":D009"

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    iget-object v13, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 201
    .line 202
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 203
    .line 204
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    .line 205
    .line 206
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v14

    .line 210
    invoke-static/range {v8 .. v14}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    .line 212
    .line 213
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 214
    .line 215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-nez v0, :cond_3

    .line 220
    .line 221
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 228
    .line 229
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-eqz v0, :cond_3

    .line 234
    .line 235
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 236
    .line 237
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 242
    .line 243
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    :cond_3
    return-void

    .line 251
    :cond_4
    if-eqz v5, :cond_5

    .line 252
    .line 253
    :try_start_3
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    .line 254
    .line 255
    .line 256
    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    goto :goto_1

    .line 258
    :cond_5
    move-object v3, v4

    .line 259
    :goto_1
    if-eqz v5, :cond_6

    .line 260
    .line 261
    :try_start_4
    invoke-virtual {v5}, Lokhttp3/ResponseBody;->contentLength()J

    .line 262
    .line 263
    .line 264
    move-result-wide v5

    .line 265
    goto :goto_3

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    move-object v15, v4

    .line 268
    :goto_2
    move-object v4, v3

    .line 269
    goto/16 :goto_b

    .line 270
    .line 271
    :cond_6
    const-wide/16 v5, 0x1

    .line 272
    .line 273
    :goto_3
    new-instance v7, Ljava/io/File;

    .line 274
    .line 275
    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadPath:Ljava/lang/String;

    .line 276
    .line 277
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-eqz v8, :cond_7

    .line 285
    .line 286
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 287
    .line 288
    .line 289
    :cond_7
    new-instance v15, Ljava/io/FileOutputStream;

    .line 290
    .line 291
    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 292
    .line 293
    .line 294
    const/4 v13, 0x0

    .line 295
    move v7, v13

    .line 296
    :goto_4
    if-eqz v3, :cond_8

    .line 297
    .line 298
    :try_start_5
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    .line 299
    .line 300
    .line 301
    move-result v8

    .line 302
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    goto :goto_5

    .line 307
    :catchall_2
    move-exception v0

    .line 308
    goto :goto_2

    .line 309
    :cond_8
    move-object v8, v4

    .line 310
    :goto_5
    if-eqz v8, :cond_9

    .line 311
    .line 312
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    goto :goto_6

    .line 317
    :cond_9
    move v9, v13

    .line 318
    :goto_6
    if-nez v8, :cond_a

    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_a
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v8

    .line 325
    const/4 v10, -0x1

    .line 326
    if-eq v8, v10, :cond_d

    .line 327
    .line 328
    :goto_7
    invoke-virtual {v15, v2, v13, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 329
    .line 330
    .line 331
    add-int v14, v7, v9

    .line 332
    .line 333
    int-to-float v7, v14

    .line 334
    const/high16 v8, 0x3f800000    # 1.0f

    .line 335
    .line 336
    mul-float/2addr v7, v8

    .line 337
    long-to-float v8, v5

    .line 338
    div-float/2addr v7, v8

    .line 339
    const/16 v8, 0x64

    .line 340
    .line 341
    int-to-float v8, v8

    .line 342
    mul-float/2addr v7, v8

    .line 343
    float-to-int v9, v7

    .line 344
    iget-object v7, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 345
    .line 346
    if-eqz v7, :cond_b

    .line 347
    .line 348
    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 349
    .line 350
    iget-object v10, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 351
    .line 352
    invoke-static {v10, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v10

    .line 356
    invoke-interface {v7, v8, v9, v10}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onProgress(Ljava/lang/String;ILjava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_b
    iget-object v7, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 360
    .line 361
    if-eqz v7, :cond_c

    .line 362
    .line 363
    iget-object v8, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 364
    .line 365
    iget-object v10, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 366
    .line 367
    invoke-static {v10, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v10

    .line 371
    int-to-long v11, v14

    .line 372
    move/from16 v17, v13

    .line 373
    .line 374
    move/from16 v16, v14

    .line 375
    .line 376
    move-wide v13, v5

    .line 377
    invoke-interface/range {v7 .. v14}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->progressUpdate(Ljava/lang/String;ILjava/lang/String;JJ)V

    .line 378
    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_c
    move/from16 v17, v13

    .line 382
    .line 383
    move/from16 v16, v14

    .line 384
    .line 385
    :goto_8
    move/from16 v7, v16

    .line 386
    .line 387
    move/from16 v13, v17

    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_d
    invoke-virtual {v15}, Ljava/io/OutputStream;->flush()V

    .line 391
    .line 392
    .line 393
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 394
    .line 395
    if-eqz v2, :cond_e

    .line 396
    .line 397
    iget-object v4, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v5, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 400
    .line 401
    invoke-static {v5, v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Lokhttp3/Call;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-interface {v2, v4, v0}, Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;->onFinish(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 406
    .line 407
    .line 408
    :cond_e
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 409
    .line 410
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_f

    .line 415
    .line 416
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 423
    .line 424
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-eqz v0, :cond_f

    .line 429
    .line 430
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 431
    .line 432
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 437
    .line 438
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    :cond_f
    if-eqz v3, :cond_10

    .line 446
    .line 447
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 448
    .line 449
    .line 450
    goto :goto_9

    .line 451
    :catch_0
    move-exception v0

    .line 452
    goto :goto_a

    .line 453
    :cond_10
    :goto_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 454
    .line 455
    .line 456
    goto :goto_c

    .line 457
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 458
    .line 459
    .line 460
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 461
    .line 462
    invoke-virtual {v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getTAG()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-static {v2, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    goto :goto_c

    .line 474
    :goto_b
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 475
    .line 476
    .line 477
    iget-object v5, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 478
    .line 479
    iget-object v6, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$downloadUrl:Ljava/lang/String;

    .line 480
    .line 481
    const-string v7, "D007"

    .line 482
    .line 483
    new-instance v2, Ljava/lang/StringBuilder;

    .line 484
    .line 485
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v3, "Download Fail,onResponse_"

    .line 489
    .line 490
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    const-string v3, ":D007"

    .line 497
    .line 498
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v8

    .line 505
    new-instance v9, Ljava/io/IOException;

    .line 506
    .line 507
    invoke-direct {v9, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 508
    .line 509
    .line 510
    iget-object v10, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callback:Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;

    .line 511
    .line 512
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 513
    .line 514
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$headers:Ljava/util/Map;

    .line 515
    .line 516
    invoke-static {v0, v2}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$getCallId(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/util/Map;)Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v11

    .line 520
    invoke-static/range {v5 .. v11}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->access$downloadFail(Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/IOException;Lcom/cloud/tmc/kernel/proxy/network/PackageDownloadCallback;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 521
    .line 522
    .line 523
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 524
    .line 525
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-nez v0, :cond_11

    .line 530
    .line 531
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 538
    .line 539
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    if-eqz v0, :cond_11

    .line 544
    .line 545
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 546
    .line 547
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    iget-object v2, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 552
    .line 553
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    .line 559
    .line 560
    :cond_11
    if-eqz v4, :cond_12

    .line 561
    .line 562
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 563
    .line 564
    .line 565
    :cond_12
    if-eqz v15, :cond_13

    .line 566
    .line 567
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 568
    .line 569
    .line 570
    :cond_13
    :goto_c
    return-void

    .line 571
    :catchall_3
    move-exception v0

    .line 572
    move-object v2, v0

    .line 573
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 574
    .line 575
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    if-nez v0, :cond_14

    .line 580
    .line 581
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 582
    .line 583
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 588
    .line 589
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-eqz v0, :cond_14

    .line 594
    .line 595
    iget-object v0, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 596
    .line 597
    invoke-virtual {v0}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getDownloadMap()Ljava/util/HashMap;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->$callbackId:Ljava/lang/String;

    .line 602
    .line 603
    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->d(Ljava/lang/Object;)Ljava/util/Map;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    :cond_14
    if-eqz v4, :cond_15

    .line 611
    .line 612
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 613
    .line 614
    .line 615
    goto :goto_d

    .line 616
    :catch_1
    move-exception v0

    .line 617
    goto :goto_e

    .line 618
    :cond_15
    :goto_d
    if-eqz v15, :cond_16

    .line 619
    .line 620
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 621
    .line 622
    .line 623
    goto :goto_f

    .line 624
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 625
    .line 626
    .line 627
    iget-object v3, v1, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl$downloadPackage$2;->this$0:Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;

    .line 628
    .line 629
    invoke-virtual {v3}, Lcom/cloud/tmc/integration/defaultImpl/TmcNetworkImpl;->getTAG()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    invoke-static {v3, v0}, Lcom/cloud/tmc/kernel/log/TmcLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    :cond_16
    :goto_f
    throw v2
.end method
