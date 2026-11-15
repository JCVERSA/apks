.class public Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SPEED:Ljava/lang/String; = "2.0"

.field public static final DEFAULT_MAX_SPEED_FLOAT:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "MgtvPlayerSupporter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDeviceSupportMaxSpeed()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHightSpeedEnable()Z

    move-result v0

    const-string v1, "2.0"

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getHEVC1080PMaxFps()I

    move-result v0

    div-int/lit8 v2, v0, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getDeviceSupportMaxSpeed]: hevc_1080p_fps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hevc_1080p_max_speed:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", NetPlayConfig.getPlayMaxSpeedType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPlayMaxSpeedType()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MgtvPlayerSupporter"

    invoke-static {v3, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ge v2, v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPlayMaxSpeedType()I

    move-result v0

    const/4 v3, 0x1

    const-string v4, "3.0"

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x4

    if-lt v2, v0, :cond_2

    const-string v0, "4.0"

    return-object v0

    :cond_2
    return-object v4

    :cond_3
    return-object v1
.end method

.method private static getDeviceSupportMaxSpeedExt(IIFLcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;Z)F
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDeviceSupportMaxSpeedExt]: videoWidth :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " videoHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vfps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " codectype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isAudio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " NetPlayConfig.isHightSpeedEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHightSpeedEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " NetPlayConfig.getPlayMaxSpeedType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPlayMaxSpeedType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MgtvPlayerSupporter"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->isHightSpeedEnable()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    if-eqz p4, :cond_3

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPlayMaxSpeedType()I

    move-result p0

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    return v4

    :cond_3
    const/4 p4, 0x0

    cmpg-float p4, p2, p4

    if-gtz p4, :cond_4

    return v1

    :cond_4
    sget-object p4, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->HEVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    if-eq p3, p4, :cond_6

    sget-object v5, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;->AVC:Lcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;

    if-ne p3, v5, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/16 p1, 0x438

    if-le p0, p1, :cond_8

    if-ne p3, p4, :cond_7

    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getHEVC4KMaxFps()I

    move-result p0

    :goto_1
    int-to-float p0, p0

    div-float/2addr p0, p2

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getAVC4KMaxFps()I

    move-result p0

    goto :goto_1

    :cond_8
    if-ne p3, p4, :cond_9

    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getHEVC1080PMaxFps()I

    move-result p0

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/hunantv/media/global/MgtvPlayerCapabilities;->getAVC1080PMaxFps()I

    move-result p0

    goto :goto_1

    :goto_2
    cmpg-float p1, p0, v4

    if-gez p1, :cond_a

    return v1

    :cond_a
    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfig;->getPlayMaxSpeedType()I

    move-result p1

    if-eq p1, v2, :cond_c

    if-eq p1, v0, :cond_b

    return v1

    :cond_b
    cmpl-float p0, p0, v3

    if-ltz p0, :cond_c

    return v3

    :cond_c
    return v4
.end method

.method public static getMaxSpeed()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;->getDeviceSupportMaxSpeed()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MgtvPlayerSupporter"

    invoke-static {v2, v1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMaxSpeedExt(IIFLcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;Z)F
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/hunantv/media/player/helper/MgtvPlayerSupporter;->getDeviceSupportMaxSpeedExt(IIFLcom/hunantv/media/player/helper/MgtvPlayerSupporter$CODECTYPE;Z)F

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "chodison getMaxSpeedExt: maxSpeed :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MgtvPlayerSupporter"

    invoke-static {p2, p1}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getMinSpeed()Ljava/lang/String;
    .locals 1

    const-string v0, "0.25"

    return-object v0
.end method
