.class public Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;
.super Lhb0;
.source "SourceFile"


# static fields
.field public static final EVENT_NAME_VD_OTT_AD_MONITOR:Ljava/lang/String; = "vd_ott_ad_monitor"

.field public static final KEY_NAME_ADBUTTONNAME:Ljava/lang/String; = "adButtonName"

.field public static final KEY_NAME_ADDURATION:Ljava/lang/String; = "adDuration"

.field public static final KEY_NAME_ADTAG:Ljava/lang/String; = "adTag"

.field public static final KEY_NAME_ADVIDEOHEIGHT:Ljava/lang/String; = "adVideoHeight"

.field public static final KEY_NAME_ADVIDEOWIDTH:Ljava/lang/String; = "adVideoWidth"

.field public static final KEY_NAME_CANPAUSE:Ljava/lang/String; = "canPause"

.field public static final KEY_NAME_STRUEVIEWAD:Ljava/lang/String; = "sTrueViewAd"

.field public static final KEY_NAME_TRUEVIEWDURATION:Ljava/lang/String; = "trueViewDuration"

.field public static final KEY_NAME_URL:Ljava/lang/String; = "url"

.field public static final KEY_NAME_VIPTEXT:Ljava/lang/String; = "vipText"

.field public static adButtonName:Ljava/lang/String;

.field public static adDuration:I

.field public static adTag:Ljava/lang/String;

.field public static adVideoHeight:I

.field public static adVideoWidth:I

.field public static canPause:Z

.field public static isTrueViewAd:Z

.field public static trueViewDuration:I

.field public static url:Ljava/lang/String;

.field public static vipText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhb0;-><init>()V

    return-void
.end method

.method public static markAdPlay()V
    .locals 13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v1}, Lcom/transsion/athena/data/TrackData;-><init>()V

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->trueViewDuration:I

    const-string v3, "trueViewDuration"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adDuration:I

    const-string v4, "adDuration"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adVideoHeight:I

    const-string v5, "adVideoHeight"

    invoke-virtual {v0, v5, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adVideoWidth:I

    const-string v6, "adVideoWidth"

    invoke-virtual {v0, v6, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->isTrueViewAd:Z

    const-string v7, "sTrueViewAd"

    invoke-virtual {v0, v7, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->canPause:Z

    const-string v8, "canPause"

    invoke-virtual {v0, v8, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adTag:Ljava/lang/String;

    const-string v9, "adTag"

    invoke-virtual {v0, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->url:Ljava/lang/String;

    const-string v10, "url"

    invoke-virtual {v0, v10, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->vipText:Ljava/lang/String;

    const-string v11, "vipText"

    invoke-virtual {v0, v11, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adButtonName:Ljava/lang/String;

    const-string v12, "adButtonName"

    invoke-virtual {v0, v12, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->trueViewDuration:I

    invoke-virtual {v1, v3, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adDuration:I

    invoke-virtual {v1, v4, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adVideoHeight:I

    invoke-virtual {v1, v5, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sget v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adVideoWidth:I

    invoke-virtual {v1, v6, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;I)Lcom/transsion/athena/data/TrackData;

    sget-boolean v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->isTrueViewAd:Z

    invoke-virtual {v1, v7, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Z)Lcom/transsion/athena/data/TrackData;

    sget-boolean v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->canPause:Z

    invoke-virtual {v1, v8, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Z)Lcom/transsion/athena/data/TrackData;

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adTag:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->url:Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->vipText:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    sget-object v2, Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAd;->adButtonName:Ljava/lang/String;

    invoke-virtual {v1, v12, v2}, Lcom/transsion/athena/data/TrackData;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/athena/data/TrackData;

    const-string v2, "vd_ott_ad_monitor"

    const-wide/16 v3, 0x246c

    invoke-static {v1, v0, v2, v3, v4}, Lp06;->q0(Lcom/transsion/athena/data/TrackData;Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
