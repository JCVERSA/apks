.class public final Lcom/yandex/mobile/ads/impl/fh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/c60;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/fh0$a;,
        Lcom/yandex/mobile/ads/impl/fh0$b;,
        Lcom/yandex/mobile/ads/impl/fh0$c;,
        Lcom/yandex/mobile/ads/impl/fh0$d;,
        Lcom/yandex/mobile/ads/impl/fh0$e;,
        Lcom/yandex/mobile/ads/impl/fh0$f;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fe1;

.field private final b:Lcom/yandex/mobile/ads/impl/ao1;

.field private final c:Lokio/BufferedSource;

.field private final d:Lokio/BufferedSink;

.field private e:I

.field private final f:Lcom/yandex/mobile/ads/impl/rf0;

.field private g:Lcom/yandex/mobile/ads/impl/qf0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/ao1;Lokio/BufferedSource;Lokio/BufferedSink;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->a:Lcom/yandex/mobile/ads/impl/fe1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fh0;->b:Lcom/yandex/mobile/ads/impl/ao1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/fh0;->c:Lokio/BufferedSource;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    new-instance p1, Lcom/yandex/mobile/ads/impl/rf0;

    invoke-direct {p1, p3}, Lcom/yandex/mobile/ads/impl/rf0;-><init>(Lokio/BufferedSource;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->f:Lcom/yandex/mobile/ads/impl/rf0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fh0;)Lcom/yandex/mobile/ads/impl/fe1;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->a:Lcom/yandex/mobile/ads/impl/fe1;

    return-object p0
.end method

.method private final a(J)Lokio/Source;
    .locals 2

    .line 21
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 22
    iput v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    .line 23
    new-instance v0, Lcom/yandex/mobile/ads/impl/fh0$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/yandex/mobile/ads/impl/fh0$d;-><init>(Lcom/yandex/mobile/ads/impl/fh0;J)V

    return-object v0

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Lcom/yandex/mobile/ads/impl/gi0;)Lokio/Source;
    .locals 2

    .line 17
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 18
    iput v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    .line 19
    new-instance v0, Lcom/yandex/mobile/ads/impl/fh0$c;

    invoke-direct {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/fh0$c;-><init>(Lcom/yandex/mobile/ads/impl/fh0;Lcom/yandex/mobile/ads/impl/gi0;)V

    return-object v0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fh0;I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/fh0;Lcom/yandex/mobile/ads/impl/qf0;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->g:Lcom/yandex/mobile/ads/impl/qf0;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/fh0;Lokio/ForwardingTimeout;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Lokio/ForwardingTimeout;->delegate()Lokio/Timeout;

    move-result-object p0

    .line 3
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    invoke-virtual {p1, v0}, Lokio/ForwardingTimeout;->setDelegate(Lokio/Timeout;)Lokio/ForwardingTimeout;

    .line 4
    invoke-virtual {p0}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    .line 5
    invoke-virtual {p0}, Lokio/Timeout;->clearTimeout()Lokio/Timeout;

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/fh0;)Lcom/yandex/mobile/ads/impl/rf0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->f:Lcom/yandex/mobile/ads/impl/rf0;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSink;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->c:Lokio/BufferedSource;

    return-object p0
.end method

