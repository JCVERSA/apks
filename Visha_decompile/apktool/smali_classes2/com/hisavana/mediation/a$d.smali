.class public Lcom/hisavana/mediation/a$d;
.super Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/hisavana/common/interfacz/Iad;

.field public b:Ljava/lang/Object;

.field public final c:I

.field public final synthetic d:Lcom/hisavana/mediation/a;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/a;Lcom/hisavana/common/interfacz/Iad;I)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;-><init>()V

    iput-object p2, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    iput p3, p0, Lcom/hisavana/mediation/a$d;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget p0, p0, Lcom/hisavana/mediation/a;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "PROGRESS_REQUEST"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "PROGRESS_BIDDING"

    goto :goto_0

    :cond_2
    const-string p0, "PROGRESS_DISPATCHED"

    :goto_0
    return-object p0
.end method

.method public final b(Z)V
    .locals 7

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    const-string v1, "CacheHandler"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "mExecutor is null"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBiddingType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getMinPrice()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v5, v0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v0}, Lcom/hisavana/mediation/a;->Q(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-virtual {v0}, Lcom/hisavana/mediation/a;->e0()Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-virtual {p1}, Lcom/hisavana/mediation/a;->J()I

    move-result v2

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p1}, Lcom/hisavana/mediation/a;->H(Lcom/hisavana/mediation/a;)V

    if-nez v2, :cond_4

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/hisavana/mediation/a;->l(Lcom/hisavana/mediation/a;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget v4, p1, Lcom/hisavana/mediation/a;->n:I

    if-ne v4, v3, :cond_3

    invoke-virtual {p1, v3, v2}, Lcom/hisavana/mediation/a;->a(IZ)I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/hisavana/mediation/a;->L(Lcom/hisavana/mediation/a;)Z

    move-result p1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mProgress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget v6, v6, Lcom/hisavana/mediation/a;->n:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reachTopPrice "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget v4, v1, Lcom/hisavana/mediation/a;->n:I

    if-ge v4, v3, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v1, v3, v2}, Lcom/hisavana/mediation/a;->a(IZ)I

    move-result v2

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p1}, Lcom/hisavana/mediation/a;->b0(Lcom/hisavana/mediation/a;)Z

    move-result p1

    iget-object v1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v1}, Lcom/hisavana/mediation/a;->N(Lcom/hisavana/mediation/a;)I

    move-result v1

    if-eq v1, v3, :cond_6

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v1}, Lcom/hisavana/mediation/a;->s(Lcom/hisavana/mediation/a;)Z

    move-result v1

    :goto_2
    if-nez p1, :cond_9

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    if-nez v0, :cond_8

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget p1, p1, Lcom/hisavana/mediation/a;->n:I

    if-ne p1, v3, :cond_9

    :cond_8
    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v2}, Lcom/hisavana/mediation/a;->b(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/hisavana/mediation/a;->m(Lcom/hisavana/mediation/a;Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v0}, Lcom/hisavana/mediation/a;->W(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    const-string v1, "CacheHandler"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "mExecuter is null"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget v2, v0, Lcom/hisavana/mediation/a;->n:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Lcom/hisavana/mediation/a;->u(Lcom/hisavana/mediation/a;Z)Z

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget-object v2, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-static {v0, v2}, Lcom/hisavana/mediation/a;->n(Lcom/hisavana/mediation/a;Lcom/hisavana/common/interfacz/Iad;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*----> onLoaded(),mProgress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/mediation/a$d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mFlightingAdCount.get() = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v4}, Lcom/hisavana/mediation/a;->W(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",ad fill adSource:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", ad placementId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad onAdLoaded,adSource "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v0}, Lcom/hisavana/mediation/a;->Y(Lcom/hisavana/mediation/a;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdLoaded requestCategory "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/hisavana/mediation/a$d;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/hisavana/mediation/a$d;->c:I

    if-eq v0, v3, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/hisavana/mediation/a$d;->d()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/hisavana/mediation/a$d;->b(Z)V

    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget-object v0, v0, Lcom/hisavana/mediation/a;->b:Lrud;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lrud;->j()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget-object v0, v0, Lcom/hisavana/mediation/a;->b:Lrud;

    invoke-virtual {v0}, Lrud;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-virtual {v0}, Lcom/hisavana/mediation/a;->J()I

    move-result v0

    iget-object v1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v1}, Lcom/hisavana/mediation/a;->H(Lcom/hisavana/mediation/a;)V

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/hisavana/mediation/a;->l(Lcom/hisavana/mediation/a;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v0}, Lcom/hisavana/mediation/a;->b(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hisavana/mediation/a;->m(Lcom/hisavana/mediation/a;Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {v0}, Lcom/hisavana/mediation/a;->W(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    const-string v1, "CacheHandler"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "mExecuter is null"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*----> request ad fail,error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",adSource:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ad placementId: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mFlightingAdCount.get() = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p1}, Lcom/hisavana/mediation/a;->W(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " progress "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget p1, p1, Lcom/hisavana/mediation/a;->n:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p1}, Lcom/hisavana/mediation/a;->Y(Lcom/hisavana/mediation/a;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ad load Error,source "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget p1, p0, Lcom/hisavana/mediation/a$d;->c:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/hisavana/mediation/a$d;->d()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "onError current is load"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a$d;->b(Z)V

    :goto_1
    return-void
.end method

.method public onLoad()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/hisavana/mediation/a$d;->a:Lcom/hisavana/common/interfacz/Iad;

    iput-object v0, p0, Lcom/hisavana/mediation/a$d;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/hisavana/mediation/a$d;->c()V

    return-void
.end method

.method public onLoad(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/a$d;->b:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/hisavana/mediation/a$d;->c()V

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "*----> ad onshow() "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget-object p3, p3, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CacheHandler"

    invoke-virtual {p1, p3, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p1}, Lcom/hisavana/mediation/a;->b0(Lcom/hisavana/mediation/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "currently have requesting ad,terminate preload flow."

    invoke-virtual {p0, p3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "network is disconnect"

    invoke-virtual {p0, p3, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p1}, Lcom/hisavana/mediation/a;->D(Lcom/hisavana/mediation/a;)Lnpd;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    new-instance p2, Lnpd;

    iget-object p3, p1, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    iget-object v0, p1, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-direct {p2, p3, v0}, Lnpd;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;)V

    invoke-static {p1, p2}, Lcom/hisavana/mediation/a;->e(Lcom/hisavana/mediation/a;Lnpd;)Lnpd;

    :cond_2
    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    invoke-static {p0}, Lcom/hisavana/mediation/a;->D(Lcom/hisavana/mediation/a;)Lnpd;

    move-result-object p0

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnpd;->d(Landroid/content/Context;)V

    return-void
.end method

.method public onSkipClick()V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrud;->onSkipClick()V

    :cond_0
    return-void
.end method

.method public onTimeReach()V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a$d;->d:Lcom/hisavana/mediation/a;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lrud;->onTimeReach()V

    :cond_0
    return-void
.end method
