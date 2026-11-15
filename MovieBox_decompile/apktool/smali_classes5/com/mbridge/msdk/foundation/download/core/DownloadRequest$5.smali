.class Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerSuccessEvent(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field final synthetic val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const-string v0, "responseHeaders"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$500(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$500(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$500(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_0

    .line 40
    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 42
    .line 43
    invoke-virtual {v2, v0, v1}, Lcom/mbridge/msdk/foundation/download/DownloadMessage;->addExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$000(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->val$downloadMessage:Lcom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 64
    .line 65
    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/download/OnDownloadStateListener;->onDownloadComplete(Lcom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest$5;->this$0:Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->access$100(Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "DownloadRequest"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :goto_2
    return-void
.end method
