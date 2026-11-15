.class Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CommonWebView$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->v(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "status"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v3, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 41
    .line 42
    const-string v4, "m_webview_zoom"

    .line 43
    .line 44
    invoke-virtual {v2, v4, v3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->w(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/mbridge/msdk/mbsignalcommon/commonwebview/CollapsibleWebView;->setCustomizedToolBarMarginWidthPixel(IIII)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$f;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->k(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
