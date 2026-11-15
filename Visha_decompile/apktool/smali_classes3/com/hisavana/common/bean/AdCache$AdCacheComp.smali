.class public Lcom/hisavana/common/bean/AdCache$AdCacheComp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/common/bean/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdCacheComp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hisavana/common/interfacz/ICacheAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hisavana/common/interfacz/ICacheAd;Lcom/hisavana/common/interfacz/ICacheAd;)I
    .locals 7

    const/4 p0, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v3

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-nez v0, :cond_4

    .line 5
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    return v2

    .line 6
    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide v2

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getValidTimeLimit()J

    move-result-wide p1

    sub-long/2addr v2, p1

    cmp-long p1, v2, v5

    if-lez p1, :cond_3

    return v1

    :cond_3
    return p0

    .line 7
    :cond_4
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v3

    invoke-interface {p2}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-double p0, v3, p0

    if-lez p0, :cond_5

    return v2

    :cond_5
    return v1

    :catchall_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hisavana/common/interfacz/ICacheAd;

    check-cast p2, Lcom/hisavana/common/interfacz/ICacheAd;

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/common/bean/AdCache$AdCacheComp;->compare(Lcom/hisavana/common/interfacz/ICacheAd;Lcom/hisavana/common/interfacz/ICacheAd;)I

    move-result p0

    return p0
.end method
