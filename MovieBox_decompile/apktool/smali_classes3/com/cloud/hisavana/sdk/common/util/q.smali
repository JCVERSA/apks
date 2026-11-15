.class public final synthetic Lcom/cloud/hisavana/sdk/common/util/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic d:Landroid/animation/ArgbEvaluator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ArgbEvaluator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/q;->a:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/q;->b:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/util/q;->c:Landroid/graphics/drawable/GradientDrawable;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/util/q;->d:Landroid/animation/ArgbEvaluator;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/q;->a:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/util/q;->b:Landroid/view/View;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/util/q;->c:Landroid/graphics/drawable/GradientDrawable;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/util/q;->d:Landroid/animation/ArgbEvaluator;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/cloud/hisavana/sdk/common/util/r;->a(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ArgbEvaluator;Landroid/animation/ValueAnimator;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
