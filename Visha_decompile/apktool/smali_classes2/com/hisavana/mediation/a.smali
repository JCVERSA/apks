.class public abstract Lcom/hisavana/mediation/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hisavana/mediation/a$d;
    }
.end annotation


# instance fields
.field public A:Landroid/os/Bundle;

.field public a:D

.field public b:Lrud;

.field public c:Lcom/hisavana/common/utils/RunTimer;

.field public d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Lcom/hisavana/mediation/b;

.field public f:I

.field public g:I

.field public final h:Landroid/os/Handler;

.field public i:Ljava/lang/Object;

.field public final j:Ljava/lang/String;

.field public k:I

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:Z

.field public n:I

.field public final o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public final v:Lcom/hisavana/mediation/handler/DispatcherHandler;

.field public final w:Lvid;

.field public x:Lnpd;

.field public y:I

.field public z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;Lrud;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hisavana/mediation/a;->k:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v0, p0, Lcom/hisavana/mediation/a;->m:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/hisavana/mediation/a;->p:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/hisavana/mediation/a;->q:I

    iput v1, p0, Lcom/hisavana/mediation/a;->r:I

    iput v0, p0, Lcom/hisavana/mediation/a;->s:I

    iput v1, p0, Lcom/hisavana/mediation/a;->t:I

    iput v1, p0, Lcom/hisavana/mediation/a;->u:I

    iput v1, p0, Lcom/hisavana/mediation/a;->y:I

    new-instance v1, Lcom/hisavana/mediation/a$a;

    invoke-direct {v1, p0}, Lcom/hisavana/mediation/a$a;-><init>(Lcom/hisavana/mediation/a;)V

    iput-object v1, p0, Lcom/hisavana/mediation/a;->z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;

    iput-object p1, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    iput-object p2, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-virtual {p2, v0}, Lvid;->y(I)V

    new-instance v1, Lcom/hisavana/mediation/b;

    invoke-direct {v1, p2, p1, v0}, Lcom/hisavana/mediation/b;-><init>(Lvid;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V

    iput-object v1, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-direct {v0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lvid;)V

    iput-object v0, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    new-instance v0, Lcom/hisavana/mediation/a$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hisavana/mediation/a$b;-><init>(Lcom/hisavana/mediation/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/hisavana/mediation/a;->q:I

    iput-object p3, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    iget-object p3, p0, Lcom/hisavana/mediation/a;->z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;

    invoke-virtual {p1, p3}, Lcom/hisavana/common/bean/AdCache;->registerWatcher(Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;)V

    invoke-virtual {p2}, Lvid;->D()I

    move-result p1

    iput p1, p0, Lcom/hisavana/mediation/a;->s:I

    return-void
.end method

.method public static synthetic B(Lcom/hisavana/mediation/a;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->f0()Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lcom/hisavana/mediation/a;)Lnpd;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->x:Lnpd;

    return-object p0
.end method

.method public static synthetic H(Lcom/hisavana/mediation/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->f()V

    return-void
.end method

.method public static synthetic L(Lcom/hisavana/mediation/a;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->c0()Z

    move-result p0

    return p0
.end method

.method public static synthetic N(Lcom/hisavana/mediation/a;)I
    .locals 0

    iget p0, p0, Lcom/hisavana/mediation/a;->u:I

    return p0
.end method

.method public static synthetic Q(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic T(Lcom/hisavana/mediation/a;)Lcom/hisavana/mediation/handler/DispatcherHandler;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    return-object p0
.end method

.method public static synthetic W(Lcom/hisavana/mediation/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic Y(Lcom/hisavana/mediation/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->j0()V

    return-void
.end method

.method public static synthetic b(I)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 0

    invoke-static {p0}, Lcom/hisavana/mediation/a;->v(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/hisavana/mediation/a;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->Z()Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/a;Lnpd;)Lnpd;
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a;->x:Lnpd;

    return-object p1
.end method

.method public static synthetic l(Lcom/hisavana/mediation/a;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->K(I)V

    return-void
.end method

.method public static synthetic m(Lcom/hisavana/mediation/a;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static synthetic n(Lcom/hisavana/mediation/a;Lcom/hisavana/common/interfacz/Iad;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->j(Lcom/hisavana/common/interfacz/Iad;)V

    return-void
.end method

.method public static synthetic s(Lcom/hisavana/mediation/a;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->g0()Z

    move-result p0

    return p0
.end method

.method public static synthetic t(Lcom/hisavana/mediation/a;Lcom/hisavana/common/interfacz/Iad;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/a;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/hisavana/mediation/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/mediation/a;->m:Z

    return p1
.end method

.method public static v(I)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_LOW_PRICE:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_SENSITIVE:Lcom/hisavana/common/bean/TAdErrorCode;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final A(Lcom/hisavana/common/interfacz/Iad;I)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/a;->c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object v5

    invoke-static {}, Lcom/hisavana/common/utils/AdUtil;->requestStatusOff()Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v1, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget v4, p0, Lcom/hisavana/mediation/a;->r:I

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/hisavana/mediation/b;->f(Lcom/hisavana/common/bean/Network;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v1

    if-eq v1, v7, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget v2, p0, Lcom/hisavana/mediation/a;->r:I

    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z

    move-result p2

    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/hisavana/mediation/b;->f(Lcom/hisavana/common/bean/Network;Z)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_5
    :goto_0
    return p2

    :cond_6
    :goto_1
    return v0
.end method

.method public final C(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "FAILED"

    return-object p0

    :cond_1
    const-string p0, "SUCCESS"

    return-object p0

    :cond_2
    const-string p0, "LOADING"

    return-object p0

    :cond_3
    const-string p0, "NONE"

    return-object p0
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    iget-object v1, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lvid;->y(I)V

    iput v2, p0, Lcom/hisavana/mediation/a;->r:I

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->p0()V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-virtual {v1}, Lcom/hisavana/mediation/b;->n()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/AdCache;->unRegisterWatcher()V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x3

    iput v1, p0, Lcom/hisavana/mediation/a;->n:I

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------------->destroy,mUseCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CacheHandler"

    invoke-virtual {v1, v3, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/a;->o(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->x:Lnpd;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lnpd;->c()V

    :cond_4
    return-void
.end method

.method public F(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract G()Lcom/hisavana/common/bean/AdCache;
.end method

.method public I(I)Z
    .locals 7

    iget-object v0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad num: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with group"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load next group,mReqCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CacheHandler"

    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/interfacz/Iad;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lsod;->e(Lcom/hisavana/common/interfacz/Iad;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v4, v5}, Lcom/hisavana/mediation/a;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-virtual {v3}, Lvid;->E()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lvid;->y(I)V

    move v3, v5

    goto :goto_0

    :cond_3
    if-ge v2, p1, :cond_1

    invoke-virtual {p0, v4, v5}, Lcom/hisavana/mediation/a;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-virtual {v4}, Lvid;->E()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Lvid;->y(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-gtz v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v1, v5

    :cond_6
    return v1
.end method

.method public J()I
    .locals 2

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-virtual {p0}, Lvid;->J()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/hisavana/common/bean/AdCache;->checkCacheStatus(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public final K(I)V
    .locals 4

    iget v0, p0, Lcom/hisavana/mediation/a;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "CacheHandler"

    const-string v3, "notify load success"

    invoke-virtual {v0, v2, v3}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/hisavana/mediation/a;->n:I

    iget-object v0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lrud;->k(I)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->p0()V

    iget-object p0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    invoke-virtual {p0}, Lrud;->o()V

    :cond_1
    return-void
.end method

.method public M()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public O(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/hisavana/mediation/a;->p:I

    :cond_0
    return-void
.end method

.method public P()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public R(I)V
    .locals 0

    iput p1, p0, Lcom/hisavana/mediation/a;->y:I

    return-void
.end method

.method public S()D
    .locals 2

    iget-wide v0, p0, Lcom/hisavana/mediation/a;->a:D

    return-wide v0
.end method

.method public final U(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hisavana/mediation/a;->a(IZ)I

    return-void
.end method

.method public V()I
    .locals 0

    iget p0, p0, Lcom/hisavana/mediation/a;->s:I

    return p0
.end method

.method public final X(I)V
    .locals 5

    iget-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/hisavana/common/interfacz/ICacheAd;->setTimeOut(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    const-string/jumbo v2, "trigger_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    const-string/jumbo v2, "trigger_ts"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Lcom/hisavana/mediation/a;->q:I

    const-string v3, "ad_type"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lr6;->b:Ljava/lang/String;

    const-string v3, "cld_app_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    const-string v3, "code_seat_id"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cld_code_seat_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bid_start_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Lcom/hisavana/mediation/a;->g:I

    int-to-float p1, p1

    const-string v1, "bid_start_duration"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :try_start_0
    const-string/jumbo p1, "trigger_to_bid_duration"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sub-long/2addr v3, v1

    long-to-float v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object p1

    const-string v1, "cloudControlVersion"

    invoke-virtual {p1, v1}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cld_configure_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    const-string/jumbo v1, "traffic_group_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    const-string p1, "experiment_group_id"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingStartBid(Landroid/os/Bundle;)V

    return-void
.end method

.method public final Z()Z
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final a(IZ)I
    .locals 5

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->a0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->e0()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/hisavana/mediation/a;->n:I

    const/4 v2, 0x2

    const-string v3, "CacheHandler"

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v4, "*----> start bidding..."

    invoke-virtual {v0, v3, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start bidding,bidStartTimeType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBidding,bidStartTimeType "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " BIDDING_DURATION_REACHED:1,HIGH_PRICE_RETURN:2"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->X(I)V

    iput v2, p0, Lcom/hisavana/mediation/a;->n:I

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->l0()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->k0()V

    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->J()I

    move-result p1

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->f()V

    if-nez p1, :cond_2

    iget-boolean p2, p0, Lcom/hisavana/mediation/a;->m:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/a;->K(I)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBidding finish take bidding ad,and notifyLoadBest and unit id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "bidding success,ad fill*****************"

    invoke-static {v3, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->Z()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    const-string/jumbo v0, "startBidding failed,no ad fill"

    invoke-virtual {p2, v3, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hisavana/mediation/a;->v(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/hisavana/mediation/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_1
    move v1, p1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string/jumbo p2, "startBidding,ad is null but still have ad requesting"

    invoke-virtual {p0, v3, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_5
    :goto_3
    return v1
.end method

.method public final a0()Z
    .locals 2

    iget v0, p0, Lcom/hisavana/mediation/a;->n:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lrud;->j()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    invoke-virtual {p0}, Lrud;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    invoke-direct {v0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;-><init>()V

    new-instance v1, Lcom/hisavana/mediation/a$d;

    invoke-direct {v1, p0, p1, p2}, Lcom/hisavana/mediation/a$d;-><init>(Lcom/hisavana/mediation/a;Lcom/hisavana/common/interfacz/Iad;I)V

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->setAdListener(Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;)Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->build()Lcom/hisavana/common/bean/TInnerAdRequestBody;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Z
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->m(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public d(Z)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract d0()Z
.end method

.method public e0()Z
    .locals 1

    iget p0, p0, Lcom/hisavana/mediation/a;->t:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()V
    .locals 3

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-virtual {v2}, Lvid;->J()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/hisavana/mediation/a;->a:D

    return-void
.end method

.method public final f0()Z
    .locals 1

    iget p0, p0, Lcom/hisavana/mediation/a;->n:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a;->A:Landroid/os/Bundle;

    return-void
.end method

.method public final g0()Z
    .locals 2

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/hisavana/mediation/a;->r:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/hisavana/mediation/a;->r:I

    iget v0, p0, Lcom/hisavana/mediation/a;->u:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/hisavana/mediation/a;->k:I

    :cond_1
    invoke-virtual {p0, v1}, Lcom/hisavana/mediation/a;->I(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->o0()V

    :cond_2
    return v0
.end method

.method public final h(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 4

    iget v0, p0, Lcom/hisavana/mediation/a;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "CacheHandler"

    const-string v3, "notify load failed"

    invoke-virtual {v0, v2, v3}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->p0()V

    iput v1, p0, Lcom/hisavana/mediation/a;->n:I

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->y(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public final h0()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "CacheHandler"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-virtual {v0}, Lcom/hisavana/mediation/b;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/hisavana/mediation/a;->k:I

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/a;->I(I)Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string/jumbo v2, "start WaitForBidding & startWaitForNextGroupRequest"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->n0()V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->o0()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "*----> no ad source can be load."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/hisavana/mediation/a;->w:Lvid;

    invoke-virtual {v2}, Lvid;->J()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->e0()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/a;->U(I)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/a;->h(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_1
    return-void
.end method

.method public i(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lrud;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    return-void
.end method

.method public i0()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/a;->z(Ljava/lang/Object;)V

    return-void
.end method

.method public final j(Lcom/hisavana/common/interfacz/Iad;)V
    .locals 4

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replace cloud price use first price\uff0cfirstprice\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\uff0ccloud price\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheHandler"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    instance-of v0, p1, Lcom/hisavana/common/base/BaseAd;

    const-string v1, "bidding_price"

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/hisavana/common/base/BaseAd;

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v0}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v0

    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object v1, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->g(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isAdxAd()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/hisavana/mediation/a;->s:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/hisavana/mediation/a;->U(I)V

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isEwAd()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/hisavana/mediation/a;->s:I

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_5

    :cond_4
    invoke-virtual {p0, v2}, Lcom/hisavana/mediation/a;->U(I)V

    :cond_5
    return-void
.end method

.method public final j0()V
    .locals 7

    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/interfacz/Iad;

    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    const-string v6, "return_time"

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/hisavana/common/base/BaseAd;

    iget-object v3, v3, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v5, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v3

    iget-object v3, v3, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_2
    :goto_1
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v2

    :goto_2
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v5

    invoke-static {v5}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_4

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string/jumbo v5, "\uff0c"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/hisavana/mediation/a;->C(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\uff0creturnTime\uff1a"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- executer list load status--- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CacheHandler"

    invoke-virtual {p0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget v0, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE6:I

    invoke-static {p0, v0}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public final k(Lcom/hisavana/common/utils/RunTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a;->c:Lcom/hisavana/common/utils/RunTimer;

    return-void
.end method

.method public final k0()V
    .locals 1

    iget-object p0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "CacheHandler"

    const-string v2, "removeWaitForNextGroupRequest..."

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public m0()V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/mediation/a;->i:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/a;->F(Ljava/lang/Object;)V

    return-void
.end method

.method public final n0()V
    .locals 4

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->e0()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "CacheHandler"

    const-string/jumbo v2, "startWaitForBidding..."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    iget p0, p0, Lcom/hisavana/mediation/a;->g:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public abstract o(Ljava/lang/Object;)V
.end method

.method public final o0()V
    .locals 4

    iget v0, p0, Lcom/hisavana/mediation/a;->u:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->h:Landroid/os/Handler;

    iget p0, p0, Lcom/hisavana/mediation/a;->f:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final p(Lrud;)V
    .locals 0

    iput-object p1, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    return-void
.end method

.method public p0()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/mediation/a;->c:Lcom/hisavana/common/utils/RunTimer;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "LoadHandler"

    const-string/jumbo v2, "stop timer"

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/mediation/a;->c:Lcom/hisavana/common/utils/RunTimer;

    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;)Z
    .locals 13

    iget-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/mediation/a;->m:Z

    iget-object v1, p0, Lcom/hisavana/mediation/a;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v1, p0, Lcom/hisavana/mediation/a;->y:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v4, 0x1f4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/hisavana/mediation/a;->g:I

    iget-object v2, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/hisavana/mediation/a;->f:I

    iget-object v2, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    iput v2, p0, Lcom/hisavana/mediation/a;->k:I

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->P()I

    move-result v2

    iget-object v4, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/hisavana/mediation/a;->p:I

    iput v3, p0, Lcom/hisavana/mediation/a;->n:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeFillCallbackMode()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getFillCallbackMode()Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hisavana/mediation/a;->t:I

    iget-object v1, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRequestIntervalMode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/hisavana/mediation/a;->u:I

    sget-boolean v1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    const-string v2, "CacheHandler"

    if-eqz v1, :cond_4

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/hisavana/mediation/R$string;->hisavana_log_msg1:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/hisavana/mediation/a;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v4, p0, Lcom/hisavana/mediation/a;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v4, p0, Lcom/hisavana/mediation/a;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v4, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v8

    iget-object v4, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreload()Ljava/lang/Boolean;

    move-result-object v9

    iget-object v4, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v10

    iget-object v4, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v11

    iget-object v4, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE1:I

    invoke-static {v1, v4}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareForRequest,config "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*----> WaitBiddingTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hisavana/mediation/a;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",WaitNextGroupRequestTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hisavana/mediation/a;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",ConcurrentReqCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/hisavana/mediation/a;->k:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",PoolAppendStrategy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreloadLogic()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",adRequestCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ----- codeSeatId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v5}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/hisavana/mediation/a;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->e0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->J()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->f()V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "-------->quick fill success "

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/hisavana/mediation/a;->K(I)V

    :cond_6
    iget-object v0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-virtual {v0}, Lcom/hisavana/mediation/b;->l()V

    iget-object v4, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    iget-object v0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-virtual {v0}, Lcom/hisavana/mediation/b;->p()Ljava/util/List;

    move-result-object v6

    iget-object v0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-virtual {v0}, Lcom/hisavana/mediation/b;->o()Ljava/util/List;

    move-result-object v7

    iget-object v0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    invoke-virtual {v0}, Lcom/hisavana/mediation/b;->r()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/hisavana/mediation/handler/DispatcherHandler;->f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hisavana/mediation/a;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Lcom/hisavana/mediation/a;->x(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->h0()V

    return v3

    :cond_7
    :goto_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnit:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " no networks , load/preload/trigger_preload request end"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "prepareForRequest,networks is empty"

    invoke-static {v2, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public r(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Z
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/mediation/a;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p1, p2}, Lcom/hisavana/mediation/a;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public w()V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->E()V

    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fanbidding queryPrice,codeSeatId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hisavana/mediation/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/mediation/a;->e:Lcom/hisavana/mediation/b;

    new-instance v1, Lcom/hisavana/mediation/a$c;

    invoke-direct {v1, p0, p1}, Lcom/hisavana/mediation/a$c;-><init>(Lcom/hisavana/mediation/a;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/b;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;

    return-void
.end method

.method public y(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/mediation/a;->b:Lrud;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lrud;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
