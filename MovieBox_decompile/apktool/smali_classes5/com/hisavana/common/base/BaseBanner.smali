.class public abstract Lcom/hisavana/common/base/BaseBanner;
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
.field private final TAG:Ljava/lang/String;

.field protected isCloseDirectly:Z

.field protected isHideAdCloseView:Z

.field protected mBannerAdMaxHeight:I

.field protected mBannerAdWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseAd;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "BaseBanner"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/hisavana/common/base/BaseBanner;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 6
    .line 7
    .line 8
    goto :goto_3

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x7533

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_0
    if-nez v2, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v1, v2

    .line 28
    :goto_1
    const-string v2, "error_code"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    const-string p1, "null"

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_2
    const-string v1, "error_message"

    .line 47
    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 52
    .line 53
    const-string v1, "request_num"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    .line 59
    .line 60
    .line 61
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "banner have been Loaded, but refresh banner failed "

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "BaseBanner"

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    return-void
.end method

.method public adLoaded()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->adLoaded()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "error_code"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/hisavana/common/base/BaseAd;->mAdCount:I

    .line 21
    .line 22
    const-string v2, "request_num"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adReturnTracking(Landroid/os/Bundle;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "banner have been Loaded, but refresh banner success "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "BaseBanner"

    .line 56
    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method public canShow()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public destroyAd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->destroyAd()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->getBanner()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    check-cast v1, Landroid/view/ViewGroup;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->onBannerDestroy()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public destroyFoldAd()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public getAdType()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method

.method protected abstract getBanner()Landroid/view/View;
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
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->getBanner()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/hisavana/common/base/BaseAd;->loadAd()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->onBannerLoad()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected abstract onBannerDestroy()V
.end method

.method protected abstract onBannerLoad()V
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

.method public setBannerAdMaxHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdMaxHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public setBannerAdWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    .line 2
    .line 3
    return-void
.end method

.method public setCloseDirectlyWithoutJumping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseBanner;->isCloseDirectly:Z

    .line 2
    .line 3
    return-void
.end method

.method public setHideAdCloseView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/common/base/BaseBanner;->isHideAdCloseView:Z

    .line 2
    .line 3
    return-void
.end method

.method public show(Lcom/hisavana/common/base/WrapTadView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->getBanner()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/hisavana/common/base/BaseAd;->logTrigerShow(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/hisavana/common/base/WrapTadView;->onAddView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseBanner;->showBanner()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p3, "banner is null "

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string p3, "BaseBanner"

    .line 45
    .line 46
    invoke-virtual {p1, p3, p2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method

.method protected abstract showBanner()V
.end method
