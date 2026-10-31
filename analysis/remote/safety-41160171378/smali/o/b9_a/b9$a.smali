.class public final Lo/b9$a;
.super Ljava/lang/Object;

# interfaces
.implements Lo/gn7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/b9;->l(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lo/b9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/b9;)V
    .locals 0

    iput-object p1, p0, Lo/b9$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/b9$a;->b:Lo/b9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lo/b9$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/ju5;->c(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x4

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    iget-object v0, p0, Lo/b9$a;->a:Landroid/content/Context;

    const/4 v5, 0x5

    iget-object v1, p0, Lo/b9$a;->b:Lo/b9;

    const/4 v5, 0x0

    invoke-static {v1}, Lo/b9;->s(Lo/b9;)Lcom/snaptube/player_guide/strategy/model/AppRes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getLog()Lcom/snaptube/player_guide/strategy/model/AppRes$e;

    move-result-object v1

    const/4 v5, 0x3

    iget-object v1, v1, Lcom/snaptube/player_guide/strategy/model/AppRes$e;->e:Ljava/lang/String;

    iget-object v2, p0, Lo/b9$a;->b:Lo/b9;

    const/4 v5, 0x3

    invoke-static {v2}, Lo/b9;->s(Lo/b9;)Lcom/snaptube/player_guide/strategy/model/AppRes;

    move-result-object v2

    const/4 v5, 0x5

    invoke-virtual {v2}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getBaseInfo()Lcom/snaptube/player_guide/strategy/model/AppRes$a;

    move-result-object v2

    const/4 v5, 0x4

    iget-object v2, v2, Lcom/snaptube/player_guide/strategy/model/AppRes$a;->a:Ljava/lang/String;

    const/4 v5, 0x5

    iget-object v3, p0, Lo/b9$a;->b:Lo/b9;

    const/4 v5, 0x4

    invoke-static {v3}, Lo/b9;->s(Lo/b9;)Lcom/snaptube/player_guide/strategy/model/AppRes;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getGuideTask()Lcom/snaptube/player_guide/strategy/model/AppRes$b;

    move-result-object v3

    const/4 v5, 0x5

    iget-object v3, v3, Lcom/snaptube/player_guide/strategy/model/AppRes$b;->o:Ljava/lang/String;

    const/4 v5, 0x3

    iget-object v4, p0, Lo/b9$a;->b:Lo/b9;

    const/4 v5, 0x5

    invoke-static {v4}, Lo/b9;->s(Lo/b9;)Lcom/snaptube/player_guide/strategy/model/AppRes;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4}, Lcom/snaptube/player_guide/strategy/model/AppRes;->getGuideTask()Lcom/snaptube/player_guide/strategy/model/AppRes$b;

    move-result-object v4

    const/4 v5, 0x7

    iget-object v4, v4, Lcom/snaptube/player_guide/strategy/model/AppRes$b;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lo/ju5;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v5, 0x3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/b9$a;->a:Landroid/content/Context;

    const/4 v5, 0x4

    iget-object v1, p0, Lo/b9$a;->b:Lo/b9;

    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/snaptube/player_guide/resAction/d;->h()Ljava/util/Map;

    move-result-object v1

    const/4 v5, 0x6

    const/4 v2, 0x1

    const/4 v5, 0x5

    invoke-static {v0, v1, v2}, Lcom/snaptube/premium/NavigationManager;->j0(Landroid/content/Context;Ljava/util/Map;Z)V

    :goto_0
    const/4 v5, 0x6

    sget-object v0, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity;->q:Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0}, Lo/gn7$a;->a(Lo/gn7;)V

    return-void
.end method
