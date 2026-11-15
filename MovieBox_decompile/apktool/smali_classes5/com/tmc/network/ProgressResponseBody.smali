.class public final Lcom/tmc/network/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0008\u0010\u000e\u001a\u00020\u0007H\u0016R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/tmc/network/ProgressResponseBody;",
        "Lokhttp3/ResponseBody;",
        "responseBody",
        "mListener",
        "Lcom/tmc/network/ProgressListener;",
        "(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V",
        "bufferedSource",
        "Lokio/BufferedSource;",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "mySource",
        "Lokio/Source;",
        "source",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private final mListener:Lcom/tmc/network/ProgressListener;

.field private final responseBody:Lokhttp3/ResponseBody;


# direct methods
.method public constructor <init>(Lokhttp3/ResponseBody;Lcom/tmc/network/ProgressListener;)V
    .locals 1

    .line 1
    const-string v0, "responseBody"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/tmc/network/ProgressResponseBody;->mListener:Lcom/tmc/network/ProgressListener;

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$getMListener$p(Lcom/tmc/network/ProgressResponseBody;)Lcom/tmc/network/ProgressListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tmc/network/ProgressResponseBody;->mListener:Lcom/tmc/network/ProgressListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private final mySource(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 1
    new-instance v0, Lcom/tmc/network/ProgressResponseBody$mySource$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/tmc/network/ProgressResponseBody$mySource$1;-><init>(Lcom/tmc/network/ProgressResponseBody;Lokio/Source;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    .line 6
    .line 7
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Lcom/tmc/network/ProgressResponseBody;->mySource(Lokio/Source;)Lokio/Source;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/tmc/network/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 27
    .line 28
    const-string v1, "null cannot be cast to non-null type okio.BufferedSource"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method