.method private final d()Lokio/Sink;
    .locals 2

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/fh0$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/fh0$b;-><init>(Lcom/yandex/mobile/ads/impl/fh0;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic e(Lcom/yandex/mobile/ads/impl/fh0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    return p0
.end method

.method private final e()Lokio/Sink;
    .locals 2

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/fh0$e;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/fh0$e;-><init>(Lcom/yandex/mobile/ads/impl/fh0;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic f(Lcom/yandex/mobile/ads/impl/fh0;)Lcom/yandex/mobile/ads/impl/qf0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->g:Lcom/yandex/mobile/ads/impl/qf0;

    return-object p0
.end method

.method private final f()Lokio/Source;
    .locals 2

    .line 2
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->b:Lcom/yandex/mobile/ads/impl/ao1;

    .line 5
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->j()V

    .line 6
    new-instance v0, Lcom/yandex/mobile/ads/impl/fh0$f;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/fh0$f;-><init>(Lcom/yandex/mobile/ads/impl/fh0;)V

    return-object v0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Z)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 4

    .line 32
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->f:Lcom/yandex/mobile/ads/impl/rf0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rf0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/t22$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/t22;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/yandex/mobile/ads/impl/vq1$a;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/impl/vq1$a;-><init>()V

    .line 37
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/t22;->a:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/mm1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 38
    iget v3, v0, Lcom/yandex/mobile/ads/impl/t22;->b:I

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(I)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 39
    iget-object v3, v0, Lcom/yandex/mobile/ads/impl/t22;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/fh0;->f:Lcom/yandex/mobile/ads/impl/rf0;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/rf0;->a()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/qf0;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 41
    iget p1, v0, Lcom/yandex/mobile/ads/impl/t22;->b:I

    if-ne p1, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 42
    :cond_2
    iget p1, v0, Lcom/yandex/mobile/ads/impl/t22;->b:I

    if-ne p1, v3, :cond_3

    .line 43
    iput v2, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 44
    iput p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    .line 45
    :goto_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->b:Lcom/yandex/mobile/ads/impl/ao1;

    .line 46
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vs1;->a()Lcom/yandex/mobile/ads/impl/ab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ab;->k()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gi0;->j()Ljava/lang/String;

    move-result-object p0

    .line 47
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vp1;J)Lokio/Sink;
    .locals 2

    .line 9
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->a()Lcom/yandex/mobile/ads/impl/yp1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->a()Lcom/yandex/mobile/ads/impl/yp1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fh0;->d()Lokio/Sink;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fh0;->e()Lokio/Sink;

    move-result-object p0

    :goto_0
    return-object p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vq1;)Lokio/Source;
    .locals 4

    .line 25
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/vq1;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(J)Lokio/Source;

    move-result-object p0

    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/vq1;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1;->o()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/gi0;)Lokio/Source;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/vq1;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 30
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(J)Lokio/Source;

    move-result-object p0

    goto :goto_0

    .line 31
    :cond_2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fh0;->f()Lokio/Source;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/qf0;Ljava/lang/String;)V
    .locals 4

    .line 48
    const-string v0, "headers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 51
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/qf0;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 53
    const-string v3, ": "

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 54
    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/qf0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v2

    .line 55
    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    const/4 p1, 0x1

    .line 57
    iput p1, p0, Lcom/yandex/mobile/ads/impl/fh0;->e:I

    return-void

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "state: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vp1;)V
    .locals 3

    .line 59
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fh0;->b:Lcom/yandex/mobile/ads/impl/ao1;

    .line 61
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ao1;->k()Lcom/yandex/mobile/ads/impl/vs1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vs1;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "type(...)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyType"

    invoke-static {v1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 65
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->e()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v1

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/cq1;->a(Lcom/yandex/mobile/ads/impl/gi0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_0
    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->d()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/qf0;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/vq1;)J
    .locals 2

    .line 3
    const-string p0, "response"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/vq1;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    const-string p0, "Transfer-Encoding"

    invoke-static {p1, p0}, Lcom/yandex/mobile/ads/impl/vq1;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/vq1;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final b()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->d:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/ao1;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->b:Lcom/yandex/mobile/ads/impl/ao1;

    return-object p0
.end method

.method public final c(Lcom/yandex/mobile/ads/impl/vq1;)V
    .locals 4

    .line 3
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/vq1;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(J)Lokio/Source;

    move-result-object p0

    .line 6
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const v0, 0x7fffffff

    invoke-static {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 7
    check-cast p0, Lcom/yandex/mobile/ads/impl/fh0$d;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$d;->close()V

    return-void
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fh0;->b:Lcom/yandex/mobile/ads/impl/ao1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ao1;->a()V

    return-void
.end method
