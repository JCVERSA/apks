.class public final Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;,
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->a(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCurrentAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->b()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentFraction()F
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->c()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCurrentInsets()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->d()Lz0/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getHiddenStateInsets()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->e()Lz0/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getShownStateInsets()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->f()Lz0/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTypes()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFinished()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->i()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isFinished()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isCancelled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public setInsetsAndAlpha(Lz0/c;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->j(Lz0/c;FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
