.class Lcom/mgtv/ssp/download/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/download/d$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/ssp/download/d$a;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/download/d$a;)V
    .locals 2

    iput-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgtv/ssp/download/d$a$1;->b:J

    iput-wide v0, p0, Lcom/mgtv/ssp/download/d$a$1;->c:J

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p1

    iget-object v0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v0}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v0

    iget-object v0, v0, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p0}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p0, p2}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    const/16 v2, 0xce

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    iget-object v2, v2, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v3}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v2, v3, p2}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p2

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p0}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x1000

    :try_start_1
    new-array v1, v1, [B

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->c(Lcom/mgtv/ssp/download/d$a;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p2, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    iget-object p2, p2, Lcom/mgtv/ssp/download/dao3/c;->h:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance p2, Ljava/io/File;

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v4

    iget-object v4, v4, Lcom/mgtv/ssp/download/dao3/c;->d:Ljava/lang/String;

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p2

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    const-string v3, "CreateFileFailed"

    invoke-interface {p2, v1, v2, v3}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_4
    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p0}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_5
    return-void

    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;J)J

    :cond_7
    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, p2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p2

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->c(Lcom/mgtv/ssp/download/d$a;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_8
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_d

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->e(Lcom/mgtv/ssp/download/d$a;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p2

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/mgtv/ssp/download/d$b;->b(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p0}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_9
    return-void

    :cond_a
    :try_start_3
    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->c(Lcom/mgtv/ssp/download/d$a;)J

    move-result-wide v5

    int-to-long v7, p2

    add-long/2addr v5, v7

    invoke-static {v4, v5, v6}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;J)J

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->c(Lcom/mgtv/ssp/download/d$a;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_b

    iget-object v4, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v4}, Lcom/mgtv/ssp/download/d$a;->c(Lcom/mgtv/ssp/download/d$a;)J

    move-result-wide v4

    goto :goto_2

    :cond_b
    move-wide v4, v2

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p2, Lcom/mgtv/ssp/download/dao3/c;->g:Ljava/lang/Long;

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->c(Lcom/mgtv/ssp/download/d$a;)J

    move-result-wide v4

    long-to-float p2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr p2, v4

    long-to-float v4, v2

    div-float/2addr p2, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mgtv/ssp/download/d$a$1;->b:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    const/4 v7, 0x1

    if-ltz v6, :cond_c

    iput-wide v4, p0, Lcom/mgtv/ssp/download/d$a$1;->b:J

    iget-object v6, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v6}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v6, Lcom/mgtv/ssp/download/dao3/c;->i:Ljava/lang/Integer;

    iget-object v6, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v6}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v6}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object v6

    iget-object v8, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v8}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v8

    iget-object v8, v8, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v9}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v9

    invoke-interface {v6, v8, v9, p2}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;I)V

    :cond_c
    iget-wide v8, p0, Lcom/mgtv/ssp/download/d$a$1;->c:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xbb8

    cmp-long p2, v8, v10

    if-ltz p2, :cond_8

    iput-wide v4, p0, Lcom/mgtv/ssp/download/d$a$1;->c:J

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    invoke-static {p2, v7}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    goto/16 :goto_1

    :cond_d
    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p2

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p2

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p1

    if-eqz p1, :cond_11

    :goto_3
    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p0}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    :goto_4
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mgtv/ssp/download/d;->a(Lcom/mgtv/ssp/download/dao3/c;I)V

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->b(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/d$b;

    move-result-object p1

    iget-object v1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v1}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v1

    iget-object v1, v1, Lcom/mgtv/ssp/download/dao3/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {v2}, Lcom/mgtv/ssp/download/d$a;->a(Lcom/mgtv/ssp/download/d$a;)Lcom/mgtv/ssp/download/dao3/c;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, v2, p2}, Lcom/mgtv/ssp/download/d$b;->a(Ljava/lang/String;Lcom/mgtv/ssp/download/dao3/c;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_10
    iget-object p1, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p1}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_3

    :cond_11
    :goto_5
    return-void

    :goto_6
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_12
    iget-object p2, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p2}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object p0, p0, Lcom/mgtv/ssp/download/d$a$1;->a:Lcom/mgtv/ssp/download/d$a;

    invoke-static {p0}, Lcom/mgtv/ssp/download/d$a;->d(Lcom/mgtv/ssp/download/d$a;)Ljava/io/RandomAccessFile;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_13
    throw p1
.end method
