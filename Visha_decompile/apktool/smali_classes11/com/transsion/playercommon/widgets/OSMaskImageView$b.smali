.class public Lcom/transsion/playercommon/widgets/OSMaskImageView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/widgets/OSMaskImageView;->i()V
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

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$b;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$b;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-static {v0}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->e(Lcom/transsion/playercommon/widgets/OSMaskImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$b;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/playercommon/widgets/OSMaskImageView;->f(Lcom/transsion/playercommon/widgets/OSMaskImageView;I)V

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/OSMaskImageView$b;->b:Lcom/transsion/playercommon/widgets/OSMaskImageView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
