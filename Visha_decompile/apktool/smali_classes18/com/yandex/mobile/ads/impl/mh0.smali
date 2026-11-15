.class public final Lcom/yandex/mobile/ads/impl/mh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/c60;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/mh0$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ao1;

.field private final b:Lcom/yandex/mobile/ads/impl/do1;

.field private final c:Lcom/yandex/mobile/ads/impl/hh0;

.field private volatile d:Lcom/yandex/mobile/ads/impl/oh0;

.field private final e:Lcom/yandex/mobile/ads/impl/mm1;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, ":scheme"

    const-string v11, ":authority"

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/g92;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/mh0;->g:Ljava/util/List;

    const-string v7, "encoding"

    const-string v8, "upgrade"

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/g92;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/mh0;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fe1;Lcom/yandex/mobile/ads/impl/ao1;Lcom/yandex/mobile/ads/impl/do1;Lcom/yandex/mobile/ads/impl/hh0;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mh0;->a:Lcom/yandex/mobile/ads/impl/ao1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/mh0;->b:Lcom/yandex/mobile/ads/impl/do1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/mh0;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/fe1;->r()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/yandex/mobile/ads/impl/mm1;->h:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/yandex/mobile/ads/impl/mm1;->g:Lcom/yandex/mobile/ads/impl/mm1;

    :goto_0
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mh0;->e:Lcom/yandex/mobile/ads/impl/mm1;

    return-void
.end method

.method public static final synthetic d()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/mh0;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Z)Lcom/yandex/mobile/ads/impl/vq1$a;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/oh0;->s()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->e:Lcom/yandex/mobile/ads/impl/mm1;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/mh0$a;->a(Lcom/yandex/mobile/ads/impl/qf0;Lcom/yandex/mobile/ads/impl/mm1;)Lcom/yandex/mobile/ads/impl/vq1$a;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vq1$a;->b()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vp1;J)Lokio/Sink;
    .locals 0

    .line 1
    const-string p2, "request"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->j()Lcom/yandex/mobile/ads/impl/oh0$a;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vq1;)Lokio/Source;
    .locals 1

    .line 4
    const-string v0, "response"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->l()Lcom/yandex/mobile/ads/impl/oh0$b;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0;->j()Lcom/yandex/mobile/ads/impl/oh0$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/oh0$a;->close()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vp1;)V
    .locals 7

    .line 9
    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    if-eqz v1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->a()Lcom/yandex/mobile/ads/impl/yp1;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 12
    :goto_0
    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->d()Lcom/yandex/mobile/ads/impl/qf0;

    move-result-object v0

    .line 14
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    new-instance v4, Lcom/yandex/mobile/ads/impl/lf0;

    sget-object v5, Lcom/yandex/mobile/ads/impl/lf0;->f:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->f()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v4, Lcom/yandex/mobile/ads/impl/lf0;

    sget-object v5, Lcom/yandex/mobile/ads/impl/lf0;->g:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object v6

    invoke-static {v6}, Lcom/yandex/mobile/ads/impl/cq1;->a(Lcom/yandex/mobile/ads/impl/gi0;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v4, "Host"

    invoke-virtual {p1, v4}, Lcom/yandex/mobile/ads/impl/vp1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 18
    new-instance v5, Lcom/yandex/mobile/ads/impl/lf0;

    sget-object v6, Lcom/yandex/mobile/ads/impl/lf0;->i:Lokio/ByteString;

    invoke-direct {v5, v6, v4}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_2
    new-instance v4, Lcom/yandex/mobile/ads/impl/lf0;

    sget-object v5, Lcom/yandex/mobile/ads/impl/lf0;->h:Lokio/ByteString;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vp1;->g()Lcom/yandex/mobile/ads/impl/gi0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gi0;->k()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v5, p1}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qf0;->size()I

    move-result p1

    :goto_1
    if-ge v2, p1, :cond_5

    .line 21
    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/qf0;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v5, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toLowerCase(...)"

    invoke-static {v4, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v5, Lcom/yandex/mobile/ads/impl/mh0;->g:Ljava/util/List;

    .line 23
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 24
    const-string v5, "te"

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/qf0;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "trailers"

    invoke-static {v5, v6}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 25
    :cond_3
    new-instance v5, Lcom/yandex/mobile/ads/impl/lf0;

    invoke-virtual {v0, v2}, Lcom/yandex/mobile/ads/impl/qf0;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/yandex/mobile/ads/impl/lf0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 26
    :cond_5
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mh0;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p1, v3, v1}, Lcom/yandex/mobile/ads/impl/hh0;->a(Ljava/util/ArrayList;Z)Lcom/yandex/mobile/ads/impl/oh0;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    .line 27
    iget-boolean p1, p0, Lcom/yandex/mobile/ads/impl/mh0;->f:Z

    if-nez p1, :cond_6

    .line 28
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oh0;->r()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mh0;->b:Lcom/yandex/mobile/ads/impl/do1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/do1;->e()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 29
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oh0;->u()Lcom/yandex/mobile/ads/impl/oh0$c;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->b:Lcom/yandex/mobile/ads/impl/do1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/do1;->g()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    return-void

    .line 30
    :cond_6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    sget-object p1, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/t50;)V

    .line 31
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/vq1;)J
    .locals 0

    .line 2
    const-string p0, "response"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/xh0;->a(Lcom/yandex/mobile/ads/impl/vq1;)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/g92;->a(Lcom/yandex/mobile/ads/impl/vq1;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->c:Lcom/yandex/mobile/ads/impl/hh0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/hh0;->flush()V

    return-void
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/ao1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->a:Lcom/yandex/mobile/ads/impl/ao1;

    return-object p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/mh0;->f:Z

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mh0;->d:Lcom/yandex/mobile/ads/impl/oh0;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/yandex/mobile/ads/impl/t50;->i:Lcom/yandex/mobile/ads/impl/t50;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/oh0;->a(Lcom/yandex/mobile/ads/impl/t50;)V

    :cond_0
    return-void
.end method
