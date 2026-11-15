.class final Lcom/yandex/mobile/ads/impl/fh0$c;
.super Lcom/yandex/mobile/ads/impl/fh0$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fh0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final d:Lcom/yandex/mobile/ads/impl/gi0;

.field private e:J

.field private f:Z

.field final synthetic g:Lcom/yandex/mobile/ads/impl/fh0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fh0;Lcom/yandex/mobile/ads/impl/gi0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/gi0;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/fh0$a;-><init>(Lcom/yandex/mobile/ads/impl/fh0;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->d:Lcom/yandex/mobile/ads/impl/gi0;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->f:Z

    return-void
.end method

.method private final d()V
    .locals 7

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->d(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->d(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readHexadecimalUnsignedLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->d(Lcom/yandex/mobile/ads/impl/fh0;)Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    const-string v1, ";"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v5, v6}, Lg1a;->R(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->f:Z

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->b(Lcom/yandex/mobile/ads/impl/fh0;)Lcom/yandex/mobile/ads/impl/rf0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/rf0;->a()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;Lcom/yandex/mobile/ads/impl/qf0;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fh0;->a(Lcom/yandex/mobile/ads/impl/fh0;)Lcom/yandex/mobile/ads/impl/fe1;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fe1;->h()Lcom/yandex/mobile/ads/impl/qs;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->d:Lcom/yandex/mobile/ads/impl/gi0;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/fh0;->f(Lcom/yandex/mobile/ads/impl/fh0;)Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v2

    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/qs;Lcom/yandex/mobile/ads/impl/gi0;Lcom/yandex/mobile/ads/impl/qf0;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->b()V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v1, Ljava/net/ProtocolException;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected chunk size and optional extensions but was \""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v0, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->f:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/yandex/mobile/ads/impl/g92;->a:[B

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timeUnit"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x64

    :try_start_0
    invoke-static {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/g92;->a(Lokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :catch_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/fh0;->c()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ao1;->j()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->c()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 7

    const-string v0, "sink"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_5

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->f:Z

    const-wide/16 v3, -0x1

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    iget-wide v5, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/fh0$c;->d()V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->f:Z

    if-nez v0, :cond_2

    return-wide v3

    :cond_2
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-super {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/fh0$a;->read(Lokio/Buffer;J)J

    move-result-wide p1

    cmp-long p3, p1, v3

    if-eqz p3, :cond_3

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->e:J

    return-wide p1

    :cond_3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fh0$c;->g:Lcom/yandex/mobile/ads/impl/fh0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fh0;->c()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ao1;->j()V

    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "unexpected end of stream"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/fh0$a;->b()V

    throw p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "byteCount < 0: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
