.class public final Lcom/iab/omid/library/mmadbridge/adsession/media/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Lcom/iab/omid/library/mmadbridge/adsession/h;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/mmadbridge/adsession/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 5
    .line 6
    return-void
.end method

.method private e(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float p1, p1, v0

    .line 3
    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 8
    .line 9
    const-string v0, "Invalid Media duration"

    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method private f(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float p1, p1, v0

    .line 9
    .line 10
    if-gtz p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Invalid Media volume"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public static g(Lcom/iab/omid/library/mmadbridge/adsession/b;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    check-cast v0, Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 3
    .line 4
    const-string v1, "AdSession is null"

    .line 5
    .line 6
    invoke-static {p0, v1}, Lre/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lre/g;->k(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lre/g;->h(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lre/g;->g(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lre/g;->m(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 19
    .line 20
    .line 21
    new-instance p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;-><init>(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->h(Lcom/iab/omid/library/mmadbridge/adsession/media/a;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public a(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V
    .locals 2

    .line 1
    const-string v0, "InteractionType is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lre/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "interactionType"

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "adUserInteraction"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "bufferFinish"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "bufferStart"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "complete"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "firstQuartile"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "midpoint"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "pause"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public k(Lcom/iab/omid/library/mmadbridge/adsession/media/PlayerState;)V
    .locals 2

    .line 1
    const-string v0, "PlayerState is null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lre/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "state"

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v1, "playerStateChange"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "resume"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "skipped"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public n(FF)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->e(F)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->f(F)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 8
    .line 9
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "duration"

    .line 22
    .line 23
    invoke-static {v0, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "mediaPlayerVolume"

    .line 31
    .line 32
    invoke-static {v0, p2, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/i;->d()Lcom/iab/omid/library/mmadbridge/internal/i;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/internal/i;->c()F

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string p2, "deviceVolume"

    .line 48
    .line 49
    invoke-static {v0, p2, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const-string p2, "start"

    .line 59
    .line 60
    invoke-virtual {p1, p2, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 2
    .line 3
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "thirdQuartile"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->i(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public p(F)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->f(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 5
    .line 6
    invoke-static {v0}, Lre/g;->c(Lcom/iab/omid/library/mmadbridge/adsession/h;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "mediaPlayerVolume"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/iab/omid/library/mmadbridge/internal/i;->d()Lcom/iab/omid/library/mmadbridge/internal/i;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/internal/i;->c()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, "deviceVolume"

    .line 36
    .line 37
    invoke-static {v0, v1, p1}, Lre/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a:Lcom/iab/omid/library/mmadbridge/adsession/h;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/iab/omid/library/mmadbridge/adsession/h;->t()Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v1, "volumeChange"

    .line 47
    .line 48
    invoke-virtual {p1, v1, v0}, Lcom/iab/omid/library/mmadbridge/publisher/AdSessionStatePublisher;->k(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
