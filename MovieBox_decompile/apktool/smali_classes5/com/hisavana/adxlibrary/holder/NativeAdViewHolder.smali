.class public Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;
.source "source.java"


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public createAdBadgeView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lb7/c;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdBagdeView(Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object p2

    .line 39
    :cond_3
    :goto_0
    return-object v0
.end method

.method public createAdCloseView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-virtual {p2}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lb7/c;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_2

    .line 23
    .line 24
    move-object p1, v0

    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p2, p1}, Lb7/c;->t(Landroid/content/Context;)Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    if-nez p1, :cond_3

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_3
    iget-object p2, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 34
    .line 35
    if-eqz p2, :cond_4

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdCloseView(Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V

    .line 38
    .line 39
    .line 40
    :cond_4
    return-object p1
.end method

.method public createAdDisclaimerView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 16
    .line 17
    if-eqz p2, :cond_3

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lb7/c;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 32
    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdDisclaimerView(Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-object p2

    .line 39
    :cond_3
    :goto_0
    return-object v0
.end method

.method public createChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/hisavana/adxlibrary/excuter/AdxNative;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/hisavana/adxlibrary/excuter/AdxNative;->getNativeAd()Lb7/c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 34
    .line 35
    invoke-virtual {v1, p1, p2}, Lb7/c;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 40
    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdChoiceView(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-object v0
.end method

.method public createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p3, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 2
    .line 3
    invoke-direct {p3, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getMime()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p3, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->init(I)V

    .line 11
    .line 12
    .line 13
    return-object p3
.end method

.method public createStoreMarkView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance p2, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setPsMarkView(Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-object p2
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p1, Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-direct {p1, p2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 11
    .line 12
    return-object p1
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p1, Landroid/widget/ImageView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setIconView(Landroid/widget/ImageView;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setMediaView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v1, v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/hisavana/adxlibrary/holder/NativeAdViewHolder;->a:Lcom/cloud/hisavana/sdk/api/view/TNativeView;

    .line 39
    .line 40
    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setupViews(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_0
    return-void
.end method
