.class public final Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;
.super Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation<",
        "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOfor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;-><init>(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOfor;)V

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    invoke-direct {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo(F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif<",
            "TK;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;-><init>(Ljava/lang/Object;Lcom/transsion/effectengine/bounceeffect/dynamicanimation/z1OoOif;)V

    new-instance p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    invoke-direct {p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;-><init>()V

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getValueThreshold()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo(F)V

    return-void
.end method


# virtual methods
.method public getAcceleration(FF)F
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    mul-float/2addr p2, p0

    return p2
.end method

.method public getDestination()F
    .locals 3

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    iget-object v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget v2, v2, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    div-float v2, v1, v2

    sub-float/2addr v0, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOif:F

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    div-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method public getDuration()F
    .locals 4

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget v1, v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOif:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    float-to-double v2, p0

    div-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method public getFriction()F
    .locals 1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    const v0, -0x3f79999a    # -4.2f

    div-float/2addr p0, v0

    return p0
.end method

.method public isAtEquilibrium(FF)Z
    .locals 1

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    cmpg-float p1, p1, v0

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOif:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setFriction(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            fromInclusive = false
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    const v1, -0x3f79999a    # -4.2f

    mul-float/2addr p1, v1

    iput p1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Friction must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setMaxValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->setMaxValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMaxValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setMaxValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setMinValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->setMinValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setMinValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setMinValue(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    return-object p0
.end method

.method public bridge synthetic setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;

    move-result-object p0

    return-object p0
.end method

.method public setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;

    return-object p0
.end method

.method public setValueThreshold(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo(F)V

    return-void
.end method

.method public updateValueAndVelocity(J)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->mFlingForce:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    iget-object v3, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    float-to-double v4, v2

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    iget p2, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr p1, v4

    double-to-float p1, p1

    iput p1, v3, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    iget-object p1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    iget p2, p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    sub-float v2, p2, v2

    iget v3, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOdo:F

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOdo:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOif:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget-object p1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    const/4 p2, 0x0

    iput p2, p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    :cond_0
    iget-object p1, v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation$z1OoOdo;->z1OoOfor:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;

    iget p2, p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOdo:F

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget p1, p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;->z1OoOif:F

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    cmpg-float v1, p2, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    return v2

    :cond_1
    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_2

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    return v2

    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/FlingAnimation;->isAtEquilibrium(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
