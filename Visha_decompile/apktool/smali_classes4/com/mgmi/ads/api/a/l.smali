.class public Lcom/mgmi/ads/api/a/l;
.super Lcom/mgmi/ads/api/a/e;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/a/g$a;
.implements Lcom/mgmi/ads/api/e/j$a;
.implements Lcom/mgmi/ads/api/e/l$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a/l$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/ads/api/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/mgmi/ads/api/a/g;

.field private w:Lcom/mgmi/ads/api/a/g;

.field private x:I

.field private y:Lcom/mgmi/ads/api/a/l$a;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/mgmi/ads/api/a/l;->x:I

    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/l;->A:Z

    new-instance p1, Lcom/mgmi/ads/api/a/l$a;

    invoke-direct {p1, p0}, Lcom/mgmi/ads/api/a/l$a;-><init>(Lcom/mgmi/ads/api/a/l;)V

    iput-object p1, p0, Lcom/mgmi/ads/api/a/l;->y:Lcom/mgmi/ads/api/a/l$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->o:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ads/api/a/l;->B:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/util/List;)Lcom/mgmi/model/VASTChannelAd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTChannelAd;",
            ">;)",
            "Lcom/mgmi/model/VASTChannelAd;"
        }
    .end annotation

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgmi/model/VASTChannelAd;

    .line 11
    invoke-static {p1}, Lcom/mgmi/ads/api/e/a;->b(Lcom/mgmi/model/VASTChannelAd;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(I)V
    .locals 4

    .line 18
    iget-boolean v0, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->y:Lcom/mgmi/ads/api/a/l$a;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->y:Lcom/mgmi/ads/api/a/l$a;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private e(Lcom/mgmi/ads/api/a/d;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200048"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/g/a;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "9000167"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgmi/ads/api/e/i;->a(Lcom/mgmi/ads/api/e/j$a;)V

    .line 3
    invoke-static {}, Lcom/mgmi/ads/api/e/l;->a()Lcom/mgmi/ads/api/e/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgmi/ads/api/e/l;->a(Lcom/mgmi/ads/api/e/l$a;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "from_banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->k()Lcom/mgmi/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/g/a;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/ads/api/a/l;->C:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private f(Lcom/mgmi/ads/api/a/d;)V
    .locals 2

    new-instance v0, Lcom/mgmi/ads/api/a/l$1;

    invoke-direct {v0, p0}, Lcom/mgmi/ads/api/a/l$1;-><init>(Lcom/mgmi/ads/api/a/l;)V

    const-string v1, "BaseAdView_SuperBannerAdsloader"

    invoke-virtual {p0, p1, v0, v1}, Lcom/mgmi/ads/api/a/e;->a(Lcom/mgmi/ads/api/a/d;Lcom/mgmi/ads/api/a/e$a;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 8

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/g;->d()V

    iput-object v1, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v4, p0, Lcom/mgmi/ads/api/a/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/ads/api/a/g;

    iput-object v5, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iget-object v5, v5, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v5}, Lcom/mgmi/model/VASTAd;->getPairid()I

    move-result v5

    if-lez v5, :cond_1

    iput-boolean v2, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    iget-object v6, p0, Lcom/mgmi/ads/api/a/l;->B:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/mgmi/ads/api/a/l;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    iget v1, p0, Lcom/mgmi/ads/api/a/e;->n:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    new-instance v1, Lcom/mgmi/ads/api/e/j$d;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/j$d;-><init>()V

    iget-object v4, p0, Lcom/mgmi/ads/api/a/l;->B:Ljava/util/ArrayList;

    iput-object v4, v1, Lcom/mgmi/ads/api/e/j$d;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mgmi/ads/api/a/l;->C:Ljava/lang/String;

    iput-object v4, v1, Lcom/mgmi/ads/api/e/j$d;->b:Ljava/lang/String;

    iput v3, p0, Lcom/mgmi/ads/api/a/e;->n:I

    iput v2, v1, Lcom/mgmi/ads/api/e/j$d;->c:I

    invoke-virtual {p0, v1}, Lcom/mgmi/ads/api/a/l;->c(Lcom/mgmi/ads/api/e/j$d;)V

    iput-boolean v3, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/ads/api/a/g;

    iput-boolean v3, v1, Lcom/mgmi/ads/api/a/g;->h:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iput-boolean v3, p0, Lcom/mgmi/ads/api/a/g;->h:Z

    return-void

    :cond_4
    new-instance v1, Lcom/mgmi/ads/api/e/j$d;

    invoke-direct {v1}, Lcom/mgmi/ads/api/e/j$d;-><init>()V

    iget-object v4, p0, Lcom/mgmi/ads/api/a/l;->C:Ljava/lang/String;

    iput-object v4, v1, Lcom/mgmi/ads/api/e/j$d;->b:Ljava/lang/String;

    iput v2, v1, Lcom/mgmi/ads/api/e/j$d;->c:I

    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/mgmi/ads/api/e/i;->a(Lcom/mgmi/ads/api/e/j$d;)V

    iput v3, p0, Lcom/mgmi/ads/api/a/e;->n:I

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/ads/api/a/g;

    iput-boolean v3, v1, Lcom/mgmi/ads/api/a/g;->h:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iput-boolean v3, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iput-boolean v3, p0, Lcom/mgmi/ads/api/a/g;->h:Z

    return-void

    :cond_6
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/a/g;

    iput-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    iput-boolean v2, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/a/g;

    iput-boolean v2, v0, Lcom/mgmi/ads/api/a/g;->h:Z

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iput-boolean v2, v0, Lcom/mgmi/ads/api/a/g;->h:Z

    :cond_7
    iput v3, p0, Lcom/mgmi/ads/api/a/e;->n:I

    return-void
.end method

.method private p()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mgmi/ads/api/a/l;->A:Z

    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->B:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    iput v0, p0, Lcom/mgmi/ads/api/a/e;->p:I

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    iput-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->s:Z

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->y:Lcom/mgmi/ads/api/a/l$a;

    const/16 v1, 0x1f9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->a()V

    .line 67
    const-string v0, "BaseAdView_SuperBannerAdsloader"

    const-string v1, "Superbannerview finish"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mgmi/ads/api/a/g;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/mgmi/ads/api/a/g;->g()V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    .line 73
    iput-object v0, p0, Lcom/mgmi/ads/api/a/l;->w:Lcom/mgmi/ads/api/a/g;

    .line 74
    :cond_2
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgmi/ads/api/e/i;->b(Lcom/mgmi/ads/api/e/j$a;)V

    .line 75
    invoke-direct {p0}, Lcom/mgmi/ads/api/a/l;->p()V

    .line 76
    invoke-static {}, Lcom/mgmi/ads/api/e/l;->a()Lcom/mgmi/ads/api/e/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mgmi/ads/api/e/l;->b(Lcom/mgmi/ads/api/e/l$a;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/l;->l()V

    .line 44
    iget-boolean p1, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    if-eqz p1, :cond_0

    .line 45
    iget-object p1, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iput-object p1, p0, Lcom/mgmi/ads/api/a/l;->w:Lcom/mgmi/ads/api/a/g;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/mgmi/ads/api/a/e;->a(Landroid/view/ViewGroup;)V

    .line 62
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0, p1}, Lcom/mgmi/ads/api/a/d;->a(Landroid/view/ViewGroup;)V

    .line 63
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/g;->a(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    .line 3
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/mgmi/ads/api/e/j$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/l;->d()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/l;->d()Lcom/mgmi/ads/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/ads/api/a;->isFullScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, v0}, Lcom/mgmi/ads/api/a/d;->d(I)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/l;->b(Lcom/mgmi/ads/api/a/d;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/mgmi/model/r;)V
    .locals 7

    .line 12
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0xaae61

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {p0, v2, v1}, Lcom/mgmi/ads/api/a/l;->a(ZI)V

    return-void

    .line 14
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    .line 15
    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v3, :cond_d

    const-string v4, "ADS_BANNER"

    invoke-interface {v3}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v3}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ADS_TYPE_INSIDE_BANNER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/mgmi/model/r;->h()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x1

    if-eqz p1, :cond_c

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 18
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;->a(Ljava/util/List;)Lcom/mgmi/model/VASTChannelAd;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 19
    iput-boolean v2, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    .line 20
    new-instance v2, Lcom/mgmi/ads/api/a/h;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v1, v3}, Lcom/mgmi/ads/api/a/h;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/mgmi/model/VASTChannelAd;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p0}, Lcom/mgmi/ads/api/a/g;->a(Lcom/mgmi/ads/api/a/g$a;)V

    .line 22
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 23
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->f()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/mgmi/ads/api/a/g;->a(I)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 25
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 26
    iput-boolean v3, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    goto :goto_0

    .line 27
    :cond_5
    iput-boolean v2, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mgmi/model/VASTChannelAd;

    if-eqz v4, :cond_6

    .line 29
    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 30
    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mgmi/model/VASTStaticResource;->getStyle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "19"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    xor-int/lit8 v2, v2, 0x1

    .line 31
    invoke-virtual {v4, v2}, Lcom/mgmi/model/VASTAd;->setSupportChangeColor(Z)V

    move v2, v3

    .line 32
    :cond_6
    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "toutiao"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    .line 33
    :cond_7
    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "opposdk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    .line 34
    :cond_8
    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getAdFrom()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hyjy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1

    .line 35
    :cond_9
    new-instance v5, Lcom/mgmi/ads/api/a/h;

    invoke-virtual {v4}, Lcom/mgmi/model/VASTAd;->getOrginTargetURI()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, p1, v4, v6}, Lcom/mgmi/ads/api/a/h;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/mgmi/model/VASTChannelAd;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v5, p0}, Lcom/mgmi/ads/api/a/g;->a(Lcom/mgmi/ads/api/a/g$a;)V

    .line 37
    iget-object v4, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v4}, Lcom/mgmi/ads/api/a/d;->e()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 38
    iget-object v4, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v4}, Lcom/mgmi/ads/api/a/d;->f()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/mgmi/ads/api/a/g;->a(I)V

    .line 39
    :cond_a
    iget-object v4, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 40
    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/mgmi/ads/api/a/l;->o()V

    goto :goto_3

    .line 41
    :cond_c
    iput v3, p0, Lcom/mgmi/ads/api/a/e;->n:I

    .line 42
    invoke-virtual {p0, v2, v1}, Lcom/mgmi/ads/api/a/l;->a(ZI)V

    :cond_d
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Superbannerview getScreenState banner e0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdView_SuperBannerAdsloader"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/mgmi/ads/api/e/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Superbannerview getScreenState banner e11111111"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->i()V

    :cond_0
    return-void
