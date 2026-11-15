.class public Lcom/lzy/okgo/request/base/ProgressRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/request/base/ProgressRequestBody$b;,
        Lcom/lzy/okgo/request/base/ProgressRequestBody$a;
    }
.end annotation


# instance fields
.field public a:Lokhttp3/RequestBody;

.field public b:Lcom/lzy/okgo/request/base/ProgressRequestBody$b;


# direct methods
.method public constructor <init>(Lokhttp3/RequestBody;Luq0;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->a:Lokhttp3/RequestBody;

    return-void
.end method

.method public static synthetic a(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Lcom/lzy/okgo/request/base/ProgressRequestBody$b;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->b:Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

    return-object p0
.end method

.method public static synthetic b(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->d(Lcom/lzy/okgo/model/Progress;)V

    return-void
.end method

.method public static synthetic c(Lcom/lzy/okgo/request/base/ProgressRequestBody;)Luq0;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->a:Lokhttp3/RequestBody;

    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lie7;->a(Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->a:Lokhttp3/RequestBody;

    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody$1;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lcom/lzy/okgo/model/Progress;)V

    invoke-static {v0}, Lut4;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Lcom/lzy/okgo/request/base/ProgressRequestBody$b;)V
    .locals 0

    iput-object p1, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->b:Lcom/lzy/okgo/request/base/ProgressRequestBody$b;

    return-void
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1

    new-instance v0, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/request/base/ProgressRequestBody$a;-><init>(Lcom/lzy/okgo/request/base/ProgressRequestBody;Lokio/Sink;)V

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    iget-object p0, p0, Lcom/lzy/okgo/request/base/ProgressRequestBody;->a:Lokhttp3/RequestBody;

    invoke-virtual {p0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    invoke-interface {p1}, Lokio/BufferedSink;->flush()V

    return-void
.end method
