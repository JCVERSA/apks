.class public final synthetic Lcb7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/OSSegmentedTab;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb7;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    iput p2, p0, Lcb7;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcb7;->b:Lcom/transsion/widgetslib/widget/OSSegmentedTab;

    iget p0, p0, Lcb7;->c:F

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetslib/widget/OSSegmentedTab;->e(Lcom/transsion/widgetslib/widget/OSSegmentedTab;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
