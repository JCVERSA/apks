.class final Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lo/dx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/dx2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "hasValidAd",
        "Lo/mg8;",
        "invoke",
        "(Ljava/lang/Boolean;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $pendingRewardRunnable:Lo/tx2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/tx2;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;


# direct methods
.method public constructor <init>(Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;Landroid/content/Context;Lo/tx2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;",
            "Landroid/content/Context;",
            "Lo/tx2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    iput-object p2, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->$pendingRewardRunnable:Lo/tx2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Lo/mg8;->a:Lo/mg8;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .locals 9
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/RewardLoader;->a()Lo/d15;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lo/d15;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadRewardAd Result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AdRewardLoader"

    invoke-static {v2, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->$context:Landroid/content/Context;

    const-string v1, "\u5916\u90e8\u4e0b\u8f7d\u5e7f\u544a\u5df2\u586b\u5145"

    invoke-static {p1, v1}, Lo/b88;->k(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    iget-object v1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->$pendingRewardRunnable:Lo/tx2;

    invoke-static {p1, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;->o(Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;Lo/tx2;)V

    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    invoke-static {p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;->n(Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;)Lo/g6;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "rewardActivityLauncher"

    invoke-static {p1}, Lo/or3;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    sget-object v1, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity;->q:Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;

    iget-object v2, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->$context:Landroid/content/Context;

    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    invoke-static {p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;->i(Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    invoke-static {p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;->g(Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;)Landroid/os/Bundle;

    move-result-object v6

    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->this$0:Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;

    invoke-static {p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;->i(Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader;)Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/snaptube/ads/base/AdsPos;->DOWNLOAD_OUTSIDE_REWARD:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v3}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v8, p1, 0x1

    const/4 v3, 0x1

    const-string v4, "start_out_side"

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/snaptube/premium/ads/splash/RewardSplashAdActivity$a;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/g6;->launch(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/AdRewardLoader$launchAdReward$1$1;->$pendingRewardRunnable:Lo/tx2;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/RewardLoader$RewardedResult;->NO_FILL:Lcom/snaptube/plugin/extension/nonlifecycle/ad/RewardLoader$RewardedResult;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2, v0}, Lo/tx2;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
