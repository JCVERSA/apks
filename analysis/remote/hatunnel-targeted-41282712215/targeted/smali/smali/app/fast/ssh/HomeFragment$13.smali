.class Lapp/fast/ssh/HomeFragment$13;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/HomeFragment;->onUpdateState(Lapp/fast/ssh/core/VpnStatus$VpnState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/HomeFragment;

.field final synthetic val$state:Lapp/fast/ssh/core/VpnStatus$VpnState;

.field final synthetic val$subscription:Lapp/fast/ssh/Subscription;


# direct methods
.method constructor <init>(Lapp/fast/ssh/HomeFragment;Lapp/fast/ssh/core/VpnStatus$VpnState;Lapp/fast/ssh/Subscription;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    iput-object p2, p0, Lapp/fast/ssh/HomeFragment$13;->val$state:Lapp/fast/ssh/core/VpnStatus$VpnState;

    iput-object p3, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    sget-object v0, Lapp/fast/ssh/HomeFragment$28;->$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState:[I

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$13;->val$state:Lapp/fast/ssh/core/VpnStatus$VpnState;

    invoke-virtual {v1}, Lapp/fast/ssh/core/VpnStatus$VpnState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v1, "\u2e89"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0, v3}, Lapp/fast/ssh/HomeFragment;->access$1800(Lapp/fast/ssh/HomeFragment;Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v2}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapp/fast/ssh/HomeFragment;->access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2300(Lapp/fast/ssh/HomeFragment;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v2}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapp/fast/ssh/HomeFragment;->access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2100(Lapp/fast/ssh/HomeFragment;)V

    :cond_3
    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-static {v3}, Lapp/fast/ssh/HomeFragment;->access$2602(Z)Z

    :cond_4
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_5
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v2, "\u2e8a"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0, v1}, Lapp/fast/ssh/HomeFragment;->access$1800(Lapp/fast/ssh/HomeFragment;Z)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1900(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v2}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapp/fast/ssh/HomeFragment;->access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2100(Lapp/fast/ssh/HomeFragment;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v1

    iget-object v2, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v2}, Lapp/fast/ssh/HomeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lapp/fast/ssh/HomeFragment;->access$2000(Lapp/fast/ssh/HomeFragment;Lcom/google/android/gms/ads/interstitial/InterstitialAd;Landroid/app/Activity;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2200(Lapp/fast/ssh/HomeFragment;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2300(Lapp/fast/ssh/HomeFragment;)V

    :cond_8
    sget-object v0, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    if-eqz v0, :cond_9

    sget-object v0, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v0, v0, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2400(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    sget-object v1, Lapp/fast/ssh/HomeFragment;->GlobalTimerConf:Lapp/fast/ssh/TimerConf;

    iget-object v1, v1, Lapp/fast/ssh/TimerConf;->button_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->val$subscription:Lapp/fast/ssh/Subscription;

    invoke-virtual {v0}, Lapp/fast/ssh/Subscription;->shouldRequestAds()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2500()Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {}, Lapp/fast/ssh/HomeFragment;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v1}, Lapp/fast/ssh/HomeFragment;->access$2900(Lapp/fast/ssh/HomeFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$2802(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_a
    :goto_2
    return-void

    :cond_b
    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0}, Lapp/fast/ssh/HomeFragment;->access$1700(Lapp/fast/ssh/HomeFragment;)Landroid/widget/Button;

    move-result-object v0

    const-string/jumbo v2, "\u2e8b"

    invoke-static {v2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$13;->this$0:Lapp/fast/ssh/HomeFragment;

    invoke-static {v0, v1}, Lapp/fast/ssh/HomeFragment;->access$1800(Lapp/fast/ssh/HomeFragment;Z)V

    return-void
.end method
