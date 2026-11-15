.class public final synthetic Lwr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/CarouselTextView;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/CarouselTextView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwr0;->b:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    iput p2, p0, Lwr0;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lwr0;->b:Lcom/transsion/widgetsliquid/view/CarouselTextView;

    iget p0, p0, Lwr0;->c:F

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetsliquid/view/CarouselTextView;->b(Lcom/transsion/widgetsliquid/view/CarouselTextView;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
