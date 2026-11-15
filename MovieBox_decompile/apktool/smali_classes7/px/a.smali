.class public final synthetic Lpx/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/transsnet/login/widget/LoginProgressBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/login/widget/LoginProgressBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpx/a;->a:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpx/a;->a:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/transsnet/login/widget/LoginProgressBar;->b(Lcom/transsnet/login/widget/LoginProgressBar;Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
