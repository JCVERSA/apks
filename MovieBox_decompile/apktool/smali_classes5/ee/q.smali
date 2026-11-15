.class public Lee/q;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final o:Lee/b;


# instance fields
.field public a:Lcom/hisavana/common/interfacz/QueryPriceListener;

.field public b:Landroid/os/Handler;

.field public c:Ljava/util/List;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public i:Z

.field public j:Ljava/lang/Integer;

.field public k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public l:Ljava/lang/String;

.field public m:Lee/i;

.field public n:Lcom/hisavana/common/bean/AdCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lee/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lee/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lee/q;->o:Lee/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lee/i;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 6
    .line 7
    iput-object v0, p0, Lee/q;->c:Ljava/util/List;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lee/q;->e:Ljava/util/List;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lee/q;->f:Ljava/util/List;

    .line 29
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lee/q;->g:Ljava/util/List;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lee/q;->h:Ljava/util/List;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lee/q;->i:Z

    .line 46
    .line 47
    if-nez p2, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iput-object p2, p0, Lee/q;->k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lee/q;->j:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lee/q;->l:Ljava/lang/String;

    .line 63
    .line 64
    iput-boolean p3, p0, Lee/q;->i:Z

    .line 65
    .line 66
    iput-object p1, p0, Lee/q;->m:Lee/i;

    .line 67
    .line 68
    iget-object p1, p0, Lee/q;->j:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-static {p1}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lee/q;->n:Lcom/hisavana/common/bean/AdCache;

    .line 79
    .line 80
    new-instance p1, Lee/q$a;

    .line 81
    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p1, p0, p2, p3}, Lee/q$a;-><init>(Lee/q;Landroid/os/Looper;Z)V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lee/q;->b:Landroid/os/Handler;

    .line 90
    .line 91
    return-void
.end method

