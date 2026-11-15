.class public Lcom/mgtv/downloader/statistics/a/a;
.super Lcom/mgtv/downloader/statistics/a;
.source "SourceFile"


# instance fields
.field private d:Lcom/hunantv/imgo/b/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgtv/downloader/statistics/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mgtv/downloader/statistics/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/downloader/statistics/a/a;->d:Lcom/hunantv/imgo/b/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/downloader/statistics/a/a;
    .locals 1

    .line 1
    new-instance v0, Lcom/mgtv/downloader/statistics/a/a;

    invoke-direct {v0, p0}, Lcom/mgtv/downloader/statistics/a/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 23
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 24
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/statistics/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 26
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 27
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 28
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private b()Lcom/mgtv/downloader/net/RequestParams;
    .locals 2

    .line 1
    new-instance p0, Lcom/mgtv/downloader/net/RequestParams;

    invoke-direct {p0}, Lcom/mgtv/downloader/net/RequestParams;-><init>()V

    .line 2
    const-string v0, "c"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v0, "m"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "mf"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-string v0, "mod"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string v0, "net"

    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 7
    const-string v0, "sv"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-boolean v0, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "u"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v0, "ch"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v0

    iget-object v0, v0, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v1, "suuid"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v0, "sver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-boolean v0, Lcom/hunantv/imgo/util/d;->a:Z

    invoke-static {v0}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aver"

    invoke-virtual {p0, v1, v0}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    .line 39
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public a(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    .line 2
    invoke-direct {p0}, Lcom/mgtv/downloader/statistics/a/a;->b()Lcom/mgtv/downloader/net/RequestParams;

    move-result-object v3

    .line 3
    const-string v4, "p"

    const-string v5, "3"

    invoke-virtual {v3, v4, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v4, "f"

    move v5, p2

    invoke-virtual {v3, v4, p2}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 5
    const-string v4, "z"

    move v5, p4

    invoke-virtual {v3, v4, p4}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 6
    const-string v4, "s"

    invoke-virtual {v3, v4, p1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 7
    const-string v5, "type"

    invoke-virtual {v3, v5, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 8
    const-string v1, "h"

    invoke-direct {p0, p5}, Lcom/mgtv/downloader/statistics/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v1, "a"

    move v5, p6

    invoke-virtual {v3, v1, p6}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 10
    const-string v1, "si"

    move-object v5, p7

    invoke-virtual {v3, v1, p7}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v1, "t"

    const-string v5, "6"

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v1, "n"

    move-wide/from16 v5, p9

    invoke-virtual {v3, v1, v5, v6}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;J)V

    .line 13
    const-string v1, "i"

    move-object/from16 v5, p13

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v1, "ex"

    move-object v5, p8

    invoke-virtual {v3, v1, p8}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v1, "e"

    move-object v5, p3

    invoke-virtual {v3, v1, p3}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v1, "cv"

    const-string v5, "20160120"

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "b"

    move/from16 v5, p11

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 18
    const-string v1, "pt"

    const-string v5, ""

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "l"

    invoke-direct {p0, p5}, Lcom/mgtv/downloader/statistics/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p12, :cond_0

    const/4 v4, 0x2

    .line 20
    :cond_0
    const-string v1, "ml"

    invoke-virtual {v3, v1, v4}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 21
    const-string v1, "uvip"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 22
    iget-object v0, v0, Lcom/mgtv/downloader/statistics/a;->a:Lcom/mgtv/downloader/statistics/b;

    const-string v1, "https://hw-v2.log.mgtv.com/info.php"

    invoke-virtual {v0, v1, v3}, Lcom/mgtv/downloader/statistics/b;->a(Ljava/lang/String;Lcom/mgtv/downloader/net/RequestParams;)V

    return-void
.end method

.method public b(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p5

    .line 16
    invoke-direct {p0}, Lcom/mgtv/downloader/statistics/a/a;->b()Lcom/mgtv/downloader/net/RequestParams;

    move-result-object v3

    .line 17
    const-string v4, "p"

    const-string v5, "3"

    invoke-virtual {v3, v4, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v4, "r"

    invoke-virtual {v3, v4, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v4, "f"

    move v5, p2

    invoke-virtual {v3, v4, p2}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 20
    const-string v4, "z"

    move v5, p4

    invoke-virtual {v3, v4, p4}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 21
    const-string v4, "s"

    invoke-virtual {v3, v4, p1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    .line 22
    const-string v5, "type"

    invoke-virtual {v3, v5, v1}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 23
    const-string v1, "h"

    invoke-direct {p0, p5}, Lcom/mgtv/downloader/statistics/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "a"

    move v5, p6

    invoke-virtual {v3, v1, p6}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 25
    const-string v1, "si"

    move-object v5, p7

    invoke-virtual {v3, v1, p7}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "t"

    const-string v5, "6"

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "n"

    move-wide/from16 v5, p9

    invoke-virtual {v3, v1, v5, v6}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;J)V

    .line 28
    const-string v1, "i"

    move-object/from16 v5, p13

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "ex"

    move-object v5, p8

    invoke-virtual {v3, v1, p8}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "e"

    move-object v5, p3

    invoke-virtual {v3, v1, p3}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "cv"

    const-string v5, "20160120"

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "b"

    move/from16 v5, p11

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 33
    const-string v1, "pt"

    const-string v5, ""

    invoke-virtual {v3, v1, v5}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "l"

    invoke-direct {p0, p5}, Lcom/mgtv/downloader/statistics/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p12, :cond_0

    const/4 v4, 0x2

    .line 35
    :cond_0
    const-string v1, "ml"

    invoke-virtual {v3, v1, v4}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 36
    const-string v1, "uvip"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/mgtv/downloader/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 37
    iget-object v0, v0, Lcom/mgtv/downloader/statistics/a;->a:Lcom/mgtv/downloader/statistics/b;

    const-string v1, "http://v1.play.log.hunantv.com/info.php"

    invoke-virtual {v0, v1, v3}, Lcom/mgtv/downloader/statistics/b;->a(Ljava/lang/String;Lcom/mgtv/downloader/net/RequestParams;)V

    return-void
.end method
