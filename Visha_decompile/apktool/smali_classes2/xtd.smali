.class public Lxtd;
.super Lcom/hisavana/mediation/a;
.source "SourceFile"


# static fields
.field public static B:Lcom/hisavana/common/bean/AdCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hisavana/common/bean/AdCache;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    sput-object v0, Lxtd;->B:Lcom/hisavana/common/bean/AdCache;

    return-void
.end method

.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;Lrud;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/hisavana/mediation/a;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;Lrud;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic F(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {p0, p1}, Lxtd;->t0(Lcom/hisavana/common/base/BaseSplash;)V

    return-void
.end method

.method public G()Lcom/hisavana/common/bean/AdCache;
    .locals 0

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lxtd;->r0(Z)Lcom/hisavana/common/base/BaseSplash;

    move-result-object p0

    return-object p0
.end method

.method public d0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic o(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {p0, p1}, Lxtd;->q0(Lcom/hisavana/common/base/BaseSplash;)V

    return-void
.end method

.method public q0(Lcom/hisavana/common/base/BaseSplash;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lxtd;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lcom/hisavana/common/bean/AdCache;->hasAd(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    :cond_0
    return-void
.end method

.method public r0(Z)Lcom/hisavana/common/base/BaseSplash;
    .locals 4

    invoke-virtual {p0}, Lxtd;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->V()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    const-string v0, "SplashCacheHandler"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "no ad"

    invoke-virtual {p0, v0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lxtd;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    iget-object v2, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    check-cast v3, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {p1, v2, v3}, Lcom/hisavana/common/bean/AdCache;->removeCache(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V

    iget-object p1, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "ad is expired"

    invoke-virtual {p0, v0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/hisavana/mediation/a;->c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    check-cast v0, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    check-cast v0, Lcom/hisavana/common/base/BaseSplash;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->setShowId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    invoke-virtual {p0, p1, v0}, Lcom/hisavana/mediation/a;->i(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lrud;)V

    iget-object p0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    check-cast p0, Lcom/hisavana/common/base/BaseSplash;

    return-object p0
.end method

.method public s0(Lcom/hisavana/common/base/BaseSplash;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseSplash;->pauseAd()V

    :cond_0
    return-void
.end method

.method public t0(Lcom/hisavana/common/base/BaseSplash;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseSplash;->resumeAd()V

    :cond_0
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    invoke-virtual {p0, p1}, Lxtd;->s0(Lcom/hisavana/common/base/BaseSplash;)V

    return-void
.end method
