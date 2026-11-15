.class public Lcom/amazonaws/http/HttpRequest;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/net/URI;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/io/InputStream;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/amazonaws/util/StringUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->a:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/amazonaws/http/HttpRequest;->b:Ljava/net/URI;

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    sget-object p1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    const-string v3, "Content-Length"

    .line 9
    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    return-wide v0

    .line 34
    :cond_2
    :goto_0
    return-wide v1
.end method

.method public c()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/http/HttpRequest;->b:Ljava/net/URI;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amazonaws/http/HttpRequest;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/http/HttpRequest;->e:Z

    .line 2
    .line 3
    return-void
.end method
