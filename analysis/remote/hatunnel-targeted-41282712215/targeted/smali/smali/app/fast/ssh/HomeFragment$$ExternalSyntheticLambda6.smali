.class public final synthetic Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic f$0:Lapp/fast/ssh/HomeFragment;


# direct methods
.method public synthetic constructor <init>(Lapp/fast/ssh/HomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;->f$0:Lapp/fast/ssh/HomeFragment;

    return-void
.end method


# virtual methods
.method public final onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 1

    iget-object v0, p0, Lapp/fast/ssh/HomeFragment$$ExternalSyntheticLambda6;->f$0:Lapp/fast/ssh/HomeFragment;

    invoke-virtual {v0, p1}, Lapp/fast/ssh/HomeFragment;->lambda$showRewarded$8$app-fast-ssh-HomeFragment(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method
