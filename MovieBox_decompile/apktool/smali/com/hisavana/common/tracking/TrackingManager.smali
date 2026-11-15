.class public Lcom/hisavana/common/tracking/TrackingManager;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final CODE_ERROR:I = 0x1

.field public static final CODE_SUCCESS:I = 0x0

.field public static final TID:I = 0x21d5

.field public static final TRIGGER_TYPE_AD_FILLING:I = 0x3

.field public static final TRIGGER_TYPE_AD_UNIT_IS_CLOSED:I = 0x6

.field public static final TRIGGER_TYPE_AHA_ADD_IDS:I = 0x5

.field public static final TRIGGER_TYPE_COLD:I = 0x1

.field public static final TRIGGER_TYPE_CONFIG_IS_EMPTY:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static track(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    new-instance p0, Lcom/hisavana/common/tracking/TrackingManager$1;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0}, Lcom/hisavana/common/tracking/TrackingManager$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lk7/b;->c(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static trackEnterScene(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "enter_scene"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackGetNativeInfo(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "get_native_Info"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackInit(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "app_init"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackIsReady(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "is_ready"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackTriggerStart(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-string v3, "ts"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 13
    .line 14
    .line 15
    const-string v1, "trigger_source"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string p0, "ad_trigger_start"

    .line 21
    .line 22
    invoke-static {v0, p0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static trackingADCldRequest(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_cld_request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingADTrigger(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_trigger"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdBidding(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "inquiry_request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdBiddingReturn(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "inquiry_return"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdCancel(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_cancel"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdClick(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_click"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdClose(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_closure"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdLoaded(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_filling"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdRequest(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_request"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdReturn(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_return"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingAdmobShowPrice(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "show_price"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingCldReturn(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_cld_return"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingErrorLog(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_error_log"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingImpression(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_show"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingStartBid(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_start_bid"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static trackingTriggerShow(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "ad_trigger_show"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/hisavana/common/tracking/TrackingManager;->track(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
