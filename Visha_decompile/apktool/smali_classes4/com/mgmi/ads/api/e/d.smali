.class public abstract Lcom/mgmi/ads/api/e/d;
.super Lcom/mgmi/ads/api/e/b;
.source "SourceFile"


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTFloatAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgmi/g/a;Lcom/mgmi/ads/api/d/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mgmi/ads/api/e/b;-><init>(Lcom/mgmi/g/a;Lcom/mgmi/ads/api/d/b;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ads/api/e/d;->c:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/mgmi/platform/view/a;)Z
    .locals 4

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/mgmi/platform/view/a;->m()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mgmi/ads/api/e/d;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/e/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mgmi/model/VASTFloatAd;

    .line 3
    invoke-virtual {v3}, Lcom/mgmi/model/VASTFloatAd;->getEntry()Lcom/mgmi/platform/view/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v3}, Lcom/mgmi/platform/view/a;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/mgmi/platform/view/a;->E()I

    move-result p0

    if-lt v2, p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public d()V
    .locals 1

    invoke-super {p0}, Lcom/mgmi/ads/api/e/b;->d()V

    iget-object v0, p0, Lcom/mgmi/ads/api/e/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/mgmi/ads/api/e/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
