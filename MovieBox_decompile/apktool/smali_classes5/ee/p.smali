.class public Lee/p;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee/p$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public final c:Lee/i;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Lee/q;

.field public g:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Lcom/hisavana/mediation/handler/DispatcherHandler;

.field public j:I


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "PreloadHandler"

    .line 5
    .line 6
    iput-object v0, p0, Lee/p;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lee/p;->j:I

    .line 24
    .line 25
    iput-object p1, p0, Lee/p;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 26
    .line 27
    iput-object p2, p0, Lee/p;->c:Lee/i;

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :goto_0
    iput-object v1, p0, Lee/p;->d:Ljava/lang/String;

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    const/4 v1, -0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :goto_1
    iput v1, p0, Lee/p;->e:I

    .line 53
    .line 54
    new-instance v1, Lee/q;

    .line 55
    .line 56
    invoke-direct {v1, p2, p1, v0}, Lee/q;-><init>(Lee/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lee/p;->f:Lee/q;

    .line 60
    .line 61
    new-instance v0, Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 62
    .line 63
    invoke-direct {v0, p1, p2}, Lcom/hisavana/mediation/handler/DispatcherHandler;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lee/p;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 67
    .line 68
    return-void
.end method

.method public static synthetic b(Lee/p;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lee/p;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lee/p;->e(Landroid/content/Context;Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lee/p;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic l(Lee/p;)Lcom/hisavana/mediation/handler/DispatcherHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/p;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lee/p;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/p;->j()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic o(Lee/p;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lee/p;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/common/interfacz/Iad;)Lcom/hisavana/common/bean/TInnerAdRequestBody;
    .locals 2

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/common/bean/TInnerAdRequestBody$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lee/p$b;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lee/p$b;-><init>(Lee/p;Lcom/hisavana/common/interfacz/Iad;)V

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

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lee/p;->f:Lee/q;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lee/q;->n()V

    .line 38
    .line 39
    .line 40
    :cond_3
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lee/p;->b:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lee/p;->g(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lee/p;->f:Lee/q;

    .line 22
    .line 23
    invoke-virtual {v0}, Lee/q;->l()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lee/p;->i(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final e(Landroid/content/Context;Ljava/util/List;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lee/p;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 2
    .line 3
    iget-object v1, p0, Lee/p;->f:Lee/q;

    .line 4
    .line 5
    invoke-virtual {v1}, Lee/q;->o()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    iget-object v1, p0, Lee/p;->f:Lee/q;

    .line 10
    .line 11
    invoke-virtual {v1}, Lee/q;->r()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x1

    .line 16
    move-object v1, p1

    .line 17
    move-object v2, p2

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->f(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lee/p;->m()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "PreloadHandler"

    .line 42
    .line 43
    const-string v0, "*----> no ad source can be preload."

    .line 44
    .line 45
    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final g(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreload()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getPreloadLogic()Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    const/4 v2, 0x0

    .line 23
    const-string v3, "PreloadHandler"

    .line 24
    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v1, "current code seat id is "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lee/p;->d:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "preload is close..."

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :cond_1
    iget-object v1, p0, Lee/p;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/hisavana/mediation/handler/DispatcherHandler;->b()Lcom/hisavana/common/bean/AdCache;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v4, 0x1

    .line 66
    if-ne v0, v4, :cond_2

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iget-object v0, p0, Lee/p;->c:Lee/i;

    .line 75
    .line 76
    invoke-virtual {v0}, Lee/i;->J()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual {v1, p1, v0}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "autoAppend & INSUFFICIENT_APPEND,but adunit:"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lee/p;->d:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v1, " has cached ad, load/preload/trigger_preload request end"

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return v2

    .line 118
    :cond_2
    return v4
.end method

.method public final i(Landroid/content/Context;)V
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
    iget-object v1, p0, Lee/p;->d:Ljava/lang/String;

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
    iget-object v0, p0, Lee/p;->f:Lee/q;

    .line 24
    .line 25
    new-instance v1, Lee/p$a;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lee/p$a;-><init>(Lee/p;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lee/q;->d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

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

.method public final k(Lcom/hisavana/common/interfacz/Iad;)Z
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
    invoke-virtual {p0, p1}, Lee/p;->a(Lcom/hisavana/common/interfacz/Iad;)Lcom/hisavana/common/bean/TInnerAdRequestBody;

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
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lee/p;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 22
    .line 23
    iget v4, p0, Lee/p;->j:I

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v6, 0x1

    .line 27
    move-object v2, p1

    .line 28
    invoke-virtual/range {v1 .. v6}, Lcom/hisavana/mediation/handler/DispatcherHandler;->l(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;Z)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lee/p;->f:Lee/q;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1, v7}, Lee/q;->f(Lcom/hisavana/common/bean/Network;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v4, "codeSeatId is"

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Lee/p;->d:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, ":ad source is "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v4, ", load status is "

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    const-string v4, "PreloadHandler"

    .line 92
    .line 93
    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    if-eq v1, v7, :cond_4

    .line 97
    .line 98
    const/4 v2, 0x3

    .line 99
    if-eq v1, v2, :cond_4

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    if-ne v1, v2, :cond_2

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 106
    .line 107
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lee/p;->i:Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 111
    .line 112
    iget v3, p0, Lee/p;->j:I

    .line 113
    .line 114
    invoke-virtual {v0, p1, v2, v3, v5}, Lcom/hisavana/mediation/handler/DispatcherHandler;->k(Lcom/hisavana/common/interfacz/Iad;IILcom/hisavana/common/bean/TInnerAdRequestBody;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    if-eqz v0, :cond_3

    .line 121
    .line 122
    iget-object v1, p0, Lee/p;->f:Lee/q;

    .line 123
    .line 124
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {v1, p1, v7}, Lee/q;->f(Lcom/hisavana/common/bean/Network;Z)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    if-nez v0, :cond_4

    .line 133
    .line 134
    iget-object p1, p0, Lee/p;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 137
    .line 138
    .line 139
    :cond_4
    :goto_0
    return v0
.end method

.method public final m()V
    .locals 4

    .line 1
    const-string v0, "load ad num: 1 with group"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lee/p;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/hisavana/common/interfacz/Iad;

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v2}, Lee/o;->e(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lee/p;->k(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-object v2, p0, Lee/p;->c:Lee/i;

    .line 41
    .line 42
    invoke-virtual {v2}, Lee/i;->E()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Lee/i;->y(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    if-nez v1, :cond_0

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Lee/p;->k(Lcom/hisavana/common/interfacz/Iad;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    iget-object v2, p0, Lee/p;->c:Lee/i;

    .line 61
    .line 62
    invoke-virtual {v2}, Lee/i;->E()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    add-int/lit8 v3, v3, 0x1

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lee/i;->y(I)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    return-void
.end method
