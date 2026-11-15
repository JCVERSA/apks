.class public Lee/c$d;
.super Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lcom/hisavana/common/interfacz/Iad;

.field public b:Ljava/lang/Object;

.field public final c:I

.field public final synthetic d:Lee/c;


# direct methods
.method public constructor <init>(Lee/c;Lcom/hisavana/common/interfacz/Iad;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 7
    .line 8
    iput p3, p0, Lee/c$d;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    iget v0, v0, Lee/c;->n:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const-string v0, "PROGRESS_REQUEST"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_2

    .line 17
    .line 18
    const-string v0, "PROGRESS_BIDDING"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    const-string v0, "PROGRESS_DISPATCHED"

    .line 22
    .line 23
    :goto_0
    return-object v0
.end method

.method public final b(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 2
    .line 3
    const-string v1, "CacheHandler"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "mExecutor is null"

    .line 12
    .line 13
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getBiddingType()Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v2, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 43
    .line 44
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 57
    .line 58
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getMinPrice()Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    int-to-double v5, v0

    .line 71
    cmpg-double v0, v3, v5

    .line 72
    .line 73
    if-gez v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 76
    .line 77
    invoke-static {v0}, Lee/c;->Q(Lee/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v3, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 87
    .line 88
    invoke-virtual {v0}, Lee/c;->e0()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    const/4 v3, 0x2

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 98
    .line 99
    invoke-virtual {p1}, Lee/c;->J()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 104
    .line 105
    invoke-static {p1}, Lee/c;->H(Lee/c;)V

    .line 106
    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 111
    .line 112
    const/4 v1, 0x5

    .line 113
    invoke-static {p1, v1}, Lee/c;->l(Lee/c;I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 118
    .line 119
    iget v4, p1, Lee/c;->n:I

    .line 120
    .line 121
    if-ne v4, v3, :cond_3

    .line 122
    .line 123
    invoke-virtual {p1, v3, v2}, Lee/c;->a(IZ)I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-static {p1}, Lee/c;->L(Lee/c;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v6, "mProgress "

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v6, p0, Lee/c$d;->d:Lee/c;

    .line 147
    .line 148
    iget v6, v6, Lee/c;->n:I

    .line 149
    .line 150
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v6, " reachTopPrice "

    .line 154
    .line 155
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v4, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lee/c$d;->d:Lee/c;

    .line 169
    .line 170
    iget v4, v1, Lee/c;->n:I

    .line 171
    .line 172
    if-ge v4, v3, :cond_4

    .line 173
    .line 174
    if-eqz p1, :cond_4

    .line 175
    .line 176
    invoke-virtual {v1, v3, v2}, Lee/c;->a(IZ)I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :cond_4
    :goto_0
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 181
    .line 182
    invoke-static {p1}, Lee/c;->b0(Lee/c;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    iget-object v1, p0, Lee/c$d;->d:Lee/c;

    .line 187
    .line 188
    invoke-static {v1}, Lee/c;->N(Lee/c;)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eq v1, v3, :cond_6

    .line 193
    .line 194
    if-nez p1, :cond_5

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_5
    const/4 v1, 0x0

    .line 198
    goto :goto_2

    .line 199
    :cond_6
    :goto_1
    iget-object v1, p0, Lee/c$d;->d:Lee/c;

    .line 200
    .line 201
    invoke-static {v1}, Lee/c;->s(Lee/c;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    :goto_2
    if-nez p1, :cond_9

    .line 206
    .line 207
    if-eqz v1, :cond_7

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_7
    if-nez v0, :cond_8

    .line 211
    .line 212
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 213
    .line 214
    iget p1, p1, Lee/c;->n:I

    .line 215
    .line 216
    if-ne p1, v3, :cond_9

    .line 217
    .line 218
    :cond_8
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 219
    .line 220
    invoke-static {v2}, Lee/c;->b(I)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {p1, v0}, Lee/c;->m(Lee/c;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 225
    .line 226
    .line 227
    :cond_9
    :goto_3
    return-void
.end method

.method public final c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    invoke-static {v0}, Lee/c;->W(Lee/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 11
    .line 12
    const-string v1, "CacheHandler"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "mExecuter is null"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v2, 0x2

    .line 27
    invoke-interface {v0, v2}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 31
    .line 32
    iget v2, v0, Lee/c;->n:I

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    move v2, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    .line 40
    :goto_0
    invoke-static {v0, v2}, Lee/c;->u(Lee/c;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 44
    .line 45
    iget-object v2, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 46
    .line 47
    invoke-static {v0, v2}, Lee/c;->n(Lee/c;Lcom/hisavana/common/interfacz/Iad;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "*----> onLoaded(),mProgress = "

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lee/c$d;->a()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v4, ",mFlightingAdCount.get() = "

    .line 72
    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v4, p0, Lee/c$d;->d:Lee/c;

    .line 77
    .line 78
    invoke-static {v4}, Lee/c;->W(Lee/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ",ad fill adSource:"

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 95
    .line 96
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, ", ad placementId: "

    .line 104
    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 109
    .line 110
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "ad onAdLoaded,adSource "

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v2, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 135
    .line 136
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, ",id "

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 149
    .line 150
    invoke-interface {v2}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 165
    .line 166
    invoke-static {v0}, Lee/c;->Y(Lee/c;)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v4, "onAdLoaded requestCategory "

    .line 179
    .line 180
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v4, p0, Lee/c$d;->c:I

    .line 184
    .line 185
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget v0, p0, Lee/c$d;->c:I

    .line 196
    .line 197
    if-eq v0, v3, :cond_3

    .line 198
    .line 199
    const/4 v1, 0x5

    .line 200
    if-eq v0, v1, :cond_2

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p0}, Lee/c$d;->d()V

    .line 204
    .line 205
    .line 206
    goto :goto_1

    .line 207
    :cond_3
    invoke-virtual {p0, v3}, Lee/c$d;->b(Z)V

    .line 208
    .line 209
    .line 210
    :goto_1
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    iget-object v0, v0, Lee/c;->b:Lee/s;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lee/s;->k()Lcom/hisavana/common/interfacz/TAdListener;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 14
    .line 15
    iget-object v0, v0, Lee/c;->b:Lee/s;

    .line 16
    .line 17
    invoke-virtual {v0}, Lee/s;->a()Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 24
    .line 25
    invoke-virtual {v0}, Lee/c;->J()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lee/c$d;->d:Lee/c;

    .line 30
    .line 31
    invoke-static {v1}, Lee/c;->H(Lee/c;)V

    .line 32
    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 37
    .line 38
    const/4 v1, 0x3

    .line 39
    invoke-static {v0, v1}, Lee/c;->l(Lee/c;I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lee/c$d;->d:Lee/c;

    .line 44
    .line 45
    invoke-static {v0}, Lee/c;->b(I)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Lee/c;->m(Lee/c;Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public onError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    invoke-static {v0}, Lee/c;->W(Lee/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 11
    .line 12
    const-string v1, "CacheHandler"

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "mExecuter is null"

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    invoke-interface {v0, v2}, Lcom/hisavana/common/interfacz/Iad;->setLoadStatus(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "*----> request ad fail,error code: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, ",adSource:"

    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 65
    .line 66
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p1, ", ad placementId: "

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, ",mFlightingAdCount.get() = "

    .line 88
    .line 89
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 93
    .line 94
    invoke-static {p1}, Lee/c;->W(Lee/c;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, " progress "

    .line 106
    .line 107
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 111
    .line 112
    iget p1, p1, Lee/c;->n:I

    .line 113
    .line 114
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 125
    .line 126
    invoke-static {p1}, Lee/c;->Y(Lee/c;)V

    .line 127
    .line 128
    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v0, "ad load Error,source "

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 140
    .line 141
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, ",id "

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    .line 154
    .line 155
    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->getPlacementId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {v1, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget p1, p0, Lee/c$d;->c:I

    .line 170
    .line 171
    const/4 v0, 0x1

    .line 172
    if-eq p1, v0, :cond_3

    .line 173
    .line 174
    const/4 v0, 0x5

    .line 175
    if-eq p1, v0, :cond_2

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {p0}, Lee/c$d;->d()V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v0, "onError current is load"

    .line 187
    .line 188
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const/4 p1, 0x0

    .line 192
    invoke-virtual {p0, p1}, Lee/c$d;->b(Z)V

    .line 193
    .line 194
    .line 195
    :goto_1
    return-void
.end method

.method public onLoad()V
    .locals 1

    .line 3
    iget-object v0, p0, Lee/c$d;->a:Lcom/hisavana/common/interfacz/Iad;

    iput-object v0, p0, Lee/c$d;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lee/c$d;->c()V

    return-void
.end method

.method public onLoad(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee/c$d;->b:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lee/c$d;->c()V

    return-void
.end method

.method public onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->onNativeFeedShow(ILcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string p3, "*----> ad onshow() "

    .line 14
    .line 15
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lee/c$d;->d:Lee/c;

    .line 19
    .line 20
    iget-object p3, p3, Lee/c;->j:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string p3, "CacheHandler"

    .line 30
    .line 31
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 35
    .line 36
    invoke-static {p1}, Lee/c;->b0(Lee/c;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "currently have requesting ad,terminate preload flow."

    .line 47
    .line 48
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    const/4 p1, 0x0

    .line 53
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string p2, "network is disconnect"

    .line 64
    .line 65
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 70
    .line 71
    invoke-static {p1}, Lee/c;->C(Lee/c;)Lee/p;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 76
    .line 77
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 78
    .line 79
    new-instance p2, Lee/p;

    .line 80
    .line 81
    iget-object p3, p1, Lee/c;->o:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 82
    .line 83
    iget-object v0, p1, Lee/c;->w:Lee/i;

    .line 84
    .line 85
    invoke-direct {p2, p3, v0}, Lee/p;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Lee/c;->d(Lee/c;Lee/p;)Lee/p;

    .line 89
    .line 90
    .line 91
    :cond_2
    iget-object p1, p0, Lee/c$d;->d:Lee/c;

    .line 92
    .line 93
    invoke-static {p1}, Lee/c;->C(Lee/c;)Lee/p;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Lee/p;->d(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public onSkipClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    iget-object v0, v0, Lee/c;->b:Lee/s;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lee/s;->onSkipClick()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onTimeReach()V
    .locals 1

    .line 1
    iget-object v0, p0, Lee/c$d;->d:Lee/c;

    .line 2
    .line 3
    iget-object v0, v0, Lee/c;->b:Lee/s;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lee/s;->onTimeReach()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
