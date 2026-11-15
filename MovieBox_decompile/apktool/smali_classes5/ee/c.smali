.class public abstract Lee/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee/c$d;
    }
.end annotation


# instance fields
.field public A:Landroid/os/Bundle;

.field public a:D

.field public b:Lee/s;

.field public c:Lcom/hisavana/common/utils/RunTimer;

.field public d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final e:Lee/q;

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

.field public final w:Lee/i;

.field public x:Lee/p;

.field public y:I

.field public z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lee/c;->k:I

    .line 13
    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    iput-boolean v0, p0, Lee/c;->m:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput v1, p0, Lee/c;->p:I

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    iput v2, p0, Lee/c;->q:I

    .line 28
    .line 29
    iput v1, p0, Lee/c;->r:I

    .line 30
    .line 31
    iput v0, p0, Lee/c;->s:I

    .line 32
    .line 33
    iput v1, p0, Lee/c;->t:I

    .line 34
    .line 35
    iput v1, p0, Lee/c;->u:I

    .line 36
    .line 37
    iput v1, p0, Lee/c;->y:I

    .line 38
    .line 39
    new-instance v1, Lee/c$a;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lee/c$a;-><init>(Lee/c;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lee/c;->z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;

    .line 45
    .line 46
    iput-object p1, p0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 47
    .line 48
    iput-object p2, p0, Lee/c;->w:Lee/i;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lee/i;->y(I)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Lee/q;

    .line 54
    .line 55
    invoke-direct {v1, p2, p1, v0}, Lee/q;-><init>(Lee/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lee/c;->e:Lee/q;

    .line 59
    .line 60
    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 61
    .line 62
    invoke-direct {v0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 66
    .line 67
    new-instance v0, Lee/c$b;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, p0, v1}, Lee/c$b;-><init>(Lee/c;Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lee/c;->q:I

    .line 87
    .line 88
    iput-object p3, p0, Lee/c;->b:Lee/s;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lee/c;->j:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p0}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object p3, p0, Lee/c;->z:Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;

    .line 101
    .line 102
    invoke-virtual {p1, p3}, Lcom/hisavana/common/bean/AdCache;->registerWatcher(Lcom/hisavana/common/bean/AdCache$AdCacheExpiredWatcher;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p2}, Lee/i;->D()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iput p1, p0, Lee/c;->s:I

    .line 110
    .line 111
    return-void
.end method

.method public static synthetic B(Lee/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->f0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic C(Lee/c;)Lee/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/c;->x:Lee/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic H(Lee/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->f()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lee/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->c0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic N(Lee/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lee/c;->u:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic Q(Lee/c;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic T(Lee/c;)Lcom/hisavana/mediation/handler/DispatcherHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic W(Lee/c;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic Y(Lee/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(I)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 0

    .line 1
    invoke-static {p0}, Lee/c;->v(I)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lee/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->Z()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic d(Lee/c;Lee/p;)Lee/p;
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c;->x:Lee/p;

    .line 2
    .line 3
    return-object p1
.end method

.method public static synthetic l(Lee/c;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lee/c;->K(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lee/c;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lee/c;->h(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lee/c;Lcom/hisavana/common/interfacz/Iad;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lee/c;->j(Lcom/hisavana/common/interfacz/Iad;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lee/c;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->g0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic t(Lee/c;Lcom/hisavana/common/interfacz/Iad;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lee/c;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic u(Lee/c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lee/c;->m:Z

    .line 2
    .line 3
    return p1
.end method

.method public static v(I)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_LOW_PRICE:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_SENSITIVE:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_2
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method


# virtual methods
.method public final A(Lcom/hisavana/common/interfacz/Iad;I)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lee/c;->c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    invoke-static {}, Lcom/hisavana/common/utils/AdUtil;->requestStatusOff()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v7, 0x1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 22
    .line 23
    iget v4, p0, Lee/c;->r:I

    .line 24
    .line 25
    const/4 v6, 0x1

    .line 26
    move-object v2, p1

    .line 27
    move v3, p2

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lee/c;->e:Lee/q;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1, v7}, Lee/q;->f(Lcom/hisavana/common/bean/Network;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eq v1, v7, :cond_6

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    if-eq v1, v2, :cond_6

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    if-ne v1, v2, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    iget-object v0, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 64
    .line 65
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 69
    .line 70
    iget v2, p0, Lee/c;->r:I

    .line 71
    .line 72
    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez v1, :cond_4

    .line 77
    .line 78
    if-eqz p2, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lee/c;->e:Lee/q;

    .line 81
    .line 82
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v0, p1, v7}, Lee/q;->f(Lcom/hisavana/common/bean/Network;Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    if-nez p2, :cond_5

    .line 91
    .line 92
    iget-object p1, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_0
    return p2

    .line 98
    :cond_6
    :goto_1
    return v0
.end method

.method public final D(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    const-string p1, "FAILED"

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    const-string p1, "SUCCESS"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_2
    const-string p1, "LOADING"

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_3
    const-string p1, "NONE"

    .line 25
    .line 26
    return-object p1
.end method

.method public final E()V
    .locals 4

    .line 1
    iget-object v0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/Iad;->stopLoader()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lee/c;->b:Lee/s;

    .line 35
    .line 36
    iget-object v1, p0, Lee/c;->w:Lee/i;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {v1, v2}, Lee/i;->y(I)V

    .line 40
    .line 41
    .line 42
    iput v2, p0, Lee/c;->r:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lee/c;->p0()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lee/c;->e:Lee/q;

    .line 48
    .line 49
    invoke-virtual {v1}, Lee/q;->n()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/hisavana/common/bean/AdCache;->unRegisterWatcher()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lee/c;->h:Landroid/os/Handler;

    .line 60
    .line 61
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    const/4 v1, 0x3

    .line 67
    iput v1, p0, Lee/c;->n:I

    .line 68
    .line 69
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v3, "----------------->destroy,mUseCache:"

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lee/c;->i:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-string v3, "CacheHandler"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lee/c;->i:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {p0, v1}, Lee/c;->p(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lee/c;->i:Ljava/lang/Object;

    .line 103
    .line 104
    iget-object v0, p0, Lee/c;->x:Lee/p;

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {v0}, Lee/p;->c()V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method

.method public F(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract G()Lcom/hisavana/common/bean/AdCache;
.end method

.method public I(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lee/c;->b:Lee/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "load ad num: "

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, " with group"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "load next group,mReqCount "

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "CacheHandler"

    .line 50
    .line 51
    invoke-static {v2, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    move v2, v1

    .line 61
    move v3, v2

    .line 62
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/4 v5, 0x1

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Lcom/hisavana/common/interfacz/Iad;

    .line 74
    .line 75
    if-nez v4, :cond_2

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {v4}, Lee/o;->e(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0, v4, v5}, Lee/c;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    iget-object v3, p0, Lee/c;->w:Lee/i;

    .line 91
    .line 92
    invoke-virtual {v3}, Lee/i;->E()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    add-int/2addr v4, v5

    .line 97
    invoke-virtual {v3, v4}, Lee/i;->y(I)V

    .line 98
    .line 99
    .line 100
    move v3, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    if-ge v2, p1, :cond_1

    .line 103
    .line 104
    invoke-virtual {p0, v4, v5}, Lee/c;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_1

    .line 109
    .line 110
    iget-object v4, p0, Lee/c;->w:Lee/i;

    .line 111
    .line 112
    invoke-virtual {v4}, Lee/i;->E()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    add-int/2addr v6, v5

    .line 117
    invoke-virtual {v4, v6}, Lee/i;->y(I)V

    .line 118
    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_4
    if-gtz v2, :cond_5

    .line 124
    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    :cond_5
    move v1, v5

    .line 128
    :cond_6
    return v1
.end method

.method public J()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lee/c;->w:Lee/i;

    .line 8
    .line 9
    invoke-virtual {v2}, Lee/i;->J()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->checkCacheStatus(Ljava/lang/String;Z)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public final K(I)V
    .locals 4

    .line 1
    iget v0, p0, Lee/c;->n:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "CacheHandler"

    .line 12
    .line 13
    const-string v3, "notify load success"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput v1, p0, Lee/c;->n:I

    .line 19
    .line 20
    iget-object v0, p0, Lee/c;->b:Lee/s;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lee/s;->l(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lee/c;->p0()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lee/c;->b:Lee/s;

    .line 31
    .line 32
    invoke-virtual {p1}, Lee/s;->p()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public M()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public O(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lee/c;->p:I

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public P()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public R(I)V
    .locals 0

    .line 1
    iput p1, p0, Lee/c;->y:I

    .line 2
    .line 3
    return-void
.end method

.method public S()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lee/c;->a:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final U(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lee/c;->a(IZ)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public V()I
    .locals 1

    .line 1
    iget v0, p0, Lee/c;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public final X(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-interface {v1, v2}, Lcom/hisavana/common/interfacz/ICacheAd;->setTimeOut(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 32
    .line 33
    const-string v2, "trigger_id"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 43
    .line 44
    const-string v2, "trigger_ts"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 51
    .line 52
    .line 53
    iget v1, p0, Lee/c;->q:I

    .line 54
    .line 55
    const-string v3, "ad_type"

    .line 56
    .line 57
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    .line 59
    .line 60
    sget-object v1, Lc7/b;->b:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "cld_app_id"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 68
    .line 69
    const-string v3, "code_seat_id"

    .line 70
    .line 71
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v3, "cld_code_seat_id"

    .line 76
    .line 77
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "bid_start_time_type"

    .line 81
    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    iget p1, p0, Lee/c;->g:I

    .line 86
    .line 87
    int-to-float p1, p1

    .line 88
    const-string v1, "bid_start_duration"

    .line 89
    .line 90
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    const-string p1, "trigger_to_bid_duration"

    .line 94
    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    iget-object v1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v1

    .line 105
    sub-long/2addr v3, v1

    .line 106
    long-to-float v1, v3

    .line 107
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .line 109
    .line 110
    :catch_0
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string v1, "cloudControlVersion"

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v1, "cld_configure_id"

    .line 121
    .line 122
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 126
    .line 127
    const-string v1, "traffic_group_id"

    .line 128
    .line 129
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object p1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 137
    .line 138
    const-string v1, "experiment_group_id"

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingStartBid(Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public final Z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public final a(IZ)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lee/c;->a0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Lee/c;->e0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    iget v0, p0, Lee/c;->n:I

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    const-string v3, "CacheHandler"

    .line 18
    .line 19
    if-ge v0, v2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v4, "*----> start bidding..."

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "start bidding,bidStartTimeType:"

    .line 36
    .line 37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v4, "startBidding,bidStartTimeType "

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " BIDDING_DURATION_REACHED:1,HIGH_PRICE_RETURN:2"

    .line 64
    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, p1}, Lee/c;->X(I)V

    .line 76
    .line 77
    .line 78
    iput v2, p0, Lee/c;->n:I

    .line 79
    .line 80
    invoke-virtual {p0}, Lee/c;->l0()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lee/c;->k0()V

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {p0}, Lee/c;->J()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-virtual {p0}, Lee/c;->f()V

    .line 91
    .line 92
    .line 93
    if-nez p1, :cond_2

    .line 94
    .line 95
    iget-boolean p2, p0, Lee/c;->m:Z

    .line 96
    .line 97
    if-eqz p2, :cond_1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    move v1, v2

    .line 101
    :goto_0
    invoke-virtual {p0, v1}, Lee/c;->K(I)V

    .line 102
    .line 103
    .line 104
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v1, "startBidding finish take bidding ad,and notifyLoadBest and unit id is "

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p2, "bidding success,ad fill*****************"

    .line 131
    .line 132
    invoke-static {v3, p2}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_2
    if-nez p2, :cond_4

    .line 137
    .line 138
    invoke-virtual {p0}, Lee/c;->Z()Z

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    if-eqz p2, :cond_3

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    const-string v0, "startBidding failed,no ad fill"

    .line 150
    .line 151
    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Lee/c;->v(I)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-virtual {p0, p2}, Lee/c;->h(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 159
    .line 160
    .line 161
    :goto_1
    move v1, p1

    .line 162
    goto :goto_3

    .line 163
    :cond_4
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    const-string v0, "startBidding,ad is null but still have ad requesting"

    .line 168
    .line 169
    invoke-virtual {p2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return p1

    .line 173
    :cond_5
    :goto_3
    return v1
.end method

.method public final a0()Z
    .locals 2

    .line 1
    iget v0, p0, Lee/c;->n:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lee/c;->b:Lee/s;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lee/s;->k()Lcom/hisavana/common/interfacz/TAdListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lee/c;->b:Lee/s;

    .line 17
    .line 18
    invoke-virtual {v0}, Lee/s;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public c(Lcom/hisavana/common/interfacz/Iad;I)Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lee/c$d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lee/c$d;-><init>(Lee/c;Lcom/hisavana/common/interfacz/Iad;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->setAdListener(Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;)Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;->build()Lcom/hisavana/common/bean/TInnerAdRequestBody;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final c0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->m(Ljava/util/List;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract d0()Z
.end method

.method public e(Z)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lee/c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public e0()Z
    .locals 2

    .line 1
    iget v0, p0, Lee/c;->t:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lee/c;->w:Lee/i;

    .line 8
    .line 9
    invoke-virtual {v2}, Lee/i;->J()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lee/c;->a:D

    .line 18
    .line 19
    return-void
.end method

.method public final f0()Z
    .locals 2

    .line 1
    iget v0, p0, Lee/c;->n:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c;->A:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public final g0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lee/c;->c0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget v0, p0, Lee/c;->r:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iput v0, p0, Lee/c;->r:I

    .line 14
    .line 15
    iget v0, p0, Lee/c;->u:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget v1, p0, Lee/c;->k:I

    .line 20
    .line 21
    :cond_1
    invoke-virtual {p0, v1}, Lee/c;->I(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lee/c;->o0()V

    .line 28
    .line 29
    .line 30
    :cond_2
    return v0
.end method

.method public final h(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 4

    .line 1
    iget v0, p0, Lee/c;->n:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "CacheHandler"

    .line 12
    .line 13
    const-string v3, "notify load failed"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lee/c;->p0()V

    .line 19
    .line 20
    .line 21
    iput v1, p0, Lee/c;->n:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lee/c;->y(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    const-string v1, "CacheHandler"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lee/c;->e:Lee/q;

    .line 14
    .line 15
    invoke-virtual {v0}, Lee/q;->q()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget v0, p0, Lee/c;->k:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lee/c;->I(I)Z

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "start WaitForBidding & startWaitForNextGroupRequest"

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lee/c;->n0()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lee/c;->o0()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "*----> no ad source can be load."

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v2, p0, Lee/c;->w:Lee/i;

    .line 63
    .line 64
    invoke-virtual {v2}, Lee/i;->J()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-virtual {p0}, Lee/c;->e0()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    const/4 v0, 0x2

    .line 81
    invoke-virtual {p0, v0}, Lee/c;->U(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WiTH_EXPIRED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lee/c;->h(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method

.method public i(Lcom/hisavana/common/bean/TInnerAdRequestBody;Lee/s;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TInnerAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p1, p2}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public i0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lee/c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lee/c;->z(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final j(Lcom/hisavana/common/interfacz/Iad;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_5

    .line 12
    .line 13
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "replace cloud price use first price\uff0cfirstprice\uff1a"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "\uff0ccloud price\uff1a"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "CacheHandler"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/Network;->setPrice(Ljava/lang/Double;)V

    .line 72
    .line 73
    .line 74
    instance-of v0, p1, Lcom/hisavana/common/base/BaseAd;

    .line 75
    .line 76
    const-string v1, "bidding_price"

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/hisavana/common/base/BaseAd;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    instance-of v0, p1, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 94
    .line 95
    if-eqz v0, :cond_1

    .line 96
    .line 97
    move-object v0, p1

    .line 98
    check-cast v0, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-object v0, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 115
    .line 116
    .line 117
    :cond_1
    :goto_0
    iget-object v0, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 118
    .line 119
    iget-object v1, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->g(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isAdxAd()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const/4 v1, 0x3

    .line 129
    const/4 v2, 0x2

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    iget v0, p0, Lee/c;->s:I

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    if-eq v0, v3, :cond_2

    .line 136
    .line 137
    if-ne v0, v1, :cond_3

    .line 138
    .line 139
    :cond_2
    invoke-virtual {p0, v2}, Lee/c;->U(I)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->isEwAd()Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    iget p1, p0, Lee/c;->s:I

    .line 150
    .line 151
    if-eq p1, v2, :cond_4

    .line 152
    .line 153
    if-ne p1, v1, :cond_5

    .line 154
    .line 155
    :cond_4
    invoke-virtual {p0, v2}, Lee/c;->U(I)V

    .line 156
    .line 157
    .line 158
    :cond_5
    return-void
.end method

.method public final j0()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_5

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/hisavana/common/interfacz/Iad;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    .line 33
    .line 34
    const-string v6, "return_time"

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    move-object v3, v4

    .line 39
    check-cast v3, Lcom/hisavana/common/base/BaseAd;

    .line 40
    .line 41
    iget-object v3, v3, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    move-object v3, v4

    .line 53
    check-cast v3, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object v3, v3, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 64
    .line 65
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    :cond_2
    :goto_1
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    const/4 v6, 0x1

    .line 74
    if-ne v5, v6, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v6, v2

    .line 78
    :goto_2
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    invoke-static {v5}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    if-eqz v6, :cond_4

    .line 90
    .line 91
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    if-eqz v5, :cond_4

    .line 96
    .line 97
    const-string v5, "-"

    .line 98
    .line 99
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    :cond_4
    const-string v5, "\uff0c"

    .line 110
    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {p0, v4}, Lee/c;->D(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v4, "\uff0creturnTime\uff1a"

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, "\n"

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v3, "--- executer list load status--- : "

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v3, "CacheHandler"

    .line 165
    .line 166
    invoke-virtual {v1, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-boolean v1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 170
    .line 171
    if-eqz v1, :cond_6

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    sget v1, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE6:I

    .line 178
    .line 179
    invoke-static {v0, v1}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    :cond_6
    return-void
.end method

.method public final k(Lcom/hisavana/common/utils/RunTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 2
    .line 3
    return-void
.end method

.method public final k0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x3ea

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public final l0()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "CacheHandler"

    .line 6
    .line 7
    const-string v2, "removeWaitForNextGroupRequest..."

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x3e9

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public m0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lee/c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lee/c;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final n0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lee/c;->e0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "CacheHandler"

    .line 16
    .line 17
    const-string v2, "startWaitForBidding..."

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 23
    .line 24
    const/16 v1, 0x3ea

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 30
    .line 31
    iget v2, p0, Lee/c;->g:I

    .line 32
    .line 33
    int-to-long v2, v2

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final o(Lee/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c;->b:Lee/s;

    .line 2
    .line 3
    return-void
.end method

.method public final o0()V
    .locals 4

    .line 1
    iget v0, p0, Lee/c;->u:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 v1, 0x3e9

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lee/c;->h:Landroid/os/Handler;

    .line 16
    .line 17
    iget v2, p0, Lee/c;->f:I

    .line 18
    .line 19
    int-to-long v2, v2

    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public abstract p(Ljava/lang/Object;)V
.end method

.method public p0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lee/c;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "LoadHandler"

    .line 10
    .line 11
    const-string v2, "stop timer"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lee/c;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lee/c;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public q(Landroid/content/Context;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    iget-object v2, v0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v0, Lee/c;->m:Z

    .line 11
    .line 12
    iget-object v3, v0, Lee/c;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    .line 16
    .line 17
    iget v3, v0, Lee/c;->y:I

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ne v3, v4, :cond_0

    .line 22
    .line 23
    move v3, v5

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v3, v2

    .line 26
    :goto_0
    if-eqz v3, :cond_1

    .line 27
    .line 28
    iget-object v6, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeBiddingWaitTime()Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v6, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getBiddingWaitTime()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    const/16 v7, 0x1f4

    .line 46
    .line 47
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    iput v6, v0, Lee/c;->g:I

    .line 52
    .line 53
    iget-object v6, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 54
    .line 55
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestTimeInterval()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    iput v6, v0, Lee/c;->f:I

    .line 68
    .line 69
    iget-object v6, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-gtz v6, :cond_2

    .line 80
    .line 81
    move v6, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v6, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 84
    .line 85
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    :goto_2
    iput v6, v0, Lee/c;->k:I

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lee/c;->P()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    iget-object v7, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 100
    .line 101
    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v6

    .line 113
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    iput v6, v0, Lee/c;->p:I

    .line 118
    .line 119
    iput v5, v0, Lee/c;->n:I

    .line 120
    .line 121
    if-eqz v3, :cond_3

    .line 122
    .line 123
    iget-object v3, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeFillCallbackMode()Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    iget-object v3, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getFillCallbackMode()Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    iput v3, v0, Lee/c;->t:I

    .line 141
    .line 142
    iget-object v3, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRequestIntervalMode()Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    iput v3, v0, Lee/c;->u:I

    .line 153
    .line 154
    sget-boolean v3, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 155
    .line 156
    const-string v6, "CacheHandler"

    .line 157
    .line 158
    if-eqz v3, :cond_4

    .line 159
    .line 160
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    sget v7, Lcom/hisavana/mediation/R$string;->hisavana_log_msg1:I

    .line 165
    .line 166
    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget v7, v0, Lee/c;->g:I

    .line 171
    .line 172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    iget v8, v0, Lee/c;->f:I

    .line 177
    .line 178
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v8

    .line 182
    iget v9, v0, Lee/c;->k:I

    .line 183
    .line 184
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    iget-object v10, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 189
    .line 190
    invoke-virtual {v10}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v10

    .line 194
    iget-object v11, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 195
    .line 196
    invoke-virtual {v11}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreload()Ljava/lang/Boolean;

    .line 197
    .line 198
    .line 199
    move-result-object v11

    .line 200
    iget-object v12, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 201
    .line 202
    invoke-virtual {v12}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v12

    .line 206
    iget-object v13, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 207
    .line 208
    invoke-virtual {v13}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    iget-object v14, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 213
    .line 214
    invoke-virtual {v14}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v14

    .line 218
    const/16 v15, 0x8

    .line 219
    .line 220
    new-array v15, v15, [Ljava/lang/Object;

    .line 221
    .line 222
    aput-object v7, v15, v2

    .line 223
    .line 224
    aput-object v8, v15, v5

    .line 225
    .line 226
    aput-object v9, v15, v4

    .line 227
    .line 228
    const/4 v4, 0x3

    .line 229
    aput-object v10, v15, v4

    .line 230
    .line 231
    const/4 v4, 0x4

    .line 232
    aput-object v11, v15, v4

    .line 233
    .line 234
    aput-object v12, v15, v1

    .line 235
    .line 236
    const/4 v4, 0x6

    .line 237
    aput-object v13, v15, v4

    .line 238
    .line 239
    const/4 v4, 0x7

    .line 240
    aput-object v14, v15, v4

    .line 241
    .line 242
    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    sget v4, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE1:I

    .line 247
    .line 248
    invoke-static {v3, v4}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 249
    .line 250
    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v7, "prepareForRequest,config "

    .line 257
    .line 258
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    invoke-static {v6, v3}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    .line 270
    .line 271
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 272
    .line 273
    .line 274
    move-result-object v3

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v7, "*----> WaitBiddingTime:"

    .line 281
    .line 282
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    iget v7, v0, Lee/c;->g:I

    .line 286
    .line 287
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v7, ",WaitNextGroupRequestTime:"

    .line 291
    .line 292
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget v7, v0, Lee/c;->f:I

    .line 296
    .line 297
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v7, ",ConcurrentReqCount:"

    .line 301
    .line 302
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    iget v7, v0, Lee/c;->k:I

    .line 306
    .line 307
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    const-string v7, ",PoolAppendStrategy:"

    .line 311
    .line 312
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-object v7, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 316
    .line 317
    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreloadLogic()Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object v7

    .line 321
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v7, ",adRequestCount:"

    .line 325
    .line 326
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    iget-object v7, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 330
    .line 331
    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    const-string v7, " ----- codeSeatId = "

    .line 339
    .line 340
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v7, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 344
    .line 345
    invoke-virtual {v7}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    invoke-virtual {v3, v6, v4}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    :cond_4
    iget-object v3, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 360
    .line 361
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    if-eqz v3, :cond_7

    .line 366
    .line 367
    iget-object v3, v0, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 368
    .line 369
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    if-nez v3, :cond_5

    .line 378
    .line 379
    goto :goto_4

    .line 380
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lee/c;->e0()Z

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    if-eqz v2, :cond_6

    .line 385
    .line 386
    invoke-virtual/range {p0 .. p0}, Lee/c;->J()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    if-nez v2, :cond_6

    .line 391
    .line 392
    invoke-virtual/range {p0 .. p0}, Lee/c;->f()V

    .line 393
    .line 394
    .line 395
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    const-string v3, "-------->quick fill success "

    .line 400
    .line 401
    invoke-virtual {v2, v6, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v0, v1}, Lee/c;->K(I)V

    .line 405
    .line 406
    .line 407
    :cond_6
    iget-object v1, v0, Lee/c;->e:Lee/q;

    .line 408
    .line 409
    invoke-virtual {v1}, Lee/q;->l()V

    .line 410
    .line 411
    .line 412
    iget-object v6, v0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 413
    .line 414
    iget-object v1, v0, Lee/c;->e:Lee/q;

    .line 415
    .line 416
    invoke-virtual {v1}, Lee/q;->p()Ljava/util/List;

    .line 417
    .line 418
    .line 419
    move-result-object v8

    .line 420
    iget-object v1, v0, Lee/c;->e:Lee/q;

    .line 421
    .line 422
    invoke-virtual {v1}, Lee/q;->o()Ljava/util/List;

    .line 423
    .line 424
    .line 425
    move-result-object v9

    .line 426
    iget-object v1, v0, Lee/c;->e:Lee/q;

    .line 427
    .line 428
    invoke-virtual {v1}, Lee/q;->r()Ljava/util/List;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    const/4 v11, 0x0

    .line 433
    move-object/from16 v7, p1

    .line 434
    .line 435
    invoke-virtual/range {v6 .. v11}, Lcom/hisavana/mediation/handler/DispatcherHandler;->f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    iput-object v1, v0, Lee/c;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 440
    .line 441
    invoke-virtual/range {p0 .. p1}, Lee/c;->x(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual/range {p0 .. p0}, Lee/c;->h0()V

    .line 445
    .line 446
    .line 447
    return v5

    .line 448
    :cond_7
    :goto_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    const-string v4, "adUnit:"

    .line 458
    .line 459
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    iget-object v4, v0, Lee/c;->j:Ljava/lang/String;

    .line 463
    .line 464
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    const-string v4, " no networks , load/preload/trigger_preload request end"

    .line 468
    .line 469
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v1, v6, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    const-string v1, "prepareForRequest,networks is empty"

    .line 480
    .line 481
    invoke-static {v6, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 482
    .line 483
    .line 484
    return v2
.end method

.method public r(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Z
    .locals 2

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lee/c;->v:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 15
    .line 16
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 p2, 0x5

    .line 25
    invoke-virtual {p0, p1, p2}, Lee/c;->A(Lcom/hisavana/common/interfacz/Iad;I)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public w()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/c;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final x(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "fanbidding queryPrice,codeSeatId:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lee/c;->j:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lee/c;->e:Lee/q;

    .line 24
    .line 25
    new-instance v1, Lee/c$c;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lee/c$c;-><init>(Lee/c;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lee/q;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public y(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lee/c;->b:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lee/s;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method
