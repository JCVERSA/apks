.class public Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field protected EjP:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

.field private final HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

.field private Jcg:Z

.field protected Sj:Z

.field protected TKC:Ljava/lang/String;

.field protected sP:I

.field private final vS:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/AdSession;Lcom/iab/omid/library/bytedance2/adsession/AdEvents;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Jcg:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj:Z

    .line 8
    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->vS:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->TKC:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method Sj(FZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(I)V
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->vS:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/HiB;->TKC()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP:I

    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->finish()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj:Z

    goto :goto_0

    .line 14
    :cond_2
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Jcg:Z

    if-nez v2, :cond_7

    .line 15
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP:I

    if-eq v2, v0, :cond_3

    if-ne v2, v1, :cond_7

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->vS:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    invoke-virtual {v1}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->impressionOccurred()V

    .line 17
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Jcg:Z

    goto :goto_0

    .line 18
    :cond_4
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP:I

    if-nez v1, :cond_7

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->start()V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->EjP:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    if-nez v1, :cond_5

    .line 21
    sget-object v1, Lcom/iab/omid/library/bytedance2/adsession/media/Position;->STANDALONE:Lcom/iab/omid/library/bytedance2/adsession/media/Position;

    invoke-static {v0, v1}, Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/bytedance2/adsession/media/Position;)Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->EjP:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    .line 22
    :cond_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->vS:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->EjP:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    invoke-virtual {v1, v2}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->loaded(Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;)V

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj:Z

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->EjP:Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;

    goto :goto_0

    .line 25
    :cond_6
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP:I

    if-nez v1, :cond_7

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    invoke-virtual {v1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->start()V

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->vS:Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    invoke-virtual {v1}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->loaded()V

    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj:Z

    .line 29
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->sP:I

    :cond_7
    :goto_1
    return-void
.end method

.method Sj(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->HiB:Lcom/iab/omid/library/bytedance2/adsession/AdSession;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/iab/omid/library/bytedance2/adsession/AdSession;->addFriendlyObstruction(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)V"
        }
    .end annotation

    .line 30
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 31
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public Sj(ZF)V
    .locals 0

    .line 3
    return-void
.end method

.method Sj()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj:Z

    return v0
.end method

.method TKC()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method sP()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Jcg;->Sj(I)V

    return-void
.end method

.method sP(I)V
    .locals 0

    .line 1
    return-void
.end method
