.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;
.super Lcom/cloud/hisavana/sdk/c4;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->a0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/c4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/c4;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->m0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(JJI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/c4;->b(JJI)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->E0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/cloud/hisavana/sdk/c4;->onComplete()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->t0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/c4;->onVolumeChanged(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->G0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Landroid/widget/ImageView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$h;->e:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Z(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
