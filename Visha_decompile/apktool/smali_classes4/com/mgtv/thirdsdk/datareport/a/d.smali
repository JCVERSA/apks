.class public Lcom/mgtv/thirdsdk/datareport/a/d;
.super Lcom/hunantv/imgo/a/b;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "com.mgtv.thirdsdk.datareport.a.d"


# instance fields
.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hunantv/imgo/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/hunantv/imgo/a/b;->c:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/hunantv/imgo/net/RequestParams;
    .locals 3

    .line 26
    new-instance v0, Lcom/hunantv/imgo/net/RequestParams;

    invoke-direct {v0}, Lcom/hunantv/imgo/net/RequestParams;-><init>()V

    .line 27
    const-string v1, "c"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "m"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v1, "mf"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "mod"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v1, "net"

    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 32
    const-string v1, "sv"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/a/d;->e:Z

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "u"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v1, "did"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "ch"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/hunantv/imgo/b/c;->a()Lcom/hunantv/imgo/b/c;

    move-result-object v1

    iget-object v1, v1, Lcom/hunantv/imgo/b/c;->f:Ljava/lang/String;

    const-string v2, "suuid"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "sver"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/a/d;->e:Z

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aver"

    invoke-virtual {v0, v2, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "src"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "tk"

    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/hunantv/imgo/net/RequestParams;I)Lcom/hunantv/imgo/net/RequestParams;
    .locals 0

    const/16 p0, 0x8

    if-ne p0, p2, :cond_0

    .line 76
    const-string p0, "suuid"

    const-string p2, ""

    invoke-virtual {p1, p0, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/mgtv/thirdsdk/datareport/a/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/mgtv/thirdsdk/datareport/a/d;

    invoke-direct {v0, p0}, Lcom/mgtv/thirdsdk/datareport/a/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 70
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 71
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 73
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    .line 74
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 75
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/mgtv/thirdsdk/datareport/a/d;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/hunantv/imgo/log/e;->d(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-object p0
.end method


# virtual methods
.method public a(IIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 7

    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p10

    move/from16 v3, p12

    .line 2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/a/d;->a()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v4

    .line 3
    const-string v5, "p"

    const-string v6, "3"

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v5, "f"

    move v6, p2

    invoke-virtual {v4, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 5
    const-string v5, "s"

    move v6, p1

    invoke-virtual {v4, v5, p1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 6
    const-string v5, "type"

    move/from16 v6, p13

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 7
    const-string v5, "h"

    invoke-direct {p0, v2}, Lcom/mgtv/thirdsdk/datareport/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-string v5, "t"

    invoke-virtual {v4, v5, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 9
    const-string v5, "e"

    move-object v6, p4

    invoke-virtual {v4, v5, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v5, "cv"

    const-string v6, "20170105"

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v5, "a"

    move v6, p7

    invoke-virtual {v4, v5, p7}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 12
    const-string v5, "b"

    move v6, p8

    invoke-virtual {v4, v5, p8}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 13
    const-string v5, "n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v5, "i"

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string v5, "si"

    move-object/from16 v6, p9

    invoke-virtual {v4, v5, v6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v5, "ex"

    move-object v6, p5

    invoke-virtual {v4, v5, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v5, "z"

    move v6, p6

    invoke-virtual {v4, v5, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 18
    const-string v5, "pt"

    invoke-virtual {v4, v5, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 19
    :cond_0
    const-string v3, "l"

    invoke-direct {p0, v2}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eqz p11, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    move v3, v2

    .line 20
    :goto_0
    const-string v5, "ml"

    invoke-virtual {v4, v5, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 21
    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hunantv/imgo/data/a;->b()Z

    move-result v3

    const-string v5, "uvip"

    invoke-virtual {v4, v5, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 22
    invoke-direct {p0, v4, p3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;I)Lcom/hunantv/imgo/net/RequestParams;

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 23
    iget-object v0, v0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    const-string v1, "https://v2.res.log.hunantv.com/info.php"

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    goto :goto_1

    :cond_2
    if-ne v1, v2, :cond_3

    .line 24
    iget-object v0, v0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    const-string v1, "hw-v2.log.mgtv.com/info.php"

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v0, v0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-static {}, Lcom/hunantv/imgo/report/c;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    :goto_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/d;->e:Z

    return-void
.end method

.method public a(ZIIILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZIII)V
    .locals 8

    move-object v0, p0

    move v1, p2

    move v2, p4

    move-object/from16 v3, p11

    .line 43
    sget-object v4, Lcom/mgtv/thirdsdk/datareport/a/d;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPlayThirdData:t="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/hunantv/imgo/log/e;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 44
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/a/d;->a()Lcom/hunantv/imgo/net/RequestParams;

    move-result-object v4

    .line 45
    const-string v5, "v"

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v5, "aver"

    invoke-static {p1}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v5, "p"

    const-string v7, "3"

    invoke-virtual {v4, v5, v7}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v5, "f"

    move v7, p3

    invoke-virtual {v4, v5, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 49
    const-string v5, "s"

    invoke-virtual {v4, v5, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 50
    const-string v1, "type"

    move/from16 v5, p15

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 51
    const-string v1, "h"

    invoke-direct {p0, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "t"

    invoke-virtual {v4, v1, p4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 53
    const-string v1, "e"

    move-object v5, p5

    invoke-virtual {v4, v1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "cv"

    const-string v5, "20170105"

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "a"

    move/from16 v5, p8

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 56
    const-string v1, "b"

    move/from16 v5, p9

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 57
    const-string v1, "n"

    const-string v5, ""

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "i"

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "si"

    move-object/from16 v5, p10

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "ex"

    move-object v5, p6

    invoke-virtual {v4, v1, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "z"

    move v5, p7

    invoke-virtual {v4, v1, p7}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 62
    const-string v1, "pt"

    move/from16 v5, p13

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 63
    const-string v1, "ct"

    move/from16 v5, p14

    invoke-virtual {v4, v1, v5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 64
    const-string v1, "l"

    invoke-direct {p0, v3}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p12, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v6

    .line 65
    :goto_0
    const-string v3, "ml"

    invoke-virtual {v4, v3, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 66
    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hunantv/imgo/data/a;->b()Z

    move-result v1

    const-string v3, "uvip"

    invoke-virtual {v4, v3, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 67
    invoke-direct {p0, v4, p4}, Lcom/mgtv/thirdsdk/datareport/a/d;->a(Lcom/hunantv/imgo/net/RequestParams;I)Lcom/hunantv/imgo/net/RequestParams;

    if-ne v2, v6, :cond_1

    .line 68
    iget-object v0, v0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    const-string v1, "hw-v2.log.mgtv.com/info.php"

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, v0, Lcom/hunantv/imgo/a/b;->a:Lcom/hunantv/imgo/report/d;

    invoke-static {}, Lcom/hunantv/imgo/report/c;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    :goto_1
    return-void
.end method
