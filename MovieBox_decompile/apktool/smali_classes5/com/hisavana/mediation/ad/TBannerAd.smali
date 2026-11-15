.class public Lcom/hisavana/mediation/ad/TBannerAd;
.super Lfe/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfe/b;"
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Lcom/hisavana/common/base/WrapTadView;

.field public E:I

.field public F:Z

.field public G:Z

.field public H:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/base/WrapTadView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfe/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->A:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->B:I

    .line 9
    .line 10
    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->C:I

    .line 11
    .line 12
    iput v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->E:I

    .line 13
    .line 14
    iput-object p1, p0, Lfe/b;->b:Landroid/content/Context;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->i(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0}, Lfe/b;->b()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lee/c;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lfe/b;->d()Lee/i;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->A:I

    invoke-virtual {v0, v1}, Lee/i;->s(I)V

    .line 4
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->E:I

    invoke-virtual {v0, v1}, Lee/i;->u(I)V

    .line 5
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->B:I

    invoke-virtual {v0, v1}, Lee/i;->p(I)V

    .line 6
    iget v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->C:I

    invoke-virtual {v0, v1}, Lee/i;->m(I)V

    .line 7
    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->F:Z

    invoke-virtual {v0, v1}, Lee/i;->q(Z)V

    .line 8
    iget-boolean v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->G:Z

    invoke-virtual {v0, v1}, Lee/i;->g(Z)V

    .line 9
    new-instance v1, Lee/a;

    iget-object v2, p0, Lfe/b;->h:Lee/s;

    invoke-direct {v1, p1, v0, v2}, Lee/a;-><init>(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lee/i;Lee/s;)V

    return-object v1
.end method

.method public a(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->A:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public clearCurrentAd()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfe/b;->p:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Lfe/b;->clearCurrentAd()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->C:I

    .line 2
    .line 3
    return-void
.end method

.method public destroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lfe/b;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :try_start_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "Failed to remove banner view: "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v2, "TBannerAd"

    .line 56
    .line 57
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TBannerAd;->u()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->B:I

    .line 2
    .line 3
    return-void
.end method

.method public enterScene(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lfe/b;->enterScene(Ljava/lang/String;I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->H:Ljava/lang/String;

    .line 9
    .line 10
    return-object p1
.end method

.method public q()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "show ad if avaliable"

    .line 6
    .line 7
    const-string v2, "ad_flow"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v0, v1, :cond_5

    .line 21
    .line 22
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "TBannerAd --> mBannerView is null"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {p0}, Lfe/b;->n()V

    .line 37
    .line 38
    .line 39
    iget-boolean v0, p0, Lfe/b;->p:Z

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lfe/b;->setIsShowing(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TBannerAd;->clearCurrentAd()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    :try_start_0
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lee/c;->o(Lee/s;)V

    .line 64
    .line 65
    .line 66
    iget-boolean v1, p0, Lfe/b;->q:Z

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lee/c;->e(Z)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/hisavana/common/base/BaseBanner;

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseBanner;->canShow()Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_3

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/hisavana/common/base/BaseAd;->getTAdAllianceListener()Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->getAdListener()Lcom/hisavana/common/interfacz/TInnerAdListener;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    if-nez v3, :cond_2

    .line 93
    .line 94
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "TBannerAd"

    .line 99
    .line 100
    const-string v5, "TBannerAd setAdListener"

    .line 101
    .line 102
    invoke-virtual {v3, v4, v5}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v3, p0, Lfe/b;->h:Lee/s;

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;->setAdListener(Lcom/hisavana/common/interfacz/TInnerAdListener;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    goto :goto_2

    .line 113
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 114
    .line 115
    const-string v3, "filling_source"

    .line 116
    .line 117
    iget v4, p0, Lfe/b;->mFillSource:I

    .line 118
    .line 119
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 123
    .line 124
    const-string v3, "is_contain_vulgar"

    .line 125
    .line 126
    iget-boolean v4, p0, Lfe/b;->q:Z

    .line 127
    .line 128
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    const/4 v1, 0x1

    .line 132
    invoke-virtual {p0, v1}, Lfe/b;->setIsShowing(Z)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->D:Lcom/hisavana/common/base/WrapTadView;

    .line 136
    .line 137
    iget-object v3, p0, Lcom/hisavana/mediation/ad/TBannerAd;->H:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Lfe/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v0, v1, v3, v4}, Lcom/hisavana/common/base/BaseBanner;->show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_3
    invoke-virtual {p0}, Lfe/b;->t()V

    .line 148
    .line 149
    .line 150
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, "TBannerAd --> no ad or ad is expired"

    .line 155
    .line 156
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_1
    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TBannerAd;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "TBannerAd --> exception:"

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v1, v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lfe/b;->t()V

    .line 192
    .line 193
    .line 194
    :cond_4
    :goto_3
    return-void

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 196
    .line 197
    const-string v1, "must call show in main thread"

    .line 198
    .line 199
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setBannerType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->E:I

    .line 2
    .line 3
    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->G:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/ad/TBannerAd;->F:Z

    .line 2
    .line 3
    return-void
.end method

.method public final u()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "destroyFoldAd "

    .line 6
    .line 7
    const-string v2, "TBannerAd"

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lfe/b;->e()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-boolean v3, p0, Lfe/b;->q:Z

    .line 25
    .line 26
    const v4, 0x7fffffff

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/hisavana/common/interfacz/ICacheAd;

    .line 57
    .line 58
    instance-of v4, v3, Lcom/hisavana/common/base/BaseBanner;

    .line 59
    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    move-object v4, v3

    .line 63
    check-cast v4, Lcom/hisavana/common/base/BaseBanner;

    .line 64
    .line 65
    invoke-virtual {v4}, Lcom/hisavana/common/base/BaseBanner;->destroyFoldAd()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_0

    .line 70
    .line 71
    iget-object v4, p0, Lfe/b;->a:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {v0, v4, v3}, Lcom/hisavana/common/bean/AdCache;->removeCache(Ljava/lang/String;Lcom/hisavana/common/interfacz/ICacheAd;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v6, "destroyFoldAd removeCache "

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v4, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lcom/hisavana/common/manager/RequestingAdManager;->getInstance()Lcom/hisavana/common/manager/RequestingAdManager;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/hisavana/common/manager/RequestingAdManager;->destroyFoldAd(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
