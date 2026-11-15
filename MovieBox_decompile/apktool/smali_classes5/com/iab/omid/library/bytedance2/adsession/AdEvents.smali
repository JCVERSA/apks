.class public final Lcom/iab/omid/library/bytedance2/adsession/AdEvents;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final adSession:Lcom/iab/omid/library/bytedance2/adsession/a;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 5
    .line 6
    return-void
.end method

.method public static createAdEvents(Lcom/iab/omid/library/bytedance2/adsession/AdSession;)Lcom/iab/omid/library/bytedance2/adsession/AdEvents;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 3
    .line 4
    const-string v1, "AdSession is null"

    .line 5
    .line 6
    invoke-static {p0, v1}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->g(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->b(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    .line 13
    .line 14
    .line 15
    new-instance p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;-><init>(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/bytedance2/publisher/AdSessionStatePublisher;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/bytedance2/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/bytedance2/adsession/AdEvents;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public impressionOccurred()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->b(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->e(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/a;->f()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/a;->f()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/a;->k()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public loaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->e(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    invoke-virtual {v0}, Lcom/iab/omid/library/bytedance2/adsession/a;->l()V

    return-void
.end method

.method public loaded(Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;)V
    .locals 1
    .param p1    # Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    const-string v0, "VastProperties is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    invoke-static {v0}, Lcom/iab/omid/library/bytedance2/utils/g;->e(Lcom/iab/omid/library/bytedance2/adsession/a;)V

    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdEvents;->adSession:Lcom/iab/omid/library/bytedance2/adsession/a;

    invoke-virtual {p1}, Lcom/iab/omid/library/bytedance2/adsession/media/VastProperties;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/bytedance2/adsession/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
