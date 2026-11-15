.class public final Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;
.super Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/effectengine/bounceeffect/z1OoOif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z1OoOdo"
.end annotation


# instance fields
.field public final synthetic z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;


# direct methods
.method public constructor <init>(Lcom/transsion/effectengine/bounceeffect/z1OoOif;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;-><init>()V

    return-void
.end method


# virtual methods
.method public final z1OoOdo(Landroid/view/View;Landroid/view/MotionEvent;Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOif;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aget v3, v0, v1

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    const/4 v4, 0x1

    aget v0, v0, v4

    int-to-float v0, v0

    add-float/2addr p2, v0

    add-float/2addr p2, v3

    float-to-int p2, p2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    iget v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    const-string v5, "BounceEffect"

    const v6, 0x7fffffff

    if-eq v3, v6, :cond_a

    iget v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    if-ne v3, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v3, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    sub-int v3, v2, v3

    iget v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    sub-int v0, p2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-gt v6, v7, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v7, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v5, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    iput v2, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput p2, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iget-object p2, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    const/4 v6, 0x0

    if-eq p2, p3, :cond_3

    iget-object p2, v5, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mBounceBackState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOdo;

    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le p2, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    iget p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOnew:F

    int-to-float p1, v3

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_4

    move v1, v4

    :cond_4
    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    return v4

    :cond_5
    iget-boolean p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    if-nez p2, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    iget v0, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mTouchSlop:I

    if-le p2, v0, :cond_6

    if-eqz v3, :cond_6

    iput-boolean v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    iget p2, p2, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    sub-int/2addr v2, p2

    int-to-float p2, v2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOnew:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOdo:F

    int-to-float p1, v3

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOif:F

    cmpl-float p1, p1, v6

    if-lez p1, :cond_7

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOtry:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/effectengine/bounceeffect/z1OoOif$z1OoOdo;->z1OoOcase:Lcom/transsion/effectengine/bounceeffect/z1OoOif;

    iget-object p1, p1, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mIdleState:Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOfor;

    if-ne p1, p3, :cond_8

    iget-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoObyte:Z

    iput-boolean p1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOint:Z

    :cond_8
    return v1

    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "current move distance exception need abandon dx="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dy="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    :goto_5
    iput v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchX:I

    iput v2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchX:I

    iput p2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mLastTouchY:I

    iput p2, v0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase;->mInitialTouchY:I

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/OverScrollBounceEffectDecoratorBase$z1OoOint;->z1OoOfor:Z

    const-string p0, "touch move but not down yet"

    goto :goto_4
.end method
