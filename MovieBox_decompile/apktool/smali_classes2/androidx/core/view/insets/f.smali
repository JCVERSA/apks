.class Landroidx/core/view/insets/f;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/f$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/ArrayList;

.field private c:Lz0/c;

.field private d:Lz0/c;

.field private e:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 12
    .line 13
    iput-object v0, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    .line 14
    .line 15
    iput-object v0, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v0, v2

    .line 34
    :goto_0
    iput v0, p0, Landroidx/core/view/insets/f;->e:I

    .line 35
    .line 36
    new-instance v0, Landroidx/core/view/insets/f$a;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, p0, v1, p1}, Landroidx/core/view/insets/f$a;-><init>(Landroidx/core/view/insets/f;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Landroidx/core/view/insets/d;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Landroidx/core/view/insets/d;-><init>(Landroidx/core/view/insets/f;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 57
    .line 58
    .line 59
    new-instance v1, Landroidx/core/view/insets/f$b;

    .line 60
    .line 61
    invoke-direct {v1, p0, v2}, Landroidx/core/view/insets/f$b;-><init>(Landroidx/core/view/insets/f;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static synthetic a(Landroidx/core/view/insets/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/view/insets/f;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/core/view/insets/f;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/insets/f;->m(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic c(Landroidx/core/view/insets/f;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/view/insets/f;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Landroidx/core/view/insets/f;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/insets/f;->e:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic e(Landroidx/core/view/insets/f;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Landroidx/core/view/insets/f;Landroidx/core/view/WindowInsetsCompat;)Lz0/c;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/f;->i(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private i(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lz0/c;->b(Lz0/c;Lz0/c;)Lz0/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private j(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;
    .locals 2

    .line 1
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->tappableElement()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsetsIgnoringVisibility(I)Lz0/c;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lz0/c;->b(Lz0/c;Lz0/c;)Lz0/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private synthetic l()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroid/view/ViewGroup;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private synthetic m(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroidx/core/view/insets/f;->i(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p2}, Landroidx/core/view/insets/f;->j(Landroidx/core/view/WindowInsetsCompat;)Lz0/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    :goto_0
    if-ltz v1, :cond_1

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Landroidx/core/view/insets/f$c;

    .line 46
    .line 47
    invoke-interface {v2, p1, v0}, Landroidx/core/view/insets/f$c;->c(Lz0/c;Lz0/c;)V

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-object p2
.end method


# virtual methods
.method g(Landroidx/core/view/insets/f$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/core/view/insets/f;->c:Lz0/c;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/core/view/insets/f;->d:Lz0/c;

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Landroidx/core/view/insets/f$c;->c(Lz0/c;Lz0/c;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, Landroidx/core/view/insets/f;->e:I

    .line 23
    .line 24
    invoke-interface {p1, v0}, Landroidx/core/view/insets/f$c;->e(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method h()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/f;->a:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Landroidx/core/view/insets/e;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/core/view/insets/e;-><init>(Landroidx/core/view/insets/f;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method n(Landroidx/core/view/insets/f$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/f;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
