.class public Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ADMEASURABILITY:Ljava/lang/String; = "AdMeasurability"

.field public static final ADPLACEMENT:Ljava/lang/String; = "Adplacement"

.field public static final ADVIEWABILITY:Ljava/lang/String; = "Adviewability"

.field public static final ADVIEWABILITYEVENTS:Ljava/lang/String; = "AdviewabilityEvents"

.field public static final ADVIEWABILITY_ALPHA:Ljava/lang/String; = "AdviewabilityAlpha"

.field public static final ADVIEWABILITY_CONFIG_AREA:Ljava/lang/String; = "AdviewabilityConfigArea"

.field public static final ADVIEWABILITY_CONFIG_THRESHOLD:Ljava/lang/String; = "AdviewabilityConfigThreshold"

.field public static final ADVIEWABILITY_COVERRATE:Ljava/lang/String; = "AdviewabilityCoverRate"

.field public static final ADVIEWABILITY_ENABLE:Ljava/lang/String; = "AdviewabilityEnable"

.field public static final ADVIEWABILITY_FORGROUND:Ljava/lang/String; = "AdviewabilityForground"

.field public static final ADVIEWABILITY_FRAME:Ljava/lang/String; = "AdviewabilityFrame"

.field public static final ADVIEWABILITY_LIGHT:Ljava/lang/String; = "AdviewabilityLight"

.field public static final ADVIEWABILITY_POINT:Ljava/lang/String; = "AdviewabilityPoint"

.field public static final ADVIEWABILITY_RECORD:Ljava/lang/String; = "AdviewabilityRecord"

.field public static final ADVIEWABILITY_RENDER:Ljava/lang/String; = "ImpressionType"

.field public static final ADVIEWABILITY_RESULT:Ljava/lang/String; = "AdviewabilityResult"

.field public static final ADVIEWABILITY_SHOWFRAME:Ljava/lang/String; = "AdviewabilityShowFrame"

.field public static final ADVIEWABILITY_SHOWN:Ljava/lang/String; = "AdviewabilityShown"

.field public static final ADVIEWABILITY_STRONG_INTERACT:Ljava/lang/String; = "AdviewabilityStrongInteract"

.field public static final ADVIEWABILITY_TIME:Ljava/lang/String; = "AdviewabilityTime"

.field public static final ADVIEWABILITY_VIDEO_DURATION:Ljava/lang/String; = "AdviewabilityVideoDuration"

.field public static final ADVIEWABILITY_VIDEO_PLAYTYPE:Ljava/lang/String; = "AdviewabilityVideoPlayType"

.field public static final ADVIEWABILITY_VIDEO_PROGRESS:Ljava/lang/String; = "AdviewabilityVideoProgress"

.field public static final ADVIEWABILITY_VIDEO_PROGRESSPOINT:Ljava/lang/String; = "AdviewabilityVideoProgressPoint"

.field public static final IMPRESSIONID:Ljava/lang/String; = "ImpressionID"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private equalizer:Ljava/lang/String;

.field private isVideoExpose:Z

.field private separator:Ljava/lang/String;

.field private urlExposeDuration:I

.field private urlShowCoverRate:F

.field private urlVideoDuration:I

.field private videoPlayType:I

.field private videoTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;",
            ">;"
        }
    .end annotation
.end field

.field private viewabilityTrackPolicy:I

.field private viewabilityarguments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValueFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    if-ge v0, p1, :cond_1

    aget-object v2, p2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAbilitySliceTrackEvents(Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityTime"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCaptureTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityFrame"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getAdSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityPoint"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getVisiblePoint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityAlpha"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityShown"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getShown()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityCoverRate"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getCoverRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityShowFrame"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getVisibleSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityLight"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getScreenOn()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v1, "AdviewabilityForground"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewFrameSlice;->getIsForGround()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    return-object v0
.end method

.method public getEqualizer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    return-object p0
.end method

.method public getFailedViewabilityParams()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityEvents"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    const-string v2, "[]"

    const-string/jumbo v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "Adviewability"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "0"

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdviewabilityResult"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    const-string v2, "AdMeasurability"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    return-object p0
.end method

.method public getURLExposeDuration()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->urlExposeDuration:I

    return p0
.end method

.method public getURLShowCoverRate()F
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->urlShowCoverRate:F

    return p0
.end method

.method public getURLVideoDuration()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->urlVideoDuration:I

    return p0
.end method

.method public getURLVideoProcessTrackList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    return-object p0
.end method

.method public getVideoPlayType()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoPlayType:I

    return p0
.end method

.method public getViewabilityTrackPolicy()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityTrackPolicy:I

    return p0
.end method

.method public isVideoExpose()Z
    .locals 0

    iget-boolean p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoExpose:Z

    return p0
.end method

.method public isVideoProgressTrack()Z
    .locals 0

    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEqualizer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->equalizer:Ljava/lang/String;

    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->separator:Ljava/lang/String;

    return-void
.end method

.method public setURLExposeDuration(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "AdviewabilityConfigThreshold"

    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getValueFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->urlExposeDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setURLShowCoverRate(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "AdviewabilityConfigArea"

    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getValueFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->urlShowCoverRate:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setURLVideoDuration(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "AdviewabilityVideoDuration"

    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getValueFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->urlVideoDuration:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setURLVideoProgressTracks(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "AdviewabilityVideoProgressPoint"

    invoke-virtual {p0, v0}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->getValueFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    sget-object v3, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK1_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    sget-object v4, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK2_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    sget-object v4, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK3_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    sget-object v0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;->TRACK4_4:Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/AbilityVideoProgress;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoTrackList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setVideoExpose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->isVideoExpose:Z

    return-void
.end method

.method public setVideoPlayType(I)V
    .locals 0

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->videoPlayType:I

    return-void
.end method

.method public setViewabilityTrackPolicy(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityTrackPolicy:I

    return-void
.end method

.method public setViewabilityarguments(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lzf;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzf;

    iget-object v3, v3, Lzf;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/ViewAbilityStats;->viewabilityarguments:Ljava/util/HashMap;

    return-void
.end method
