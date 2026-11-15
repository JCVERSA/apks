.class public Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private coverRateScale:F

.field private exposeValidDuration:I

.field private inspectInterval:I

.field private maxDuration:I

.field private maxUploadAmount:I

.field private videoExposeValidDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1d4c0

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->maxDuration:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->exposeValidDuration:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->videoExposeValidDuration:I

    const/16 v0, 0x64

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->inspectInterval:I

    const/16 v0, 0x14

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->maxUploadAmount:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->coverRateScale:F

    return-void
.end method


# virtual methods
.method public getCoverRateScale()F
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->coverRateScale:F

    return p0
.end method

.method public getExposeValidDuration()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->exposeValidDuration:I

    return p0
.end method

.method public getInspectInterval()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->inspectInterval:I

    return p0
.end method

.method public getMaxDuration()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->maxDuration:I

    return p0
.end method

.method public getMaxUploadAmount()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->maxUploadAmount:I

    return p0
.end method

.method public getVideoExposeValidDuration()I
    .locals 0

    iget p0, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->videoExposeValidDuration:I

    return p0
.end method

.method public setCoverRateScale(F)V
    .locals 0

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->coverRateScale:F

    return-void
.end method

.method public setExposeValidDuration(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->exposeValidDuration:I

    return-void
.end method

.method public setInspectInterval(I)V
    .locals 0

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->inspectInterval:I

    return-void
.end method

.method public setMaxDuration(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->maxDuration:I

    return-void
.end method

.method public setMaxUploadAmount(I)V
    .locals 0

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->maxUploadAmount:I

    return-void
.end method

.method public setVideoExposeValidDuration(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcn/com/custommma/mobile/tracking/viewability/origin/sniffer/ViewAbilityConfig;->videoExposeValidDuration:I

    return-void
.end method
