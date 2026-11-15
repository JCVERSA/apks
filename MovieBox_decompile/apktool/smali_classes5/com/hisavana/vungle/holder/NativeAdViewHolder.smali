.class public final Lcom/hisavana/vungle/holder/NativeAdViewHolder;
.super Lcom/hisavana/common/base/BaseNativeViewHolder;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J-\u0010\r\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0003R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/hisavana/vungle/holder/NativeAdViewHolder;",
        "Lcom/hisavana/common/base/BaseNativeViewHolder;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "ctx",
        "Landroid/view/View;",
        "createIconView",
        "(Landroid/content/Context;)Landroid/view/View;",
        "Lcom/hisavana/common/bean/TAdNativeInfo;",
        "nativeInfo",
        "Landroid/view/ViewGroup;",
        "viewGroup",
        "createMediaView",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;",
        "",
        "destroy",
        "Lcom/vungle/ads/internal/ui/view/MediaView;",
        "b",
        "Lcom/vungle/ads/internal/ui/view/MediaView;",
        "vungleMediaView",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private b:Lcom/vungle/ads/internal/ui/view/MediaView;


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
.method protected createIconView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "vungle_icon_view"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method protected createMediaView(Landroid/content/Context;Lcom/hisavana/common/bean/TAdNativeInfo;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    new-instance p2, Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, p1}, Lcom/vungle/ads/internal/ui/view/MediaView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;->b:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 16
    .line 17
    const-string p1, "vungle_media_view"

    .line 18
    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;->b:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 23
    .line 24
    const-string p2, "null cannot be cast to non-null type com.vungle.ads.internal.ui.view.MediaView"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/hisavana/common/base/BaseNativeViewHolder;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hisavana/vungle/holder/NativeAdViewHolder;->b:Lcom/vungle/ads/internal/ui/view/MediaView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ui/view/MediaView;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Vungle_Log"

    .line 16
    .line 17
    const-string v2, "Vungle Native holder destroy"

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
