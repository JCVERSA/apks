.class public Lcom/mgtv/thirdsdk/datareport/a/b;
.super Lcom/mgtv/thirdsdk/datareport/a/a;
.source "SourceFile"


# static fields
.field public static c:I


# instance fields
.field a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

.field public b:Z

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/hunantv/imgo/report/d;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZIILcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    const-wide v0, 0x7fffffffffffffffL

    const-wide/32 v2, 0x493e0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mgtv/thirdsdk/datareport/a/a;-><init>(JJ)V

    const/4 p7, 0x0

    iput-boolean p7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->b:Z

    iput p7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->d:I

    iput p7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    const-string p7, ""

    iput-object p7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    invoke-static {}, Lcom/hunantv/imgo/report/d;->a()Lcom/hunantv/imgo/report/d;

    move-result-object p7

    iput-object p7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->n:Lcom/hunantv/imgo/report/d;

    iput-object p2, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    iput p2, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->k:I

    iput p4, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iput p5, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    iput-object p6, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    iput-object p8, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->i:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->j:Z

    return-void
.end method

.method private a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |o="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sunli"

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 7
    const-string p6, ""

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->j:Z

    invoke-static {v1}, Lcom/hunantv/imgo/util/b;->b(Z)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/hunantv/imgo/net/RequestParams;

    invoke-direct {v2}, Lcom/hunantv/imgo/net/RequestParams;-><init>()V

    .line 10
    const-string v3, "p"

    const-string v4, "3"

    invoke-virtual {v2, v3, v4}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string v3, "v"

    invoke-virtual {v2, v3, v1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string v1, "u"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v1, "f"

    invoke-virtual {v2, v1, p1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 14
    const-string p1, "h"

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p1, "t"

    invoke-virtual {v2, p1, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 16
    const-string v1, "cv"

    const-string v3, "20170105"

    invoke-virtual {v2, v1, v3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "r"

    invoke-virtual {v2, v1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 18
    invoke-virtual {v2, p1, p3}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 19
    const-string p1, "c"

    invoke-virtual {v2, p1, v0}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 20
    const-string p1, "o"

    invoke-virtual {v2, p1, p6}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string p1, "b"

    invoke-virtual {v2, p1, p7}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 22
    const-string p1, "e"

    invoke-virtual {v2, p1, p8}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p1, "ex"

    invoke-virtual {v2, p1, p9}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string p1, "sv"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->r()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string p1, "mf"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->s()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string p1, "mod"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->p()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string p1, "m"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->J()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string p1, "pt"

    iget-object p5, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->i:Ljava/lang/String;

    invoke-virtual {v2, p1, p5}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "l"

    invoke-direct {p0, p4, p2}, Lcom/mgtv/thirdsdk/datareport/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string p1, "ml"

    iget p2, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->k:I

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 31
    const-string p1, "net"

    invoke-static {}, Lcom/hunantv/imgo/util/p;->d()I

    move-result p2

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 32
    invoke-static {}, Lcom/hunantv/imgo/data/a;->a()Lcom/hunantv/imgo/data/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hunantv/imgo/data/a;->b()Z

    move-result p1

    const-string p2, "uvip"

    invoke-virtual {v2, p2, p1}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;I)V

    .line 33
    const-string p1, "src"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->O()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string p1, "tk"

    iget-object p2, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->m:Ljava/lang/String;

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string p1, "ch"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->x()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string p1, "$channel"

    invoke-static {}, Lcom/hunantv/imgo/util/b;->z()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/hunantv/imgo/net/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p3, v0, :cond_1

    .line 37
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->n:Lcom/hunantv/imgo/report/d;

    const-string p1, "hw-play.log.mgtv.com/info.php"

    invoke-virtual {p0, p1, v2}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->n:Lcom/hunantv/imgo/report/d;

    invoke-static {}, Lcom/hunantv/imgo/report/c;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/hunantv/imgo/report/d;->a(Ljava/lang/String;Lcom/hunantv/imgo/net/RequestParams;)V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    const-string p0, ""

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 6
    array-length p1, p0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    .line 7
    aget-object p0, p0, p1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 8
    aget-object p0, p0, p1

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 2
    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget v7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    iget-object v9, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v5, 0x4

    const-string v6, ""

    move-object v0, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget v7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    iget-object v9, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v5, 0x4

    const-string v6, ""

    move-object v0, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    :try_start_0
    new-instance p0, Ljava/net/URL;

    invoke-direct {p0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    const-string p0, ""

    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget-object v6, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const-string v1, ""

    if-nez v0, :cond_1

    move-object v8, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_0
    iget v9, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    iget-object v11, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p0

    move-object v10, p1

    .line 4
    invoke-direct/range {v2 .. v11}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    iget v8, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v6, 0x2

    const-string v7, ""

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private h()V
    .locals 11

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget-object v5, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_0
    iget v8, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    const-string v9, ""

    iget-object v10, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->d:I

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->g()V

    .line 3
    :cond_0
    iget p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mgtv/thirdsdk/datareport/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/mgtv/thirdsdk/datareport/a/b;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/a;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 13

    .line 5
    iget v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    const/4 v1, 0x6

    const-string v2, ""

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    move-object v9, v2

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_1
    sget v0, Lcom/mgtv/thirdsdk/datareport/a/b;->c:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    .line 8
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 9
    :goto_2
    iget v4, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget-object v7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    iget v10, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    const-string v11, ""

    const/4 v8, 0x3

    move-object v3, p0

    move-object v12, p1

    invoke-direct/range {v3 .. v12}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    .line 11
    iput p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->d:I

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/a;->b()Lcom/mgtv/thirdsdk/datareport/a/a;

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->g()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/thirdsdk/datareport/a/b;->h()V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-interface {v0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->isCompletion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getDuration()I

    move-result p0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->a:Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/ImgoPlayerReportInterface;->getCurrentPosition()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public g()V
    .locals 10

    iget v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    iget v7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    const-string v8, ""

    iget-object v9, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    iget-object v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mgtv/thirdsdk/datareport/a/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->h:I

    iget-object v4, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->f:Ljava/lang/String;

    iget v7, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->e:I

    const-string v8, ""

    iget-object v9, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->l:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/mgtv/thirdsdk/datareport/a/b;->a(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mgtv/thirdsdk/datareport/a/b;->g:I

    return-void
.end method
