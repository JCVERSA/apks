.class public Lcom/transsion/api/gateway/interceptor/GatewayInterceptor$1;
.super Lokhttp3/RequestBody;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;->gzip(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

.field public final synthetic val$body:Lokhttp3/RequestBody;


# direct methods
.method public constructor <init>(Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;Lokhttp3/RequestBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor$1;->this$0:Lcom/transsion/api/gateway/interceptor/GatewayInterceptor;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor$1;->val$body:Lokhttp3/RequestBody;

    .line 4
    .line 5
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor$1;->val$body:Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokio/GzipSink;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lokio/GzipSink;-><init>(Lokio/Sink;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/transsion/api/gateway/interceptor/GatewayInterceptor$1;->val$body:Lokhttp3/RequestBody;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Lokio/Sink;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
