.class public final Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;
.super Lokio/ForwardingSink;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/integration/net/ProgressRequestBody;->sink(Lokio/Sink;)Lokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u0005\"\u0004\u0008\n\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "com/cloud/tmc/integration/net/ProgressRequestBody$sink$1",
        "Lokio/ForwardingSink;",
        "bytesWritten",
        "",
        "getBytesWritten",
        "()J",
        "setBytesWritten",
        "(J)V",
        "contentLength",
        "getContentLength",
        "setContentLength",
        "write",
        "",
        "source",
        "Lokio/Buffer;",
        "byteCount",
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
.field private bytesWritten:J

.field private contentLength:J

.field final synthetic this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;


# direct methods
.method constructor <init>(Lokio/Sink;Lcom/cloud/tmc/integration/net/ProgressRequestBody;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getBytesWritten()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setBytesWritten(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    .line 2
    .line 3
    return-void
.end method

.method public final setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    .line 2
    .line 3
    return-void
.end method

.method public write(Lokio/Buffer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long p1, v0, v2

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->contentLength()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    .line 24
    .line 25
    :cond_0
    iget-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    .line 26
    .line 27
    add-long/2addr v0, p2

    .line 28
    iput-wide v0, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->this$0:Lcom/cloud/tmc/integration/net/ProgressRequestBody;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/cloud/tmc/integration/net/ProgressRequestBody;->access$getProgressListener$p(Lcom/cloud/tmc/integration/net/ProgressRequestBody;)Lcom/cloud/tmc/integration/net/ProgressRequestListener;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-wide v1, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->bytesWritten:J

    .line 39
    .line 40
    iget-wide v3, p0, Lcom/cloud/tmc/integration/net/ProgressRequestBody$sink$1;->contentLength:J

    .line 41
    .line 42
    cmp-long p1, v1, v3

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    :goto_0
    move v5, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/cloud/tmc/integration/net/ProgressRequestListener;->onRequestProgress(JJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :catchall_0
    new-instance p1, Ljava/io/IOException;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p1
.end method
