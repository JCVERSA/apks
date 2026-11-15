.class public Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;
.super Lorg/chromium/net/UploadDataProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/protocol/okhttptransport/a$b;->a(Lokhttp3/RequestBody;I)Lorg/chromium/net/UploadDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public volatile b:Z

.field public final c:Lokio/Buffer;

.field public final synthetic d:J

.field public final synthetic e:Lokhttp3/RequestBody;

.field public final synthetic f:Lcom/cloud/hisavana/protocol/okhttptransport/a$b;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/protocol/okhttptransport/a$b;JLokhttp3/RequestBody;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->f:Lcom/cloud/hisavana/protocol/okhttptransport/a$b;

    iput-wide p2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->d:J

    iput-object p4, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->e:Lokhttp3/RequestBody;

    invoke-direct {p0}, Lorg/chromium/net/UploadDataProvider;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->b:Z

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->c:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->d:J

    return-wide v0
.end method

.method public read(Lorg/chromium/net/UploadDataSink;Ljava/nio/ByteBuffer;)V
    .locals 5

    iget-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->e:Lokhttp3/RequestBody;

    iget-object v1, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->c:Lokio/Buffer;

    invoke-virtual {v0, v1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    iget-object v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->flush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->b:Z

    invoke-virtual {p0}, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->getLength()J

    move-result-wide v0

    iget-object v2, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->c:Lokio/Buffer;

    invoke-virtual {v2}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " bytes but got "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/cloud/hisavana/protocol/okhttptransport/a$b$a;->c:Lokio/Buffer;

    invoke-virtual {p0, p2}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p0, p2, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/chromium/net/UploadDataSink;->onReadSucceeded(Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The source has been exhausted but we expected more!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public rewind(Lorg/chromium/net/UploadDataSink;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-virtual {p1, p0}, Lorg/chromium/net/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method
