.class public Lcom/mgmi/model/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/mgmi/model/VASTAd;

.field public m:I

.field private n:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTAd;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    instance-of v0, p1, Lcom/mgmi/model/VASTFloatAd;

    if-eqz v0, :cond_0

    .line 60
    check-cast p1, Lcom/mgmi/model/VASTFloatAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTFloatAd;->getDelayRandTime()I

    move-result p1

    iput p1, p0, Lcom/mgmi/model/m;->m:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/mgmi/model/VASTAd;Z)Lcom/mgmi/model/m;
    .locals 6

    .line 23
    iput-object p1, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    .line 24
    invoke-direct {p0, p1}, Lcom/mgmi/model/m;->a(Lcom/mgmi/model/VASTAd;)V

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/model/m;->a:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/Clicks;->getClickThrough()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mgmi/model/m;->c:Ljava/lang/String;

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_6

    .line 30
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/m;->d:Ljava/lang/String;

    goto/16 :goto_3

    :cond_2
    if-eqz p1, :cond_6

    .line 32
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 33
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 35
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/d;

    .line 36
    invoke-virtual {v3}, Lcom/mgmi/model/d;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "thumbnail_pic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 37
    invoke-virtual {v3}, Lcom/mgmi/model/d;->e()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/m;->d:Ljava/lang/String;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getmCompanions()Lcom/mgmi/model/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgmi/model/e;->a()Ljava/util/List;

    move-result-object p2

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 40
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/d;

    .line 41
    invoke-virtual {v2}, Lcom/mgmi/model/d;->h()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zip_online"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v2}, Lcom/mgmi/model/d;->i()Ljava/lang/String;

    move-result-object p2

    .line 43
    iput-object p2, p0, Lcom/mgmi/model/m;->b:Ljava/lang/String;

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 44
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrors()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 45
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getErrors()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/m;->h:Ljava/util/List;

    :cond_7
    if-eqz p1, :cond_9

    .line 46
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getBid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/m;->e:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getTraceCheck()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/m;->i:Ljava/util/List;

    const/4 p2, 0x0

    .line 48
    const-string v0, "interactTrace"

    invoke-virtual {p1, p2, v0}, Lcom/mgmi/model/VASTAd;->getTrackingEventList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/mgmi/model/m;->k:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p2

    .line 50
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 51
    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 52
    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p2

    :cond_8
    if-eqz p2, :cond_9

    .line 53
    invoke-virtual {p2}, Lcom/mgmi/model/Clicks;->getClickTracking()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/model/m;->j:Ljava/util/List;

    :cond_9
    return-object p0
.end method

.method public a(Lcom/mgmi/net/bean/BootDataItem;)Lcom/mgmi/model/m;
    .locals 2

    .line 8
    iput-object p1, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 10
    iput-object v0, p0, Lcom/mgmi/model/m;->a:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->err:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 12
    iput-object v0, p0, Lcom/mgmi/model/m;->f:Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 13
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->interact_online:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 14
    iput-object v0, p0, Lcom/mgmi/model/m;->b:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->pageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/model/m;->c:Ljava/lang/String;

    .line 16
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->bid:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/model/m;->e:Ljava/lang/String;

    .line 17
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->trace:Ljava/lang/String;

    iput-object v0, p0, Lcom/mgmi/model/m;->g:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/model/m;->i:Ljava/util/List;

    .line 20
    iget-object v1, p0, Lcom/mgmi/model/m;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_3
    iget-object v0, p1, Lcom/mgmi/net/bean/BootDataItem;->interactTrace:Ljava/util/List;

    iput-object v0, p0, Lcom/mgmi/model/m;->k:Ljava/util/List;

    .line 22
    iget-object p1, p1, Lcom/mgmi/net/bean/BootDataItem;->click:Ljava/util/List;

    iput-object p1, p0, Lcom/mgmi/model/m;->j:Ljava/util/List;

    :cond_4
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/mgmi/model/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/mgmi/model/m;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;Z)Lcom/mgmi/model/m;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Object;Z)Lcom/mgmi/model/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Lcom/mgmi/model/m;"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    .line 4
    instance-of v0, p1, Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/model/m;->a(Lcom/mgmi/model/VASTAd;Z)Lcom/mgmi/model/m;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    instance-of p2, p1, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p2, :cond_1

    .line 7
    check-cast p1, Lcom/mgmi/net/bean/BootDataItem;

    invoke-virtual {p0, p1}, Lcom/mgmi/model/m;->a(Lcom/mgmi/net/bean/BootDataItem;)Lcom/mgmi/model/m;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/m;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    .line 55
    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    iget-object p0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/Clicks;->setClickThrough(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    instance-of p0, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p0, :cond_1

    .line 58
    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    iput-object p1, v0, Lcom/mgmi/net/bean/BootDataItem;->webviewClickUrl:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/model/m;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    check-cast p0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getVideoClick()Lcom/mgmi/model/Clicks;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/model/Clicks;->setClickThrough(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p0, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz p0, :cond_1

    .line 6
    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    const-string p0, ""

    iput-object p0, v0, Lcom/mgmi/net/bean/BootDataItem;->webviewClickUrl:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/m;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/m;->h:Ljava/util/List;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/m;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/m;->i:Ljava/util/List;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/m;->f:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/m;->k:Ljava/util/List;

    return-object p0
.end method

.method public j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/m;->d:Ljava/lang/String;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/m;->j:Ljava/util/List;

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v1, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, v0, Lcom/mgmi/net/bean/BootDataItem;->ad_type:Ljava/lang/String;

    return-object p0

    :cond_1
    instance-of v0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/model/m;->l:Lcom/mgmi/model/VASTAd;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getmAdtype()Ljava/lang/String;

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getClk_area()I

    move-result p0

    return p0

    :cond_0
    instance-of v1, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    iget p0, v0, Lcom/mgmi/net/bean/BootDataItem;->clk_area:I

    return p0

    :cond_1
    instance-of v0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/model/m;->l:Lcom/mgmi/model/VASTAd;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getClk_area()I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public n()J
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :cond_0
    instance-of v1, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    const-wide/32 v0, 0x89545f

    return-wide v0

    :cond_1
    instance-of v0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/model/m;->l:Lcom/mgmi/model/VASTAd;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getVastAid()I

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    instance-of v1, v0, Lcom/mgmi/model/VASTAd;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    move-result p0

    return p0

    :cond_0
    instance-of v1, v0, Lcom/mgmi/net/bean/BootDataItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/mgmi/net/bean/BootDataItem;

    iget-object p0, v0, Lcom/mgmi/net/bean/BootDataItem;->adstyle:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    instance-of v0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/d;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/mgmi/model/m;->l:Lcom/mgmi/model/VASTAd;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/mgmi/model/VASTAd;->getAdStyle()I

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/m;->n:Ljava/lang/Object;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/mgmi/net/bean/BootDataItem;

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
