.class public final Lcom/vungle/ads/VungleBannerView$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;->willPresentAdView(Lcom/vungle/ads/internal/model/AdPayload;Lcom/vungle/ads/internal/model/g;Lcom/vungle/ads/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$d;->this$0:Lcom/vungle/ads/VungleBannerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$d;->this$0:Lcom/vungle/ads/VungleBannerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/vungle/ads/VungleBannerView;->access$finishAdInternal(Lcom/vungle/ads/VungleBannerView;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
