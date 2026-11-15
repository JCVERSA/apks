.class public Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;
.source "SourceFile"


# instance fields
.field public a:Lcom/facebook/ads/MediaView;

.field public b:Lcom/facebook/ads/NativeAdLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->b:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->b:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public createChoicesView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/hisavana/common/bean/TAdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hisavana/common/bean/NativeAdWrapper;->getNativeAd()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/ads/NativeAdBase;

    new-instance v1, Lcom/facebook/ads/AdOptionsView;

    iget-object p0, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->b:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v1, p1, p2, p0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public createIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    new-instance p0, Lcom/facebook/ads/MediaView;

    invoke-direct {p0, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    new-instance p2, Lcom/facebook/ads/MediaView;

    invoke-direct {p2, p1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->a:Lcom/facebook/ads/MediaView;

    return-object p2
.end method

.method public destroy()V
    .locals 2

    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->a:Lcom/facebook/ads/MediaView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->destroy()V

    iput-object v1, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->a:Lcom/facebook/ads/MediaView;

    :cond_0
    iget-object v0, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->b:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v1, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->b:Lcom/facebook/ads/NativeAdLayout;

    :cond_1
    return-void
.end method

.method public getContainer(Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/hisavana/common/R$layout;->fb_native_ad_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/NativeAdLayout;

    iput-object p1, p0, Lcom/hisavana/fblibrary/excuter/holder/NativeAdViewHolder;->b:Lcom/facebook/ads/NativeAdLayout;

    return-object p1
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