.end method

.method public a(ZI)V
    .locals 2

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0}, Lcom/mgmi/ads/api/a/l;->b(I)V

    .line 47
    iget-boolean v1, p0, Lcom/mgmi/ads/api/a/l;->z:Z

    if-nez v1, :cond_0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/mgmi/ads/api/a/e;->a(ZI)V

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    if-eqz p1, :cond_2

    .line 50
    new-instance p1, Lcom/mgmi/ads/api/e/j$d;

    invoke-direct {p1}, Lcom/mgmi/ads/api/e/j$d;-><init>()V

    .line 51
    iget-object p2, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 52
    iget-object p2, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    invoke-interface {p2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 53
    iget-object p2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 54
    iget-object p2, p0, Lcom/mgmi/ads/api/a/l;->w:Lcom/mgmi/ads/api/a/g;

    if-eqz p2, :cond_1

    .line 55
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    return-void

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/mgmi/ads/api/a/l;->C:Ljava/lang/String;

    iput-object p2, p1, Lcom/mgmi/ads/api/e/j$d;->b:Ljava/lang/String;

    .line 57
    iget p2, p0, Lcom/mgmi/ads/api/a/e;->p:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/mgmi/ads/api/e/j$d;->c:I

    .line 58
    iget-object p2, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    iput-object p2, p1, Lcom/mgmi/ads/api/e/j$d;->a:Ljava/util/ArrayList;

    .line 59
    iget-object p2, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/l;->c(Lcom/mgmi/ads/api/e/j$d;)V

    :cond_2
    return-void
.end method

.method public a(ZLcom/mgmi/e/a;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a/g;->a(ZLcom/mgmi/e/a;)V

    :cond_0
    return-void
.end method

.method public a_()V
    .locals 1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/a/l;->a(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->l()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 0

    .line 21
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->b()V

    .line 22
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->e()V

    :cond_0
    return-void
.end method

.method public b(Lcom/mgmi/ads/api/a/d;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;->e(Lcom/mgmi/ads/api/a/d;)V

    .line 2
    invoke-static {}, Lcom/mgmi/platform/c;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;->f(Lcom/mgmi/ads/api/a/d;)V

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;->f(Lcom/mgmi/ads/api/a/d;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7
    iput-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    .line 8
    new-instance p1, Lcom/mgmi/ads/api/e/j$d;

    invoke-direct {p1}, Lcom/mgmi/ads/api/e/j$d;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->o:Ljava/lang/String;

    iput-object v0, p1, Lcom/mgmi/ads/api/e/j$d;->b:Ljava/lang/String;

    .line 10
    iget-boolean p0, p0, Lcom/mgmi/ads/api/a/e;->s:Z

    iput-boolean p0, p1, Lcom/mgmi/ads/api/e/j$d;->d:Z

    .line 11
    invoke-static {}, Lcom/mgmi/ads/api/e/i;->a()Lcom/mgmi/ads/api/e/i;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/e/i;->c(Lcom/mgmi/ads/api/e/j$d;)V

    :cond_2
    return-void
.end method

.method public b(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 2

    .line 12
    iget-object v0, p1, Lcom/mgmi/ads/api/e/j$d;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-boolean p1, p1, Lcom/mgmi/ads/api/e/j$d;->d:Z

    iput-boolean p1, p0, Lcom/mgmi/ads/api/a/e;->s:Z

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fanfansss banner = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " @  onPreAdPlayingTag = isReactAd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "hasRequestTag "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "isPreAdsPlaying = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mgmi/ads/api/a/e;->s:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAdView_SuperBannerAdsloader"

    invoke-static {v0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-boolean p1, p0, Lcom/mgmi/ads/api/a/e;->r:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/mgmi/ads/api/a/e;->n:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/mgmi/ads/api/a/e;->s:Z

    if-eqz p1, :cond_0

    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/l;->f(Lcom/mgmi/ads/api/a/d;)V

    .line 17
    iput v0, p0, Lcom/mgmi/ads/api/a/e;->n:I

    :cond_1
    return-void
.end method

.method public c()V
    .locals 0

    .line 27
    invoke-super {p0}, Lcom/mgmi/ads/api/a/e;->c()V

    .line 28
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->f()V

    :cond_0
    return-void
.end method

.method public c(Lcom/mgmi/ads/api/e/j$d;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/mgmi/ads/api/e/j$d;->b:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "from_all"

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 4
    iget-object v1, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/mgmi/ads/api/e/j$d;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8
    iget p1, p1, Lcom/mgmi/ads/api/e/j$d;->c:I

    if-le p1, v0, :cond_3

    return-void

    .line 9
    :cond_3
    iput p1, p0, Lcom/mgmi/ads/api/a/e;->p:I

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "11111preAdPairidsList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fanfansss"

    invoke-static {v3, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    if-ge p1, v0, :cond_6

    .line 11
    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_5

    .line 12
    iget-object v5, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mgmi/ads/api/a/g;

    .line 13
    iget-object v6, v5, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/mgmi/model/VASTAd;->getPairid()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 16
    iput-object v5, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 17
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lcom/mgmi/ads/api/a/l;->A:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p1, v0}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    .line 20
    iput-boolean v2, p0, Lcom/mgmi/ads/api/a/l;->A:Z

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 22
    iget-object p1, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p1, :cond_9

    .line 23
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    goto :goto_3

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz p1, :cond_9

    .line 25
    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_9

    .line 26
    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public d()Lcom/mgmi/ads/api/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {p0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/mgmi/ads/api/a/d;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    return-object p0
.end method

.method public g()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->c()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->b()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_REQUEST_SUCCESS:Lcom/mgmi/ads/api/a$a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v1}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v1

    new-instance v2, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    iget-object v3, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v3}, Lcom/mgmi/ads/api/a/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iget-object v0, v0, Lcom/mgmi/ads/api/a/g;->j:Ljava/util/List;

    iput-object v0, p0, Lcom/mgmi/ads/api/a/e;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v0}, Lcom/mgmi/ads/api/a/d;->h()Lcom/mgmi/ads/api/a;

    move-result-object v0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/e;->k:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/mgmi/ads/api/a;->onADLoaded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 3

    iget v0, p0, Lcom/mgmi/ads/api/a/l;->x:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mgmi/ads/api/a/l;->x:I

    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/mgmi/ads/api/a/l;->x:I

    iget-object v2, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/mgmi/ads/api/a/l;->x:I

    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mgmi/ads/api/a/g;->d()V

    :cond_1
    iget-object v0, p0, Lcom/mgmi/ads/api/a/l;->u:Ljava/util/List;

    iget v2, p0, Lcom/mgmi/ads/api/a/l;->x:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/ads/api/a/g;

    iput-object v0, p0, Lcom/mgmi/ads/api/a/l;->v:Lcom/mgmi/ads/api/a/g;

    iget-object v2, p0, Lcom/mgmi/ads/api/a/e;->f:Lcom/mgmi/ads/api/a/d;

    invoke-interface {v2}, Lcom/mgmi/ads/api/a/d;->n()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/mgmi/ads/api/a/l;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method
