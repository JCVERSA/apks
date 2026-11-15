.class public Lee/c$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/QueryPriceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/c;->x(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lee/c;


# direct methods
.method public constructor <init>(Lee/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c$c;->b:Lee/c;

    .line 2
    .line 3
    iput-object p2, p0, Lee/c$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lee/c$c;->b:Lee/c;

    .line 10
    .line 11
    invoke-static {v0}, Lee/c;->B(Lee/c;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_4

    .line 16
    .line 17
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "--- load ad mode --- "

    .line 22
    .line 23
    const-string v2, "CacheHandler"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lee/c$c;->b:Lee/c;

    .line 29
    .line 30
    invoke-static {v0}, Lee/c;->Q(Lee/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/hisavana/common/interfacz/Iad;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/Iad;->getLoadStatus()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-wide/16 v0, 0x0

    .line 64
    .line 65
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v5, "checkToLoadWaterfallAd priceThreshold --- ,"

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Lcom/hisavana/common/bean/Network;

    .line 104
    .line 105
    iget-object v3, p0, Lee/c$c;->b:Lee/c;

    .line 106
    .line 107
    invoke-static {v3}, Lee/c;->T(Lee/c;)Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v4, p0, Lee/c$c;->a:Landroid/content/Context;

    .line 112
    .line 113
    iget-object v5, p0, Lee/c$c;->b:Lee/c;

    .line 114
    .line 115
    iget-object v5, v5, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 116
    .line 117
    invoke-virtual {v3, v4, v5, v2}, Lcom/hisavana/mediation/handler/DispatcherHandler;->d(Landroid/content/Context;Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Lcom/hisavana/common/interfacz/Iad;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    .line 123
    iget-object v4, p0, Lee/c$c;->b:Lee/c;

    .line 124
    .line 125
    invoke-static {v4}, Lee/c;->Q(Lee/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 137
    .line 138
    .line 139
    move-result-wide v4

    .line 140
    cmpl-double v2, v4, v0

    .line 141
    .line 142
    if-ltz v2, :cond_2

    .line 143
    .line 144
    iget-object v2, p0, Lee/c$c;->b:Lee/c;

    .line 145
    .line 146
    const/4 v4, 0x1

    .line 147
    invoke-static {v2, v3, v4}, Lee/c;->t(Lee/c;Lcom/hisavana/common/interfacz/Iad;I)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget-object p1, p0, Lee/c$c;->b:Lee/c;

    .line 152
    .line 153
    invoke-static {p1}, Lee/c;->T(Lee/c;)Lcom/hisavana/mediation/handler/DispatcherHandler;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object v0, p0, Lee/c$c;->b:Lee/c;

    .line 158
    .line 159
    invoke-static {v0}, Lee/c;->Q(Lee/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Lcom/hisavana/mediation/handler/DispatcherHandler;->g(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    return-void
.end method

.method public onQueryPriceFailed()V
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
    const-string v2, "receive query price failed"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lee/c$c;->a(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onQueryPriceSuccess(Ljava/util/List;)V
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
    const-string v2, "CacheHandler --> queryPrice --> receive query price success"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lee/c$c;->a(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
