.class public final Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/thrid/okhttp/r;


# instance fields
.field private final a:Lcom/mbridge/msdk/thrid/okhttp/k;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/thrid/okhttp/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;->a:Lcom/mbridge/msdk/thrid/okhttp/k;

    .line 5
    .line 6
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/thrid/okhttp/j;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    .line 38
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/thrid/okhttp/j;

    .line 40
    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/mbridge/msdk/thrid/okhttp/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/thrid/okhttp/r$a;)Lcom/mbridge/msdk/thrid/okhttp/y;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->d()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->f()Lcom/mbridge/msdk/thrid/okhttp/w$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->a()Lcom/mbridge/msdk/thrid/okhttp/x;

    move-result-object v2

    const-wide/16 v3, -0x1

    const-string v5, "Content-Length"

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/x;->b()Lcom/mbridge/msdk/thrid/okhttp/s;

    .line 5
    invoke-virtual {v2}, Lcom/mbridge/msdk/thrid/okhttp/x;->a()J

    move-result-wide v6

    cmp-long v2, v6, v3

    const-string v8, "Transfer-Encoding"

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 7
    invoke-virtual {v1, v8}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    goto :goto_0

    .line 8
    :cond_0
    const-string v2, "chunked"

    invoke-virtual {v1, v8, v2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 9
    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 10
    :cond_1
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->a(Lcom/mbridge/msdk/thrid/okhttp/q;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 12
    :cond_2
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    .line 13
    const-string v6, "Keep-Alive"

    invoke-virtual {v1, v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 14
    :cond_3
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "gzip"

    if-nez v6, :cond_4

    const-string v6, "Range"

    invoke-virtual {v0, v6}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 15
    invoke-virtual {v1, v2, v8}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    const/4 v7, 0x1

    .line 16
    :cond_4
    iget-object v2, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;->a:Lcom/mbridge/msdk/thrid/okhttp/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/k;->a(Lcom/mbridge/msdk/thrid/okhttp/q;)Ljava/util/List;

    move-result-object v2

    .line 17
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 18
    invoke-direct {p0, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Cookie"

    invoke-virtual {v1, v6, v2}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 19
    :cond_5
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/thrid/okhttp/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_6

    .line 20
    invoke-static {}, Lcom/mbridge/msdk/thrid/okhttp/internal/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/w$a;

    .line 21
    :cond_6
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/w$a;->a()Lcom/mbridge/msdk/thrid/okhttp/w;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/r$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/http/a;->a:Lcom/mbridge/msdk/thrid/okhttp/k;

    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/w;->g()Lcom/mbridge/msdk/thrid/okhttp/q;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->m()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v6

    invoke-static {v1, v2, v6}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->a(Lcom/mbridge/msdk/thrid/okhttp/k;Lcom/mbridge/msdk/thrid/okhttp/q;Lcom/mbridge/msdk/thrid/okhttp/p;)V

    .line 23
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->o()Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/w;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    move-result-object v0

    if-eqz v7, :cond_7

    .line 25
    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    invoke-static {p1}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/e;->b(Lcom/mbridge/msdk/thrid/okhttp/y;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    new-instance v2, Lcom/mbridge/msdk/thrid/okio/j;

    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->d()Lcom/mbridge/msdk/thrid/okhttp/z;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/z;->k()Lcom/mbridge/msdk/thrid/okio/e;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/mbridge/msdk/thrid/okio/j;-><init>(Lcom/mbridge/msdk/thrid/okio/s;)V

    .line 28
    invoke-virtual {p1}, Lcom/mbridge/msdk/thrid/okhttp/y;->m()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mbridge/msdk/thrid/okhttp/p;->a()Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object v6

    .line 29
    invoke-virtual {v6, v1}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v5}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->b(Ljava/lang/String;)Lcom/mbridge/msdk/thrid/okhttp/p$a;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/mbridge/msdk/thrid/okhttp/p$a;->a()Lcom/mbridge/msdk/thrid/okhttp/p;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/p;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    .line 33
    const-string v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/thrid/okhttp/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 34
    new-instance v1, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;

    invoke-static {v2}, Lcom/mbridge/msdk/thrid/okio/l;->a(Lcom/mbridge/msdk/thrid/okio/s;)Lcom/mbridge/msdk/thrid/okio/e;

    move-result-object v2

    invoke-direct {v1, p1, v3, v4, v2}, Lcom/mbridge/msdk/thrid/okhttp/internal/http/h;-><init>(Ljava/lang/String;JLcom/mbridge/msdk/thrid/okio/e;)V

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a(Lcom/mbridge/msdk/thrid/okhttp/z;)Lcom/mbridge/msdk/thrid/okhttp/y$a;

    .line 35
    :cond_7
    invoke-virtual {v0}, Lcom/mbridge/msdk/thrid/okhttp/y$a;->a()Lcom/mbridge/msdk/thrid/okhttp/y;

    move-result-object p1

    return-object p1
.end method
