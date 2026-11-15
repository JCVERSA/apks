.class public Lcom/google/android/material/internal/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/internal/q$a;

.field private final b:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/q$a;Ljava/util/Collection;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/android/material/internal/q;->a:Lcom/google/android/material/internal/q$a;

    const/4 p1, 0x0

    .line 6
    new-array p1, p1, [Landroid/view/View;

    invoke-interface {p2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/internal/q;->b:[Landroid/view/View;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/material/internal/q;->a:Lcom/google/android/material/internal/q$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/material/internal/q;->b:[Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->i(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->k(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->h(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/material/internal/q;->j(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Ljava/util/Collection;)Lcom/google/android/material/internal/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/q;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/internal/p;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/material/internal/p;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static varargs f([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/q;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/internal/p;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/material/internal/p;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static varargs g([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/q;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/internal/o;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/material/internal/o;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static h(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static i(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static j(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static k(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static l(Ljava/util/Collection;)Lcom/google/android/material/internal/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/q;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/internal/m;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/material/internal/m;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static varargs m([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/q;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/internal/m;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/material/internal/m;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static varargs n([Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/internal/q;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/material/internal/n;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/android/material/internal/n;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;[Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/internal/q;->b:[Landroid/view/View;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/material/internal/q;->a:Lcom/google/android/material/internal/q$a;

    .line 10
    .line 11
    invoke-interface {v4, p1, v3}, Lcom/google/android/material/internal/q$a;->a(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method
