.class public final synthetic Lcom/transsion/wrapperad/view/cardpage/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/wrapperad/view/cardpage/d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/cardpage/d;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;->b(Landroidx/appcompat/widget/AppCompatImageView;Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
