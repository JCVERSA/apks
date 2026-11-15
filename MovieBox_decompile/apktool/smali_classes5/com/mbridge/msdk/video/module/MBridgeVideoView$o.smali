.class Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeVideoView;->d()V
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
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

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
    .locals 4

    .line 1
    const-string p1, "omsdk"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/foundation/same/a;->j:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->mPlayerView:Lcom/mbridge/msdk/playercommon/PlayerView;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/playercommon/PlayerView;->buildH5JsonObject(I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTempSource(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->b:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setTriggerClickSource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 52
    .line 53
    invoke-interface {v1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lcom/mbridge/msdk/video/module/MBridgeVideoView;)Lcom/iab/omid/library/mmadbridge/adsession/media/a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/iab/omid/library/mmadbridge/adsession/media/a;->a(Lcom/iab/omid/library/mmadbridge/adsession/media/InteractionType;)V

    .line 73
    .line 74
    .line 75
    const-string v0, "play video view:  click"

    .line 76
    .line 77
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {p1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeVideoView$o;->a:Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->setCTALayoutVisibleOrGone()V

    .line 92
    .line 93
    .line 94
    return-void
.end method
