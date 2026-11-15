.class Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgets/CustomFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgets/CustomFastScroller;


# direct methods
.method public constructor <init>(Lcom/transsion/widgets/CustomFastScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x434c0000    # 204.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    iget-object v0, v0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    iget-object v0, v0, Lcom/transsion/widgets/CustomFastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Lcom/transsion/widgets/CustomFastScroller$AnimatorUpdater;->this$0:Lcom/transsion/widgets/CustomFastScroller;

    invoke-virtual {p0}, Lcom/transsion/widgets/CustomFastScroller;->requestRedraw()V

    return-void
.end method
