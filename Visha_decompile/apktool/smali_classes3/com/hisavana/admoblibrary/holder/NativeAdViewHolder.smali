.class public Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field public final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/nativead/NativeAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdView;)V
    .locals 2

    const-string v0, "NativeAdViewHolder"

    :try_start_0
    iget-object v1, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->size()I

    move-result p1

    const/4 p2, 0x5

    if-le p1, p2, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "admob container holders exceed the max threshold"

    invoke-virtual {p1, v0, p2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public addContentView(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->isCachedAdView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----> admob,addContentView container:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NativeAdViewHolder"

    invoke-virtual {v0, v2, v1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->removeAllViews()V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    sget-boolean p0, Lcom/hisavana/common/bean/AdSourceConfig;->isUseMediaView:Z

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getImageList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    invoke-virtual {p3}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    invoke-virtual {p0}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/nativead/MediaView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public destroy()V
    .locals 4

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    const-string v1, "NativeAdViewHolder"

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/nativead/NativeAdView;->removeAllViews()V

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->removeAllViews()V

    :try_start_1
    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    :cond_2
    return-void
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object p1, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hisavana/common/R$layout;->google_native_app_unified_ad_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object p1, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    goto :goto_0

    :cond_1
    sget p2, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->createIconView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->iconView:Landroid/view/View;

    return-object p1
.end method

.method public getMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hisavana/common/base/BaseNativeViewHolder;->mediaView:Landroid/view/View;

    return-object p1
.end method

.method public isCachedAdView()Z
    .locals 2

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz v0, :cond_0

    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_view_source:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBodyView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallToActionOtherView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/hisavana/common/base/BaseNativeViewHolder;->setCallToActionOtherView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCallToActionView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHeadlineView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setMediaView(Landroid/view/View;Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    iget-object p0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz p0, :cond_1

    instance-of p2, p1, Lcom/google/android/gms/ads/nativead/MediaView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setImageView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNativeAd(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "NativeAdViewHolder"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "----> admob container has called setNativeAd() before."

    invoke-virtual {p0, v1, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    if-eqz v2, :cond_3

    instance-of v3, v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/nativead/MediaView;->setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    check-cast v0, Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p0, p1, v0}, Lcom/hisavana/admoblibrary/holder/NativeAdViewHolder;->a(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdView;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "----> call setNativeAd()"

    invoke-virtual {p0, v1, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
