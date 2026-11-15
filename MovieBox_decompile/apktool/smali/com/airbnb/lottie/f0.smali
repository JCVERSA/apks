.class public final synthetic Lcom/airbnb/lottie/f0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/f0;->a:Lcom/airbnb/lottie/LottieDrawable;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/f0;->a:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->h(Lcom/airbnb/lottie/LottieDrawable;Landroid/animation/ValueAnimator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
