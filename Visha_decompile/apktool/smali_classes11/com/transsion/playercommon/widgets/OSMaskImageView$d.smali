.class public Lcom/transsion/playercommon/widgets/OSMaskImageView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/OSMaskImageView;->k()V
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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$d;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$d;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$d;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method
