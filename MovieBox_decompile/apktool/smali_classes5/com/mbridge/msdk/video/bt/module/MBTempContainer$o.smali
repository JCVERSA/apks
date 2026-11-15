.class Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;
.super Lcom/mbridge/msdk/video/signal/impl/a$a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/bt/module/MBTempContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;


# direct methods
.method private constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/impl/a$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Lcom/mbridge/msdk/video/bt/module/MBTempContainer$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;-><init>(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 9
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/a$a;->a()V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    iget-object v1, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->T:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->W:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    .line 7
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/impl/a$a;->a(ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->defaultLoad(ILjava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1
    const-string v0, "omsdk"

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->m(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    move-result-object v1

    sget-object v2, Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;

    invoke-virtual {v1, v2}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V

    .line 3
    const-string v1, "mbtc adUserInteraction click"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/a$a;->a(Z)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->J(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Lcom/mbridge/msdk/video/bt/module/orglistener/h;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->R(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    invoke-static {v2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->S(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/mbridge/msdk/video/bt/module/orglistener/h;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/impl/a$a;->onFinishRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-static {p2, v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    instance-of p2, p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 18
    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    :try_start_0
    check-cast p1, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/mbridge/msdk/video/signal/container/AbstractJSContainer;->getJSVideoModule()Lcom/mbridge/msdk/video/signal/j;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {p2}, Lcom/mbridge/msdk/video/signal/j;->getCurrentProgress()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p2, "progress"

    .line 39
    .line 40
    const-string v1, ""

    .line 41
    .line 42
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v1, 0x3

    .line 51
    if-ne v0, v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getEndcard_click_result()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v0, 0x2

    .line 58
    if-ne p1, v0, :cond_1

    .line 59
    .line 60
    const-string p1, "1.0"

    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->O(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->P(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_0

    .line 83
    .line 84
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->k(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p1

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->Q(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Landroid/app/Activity;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 106
    .line 107
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onResume()V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void
.end method

.method public onInitSuccess()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/a$a;->onInitSuccess()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->receiveSuccess()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/impl/a$a;->onRedirectionFailed(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->N(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-static {p1, p2}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->e(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;Z)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/mbridge/msdk/video/signal/impl/a$a;->onStartRedirection(Lcom/mbridge/msdk/out/Campaign;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->L(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->M(Lcom/mbridge/msdk/video/bt/module/MBTempContainer;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/mbridge/msdk/video/bt/module/MBTempContainer$o;->a:Lcom/mbridge/msdk/video/bt/module/MBTempContainer;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/bt/module/MBTempContainer;->onPause()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
