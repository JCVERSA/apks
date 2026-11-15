.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/internal/http/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okhttp/r$a;

.field final b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

.field private final c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

.field private d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

.field private final e:Lcom/mbridge/msdk/thrid/okhttp/u;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v10, ":scheme"

    .line 2
    .line 3
    const-string v11, ":authority"

    .line 4
    .line 5
    const-string v0, "connection"

    .line 6
    .line 7
    const-string v1, "host"

    .line 8
    .line 9
    const-string v2, "keep-alive"

    .line 10
    .line 11
    const-string v3, "proxy-connection"

    .line 12
    .line 13
    const-string v4, "te"

    .line 14
    .line 15
    const-string v5, "transfer-encoding"

    .line 16
    .line 17
    const-string v6, "encoding"

    .line 18
    .line 19
    const-string v7, "upgrade"

    .line 20
    .line 21
    const-string v8, ":method"

    .line 22
    .line 23
    const-string v9, ":path"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->f:Ljava/util/List;

    .line 34
    .line 35
    const-string v7, "encoding"

    .line 36
    .line 37
    const-string v8, "upgrade"

    .line 38
    .line 39
    const-string v1, "connection"

    .line 40
    .line 41
    const-string v2, "host"

    .line 42
    .line 43
    const-string v3, "keep-alive"

    .line 44
    .line 45
    const-string v4, "proxy-connection"

    .line 46
    .line 47
    const-string v5, "te"

    .line 48
    .line 49
    const-string v6, "transfer-encoding"

    .line 50
    .line 51
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a([Ljava/lang/Object;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->g:Ljava/util/List;

    .line 60
    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/t;Lcom/mbridge/msdk/thrid/okhttp/r$a;Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->a:Lcom/mbridge/msdk/thrid/okhttp/r$a;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/t;->u()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    sget-object p2, Lcom/mbridge/msdk/thrid/okhttp/u;->f:Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 15
    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p2, Lcom/mbridge/msdk/thrid/okhttp/u;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 24
    .line 25
    :goto_0
    iput-object p2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    .line 26
    .line 27
    return-void
.end method

.method public static a(Lcom/mbridge/msdk/thrid/okhttp/p;Lcom/mbridge/msdk/thrid/okhttp/u;)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/mbridge/msdk/thrid/okhttp/p$a;

    invoke-direct {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/p;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 14
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/thrid/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p0, v3}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP/1.1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/k;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/internal/http/k;

    move-result-object v2

    goto :goto_1

    .line 18
    :cond_0
    sget-object v6, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 19
    sget-object v6, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    invoke-virtual {v6, v0, v4, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/p$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 20
    new-instance p0, Lcom/mbridge/msdk/thrid/okhttp/y$a;

    invoke-direct {p0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/u;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p0

    iget p1, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/k;->b:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(I)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p0

    iget-object p1, v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http/k;->c:Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p0

    .line 24
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object p0

    return-object p0

    .line 25
    :cond_3
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Expected \':status\' header not present"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/mbridge/msdk/thrid/okhttp/w;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/thrid/okhttp/w;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w;->c()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->f:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->g:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v4

    invoke-static {v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/i;->a(Lcom/mbridge/msdk/thrid/okhttp/q;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    sget-object v4, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->i:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-direct {v3, v4, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    new-instance v2, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    sget-object v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;->h:Lcom/mbridge/msdk/thrid/okio/f;

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/thrid/okhttp/q;->l()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/p;->b()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_2

    .line 10
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/p;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/thrid/okio/f;->c(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okio/f;

    move-result-object v3

    .line 11
    sget-object v4, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->f:Ljava/util/List;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okio/f;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    new-instance v4, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/p;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/c;-><init>(Lcom/mbridge/msdk/thrid/okio/f;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Z)Lcom/mbridge/msdk/thrid/okhttp/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->j()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->e:Lcom/mbridge/msdk/thrid/okhttp/u;

    invoke-static {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->a(Lcom/mbridge/msdk/thrid/okhttp/p;Lcom/mbridge/msdk/thrid/okhttp/u;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 11
    sget-object p1, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a:Lcom/mbridge/msdk/thrid/okhttp/internal/a;

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/a;->a(Lcom/mbridge/msdk/thrid/okhttp/y$a;)I

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/y;)Lcom/mbridge/msdk/thrid/okhttp/z;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->b:Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;

    iget-object v1, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->f:Lcom/mbridge/msdk/thrid/okhttp/n;

    iget-object v0, v0, Lcom/mbridge/msdk/thrid/okhttp/internal/connection/g;->e:Lcom/mbridge/msdk/thrid/okhttp/d;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/n;->responseBodyStart(Lcom/mbridge/msdk/thrid/okhttp/d;)V

    .line 27
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->a(Lcom/mbridge/msdk/thrid/okhttp/y;)J

    move-result-wide v1

    .line 29
    new-instance p1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f$a;

    iget-object v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->e()Lcom/mbridge/msdk/thrid/okio/s;

    move-result-object v3

    invoke-direct {p1, p0, v3}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f$a;-><init>(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;Lcom/mbridge/msdk/thrid/okio/s;)V

    .line 30
    new-instance v3, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;

    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okio/l;->a(Lcom/mbridge/msdk/thrid/okio/s;)Lcom/mbridge/msdk/thrid/okio/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;-><init>(Ljava/lang/String;JLcom/mbridge/msdk/thrid/okio/e;)V

    return-object v3
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/w;J)Lcom/mbridge/msdk/thrid/okio/r;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d()Lcom/mbridge/msdk/thrid/okio/r;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->d()Lcom/mbridge/msdk/thrid/okio/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okio/r;->close()V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/thrid/okhttp/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/w;->a()Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->b(Lcom/mbridge/msdk/thrid/okhttp/w;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-virtual {v1, p1, v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->a(Ljava/util/List;Z)Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    .line 6
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->h()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->a:Lcom/mbridge/msdk/thrid/okhttp/r$a;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->b()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okio/t;

    .line 7
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->l()Lcom/mbridge/msdk/thrid/okio/t;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->a:Lcom/mbridge/msdk/thrid/okhttp/r$a;

    invoke-interface {v0}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/mbridge/msdk/thrid/okio/t;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mbridge/msdk/thrid/okio/t;

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->c:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/g;->flush()V

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/f;->d:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;->g:Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http2/i;->c(Lcom/mbridge/msdk/thrid/okhttp/internal/http2/b;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
