.class public Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->u(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$b;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

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

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$b;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->p(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$b;->b:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->s(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;)V

    :cond_0
    return-void
.end method
