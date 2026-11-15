.class public final Lqjj;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/ads/internal/overlay/zzu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzu;)V
    .locals 0

    iput-object p1, p0, Lqjj;->b:Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iget-object p0, p0, Lqjj;->b:Lcom/google/android/gms/ads/internal/overlay/zzu;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->a(Lcom/google/android/gms/ads/internal/overlay/zzu;)Landroid/widget/ImageButton;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lqjj;->a(Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lqjj;->a(Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lqjj;->a(Z)V

    return-void
.end method
