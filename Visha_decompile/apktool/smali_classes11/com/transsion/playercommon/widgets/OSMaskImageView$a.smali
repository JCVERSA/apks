.class public Lcom/transsion/playercommon/widgets/OSMaskImageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/OSMaskImageView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/widgets/OSMaskImageView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/OSMaskImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->d(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v2}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$a;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
