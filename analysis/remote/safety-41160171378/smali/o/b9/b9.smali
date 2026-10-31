.class public Lo/b9;
.super Lcom/snaptube/player_guide/resAction/d;


# instance fields
.field public final i:Lcom/snaptube/player_guide/strategy/model/AppRes;

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/snaptube/player_guide/strategy/model/AppRes;Ljava/util/Map;Z)V
    .locals 1

    const-string v0, "appRes"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/snaptube/player_guide/resAction/d;-><init>(Lcom/snaptube/player_guide/strategy/model/AppRes;Ljava/util/Map;Z)V

    iput-object p1, p0, Lo/b9;->i:Lcom/snaptube/player_guide/strategy/model/AppRes;

    iput-boolean p3, p0, Lo/b9;->j:Z

    return-void
.end method

.method public static final synthetic s(Lo/b9;)Lcom/snaptube/player_guide/strategy/model/AppRes;
    .locals 1

    iget-object p0, p0, Lo/b9;->i:Lcom/snaptube/player_guide/strategy/model/AppRes;

    const/4 v0, 0x6

    return-object p0
.end method


# virtual methods
.method public k()Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/snaptube/player_guide/resAction/d;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/b9;->i:Lcom/snaptube/player_guide/strategy/model/AppRes;

    invoke-virtual {v0}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getLog()Lcom/snaptube/player_guide/strategy/model/AppRes$e;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lo/b9;->i:Lcom/snaptube/player_guide/strategy/model/AppRes;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getLog()Lcom/snaptube/player_guide/strategy/model/AppRes$e;

    move-result-object v0

    iget-object v0, v0, Lcom/snaptube/player_guide/strategy/model/AppRes$e;->e:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x7

    if-nez v0, :cond_0

    const/4 v1, 0x6

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    return v0
.end method

.method public l(Landroid/content/Context;)Z
    .locals 11

    const/4 v10, 0x2

    const-string v0, "tcsexon"

    const-string v0, "context"

    const/4 v10, 0x6

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-super {p0, p1}, Lcom/snaptube/player_guide/resAction/d;->l(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v10, 0x0

    sget-object v0, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity;->q:Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;

    const/4 v10, 0x4

    iget-object v2, p0, Lo/b9;->i:Lcom/snaptube/player_guide/strategy/model/AppRes;

    const/4 v10, 0x3

    invoke-virtual {v2}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getGuideTask()Lcom/snaptube/player_guide/strategy/model/AppRes$b;

    move-result-object v2

    const/4 v10, 0x0

    iget-object v6, v2, Lcom/snaptube/player_guide/strategy/model/AppRes$b;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lo/b9;->t()Z

    move-result v2

    const/4 v10, 0x6

    xor-int/lit8 v9, v2, 0x1

    const/4 v4, 0x5

    const/4 v4, 0x1

    const/4 v10, 0x6

    const-string v5, "ad_guide_res"

    const/4 v10, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v3, p1

    const/4 v10, 0x5

    invoke-virtual/range {v2 .. v9}, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v10, 0x5

    invoke-static {p1, v1}, Lcom/snaptube/premium/NavigationManager;->l1(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    const/4 v10, 0x4

    if-eqz v1, :cond_1

    new-instance v2, Lo/b9$a;

    invoke-direct {v2, p1, p0}, Lo/b9$a;-><init>(Landroid/content/Context;Lo/b9;)V

    invoke-virtual {v0, v2}, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;->a(Lo/gn7;)V

    :cond_1
    return v1
.end method

.method public final t()Z
    .locals 3

    iget-object v0, p0, Lo/b9;->i:Lcom/snaptube/player_guide/strategy/model/AppRes;

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getGuideTask()Lcom/snaptube/player_guide/strategy/model/AppRes$b;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v0, v0, Lcom/snaptube/player_guide/strategy/model/AppRes$b;->q:Ljava/lang/String;

    const/4 v2, 0x7

    sget-object v1, Lcom/snaptube/player_guide/PlayerGuideAdPos;->AD_POS_DOWNLOAD_OUTSIDE_REWARD:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-virtual {v1}, Lcom/snaptube/player_guide/PlayerGuideAdPos;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    return v0
.end method
