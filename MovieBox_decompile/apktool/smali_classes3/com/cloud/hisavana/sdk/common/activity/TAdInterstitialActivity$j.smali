.class Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/f4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->f0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    .line 2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->e0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    move-result-object v0

    const-string v1, "TAdInterstitialActivity"

    const-string v2, "handleThePageClosingProcess closeAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 7

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v4

    .line 8
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 9
    const-string v0, "s_err_code"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p2, "error_url"

    invoke-virtual {v6, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_LOAD_WEB_MATERIAL_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->s1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v5

    invoke-virtual/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->N(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :catchall_0
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->L0()V

    return-void
.end method

.method public b(FFFFZ)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->o0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 20
    .line 21
    invoke-static {p1, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->u0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 25
    .line 26
    invoke-static {p1, p4}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->A0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;F)F

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    move v2, p1

    .line 37
    move v3, p2

    .line 38
    move v4, p3

    .line 39
    move v5, p4

    .line 40
    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->I(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;FFFF)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->Q(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->N0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 58
    .line 59
    const/4 p3, 0x0

    .line 60
    invoke-static {p2, p3}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->z0(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Z)Z

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 64
    .line 65
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    invoke-static {p2, p4, p3, p1, p5}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->y(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;ZZZ)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity$j;->a:Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->g1(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;)Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->v(Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;Landroid/view/View;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    return p1
.end method
