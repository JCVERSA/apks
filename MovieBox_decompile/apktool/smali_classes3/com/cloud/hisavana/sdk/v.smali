.class public Lcom/cloud/hisavana/sdk/v;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/v$d;,
        Lcom/cloud/hisavana/sdk/v$e;,
        Lcom/cloud/hisavana/sdk/v$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/v$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/v$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/v;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/v;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/v;->i(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lcom/cloud/hisavana/sdk/v;
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/hisavana/sdk/v$e;->a()Lcom/cloud/hisavana/sdk/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/v;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/v;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/v;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/v;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p6, p5, p7}, Lcom/cloud/hisavana/sdk/v;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/v$b;

    .line 12
    .line 13
    move-object v1, v0

    .line 14
    move-object v2, p0

    .line 15
    move v3, p4

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p6

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p7

    .line 20
    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/v$b;-><init>(Lcom/cloud/hisavana/sdk/v;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2, p1, p3, p4, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private f(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Lcom/cloud/hisavana/sdk/v$d;->a()V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/h4;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/h4;->c()Lcom/cloud/hisavana/sdk/h4;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/v;->f(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/w2;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/h4;->c()Lcom/cloud/hisavana/sdk/h4;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/v;->f(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/v;->l(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/v;->n(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/v;->p(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/v;->g(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/v;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isH5Zip()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v3, 0x5

    .line 20
    move-object v0, p0

    .line 21
    move-object v1, p2

    .line 22
    move-object v5, p1

    .line 23
    move-object v6, p3

    .line 24
    move-object v7, p4

    .line 25
    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/v;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, "offline_zip"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    new-instance v0, Ljava/io/File;

    .line 42
    .line 43
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/r0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method private synthetic i(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/v;->m(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/v;->o(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 4
    .line 5
    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-gtz p1, :cond_3

    .line 13
    .line 14
    :cond_1
    if-nez p2, :cond_2

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/h4;->c()Lcom/cloud/hisavana/sdk/h4;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/v;->f(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 23
    .line 24
    .line 25
    :cond_3
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/p0;->a:Lcom/cloud/hisavana/sdk/common/util/p0$a;

    .line 8
    .line 9
    new-instance v1, Lcom/cloud/hisavana/sdk/v$a;

    .line 10
    .line 11
    invoke-direct {v1, p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/v$a;-><init>(Lcom/cloud/hisavana/sdk/v;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/p0$a;->c(Lcom/cloud/hisavana/sdk/common/util/p0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/w2;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/w2;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    :goto_0
    move v5, v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v0, 0x2

    .line 32
    goto :goto_0

    .line 33
    :goto_1
    const/4 v6, 0x0

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p2

    .line 36
    move-object v7, p1

    .line 37
    move-object v8, p3

    .line 38
    move-object v9, p4

    .line 39
    invoke-direct/range {v2 .. v9}, Lcom/cloud/hisavana/sdk/v;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 40
    .line 41
    .line 42
    :goto_2
    return-void
.end method

.method private m(Ljava/util/List;)V
    .locals 7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-boolean v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v4, 0x3

    .line 37
    invoke-static {v1, v0, v4, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    if-eqz v5, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iget v5, v5, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    .line 59
    .line 60
    const/4 v6, 0x2

    .line 61
    if-ne v5, v6, :cond_3

    .line 62
    .line 63
    const-string v5, "B20301"

    .line 64
    .line 65
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-nez v5, :cond_2

    .line 70
    .line 71
    const-string v5, "B20302"

    .line 72
    .line 73
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_2

    .line 78
    .line 79
    const-string v5, "B20303"

    .line 80
    .line 81
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    :cond_2
    return-void

    .line 88
    :cond_3
    const/4 v4, 0x1

    .line 89
    invoke-static {v1, v0, v4, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 11

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfoStatus()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getIconUrl()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/2addr v1, v2

    .line 41
    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "\u5f00\u59cb\u4e0b\u8f7dPslink Half\u7d20\u6750 =="

    .line 54
    .line 55
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v4, " ,psImgUrl.size() == "

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string v4, "OfflineDownload"

    .line 78
    .line 79
    invoke-virtual {v1, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const/4 v4, 0x4

    .line 83
    const/4 v5, 0x0

    .line 84
    move-object v1, p0

    .line 85
    move-object v2, p2

    .line 86
    move-object v6, p1

    .line 87
    move-object v7, p3

    .line 88
    move-object v8, p4

    .line 89
    invoke-direct/range {v1 .. v8}, Lcom/cloud/hisavana/sdk/v;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    .line 107
    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_1

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    const/4 v6, 0x4

    .line 125
    const/4 v7, 0x0

    .line 126
    move-object v3, p0

    .line 127
    move-object v4, p2

    .line 128
    move-object v8, p1

    .line 129
    move-object v9, p3

    .line 130
    move-object v10, p4

    .line 131
    invoke-direct/range {v3 .. v10}, Lcom/cloud/hisavana/sdk/v;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    return-void
.end method

.method private o(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/v;->a:Lcom/cloud/hisavana/sdk/v$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/v$c;->a(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private p(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x6

    .line 32
    const/4 v6, 0x0

    .line 33
    move-object v2, p0

    .line 34
    move-object v3, p2

    .line 35
    move-object v7, p1

    .line 36
    move-object v8, p3

    .line 37
    move-object v9, p4

    .line 38
    invoke-direct/range {v2 .. v9}, Lcom/cloud/hisavana/sdk/v;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/h4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/v;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/v;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public j(Ljava/util/List;Lcom/cloud/hisavana/sdk/v$c;)V
    .locals 6

    .line 1
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/v;->a:Lcom/cloud/hisavana/sdk/v$c;

    .line 2
    .line 3
    const-string p2, "OfflineDownload"

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    move-object v2, v0

    .line 20
    move-object v3, v2

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 32
    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v5, Lcom/cloud/hisavana/sdk/h4;

    .line 37
    .line 38
    invoke-direct {v5, v4}, Lcom/cloud/hisavana/sdk/h4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 39
    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    move-object v2, v5

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {v3, v5}, Lcom/cloud/hisavana/sdk/h4;->b(Lcom/cloud/hisavana/sdk/h4;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    move-object v3, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    if-nez v2, :cond_4

    .line 51
    .line 52
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    .line 57
    .line 58
    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/v;->o(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_4
    new-instance p2, Lcom/cloud/hisavana/sdk/u;

    .line 66
    .line 67
    invoke-direct {p2, p0, p1}, Lcom/cloud/hisavana/sdk/u;-><init>(Lcom/cloud/hisavana/sdk/v;Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v2, p2}, Lcom/cloud/hisavana/sdk/v;->f(Lcom/cloud/hisavana/sdk/h4;Lcom/cloud/hisavana/sdk/v$d;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_5
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "\u5e7f\u544alist\u4e3a\u7a7a"

    .line 79
    .line 80
    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/v;->o(Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
