.class Lcom/google/net/cronet/okhttptransport/e$b$a;
.super Lorg/chromium/net/UploadDataProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/net/cronet/okhttptransport/e$b;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private volatile a:Z

.field private final b:Lokio/Buffer;

.field final synthetic c:J

.field final synthetic d:Lokhttp3/RequestBody;

.field final synthetic e:Lcom/google/net/cronet/okhttptransport/e$b;


# direct methods
.method constructor <init>(Lcom/google/net/cronet/okhttptransport/e$b;JLokhttp3/RequestBody;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->e:Lcom/google/net/cronet/okhttptransport/e$b;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->d:Lokhttp3/RequestBody;

    .line 6
    .line 7
    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->a:Z

    .line 12
    .line 13
    new-instance p1, Lokio/Buffer;

    .line 14
    .line 15
    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->d:Lokhttp3/RequestBody;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lokio/Buffer;->flush()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->a:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/net/cronet/okhttptransport/e$b$a;->getLength()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-object v2, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    .line 25
    .line 26
    invoke-virtual {v2}, Lokio/Buffer;->size()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    cmp-long v4, v2, v0

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 36
    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "Expected "

    .line 43
    .line 44
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, " bytes but got "

    .line 51
    .line 52
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/net/cronet/okhttptransport/e$b$a;->b:Lokio/Buffer;

    .line 67
    .line 68
    invoke-virtual {v0, p2}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    const/4 v0, -0x1

    .line 73
    if-eq p2, v0, :cond_2

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-virtual {p1, p2}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "The source has been exhausted but we expected more!"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
