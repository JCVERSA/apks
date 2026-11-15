.class public final Lcom/squareup/okhttp/internal/http/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/HttpStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/d$g;,
        Lcom/squareup/okhttp/internal/http/d$d;,
        Lcom/squareup/okhttp/internal/http/d$f;,
        Lcom/squareup/okhttp/internal/http/d$b;,
        Lcom/squareup/okhttp/internal/http/d$c;,
        Lcom/squareup/okhttp/internal/http/d$e;
    }
.end annotation


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/n;

.field private final b:Lokio/BufferedSource;

.field private final c:Lokio/BufferedSink;

.field private d:Lcom/squareup/okhttp/internal/http/g;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/n;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSink;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/d;Lokio/ForwardingTimeout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d;->g(Lokio/ForwardingTimeout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/http/d;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/http/d;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/http/d;)Lokio/BufferedSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/http/d;)Lcom/squareup/okhttp/internal/http/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Lokio/ForwardingTimeout;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lokio/Timeout;->NONE:Lokio/Timeout;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private h(Lcom/squareup/okhttp/Response;)Lokio/Source;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/g;->n(Lcom/squareup/okhttp/Response;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->l(J)Lokio/Source;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string v0, "Transfer-Encoding"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "chunked"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/d;->j(Lcom/squareup/okhttp/internal/http/g;)Lokio/Source;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/OkHeaders;->e(Lcom/squareup/okhttp/Response;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    const-wide/16 v2, -0x1

    .line 40
    .line 41
    cmp-long p1, v0, v2

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/d;->l(J)Lokio/Source;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->m()Lokio/Source;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->c()Lhf/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lhf/a;->b()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public createRequestBody(Lcom/squareup/okhttp/Request;J)Lokio/Sink;
    .locals 2

    .line 1
    const-string v0, "Transfer-Encoding"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "chunked"

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->i()Lokio/Sink;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    cmp-long p1, p2, v0

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/squareup/okhttp/internal/http/d;->k(J)Lokio/Sink;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public finishRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 2
    .line 3
    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()Lokio/Sink;
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 8
    .line 9
    new-instance v0, Lcom/squareup/okhttp/internal/http/d$c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/d$c;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "state: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public j(Lcom/squareup/okhttp/internal/http/g;)Lokio/Source;
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 8
    .line 9
    new-instance v0, Lcom/squareup/okhttp/internal/http/d$d;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/internal/http/d$d;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/g;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "state: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public k(J)Lokio/Sink;
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 8
    .line 9
    new-instance v0, Lcom/squareup/okhttp/internal/http/d$e;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/okhttp/internal/http/d$e;-><init>(Lcom/squareup/okhttp/internal/http/d;JLcom/squareup/okhttp/internal/http/d$a;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "state: "

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public l(J)Lokio/Source;
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 8
    .line 9
    new-instance v0, Lcom/squareup/okhttp/internal/http/d$f;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/okhttp/internal/http/d$f;-><init>(Lcom/squareup/okhttp/internal/http/d;J)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v0, "state: "

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public m()Lokio/Source;
    .locals 3

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x5

    .line 11
    iput v1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/n;->l()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/squareup/okhttp/internal/http/d$g;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/squareup/okhttp/internal/http/d$g;-><init>(Lcom/squareup/okhttp/internal/http/d;Lcom/squareup/okhttp/internal/http/d$a;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "streamAllocation == null"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "state: "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public n()Lcom/squareup/okhttp/Headers;
    .locals 3

    .line 1
    new-instance v0, Lcom/squareup/okhttp/Headers$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/squareup/okhttp/Headers$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    .line 7
    .line 8
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget-object v2, Lcom/squareup/okhttp/internal/c;->instance:Lcom/squareup/okhttp/internal/c;

    .line 19
    .line 20
    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/c;->addLenient(Lcom/squareup/okhttp/Headers$Builder;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Lcom/squareup/okhttp/Headers$Builder;->build()Lcom/squareup/okhttp/Headers;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public o()Lcom/squareup/okhttp/Response$Builder;
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "state: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->b:Lokio/BufferedSource;

    .line 36
    .line 37
    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/m;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/m;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/squareup/okhttp/Response$Builder;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/squareup/okhttp/Response$Builder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/m;->a:Lcom/squareup/okhttp/Protocol;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->protocol(Lcom/squareup/okhttp/Protocol;)Lcom/squareup/okhttp/Response$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget v2, v0, Lcom/squareup/okhttp/internal/http/m;->b:I

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->code(I)Lcom/squareup/okhttp/Response$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/m;->c:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->message(Ljava/lang/String;)Lcom/squareup/okhttp/Response$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->n()Lcom/squareup/okhttp/Headers;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/Response$Builder;->headers(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/Response$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget v0, v0, Lcom/squareup/okhttp/internal/http/m;->b:I

    .line 77
    .line 78
    const/16 v2, 0x64

    .line 79
    .line 80
    if-eq v0, v2, :cond_1

    .line 81
    .line 82
    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/io/IOException;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "unexpected end of stream on "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/d;->a:Lcom/squareup/okhttp/internal/http/n;

    .line 100
    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    .line 113
    .line 114
    throw v1
.end method

.method public openResponseBody(Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/ResponseBody;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/d;->h(Lcom/squareup/okhttp/Response;)Lokio/Source;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/squareup/okhttp/internal/http/i;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->headers()Lcom/squareup/okhttp/Headers;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {v1, p1, v0}, Lcom/squareup/okhttp/internal/http/i;-><init>(Lcom/squareup/okhttp/Headers;Lokio/BufferedSource;)V

    .line 16
    .line 17
    .line 18
    return-object v1
.end method

.method public p(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 6
    .line 7
    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "\r\n"

    .line 12
    .line 13
    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/squareup/okhttp/Headers;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, ": "

    .line 34
    .line 35
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p1, v1}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v0, "state: "

    .line 70
    .line 71
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1
.end method

.method public readResponseHeaders()Lcom/squareup/okhttp/Response$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/d;->o()Lcom/squareup/okhttp/Response$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public setHttpEngine(Lcom/squareup/okhttp/internal/http/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    .line 2
    .line 3
    return-void
.end method

.method public writeRequestBody(Lcom/squareup/okhttp/internal/http/k;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->c:Lokio/BufferedSink;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/k;->f(Lokio/Sink;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "state: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget v1, p0, Lcom/squareup/okhttp/internal/http/d;->e:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public writeRequestHeaders(Lcom/squareup/okhttp/Request;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->C()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/d;->d:Lcom/squareup/okhttp/internal/http/g;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/g;->k()Lcom/squareup/okhttp/Connection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lcom/squareup/okhttp/internal/http/j;->a(Lcom/squareup/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->headers()Lcom/squareup/okhttp/Headers;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/http/d;->p(Lcom/squareup/okhttp/Headers;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
