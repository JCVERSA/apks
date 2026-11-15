.class Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView$a;->a:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->a(Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;)Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/AdVideoView;->openOrCloseVolume()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
