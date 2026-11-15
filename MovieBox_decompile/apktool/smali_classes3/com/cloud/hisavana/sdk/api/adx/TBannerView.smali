.class public final Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi;
.source "source.java"


# instance fields
.field public autoRefreshNum:I

.field public lastestAutoRefreshTs:J

.field private m:Ljava/lang/Integer;

.field private n:Z

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 7
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    .line 10
    sget-object v0, Lcom/cloud/hisavana/sdk/R$styleable;->AdBannerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 13
    sget v1, Lcom/cloud/hisavana/sdk/R$styleable;->AdBannerView_placementId:I

    if-ne v0, v1, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 16
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ssp"

    invoke-virtual {p2, v0, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    return-void
.end method


# virtual methods
.method public getCloseTypeUsedForTrack()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAdFromAutoRefresh(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public loadAdFromAutoRefresh(Z)V
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    instance-of v2, v1, Lcom/cloud/hisavana/sdk/p2;

    .line 10
    .line 11
    if-eqz v2, :cond_3

    .line 12
    .line 13
    move-object v2, v1

    .line 14
    check-cast v2, Lcom/cloud/hisavana/sdk/p2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/F;->p()Lcom/cloud/hisavana/sdk/p3;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/p3;->n()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :catchall_0
    :cond_0
    :try_start_2
    iget-wide v3, v2, Lcom/cloud/hisavana/sdk/p2;->p:J

    .line 27
    .line 28
    iget-object v1, v2, Lcom/cloud/hisavana/sdk/p2;->q:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    iget v5, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    int-to-long v5, v5

    .line 38
    cmp-long v5, v5, v1

    .line 39
    .line 40
    const-string v6, "ssp"

    .line 41
    .line 42
    if-lez v5, :cond_1

    .line 43
    .line 44
    :try_start_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "autoRefreshNum > autoCarouselCount, returnautoRefreshNum->"

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v5, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, "autoCarouselCount->"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v3, v6, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    .line 80
    .line 81
    const-wide/16 v7, 0x0

    .line 82
    .line 83
    cmp-long v1, v1, v7

    .line 84
    .line 85
    if-eqz v1, :cond_2

    .line 86
    .line 87
    cmp-long v1, v3, v7

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    .line 96
    .line 97
    sub-long/2addr v1, v7

    .line 98
    cmp-long v5, v1, v3

    .line 99
    .line 100
    if-gez v5, :cond_2

    .line 101
    .line 102
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v8, "loadNextAD auto refresh is so quickly,return interval->"

    .line 112
    .line 113
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, "autoRefreshTs->"

    .line 120
    .line 121
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v5, v6, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v1

    .line 139
    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    .line 140
    .line 141
    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    .line 142
    .line 143
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    iput v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    .line 147
    :catchall_1
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b()Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_4

    .line 152
    .line 153
    return-void

    .line 154
    :cond_4
    new-instance v1, Lcom/cloud/hisavana/sdk/p3$b;

    .line 155
    .line 156
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/p3$b;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 v0, 0x2

    .line 160
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/p3$b;->i(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Ljava/lang/String;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->e(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Z

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->r(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:I

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->l(I)Lcom/cloud/hisavana/sdk/p3$b;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:Z

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->j(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Ld7/b;

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->d(Ld7/b;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->g:Z

    .line 195
    .line 196
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->o(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->v(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Z

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->m(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->n:Z

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->s(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/p3$b;->f(Z)Lcom/cloud/hisavana/sdk/p3$b;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Ld7/a;

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/p3$b;->c(Ld7/a;)Lcom/cloud/hisavana/sdk/p3$b;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3$b;->g()Lcom/cloud/hisavana/sdk/p3;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    new-instance v1, Lcom/cloud/hisavana/sdk/p2;

    .line 233
    .line 234
    invoke-direct {v1, v0}, Lcom/cloud/hisavana/sdk/p2;-><init>(Lcom/cloud/hisavana/sdk/p3;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v1, p0}, Lcom/cloud/hisavana/sdk/p2;->J(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 238
    .line 239
    .line 240
    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;

    .line 241
    .line 242
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/F;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/p2;->N(Z)V

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCloseTypeUsedForTrack(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->m:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->n:Z

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/p2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Landroidx/collection/b;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    :catchall_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 13
    .line 14
    check-cast v0, Lcom/cloud/hisavana/sdk/p2;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/p2;->M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
