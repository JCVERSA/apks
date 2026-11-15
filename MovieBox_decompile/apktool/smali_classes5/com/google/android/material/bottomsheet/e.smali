.class Lcom/google/android/material/bottomsheet/e;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "source.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private final d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/material/bottomsheet/e;->d:[I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Landroid/view/View;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/e;->d:[I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->d:[I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    iput p1, p0, Lcom/google/android/material/bottomsheet/e;->b:I

    .line 14
    .line 15
    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    and-int/2addr v1, v2

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget p2, p0, Lcom/google/android/material/bottomsheet/e;->c:I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p2, v1, v0}, Lqa/a;->c(IIF)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    int-to-float p2, p2

    .line 40
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/e;->a:Landroid/view/View;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/material/bottomsheet/e;->d:[I

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->d:[I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    aget p1, p1, v0

    .line 12
    .line 13
    iget v0, p0, Lcom/google/android/material/bottomsheet/e;->b:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    iput v0, p0, Lcom/google/android/material/bottomsheet/e;->c:I

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/e;->a:Landroid/view/View;

    .line 19
    .line 20
    int-to-float v0, v0

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method
