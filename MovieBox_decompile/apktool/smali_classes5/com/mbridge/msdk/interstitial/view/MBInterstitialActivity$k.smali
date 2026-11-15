.class Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mIsMBPage:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->k(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/interstitial/cache/a;->a()Lcom/mbridge/msdk/interstitial/cache/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->j(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 42
    .line 43
    iget-object v2, v2, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->mUnitid:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/interstitial/cache/a;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->i(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-static {v0, v1}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->b(Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;Z)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->hideLoading()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity$k;->a:Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/view/MBInterstitialActivity;->showWebView()V

    .line 71
    .line 72
    .line 73
    return-void
.end method
