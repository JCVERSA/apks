.class public Lee/r;
.super Lee/c;
.source "source.java"


# static fields
.field public static B:Lcom/hisavana/common/bean/AdCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/common/bean/AdCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lee/r;->B:Lcom/hisavana/common/bean/AdCache;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lee/c;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic F(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lee/r;->t0(Lcom/hisavana/common/base/BaseSplash;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public G()Lcom/hisavana/common/bean/AdCache;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public d0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public bridge synthetic e(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lee/r;->r0(Z)Lcom/hisavana/common/base/BaseSplash;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic p(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lee/r;->q0(Lcom/hisavana/common/base/BaseSplash;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q0(Lcom/hisavana/common/base/BaseSplash;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lee/r;->G()Lcom/hisavana/common/bean/AdCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/hisavana/common/bean/AdCache;->hasAd(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseSplash;->destroyAd()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public r0(Z)Lcom/hisavana/common/base/BaseSplash;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lee/r;->G()Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0}, Lee/c;->V()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lee/c;->i:Ljava/lang/Object;

    .line 17
    .line 18
    const-string v0, "SplashCacheHandler"

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v2, "no ad"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    invoke-virtual {p0}, Lee/r;->G()Lcom/hisavana/common/bean/AdCache;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v2, p0, Lee/c;->j:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, p0, Lee/c;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Lcom/hisavana/common/base/BaseSplash;

    .line 42
    .line 43
    invoke-virtual {p1, v2, v3}, Lcom/hisavana/common/bean/AdCache;->removeCache(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lee/c;->i:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseAd;->isExpired()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v2, "ad is expired"

    .line 61
    .line 62
    invoke-virtual {p1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_1
    const/4 p1, 0x2

    .line 67
    invoke-virtual {p0, v1, p1}, Lee/c;->c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v0, p0, Lee/c;->i:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lcom/hisavana/common/base/BaseSplash;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseAd;->addRequestBody(Lcom/hisavana/common/bean/TInnerAdRequestBody;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lee/c;->i:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Lcom/hisavana/common/base/BaseSplash;

    .line 81
    .line 82
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/hisavana/common/base/BaseAd;->setShowId(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lee/c;->b:Lee/s;

    .line 90
    .line 91
    invoke-virtual {p0, p1, v0}, Lee/c;->i(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lee/s;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lee/c;->i:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    .line 97
    .line 98
    return-object p1
.end method

.method public s0(Lcom/hisavana/common/base/BaseSplash;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseSplash;->pauseAd()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public t0(Lcom/hisavana/common/base/BaseSplash;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hisavana/common/base/BaseSplash;->resumeAd()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public bridge synthetic z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hisavana/common/base/BaseSplash;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lee/r;->s0(Lcom/hisavana/common/base/BaseSplash;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
