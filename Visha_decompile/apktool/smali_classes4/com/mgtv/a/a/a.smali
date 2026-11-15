.class public Lcom/mgtv/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:J

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/mgmi/model/VASTAd;

.field private l:Lcom/mgmi/net/bean/BootAdBean;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->d:Z

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/a/a;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/a/a;->n:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;
    .locals 2

    .line 19
    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    .line 20
    iget-object p0, p0, Lcom/mgtv/a/a/a;->j:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 21
    invoke-virtual {v0, p0}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    :cond_0
    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgmi/e/g;->c(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/mgmi/e/g;->d(Ljava/lang/String;)Lcom/mgmi/e/g;

    move-result-object p0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getCid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mgmi/e/g;->e(Ljava/lang/String;)Lcom/mgmi/e/g;

    :cond_1
    return-object v0
.end method

.method private a(Lcom/mgmi/net/bean/BootAdBean;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    .line 50
    :try_start_0
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-eqz p0, :cond_3

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p0, :cond_3

    .line 51
    const-string v0, "2"

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 52
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    const-string p1, "video"

    iput-object p1, p0, Lcom/mgmi/net/bean/a;->d:Ljava/lang/String;

    return-object p1

    .line 53
    :cond_0
    const-string p0, "4"

    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 54
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    const-string p1, "H5"

    iput-object p1, p0, Lcom/mgmi/net/bean/a;->d:Ljava/lang/String;

    return-object p1

    .line 55
    :cond_1
    const-string p0, "3"

    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 56
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    const-string p1, "c2s"

    iput-object p1, p0, Lcom/mgmi/net/bean/a;->d:Ljava/lang/String;

    return-object p1

    .line 57
    :cond_2
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    const-string p1, "image"

    iput-object p1, p0, Lcom/mgmi/net/bean/a;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 58
    :catchall_0
    :cond_3
    const-string p0, "none"

    return-object p0
.end method

.method private a(Ljava/util/List;Lcom/mgmi/e/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mgmi/e/a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 68
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    .line 69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/mgmi/e/a;->getResult()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[AUCTION_LOSS]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {p2}, Lcom/mgmi/e/a;->getWinECPM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p2}, Lcom/mgmi/e/a;->getWinECPM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwrd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "[AUCTION_PRICE]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 74
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/e/a;->getSecondECPM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p2}, Lcom/mgmi/e/a;->getSecondECPM()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lwrd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string v1, "[HIGHEST_LOSS_PRICE]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 78
    :cond_1
    invoke-virtual {p2}, Lcom/mgmi/e/a;->getBidWinner()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    const-string v0, "[AUCTION_SEAT_ID]"

    invoke-virtual {p2}, Lcom/mgmi/e/a;->getBidWinner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 80
    :cond_2
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->err:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    iget-object p0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->err:Ljava/lang/String;

    const-string v0, "[ERRORCODE]"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string p2, "[ERRORMSG]"

    if-nez p3, :cond_0

    const-string p3, "null"

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lg4d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p0, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    .line 30
    const-string p2, "[ERRORURL]"

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 31
    :cond_1
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_2

    .line 84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 85
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 87
    invoke-static {v1}, Lwrd;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public a()V
    .locals 2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgtv/a/a/a;->a:J

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/mgtv/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 31
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, p1, p0, v0}, Lcom/mgmi/e/a/d;->a(ILcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 5

    .line 10
    div-int/lit16 p1, p1, 0x3e8

    .line 11
    iget v0, p0, Lcom/mgtv/a/a/a;->b:I

    if-eq p1, v0, :cond_3

    .line 12
    iput p1, p0, Lcom/mgtv/a/a/a;->b:I

    .line 13
    div-int/lit16 p2, p2, 0x3e8

    int-to-double v0, p2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v0

    double-to-int p2, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v2, v2

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v3

    double-to-int v0, v0

    if-ne p1, p2, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->c()V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->d()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->e()V

    .line 17
    :cond_2
    :goto_0
    iget-boolean p2, p0, Lcom/mgtv/a/a/a;->c:Z

    if-eqz p2, :cond_3

    .line 18
    invoke-virtual {p0, p1}, Lcom/mgtv/a/a/a;->a(I)V

    :cond_3
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 10

    .line 34
    iget v0, p0, Lcom/mgtv/a/a/a;->b:I

    const v1, 0x324b0

    const/4 v2, 0x6

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    move v5, v2

    goto :goto_1

    :cond_1
    const v1, 0x927c0

    if-ne p1, v1, :cond_0

    const/16 v2, 0x9

    goto :goto_0

    .line 35
    :goto_1
    iget-object p1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz p1, :cond_2

    .line 36
    new-instance v9, Lcom/mgmi/e/g;

    invoke-direct {v9}, Lcom/mgmi/e/g;-><init>()V

    .line 37
    iget-object p1, p0, Lcom/mgtv/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {v9, p1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 38
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    int-to-long v7, v0

    move-object v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;ILjava/lang/String;JLcom/mgmi/e/g;)V

    goto :goto_2

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz p1, :cond_3

    .line 40
    new-instance p1, Lcom/mgmi/e/g;

    invoke-direct {p1}, Lcom/mgmi/e/g;-><init>()V

    .line 41
    iget-object p2, p0, Lcom/mgtv/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    .line 42
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p2

    iget-object p0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {p2, p0, p1}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/e/g;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;IIZ)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/net/bean/BootAdBean;JZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0, p1}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/net/bean/BootAdBean;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mgmi/net/bean/a;->d:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iput-wide p2, v0, Lcom/mgmi/net/bean/a;->c:J

    .line 48
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mgmi/e/a/d;->b(Lcom/mgmi/net/bean/BootAdBean;)V

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mgtv/a/a/a;->b(Lcom/mgmi/net/bean/BootAdBean;JZ)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/mgmi/model/VASTAd;

    iput-object p1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p1, Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lcom/mgmi/net/bean/BootAdBean;

    iput-object p1, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mgtv/a/a/a;->d:Z

    .line 6
    iput-boolean p1, p0, Lcom/mgtv/a/a/a;->e:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/mgtv/a/a/a;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/a/a/a;->b(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/mgtv/a/a/a;->a:J

    sub-long/2addr p2, v0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/net/bean/BootAdBean;JZ)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/mgtv/a/a/a;->c:Z

    return-void
