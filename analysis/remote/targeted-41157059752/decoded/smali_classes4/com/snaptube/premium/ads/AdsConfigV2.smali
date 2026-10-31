.class public Lcom/snaptube/premium/ads/AdsConfigV2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/ads/AdsConfigV2$AdPosConfig;,
        Lcom/snaptube/premium/ads/AdsConfigV2$FBPlacementIdConfig;,
        Lcom/snaptube/premium/ads/AdsConfigV2$RetryPolicy;
    }
.end annotation


# instance fields
.field public exit_interstitial:Ljava/lang/String;

.field public fb_appname:Ljava/lang/String;

.field public fb_config:[Lcom/snaptube/premium/ads/AdsConfigV2$FBPlacementIdConfig;

.field public fb_packagename:Ljava/lang/String;

.field public gx_interstitial:Ljava/lang/String;

.field public playback_paused_banner:Ljava/lang/String;

.field public pos_config:[Lcom/snaptube/premium/ads/AdsConfigV2$AdPosConfig;

.field public retry:Lcom/snaptube/premium/ads/AdsConfigV2$RetryPolicy;

.field public start_interstitial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
