.class public Lcom/transsion/vishaplayersdk/markpoint/MarkPlayerAction;
.super Lhb0;
.source "SourceFile"


# static fields
.field private static final EVENT_NAME_VD_OTT_VIDEOVIEW:Ljava/lang/String; = "vd_ott_videoview"

.field private static final KEY_NAME_VIDEO_SOURCE:Ljava/lang/String; = "source"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lhb0;-><init>()V

    return-void
.end method

.method public static markPlayerFirstFrameShow(Ljava/lang/String;)V
    .locals 2

    const-string v0, "vd_ott_videoview"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