.end method

.method public a(ZLcom/mgmi/model/VASTAd;Lcom/mgmi/e/a;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getWinNotices()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p2}, Lcom/mgmi/model/VASTAd;->getLossNotices()Ljava/util/List;

    move-result-object p1

    .line 66
    :goto_0
    invoke-virtual {p2, p3}, Lcom/mgmi/model/VASTAd;->setBidResult(Lcom/mgmi/e/a;)V

    .line 67
    invoke-direct {p0, p1, p3}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Lcom/mgmi/e/a;)V

    :cond_1
    return-void
.end method

.method public a(ZLcom/mgmi/net/bean/BootAdBean;Lcom/mgmi/e/a;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 59
    iget-object v0, p2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, v0, Lcom/mgmi/net/bean/BootDataItem;->win_notice:Ljava/util/List;

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, v0, Lcom/mgmi/net/bean/BootDataItem;->loss_notice:Ljava/util/List;

    .line 62
    :goto_0
    iput-object p3, p2, Lcom/mgmi/net/bean/BootAdBean;->bidResult:Lcom/mgmi/e/a;

    .line 63
    invoke-direct {p0, p1, p3}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Lcom/mgmi/e/a;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mgtv/a/a/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->d:Z

    .line 3
    iget-object v1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base ad view onExpose onExposeVisibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BBC"

    invoke-static {v2, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-direct {p0, v1}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTAd;->getBidResult()Lcom/mgmi/e/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgmi/e/g;->a(Lcom/mgmi/e/a;)V

    .line 7
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v2, v3, v1}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    .line 8
    iget-object v1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/mgtv/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/mgmi/e/a/d;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 12
    iget-object p0, p0, Lcom/mgtv/a/a/a;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 5

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/mgtv/a/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 16
    iput-boolean v2, p0, Lcom/mgtv/a/a/a;->e:Z

    goto :goto_1

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/mgtv/a/a/a;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/mgtv/a/a/a;->e:Z

    .line 19
    :goto_1
    iget-boolean v1, p0, Lcom/mgtv/a/a/a;->e:Z

    if-eqz v1, :cond_2

    .line 20
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object v3, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v0, p1, v4}, Lcom/mgmi/e/a/d;->a(Ljava/lang/Object;Ljava/lang/String;II)V

    .line 21
    iput-boolean v2, p0, Lcom/mgtv/a/a/a;->e:Z

    :cond_2
    return-void
.end method

