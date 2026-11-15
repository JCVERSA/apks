.class Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;
.super Lcom/android/volley/RequestTask;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/BasicAsyncNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseParsingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/RequestTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field callback:Lcom/android/volley/b$a;

.field httpResponse:Lcom/android/volley/toolbox/e;

.field inputStream:Ljava/io/InputStream;

.field request:Lcom/android/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Request;"
        }
    .end annotation
.end field

.field requestStartMs:J

.field responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/e;",
            ">;"
        }
    .end annotation
.end field

.field statusCode:I

.field final synthetic this$0:Lcom/android/volley/toolbox/BasicAsyncNetwork;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/BasicAsyncNetwork;Ljava/io/InputStream;Lcom/android/volley/toolbox/e;Lcom/android/volley/Request;Lcom/android/volley/b$a;JLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Lcom/android/volley/toolbox/e;",
            "Lcom/android/volley/Request;",
            "Lcom/android/volley/b$a;",
            "J",
            "Ljava/util/List<",
            "Lcom/android/volley/e;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lcom/android/volley/RequestTask;-><init>(Lcom/android/volley/Request;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->inputStream:Ljava/io/InputStream;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/b$a;

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    .line 13
    .line 14
    iput-object p8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->responseHeaders:Ljava/util/List;

    .line 15
    .line 16
    iput p9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->statusCode:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->inputStream:Ljava/io/InputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/volley/toolbox/e;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v2}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->c(Lcom/android/volley/toolbox/BasicAsyncNetwork;)Lcom/android/volley/toolbox/ByteArrayPool;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/volley/toolbox/l;->c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget-wide v4, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    .line 19
    .line 20
    iget v6, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->statusCode:I

    .line 21
    .line 22
    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    .line 23
    .line 24
    iget-object v8, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    .line 25
    .line 26
    iget-object v9, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/b$a;

    .line 27
    .line 28
    iget-object v10, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->responseHeaders:Ljava/util/List;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-static/range {v3 .. v11}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->d(Lcom/android/volley/toolbox/BasicAsyncNetwork;JILcom/android/volley/toolbox/e;Lcom/android/volley/Request;Lcom/android/volley/b$a;Ljava/util/List;[B)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object v4, v0

    .line 37
    iget-object v2, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->request:Lcom/android/volley/Request;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->callback:Lcom/android/volley/b$a;

    .line 40
    .line 41
    iget-wide v5, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->requestStartMs:J

    .line 42
    .line 43
    iget-object v7, p0, Lcom/android/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;->httpResponse:Lcom/android/volley/toolbox/e;

    .line 44
    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static/range {v1 .. v8}, Lcom/android/volley/toolbox/BasicAsyncNetwork;->b(Lcom/android/volley/toolbox/BasicAsyncNetwork;Lcom/android/volley/Request;Lcom/android/volley/b$a;Ljava/io/IOException;JLcom/android/volley/toolbox/e;[B)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