.method public static synthetic c()Lee/b;
    .locals 1

    .line 1
    sget-object v0, Lee/q;->o:Lee/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic e(Lee/q;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic g(Lee/q;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lee/q;->j(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h(Lee/q;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lee/q;->k(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m(Lee/q;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lee/q;->i:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final a(Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseQueryPrice;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lee/o;->a()Lee/o;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v1, p1}, Lee/o;->f(I)Lcom/hisavana/common/interfacz/IBaseAdSummary;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBaseAdSummary;->getQueryPrice()Lcom/hisavana/common/base/BaseQueryPrice;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lee/q;->j:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x4

    .line 36
    if-ne p1, v1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lee/q;->m:Lee/i;

    .line 39
    .line 40
    invoke-virtual {p1}, Lee/i;->F()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/hisavana/common/base/BaseQueryPrice;->setOrientation(I)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;
    .locals 7

    .line 1
    iget-object v0, p0, Lee/q;->n:Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lee/q;->m:Lee/i;

    .line 9
    .line 10
    invoke-virtual {v1}, Lee/i;->J()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "*----> currently max price ad in ad pool is: "

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "QueryPriceCenter"

    .line 40
    .line 41
    invoke-virtual {v2, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lee/q;->o:Lee/b;

    .line 45
    .line 46
    invoke-virtual {v2, p1}, Lee/b;->a(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/4 v2, 0x0

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v6, "*----> get cached, code seat id: +"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v6, " price: "

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {v3, v4, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 99
    .line 100
    .line 101
    move-result-wide v5

    .line 102
    cmpl-double v0, v5, v0

    .line 103
    .line 104
    if-ltz v0, :cond_2

    .line 105
    .line 106
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "*----> getQueryPriceWinner --> winner network is: "

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v0, v4, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_2
    return-object v2
.end method

.method public d(Lcom/hisavana/common/interfacz/QueryPriceListener;)Ljava/util/List;
    .locals 10

    .line 1
    iput-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 2
    .line 3
    iget-object p1, p0, Lee/q;->e:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    const-string v1, "QueryPriceCenter"

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v2, "Auciton failed due to query price list is empty"

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-object v0

    .line 31
    :cond_1
    iget-object p1, p0, Lee/q;->e:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_8

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/hisavana/common/bean/Network;

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p0, v3}, Lee/q;->a(Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/base/BaseQueryPrice;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-nez v4, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    new-instance v5, Lee/q$b;

    .line 61
    .line 62
    invoke-direct {v5, p0, v3}, Lee/q$b;-><init>(Lee/q;Lcom/hisavana/common/bean/Network;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Lcom/hisavana/common/base/BaseQueryPrice;->setQueryPriceListener(Lcom/hisavana/common/interfacz/QueryPriceListener;)V

    .line 66
    .line 67
    .line 68
    const/4 v5, 0x5

    .line 69
    if-ge v2, v5, :cond_7

    .line 70
    .line 71
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v7, "*----> start query price,network id: "

    .line 81
    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v5, v1, v6}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v5, p0, Lee/q;->j:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual {v3, v5}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    .line 106
    .line 107
    .line 108
    iget-object v5, p0, Lee/q;->m:Lee/i;

    .line 109
    .line 110
    iget-boolean v6, p0, Lee/q;->i:Z

    .line 111
    .line 112
    const/4 v7, 0x2

    .line 113
    const/4 v8, 0x1

    .line 114
    if-eqz v6, :cond_4

    .line 115
    .line 116
    move v6, v7

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    move v6, v8

    .line 119
    :goto_1
    iget-object v9, p0, Lee/q;->k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 120
    .line 121
    invoke-static {v5, v3, v6, v9}, Lcom/hisavana/mediation/handler/DispatcherHandler;->a(Lee/i;Lcom/hisavana/common/bean/Network;ILcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lcom/hisavana/common/base/BaseQueryPrice;->setTrackingBundle(Landroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    iget-object v5, p0, Lee/q;->j:Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-ne v5, v7, :cond_5

    .line 135
    .line 136
    iget-object v5, p0, Lee/q;->m:Lee/i;

    .line 137
    .line 138
    invoke-virtual {v5}, Lee/i;->r()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    invoke-virtual {v4, v5}, Lcom/hisavana/common/base/BaseQueryPrice;->setBannerSize(I)V

    .line 143
    .line 144
    .line 145
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v6, "queryPrice,codeSeatId:"

    .line 151
    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v5, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 170
    .line 171
    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v4, v5, v3}, Lcom/hisavana/common/base/BaseQueryPrice;->queryPrice(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 179
    .line 180
    .line 181
    iget-object v3, p0, Lee/q;->c:Ljava/util/List;

    .line 182
    .line 183
    if-nez v3, :cond_6

    .line 184
    .line 185
    new-instance v3, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    iput-object v3, p0, Lee/q;->c:Ljava/util/List;

    .line 191
    .line 192
    :cond_6
    iget-object v3, p0, Lee/q;->c:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string v2, "Auciton count exceed the max thrshold: 5"

    .line 206
    .line 207
    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v3, "QueryPriceCenter --> startQueryPrice --> mDoingQueryCount.get() = "

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v3, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {p1, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lee/q;->b:Landroid/os/Handler;

    .line 241
    .line 242
    const/16 v1, 0x65

    .line 243
    .line 244
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lee/q;->b:Landroid/os/Handler;

    .line 248
    .line 249
    const-wide/16 v2, 0x7d0

    .line 250
    .line 251
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    .line 253
    .line 254
    return-object v0
.end method

.method public f(Lcom/hisavana/common/bean/Network;Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "QueryPriceCenter"

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v1, "send auction success to network server!"

    .line 19
    .line 20
    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->notifyWin()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string v1, "send auction failed to network server!"

    .line 36
    .line 37
    invoke-virtual {p2, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/hisavana/common/bean/Network;->getBidInfo()Lcom/hisavana/common/interfacz/IBidWithNotify;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/IBidWithNotify;->notifyLoss()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Ljava/util/List;)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-boolean v2, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 4
    .line 5
    if-eqz v2, :cond_d

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lee/q;->e:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const-string v5, "\uff0c"

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, Lcom/hisavana/common/bean/Network;

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-static {v4}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lee/q;->f:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    const-string v7, " -$ "

    .line 82
    .line 83
    if-eqz v6, :cond_3

    .line 84
    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lcom/hisavana/common/bean/Network;

    .line 90
    .line 91
    if-nez v6, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v6}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    invoke-static {v9}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v6, p0, Lee/q;->g:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    if-eqz v8, :cond_5

    .line 151
    .line 152
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    check-cast v8, Lcom/hisavana/common/bean/Network;

    .line 157
    .line 158
    if-nez v8, :cond_4

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v10

    .line 170
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v10

    .line 174
    invoke-static {v10}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v7, "*----> mQueryPriceNetworkList is: "

    .line 212
    .line 213
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v7, ",\n *----> mWaterfallNetworkList is: "

    .line 220
    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v7, ",\n mHistroyPriceList is: "

    .line 228
    .line 229
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    const-string v7, "QueryPriceCenter"

    .line 240
    .line 241
    invoke-virtual {v5, v7, v6}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 245
    .line 246
    .line 247
    move-result-object v5

    .line 248
    sget v6, Lcom/hisavana/mediation/R$string;->hisavana_log_msg2:I

    .line 249
    .line 250
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    const/4 v6, 0x3

    .line 267
    new-array v6, v6, [Ljava/lang/Object;

    .line 268
    .line 269
    aput-object v3, v6, v1

    .line 270
    .line 271
    aput-object v2, v6, v0

    .line 272
    .line 273
    const/4 v2, 0x2

    .line 274
    aput-object v4, v6, v2

    .line 275
    .line 276
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    sget-boolean v3, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 281
    .line 282
    if-eqz v3, :cond_6

    .line 283
    .line 284
    sget v3, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE2:I

    .line 285
    .line 286
    invoke-static {v2, v3}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    :cond_7
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    if-eqz v3, :cond_9

    .line 303
    .line 304
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v3

    .line 308
    check-cast v3, Lcom/hisavana/common/bean/Network;

    .line 309
    .line 310
    if-nez v3, :cond_8

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    invoke-static {v3}, Lcom/hisavana/common/utils/AdUtil;->isQueryPriceNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-eqz v4, :cond_7

    .line 318
    .line 319
    sget-object v4, Lee/q;->o:Lee/b;

    .line 320
    .line 321
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {v4, v5}, Lee/b;->a(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    if-eqz v4, :cond_7

    .line 330
    .line 331
    invoke-virtual {v3}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 336
    .line 337
    .line 338
    move-result v3

    .line 339
    invoke-static {v3}, Lcom/hisavana/common/constant/ComConstants;->transferSourceToStr(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v3, " price:"

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v4}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    goto :goto_3

    .line 359
    :cond_9
    sget-boolean p1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 360
    .line 361
    if-eqz p1, :cond_a

    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE3:I

    .line 368
    .line 369
    invoke-static {p1, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 370
    .line 371
    .line 372
    :cond_a
    iget-object p1, p0, Lee/q;->n:Lcom/hisavana/common/bean/AdCache;

    .line 373
    .line 374
    if-nez p1, :cond_b

    .line 375
    .line 376
    const/4 p1, 0x0

    .line 377
    goto :goto_5

    .line 378
    :cond_b
    iget-object v2, p0, Lee/q;->l:Ljava/lang/String;

    .line 379
    .line 380
    iget-object v3, p0, Lee/q;->m:Lee/i;

    .line 381
    .line 382
    if-eqz v3, :cond_c

    .line 383
    .line 384
    invoke-virtual {v3}, Lee/i;->J()Z

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    if-eqz v3, :cond_c

    .line 389
    .line 390
    goto :goto_4

    .line 391
    :cond_c
    move v0, v1

    .line 392
    :goto_4
    const v3, 0x7fffffff

    .line 393
    .line 394
    .line 395
    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    :goto_5
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 400
    .line 401
    if-eqz v0, :cond_d

    .line 402
    .line 403
    if-eqz p1, :cond_d

    .line 404
    .line 405
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-nez v0, :cond_d

    .line 410
    .line 411
    invoke-static {p1}, Lcom/hisavana/common/mock/RecordTestInfo;->getLogMsg(Ljava/util/List;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    sget v0, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE4:I

    .line 416
    .line 417
    invoke-static {p1, v0}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 418
    .line 419
    .line 420
    :cond_d
    return-void
.end method

.method public final j(Z)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "checkToGetWinnerPreload --> \u7ade\u4ef7\u8d85\u65f6\u65f6\u95f4\u5185 \u662f\u5426\u8fd8\u6709\u6b63\u5728\u7ade\u4ef7\u7684\u4efb\u52a1 --> mDoingQueryCount.get() = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " ----- timeOut = "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "----- ispreload = "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v2, p0, Lee/q;->i:Z

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "QueryPriceCenter"

    .line 47
    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    if-nez p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-gtz p1, :cond_5

    .line 65
    .line 66
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lee/q;->e:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lcom/hisavana/common/bean/Network;

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {p0, v1}, Lee/q;->b(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v5, "*---->checkToGetWinnerPreload ----- winnerNetwork = "

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-virtual {v3, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "*---->end query price,checkToGetWinnerPreload ----- winnerList.size() = "

    .line 139
    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-nez v0, :cond_4

    .line 162
    .line 163
    iget-object v0, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 164
    .line 165
    invoke-interface {v0, p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    iget-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 170
    .line 171
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    .line 172
    .line 173
    .line 174
    :goto_1
    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 176
    .line 177
    iget-object p1, p0, Lee/q;->b:Landroid/os/Handler;

    .line 178
    .line 179
    const/16 v0, 0x65

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    .line 183
    .line 184
    :cond_5
    return-void
.end method

.method public final k(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "checkToGetWinner --> \u7ade\u4ef7\u8d85\u65f6\u65f6\u95f4\u5185 \u662f\u5426\u8fd8\u6709\u6b63\u5728\u7ade\u4ef7\u7684\u4efb\u52a1 --> mDoingQueryCount.get() = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " ----- timeOut = "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "----- ispreload = "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v2, p0, Lee/q;->i:Z

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, "\uff0ccodeSeatId\uff1a"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, "QueryPriceCenter"

    .line 55
    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    if-eqz p1, :cond_0

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 63
    .line 64
    :cond_0
    iget-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p0, p2}, Lee/q;->b(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "*---->end query price,checkToGetWinner ----- winnerNetworks = "

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    new-instance p2, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 114
    .line 115
    invoke-interface {p1, p2}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceSuccess(Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_2
    iget-object p1, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 120
    .line 121
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/QueryPriceListener;->onQueryPriceFailed()V

    .line 122
    .line 123
    .line 124
    :goto_0
    iget-object p1, p0, Lee/q;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-gtz p1, :cond_3

    .line 131
    .line 132
    iget-object p1, p0, Lee/q;->b:Landroid/os/Handler;

    .line 133
    .line 134
    const/16 p2, 0x65

    .line 135
    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    .line 138
    .line 139
    :cond_3
    :goto_1
    return-void
.end method

.method public l()V
    .locals 5

    .line 1
    iget-object v0, p0, Lee/q;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lee/q;->f:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lee/q;->g:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lee/q;->h:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lee/q;->k:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_8

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/hisavana/common/bean/Network;

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, p0, Lee/q;->j:Ljava/lang/Integer;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Lcom/hisavana/common/bean/Network;->setAdt(I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->getNetworkType(Lcom/hisavana/common/bean/Network;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v4, 0x1

    .line 63
    if-eq v3, v4, :cond_7

    .line 64
    .line 65
    const/4 v4, 0x2

    .line 66
    if-eq v3, v4, :cond_6

    .line 67
    .line 68
    const/4 v4, 0x3

    .line 69
    if-eq v3, v4, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-boolean v3, p0, Lee/q;->i:Z

    .line 73
    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    iget-object v3, p0, Lee/q;->e:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p0, v3}, Lee/q;->b(Ljava/lang/String;)Lcom/hisavana/common/bean/Network;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_5

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/16 v4, 0x9

    .line 101
    .line 102
    if-ne v3, v4, :cond_4

    .line 103
    .line 104
    iget-object v3, p0, Lee/q;->n:Lcom/hisavana/common/bean/AdCache;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Lcom/hisavana/common/bean/AdCache;->removeCodeSeatCache(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    iget-object v3, p0, Lee/q;->e:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    iget-object v2, p0, Lee/q;->g:Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    iget-object v3, p0, Lee/q;->f:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    iget-object v3, p0, Lee/q;->h:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    invoke-virtual {p0, v0}, Lee/q;->i(Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lee/q;->a:Lcom/hisavana/common/interfacz/QueryPriceListener;

    .line 3
    .line 4
    iget-object v1, p0, Lee/q;->c:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-lez v1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lee/q;->c:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/hisavana/common/base/BaseQueryPrice;

    .line 31
    .line 32
    if-nez v2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v2}, Lcom/hisavana/common/base/BaseQueryPrice;->destroy()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput-object v0, p0, Lee/q;->c:Ljava/util/List;

    .line 40
    .line 41
    return-void
.end method

.method public o()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lee/q;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "*----> getHistoryPriceList  "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lee/q;->g:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "QueryPriceCenter"

    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lee/q;->g:Ljava/util/List;

    .line 30
    .line 31
    return-object v0
.end method

.method public q()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lee/q;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lee/q;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
