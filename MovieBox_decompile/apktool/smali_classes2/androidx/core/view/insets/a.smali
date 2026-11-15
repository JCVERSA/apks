.class public final synthetic Landroidx/core/view/insets/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/insets/Protection;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/Protection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/core/view/insets/a;->a:Landroidx/core/view/insets/Protection;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/a;->a:Landroidx/core/view/insets/Protection;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/core/view/insets/Protection;->b(Landroidx/core/view/insets/Protection;Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
