.class public Lnpd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnpd$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public final c:Lvid;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lcom/hisavana/mediation/b;

.field public g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Lcom/hisavana/mediation/handler/DispatcherHandler;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PreloadHandler"

    iput-object v0, p0, Lnpd;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    iput v0, p0, Lnpd;->j:I

    iput-object p1, p0, Lnpd;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    iput-object p2, p0, Lnpd;->c:Lvid;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lnpd;->d:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    iput v1, p0, Lnpd;->e:I

    new-instance v1, Lcom/hisavana/mediation/b;

    invoke-direct {v1, p2, p1, v0}, Lcom/hisavana/mediation/b;-><init>(Lvid;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V

    iput-object v1, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;)V

    iput-object v0, p0, Lnpd;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    return-void
.end method

.method public static synthetic b(Lnpd;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic f(Lnpd;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lnpd;->e(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic h(Lnpd;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic l(Lnpd;)Lcom/hisavana/mediation/handler/DispatcherHandler;
    .locals 0

    iget-object p0, p0, Lnpd;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    return-object p0
.end method

.method public static synthetic n(Lnpd;)Z
    .locals 0

    invoke-virtual {p0}, Lnpd;->j()Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Lnpd;)V
    .locals 0

    invoke-virtual {p0}, Lnpd;->m()V

    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/common/interfacz/Iad;)Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    invoke-direct {v0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;-><init>()V

    new-instance v1, Lnpd$b;

    invoke-direct {v1, p0, p1}, Lnpd$b;-><init>(Lnpd;Lcom/hisavana/common/interfacz/Iad;)V

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->setAdListener(Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;)Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->build()Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/Iad;->stopLoader()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    iget-object p0, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/hisavana/mediation/b;->n()V

    :cond_3
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lnpd;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v0}, Lnpd;->g(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v0, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    invoke-virtual {v0}, Lcom/hisavana/mediation/b;->l()V

    invoke-virtual {p0, p1}, Lnpd;->i(Landroid/content/Context;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lnpd;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object v1, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    invoke-virtual {v1}, Lcom/hisavana/mediation/b;->o()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    invoke-virtual {v1}, Lcom/hisavana/mediation/b;->r()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iput-object p1, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnpd;->m()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "PreloadHandler"

    const-string p2, "*----> no ad source can be preload."

    invoke-virtual {p0, p1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreload()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreloadLogic()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    const-string v3, "PreloadHandler"

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current code seat id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnpd;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "preload is close..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v1, p0, Lnpd;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-virtual {v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lnpd;->c:Lvid;

    invoke-virtual {v0}, Lvid;->J()Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoAppend & INSUFFICIENT_APPEND,but adunit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnpd;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has cached ad, load/preload/trigger_preload request end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v4
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fanbidding queryPrice,codeSeatId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnpd;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    new-instance v1, Lnpd$a;

    invoke-direct {v1, p0, p1}, Lnpd$a;-><init>(Lnpd;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/b;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;

    return-void
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k(Lcom/hisavana/common/interfacz/Iad;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lnpd;->a(Lcom/hisavana/common/interfacz/Iad;)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object v5

    invoke-static {}, Lcom/hisavana/common/utils/AdUtil;->requestStatusOff()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v1, p0, Lnpd;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget v4, p0, Lnpd;->j:I

    const/4 v3, 0x2

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/hisavana/mediation/b;->f(Lcom/hisavana/common/bean/Network;Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codeSeatId is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lnpd;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":ad source is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", load status is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreloadHandler"

    invoke-virtual {v2, v4, v3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v7, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lnpd;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget v3, p0, Lnpd;->j:I

    invoke-virtual {v0, p1, v2, v3, v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z

    move-result v0

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object p0, p0, Lnpd;->f:Lcom/hisavana/mediation/b;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/hisavana/mediation/b;->f(Lcom/hisavana/common/bean/Network;Z)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    iget-object p0, p0, Lnpd;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_4
    :goto_0
    return v0
.end method

.method public final m()V
    .locals 4

    const-string v0, "load ad num: 1 with group"

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lnpd;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hisavana/common/interfacz/Iad;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lsod;->e(Lcom/hisavana/common/interfacz/Iad;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lnpd;->k(Lcom/hisavana/common/interfacz/Iad;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnpd;->c:Lvid;

    invoke-virtual {v2}, Lvid;->E()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lvid;->y(I)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lnpd;->k(Lcom/hisavana/common/interfacz/Iad;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnpd;->c:Lvid;

    invoke-virtual {v2}, Lvid;->E()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lvid;->y(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
