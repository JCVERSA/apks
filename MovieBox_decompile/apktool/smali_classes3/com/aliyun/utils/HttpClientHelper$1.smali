.class Lcom/aliyun/utils/HttpClientHelper$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/utils/HttpClientHelper;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/utils/HttpClientHelper;


# direct methods
.method constructor <init>(Lcom/aliyun/utils/HttpClientHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "HttpClientHelper stop().... HttpsURLConnection.disconnect "

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    instance-of v0, v0, Ljava/net/HttpURLConnection;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "HttpClientHelper stop().... HttpURLConnection.disconnect "

    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/aliyun/utils/HttpClientHelper$1;->this$0:Lcom/aliyun/utils/HttpClientHelper;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/aliyun/utils/HttpClientHelper;->access$000(Lcom/aliyun/utils/HttpClientHelper;)Ljava/net/URLConnection;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :goto_0
    invoke-static {}, Lcom/aliyun/utils/HttpClientHelper;->access$100()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lcom/cicada/player/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_1
    return-void
.end method
