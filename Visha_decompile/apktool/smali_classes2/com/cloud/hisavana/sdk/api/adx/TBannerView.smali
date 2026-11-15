.class public final Lcom/cloud/hisavana/sdk/api/adx/TBannerView;
.super Lcom/cloud/hisavana/sdk/api/adx/ViewApi;
.source "SourceFile"


# instance fields
.field public autoRefreshNum:I

.field public lastestAutoRefreshTs:J

.field public o:Ljava/lang/Integer;

.field public p:Z

.field public q:Z


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
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Ljava/lang/Integer;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    .line 10
    sget-object p0, Lcom/cloud/hisavana/sdk/R$styleable;->AdBannerView:[I

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p2

    .line 13
    sget v0, Lcom/cloud/hisavana/sdk/R$styleable;->AdBannerView_placementId:I

    if-ne p2, v0, :cond_0

    .line 14
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object p3, p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 16
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placementId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "ssp"

    invoke-virtual {p1, p3, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Ljava/lang/Integer;

    const-wide/16 p1, 0x0

    .line 3
    iput-wide p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    return-void
.end method


# virtual methods
.method public getAdType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getCloseTypeUsedForTrack()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Ljava/lang/Integer;

    return-object p0
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->loadAdFromAutoRefresh(Z)V

    return-void
.end method

.method public loadAdFromAutoRefresh(Z)V
    .locals 9

    const-string v0, ""

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    if-eqz v1, :cond_3

    instance-of v2, v1, Land;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Land;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lied;->p()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_0
    :try_start_2
    iget-wide v3, v2, Land;->p:J

    iget-object v1, v2, Land;->q:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    iget v5, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    int-to-long v5, v5

    cmp-long v5, v5, v1

    const-string/jumbo v6, "ssp"

    if-lez v5, :cond_1

    :try_start_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoRefreshNum > autoCarouselCount, returnautoRefreshNum->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "autoCarouselCount->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-wide v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-eqz v1, :cond_2

    cmp-long v1, v3, v7

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    sub-long/2addr v1, v7

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    invoke-static {}, Likd;->b()Likd;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadNextAD auto refresh is so quickly,return interval->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "autoRefreshTs->"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->lastestAutoRefreshTs:J

    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->autoRefreshNum:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Lied$b;

    invoke-direct {v1, v0}, Lied$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->getAdType()I

    move-result v0

    invoke-virtual {v1, v0}, Lied$b;->i(I)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->e(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->d:Z

    invoke-virtual {v0, v1}, Lied$b;->s(Z)Lied$b;

    move-result-object v0

    iget v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->e:I

    invoke-virtual {v0, v1}, Lied$b;->m(I)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Z

    invoke-virtual {v0, v1}, Lied$b;->k(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->k:Ld29;

    invoke-virtual {v0, v1}, Lied$b;->c(Ld29;)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied$b;->j(Ljava/lang/String;)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->h:Z

    invoke-virtual {v0, v1}, Lied$b;->p(Z)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->i:Z

    invoke-virtual {v0, v1}, Lied$b;->w(Z)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->q:Z

    invoke-virtual {v0, v1}, Lied$b;->n(Z)Lied$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->p:Z

    invoke-virtual {v0, v1}, Lied$b;->t(Z)Lied$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lied$b;->f(Z)Lied$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->j:Lw6;

    invoke-virtual {v0, v1}, Lied$b;->b(Lw6;)Lied$b;

    move-result-object v0

    invoke-virtual {v0}, Lied$b;->g()Lied;

    move-result-object v0

    new-instance v1, Land;

    invoke-direct {v1, v0}, Land;-><init>(Lied;)V

    invoke-virtual {v1, p0}, Land;->I(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;-><init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->g(Lcom/cloud/hisavana/sdk/api/listener/AdCallback;)V

    invoke-virtual {v1, p1}, Land;->N(Z)V

    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->q:Z

    return-void
.end method

.method public setCloseTypeUsedForTrack(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->o:Ljava/lang/Integer;

    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/adx/TBannerView;->p:Z

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    instance-of v1, v0, Land;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lied;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lied;->f(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->l:Landroidx/collection/ArraySet;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->b:Lcom/cloud/hisavana/sdk/G;

    check-cast v0, Land;

    invoke-virtual {v0, p0}, Land;->M(Lcom/cloud/hisavana/sdk/api/adx/TBannerView;)V

    :cond_1
    return-void
.end method
