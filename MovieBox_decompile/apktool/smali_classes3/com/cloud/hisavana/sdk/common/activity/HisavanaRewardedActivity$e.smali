.class public final Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;
.super Lcom/cloud/hisavana/sdk/c4;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

.field final synthetic f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 4
    .line 5
    invoke-direct {p0, p3}, Lcom/cloud/hisavana/sdk/c4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayStart()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/c4;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPlayStart(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->isPlayComplete()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/c4;->onComplete()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setPlayComplete(Z)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/c4;->onIsPlayingChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->showRepeatButton(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/c4;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->e:Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;->showRepeatButton(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/c4;->onVolumeChanged(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->b0(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;)Lcom/cloud/hisavana/sdk/common/bean/RewardedState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/bean/RewardedState;->setVideoVolume(F)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$e;->f:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->P(Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;F)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
