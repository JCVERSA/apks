.class public final synthetic Lpl4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/graphics/drawable/GradientDrawable;

.field public final synthetic e:Landroid/animation/ArgbEvaluator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ArgbEvaluator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpl4;->b:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lpl4;->c:Landroid/view/View;

    iput-object p3, p0, Lpl4;->d:Landroid/graphics/drawable/GradientDrawable;

    iput-object p4, p0, Lpl4;->e:Landroid/animation/ArgbEvaluator;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lpl4;->b:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lpl4;->c:Landroid/view/View;

    iget-object v2, p0, Lpl4;->d:Landroid/graphics/drawable/GradientDrawable;

    iget-object p0, p0, Lpl4;->e:Landroid/animation/ArgbEvaluator;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/cloud/hisavana/sdk/common/util/HSCommonUtils;->a(Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/graphics/drawable/GradientDrawable;Landroid/animation/ArgbEvaluator;Landroid/animation/ValueAnimator;)V

    return-void
.end method
