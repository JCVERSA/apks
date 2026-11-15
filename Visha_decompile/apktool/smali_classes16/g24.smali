.class public final Lg24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/animation/ValueAnimator;

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "animator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg24;->a:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lg24;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lg24;->b:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lg24;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 1

    iget-boolean v0, p0, Lg24;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lg24;->b:Z

    iget-object p0, p0, Lg24;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method public final getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lg24;->a:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final setReversed(Z)V
    .locals 0

    iput-boolean p1, p0, Lg24;->b:Z

    return-void
.end method