.method public b(Lcom/mgmi/net/bean/BootAdBean;JZ)V
    .locals 0

    .line 33
    const-string p0, "lyzzzzzz"

    const-string p2, "reportTrack"

    invoke-static {p0, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 34
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-eqz p0, :cond_1

    if-eqz p4, :cond_1

    .line 35
    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, p0, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string p2, "4"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iget p0, p0, Lcom/mgmi/net/bean/BootDataItem;->interact_tpid:I

    if-gtz p0, :cond_1

    .line 36
    :cond_0
    invoke-static {}, Lcom/mgmi/trace/a;->a()Lcom/mgmi/trace/a;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/trace/a;->a(Lcom/mgmi/net/bean/BootAdBean;Z)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTrackingEventMute()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getTrackingEventUnMute()Ljava/util/List;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 26
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/mgmi/e/a/d;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object v0

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->c(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mgtv/a/a/a;->h:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mgmi/net/bean/BootBaseReport;->enc:Lcom/mgmi/net/bean/BootEncTrace;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/mgmi/net/bean/BootDataItem;->thirdQuartile:Ljava/util/List;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootEncTrace;->thirdQuartile:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v1, v2, Lcom/mgmi/net/bean/BootDataItem;->thirdQuartile:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->thirdQuartile:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->thirdQuartile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->h:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object v0

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->d(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mgtv/a/a/a;->g:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mgmi/net/bean/BootBaseReport;->enc:Lcom/mgmi/net/bean/BootEncTrace;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/mgmi/net/bean/BootDataItem;->midpoint:Ljava/util/List;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootEncTrace;->midpoint:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v1, v2, Lcom/mgmi/net/bean/BootDataItem;->midpoint:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->midpoint:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->midpoint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->g:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/model/VASTAd;)Lcom/mgmi/e/g;

    move-result-object v0

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->f(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mgtv/a/a/a;->f:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mgmi/net/bean/BootBaseReport;->enc:Lcom/mgmi/net/bean/BootEncTrace;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/mgmi/net/bean/BootDataItem;->firstQuartile:Ljava/util/List;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootEncTrace;->firstQuartile:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v1, v2, Lcom/mgmi/net/bean/BootDataItem;->firstQuartile:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->firstQuartile:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->firstQuartile:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->f:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public f()V
    .locals 5

    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/mgmi/net/bean/BootBaseReport;->enc:Lcom/mgmi/net/bean/BootEncTrace;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->impression:Ljava/util/List;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootEncTrace;->impression:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v0, v1, Lcom/mgmi/net/bean/BootDataItem;->impression:Ljava/util/List;

    :cond_0
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/mgtv/a/a/a;->a:J

    sub-long/2addr v1, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mgtv/a/a/a;->a(Lcom/mgmi/net/bean/BootAdBean;JZ)V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/mgmi/e/g;

    invoke-direct {v0}, Lcom/mgmi/e/g;-><init>()V

    iget-object v1, p0, Lcom/mgtv/a/a/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mgmi/e/g;->a(Ljava/lang/String;)Lcom/mgmi/e/g;

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v1, p0, v0}, Lcom/mgmi/e/a/d;->h(Lcom/mgmi/model/VASTAd;Lcom/mgmi/e/g;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mgtv/a/a/a;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v0

    iget-object p0, p0, Lcom/mgtv/a/a/a;->k:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, p0}, Lcom/mgmi/e/a/d;->a(Lcom/mgmi/model/VASTAd;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/mgtv/a/a/a;->i:Z

    if-nez v1, :cond_3

    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/mgmi/net/bean/BootBaseReport;->enc:Lcom/mgmi/net/bean/BootEncTrace;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/mgmi/net/bean/BootDataItem;->complete:Ljava/util/List;

    iget-object v1, v1, Lcom/mgmi/net/bean/BootEncTrace;->complete:Ljava/util/List;

    invoke-virtual {p0, v2, v1}, Lcom/mgtv/a/a/a;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mgtv/a/a/a;->l:Lcom/mgmi/net/bean/BootAdBean;

    iget-object v2, v2, Lcom/mgmi/net/bean/BootAdBean;->data:Lcom/mgmi/net/bean/BootDataItem;

    iput-object v1, v2, Lcom/mgmi/net/bean/BootDataItem;->complete:Ljava/util/List;

    :cond_1
    iget-object v1, v0, Lcom/mgmi/net/bean/BootDataItem;->complete:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v0, v0, Lcom/mgmi/net/bean/BootDataItem;->complete:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mgmi/net/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgtv/a/a/a;->i:Z

    :cond_3
    :goto_1
    return-void
.end method
