.class public final Lcom/yandex/mobile/ads/impl/on;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mp0;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/on;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/do1;)Lcom/yandex/mobile/ads/impl/vq1;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->d()Lcom/yandex/mobile/ads/impl/b60;

    move-result-object v0

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/do1;->f()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->a()Lcom/yandex/mobile/ads/impl/yp1;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/b60;->b(Lcom/yandex/mobile/ads/impl/vp1;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/yandex/mobile/ads/impl/ai0;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    const-string v4, "Expect"

    invoke-virtual {p1, v4}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "100-continue"

    invoke-static {v8, v4, v6}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->d()V

    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/impl/b60;->a(Z)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->m()V

    move v8, v5

    goto :goto_0

    :cond_0
    move v8, v6

    move-object v4, v7

    :goto_0
    if-nez v4, :cond_1

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/b60;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lokio/Sink;

    move-result-object v9

    invoke-static {v9}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/yandex/mobile/ads/impl/yp1;->a(Lokio/BufferedSink;)V

    invoke-interface {v9}, Lokio/Sink;->close()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->l()V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->f()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ao1;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->k()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->l()V

    move v8, v6

    move-object v4, v7

    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->c()V

    if-nez v4, :cond_4

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/b60;->a(Z)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v4

    invoke-static {v4}, Ly45;->g(Ljava/lang/Object;)V

    if-eqz v8, :cond_4

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->m()V

    move v8, v5

    :cond_4
    invoke-virtual {v4, p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->f()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yandex/mobile/ads/impl/ao1;->f()Lcom/yandex/mobile/ads/impl/if0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/if0;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result v4

    const/16 v9, 0x64

    if-ne v4, v9, :cond_6

    invoke-virtual {v0, v5}, Lcom/yandex/mobile/ads/impl/b60;->a(Z)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->m()V

    :cond_5
    invoke-virtual {v1, p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/vp1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->f()Lcom/yandex/mobile/ads/impl/ao1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/ao1;->f()Lcom/yandex/mobile/ads/impl/if0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/if0;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/yandex/mobile/ads/impl/vq1$a;->b(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(J)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1;->d()I

    move-result v4

    :cond_6
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b60;->b(Lcom/yandex/mobile/ads/impl/vq1;)V

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/on;->a:Z

    if-eqz p0, :cond_7

    const/16 p0, 0x65

    if-ne v4, p0, :cond_7

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1;->k()Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    sget-object p1, Lcom/yandex/mobile/ads/impl/g92;->c:Lcom/yandex/mobile/ads/impl/yq1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/vq1;->k()Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/b60;->a(Lcom/yandex/mobile/ads/impl/vq1;)Lcom/yandex/mobile/ads/impl/eo1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/vq1$a;->a(Lcom/yandex/mobile/ads/impl/zq1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->a()Lcom/yandex/mobile/ads/impl/vq1;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->o()Lcom/yandex/mobile/ads/impl/vp1;

    move-result-object p1

    const-string v1, "Connection"

    invoke-virtual {p1, v1}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "close"

    invoke-static {v2, p1, v6}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-static {p0, v1}, Lcom/yandex/mobile/ads/impl/vq1;->a(Lcom/yandex/mobile/ads/impl/vq1;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v6}, Lg1a;->E(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b60;->k()V

    :cond_9
    const/16 p1, 0xcc

    if-eq v4, p1, :cond_a

    const/16 p1, 0xcd

    if-ne v4, p1, :cond_d

    :cond_a
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zq1;->a()J

    move-result-wide v0

    goto :goto_3

    :cond_b
    const-wide/16 v0, -0x1

    :goto_3
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_d

    new-instance p1, Ljava/net/ProtocolException;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1;->a()Lcom/yandex/mobile/ads/impl/zq1;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/zq1;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HTTP "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " had non-zero Content-Length: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    return-object p0
.end method
