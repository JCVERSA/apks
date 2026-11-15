.class public Ln8/e;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;

.field private d:[B


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Ln8/e;->a:I

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ln8/e;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Ln8/e;->c:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    const-string v0, "HttpResponse"

    .line 29
    .line 30
    const-string v1, "Failed to createHttpResponse"

    .line 31
    .line 32
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    iput-object p2, p0, Ln8/e;->d:[B

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Ln8/e;->a:I

    .line 2
    .line 3
    return v0
.end method
