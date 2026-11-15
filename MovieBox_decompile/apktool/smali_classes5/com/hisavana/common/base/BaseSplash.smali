.class public abstract Lcom/hisavana/common/base/BaseSplash;
.super Lcom/hisavana/common/base/BaseAd;
.source "source.java"

# interfaces
.implements Lcom/hisavana/common/interfacz/IadView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/hisavana/common/base/BaseAd;",
        "Lcom/hisavana/common/interfacz/IadView;"
    }
.end annotation


# instance fields
.field logoLayout:Landroid/view/View;

.field protected mLogoLayoutHeightRatio:Ljava/lang/Float;

.field private orientation:I

.field splash:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected splashMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 6
    .line 7
    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->orientation:I

    .line 8
    .line 9
    return-void
.end method

.method private addLogoLayout(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hisavana/common/base/WrapTadView;",
            "TT;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->f()I

    move-result v0

    const-string v1, "BaseSplash"

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_1
    const v3, 0x3e4ccccd    # 0.2f

    .line 4
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mediation sdk addLogoLayout heightRatio = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addLogoLayout logoHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " screenHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 10
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    invoke-virtual {p1, p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addLogoLayout(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    return-void
.end method

.method public canShow()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected checkNeedAddLogo()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public destroyAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 71
    .line 72
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public getAdType()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method protected getLogoHeightDefaultRatio()F
    .locals 1

    .line 1
    const v0, 0x3e4ccccd    # 0.2f

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public getLogoLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/common/base/BaseSplash;->orientation:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract getSplash()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public isOfflineAd()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->getSplash()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSplashStartLoad()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method protected onSkipClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onSkipClick()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method protected abstract onSplashShow()V
.end method

.method protected abstract onSplashStartLoad()V
.end method

.method protected onTimeReach()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mListenerList:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/hisavana/common/interfacz/WrapTAdAllianceListener;

    .line 19
    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TInnerAdListener;->onTimeReach()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public pauseAd()V
    .locals 0

    .line 1
    return-void
.end method

.method public resumeAd()V
    .locals 0

    .line 1
    return-void
.end method

.method public setLogoLayoutHeightRatio(Ljava/lang/Float;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/common/base/BaseSplash;->mLogoLayoutHeightRatio:Ljava/lang/Float;

    .line 2
    .line 3
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->orientation:I

    .line 2
    .line 3
    return-void
.end method

.method public setSplashMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseSplash;->splashMode:I

    .line 2
    .line 3
    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hisavana/common/base/BaseSplash;->splash:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Landroid/view/ViewGroup;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->checkNeedAddLogo()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/hisavana/common/base/BaseSplash;->logoLayout:Landroid/view/View;

    .line 53
    .line 54
    invoke-direct {p0, p1, v0, v1}, Lcom/hisavana/common/base/BaseSplash;->addLogoLayout(Lcom/hisavana/common/base/WrapTadView;Landroid/view/View;Landroid/view/View;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onSplashShow()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string p3, "Splash is null "

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    const-string p3, "BaseSplash"

    .line 90
    .line 91
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseSplash;->onTimeReach()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method
