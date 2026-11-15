.class Landroidx/core/view/insets/Protection$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/insets/Protection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/insets/Protection$a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lz0/c;

.field private d:Z

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroidx/core/view/insets/Protection$a$a;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    .line 8
    .line 9
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 10
    .line 11
    iput-object v0, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/core/view/insets/Protection$a;->e:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Landroidx/core/view/insets/Protection$a;->f:F

    .line 21
    .line 22
    iput v0, p0, Landroidx/core/view/insets/Protection$a;->g:F

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    iput v0, p0, Landroidx/core/view/insets/Protection$a;->h:F

    .line 27
    .line 28
    return-void
.end method

.method private A(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/core/view/insets/Protection$a;->a:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->d(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/core/view/insets/Protection$a;Lz0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->w(Lz0/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Landroidx/core/view/insets/Protection$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->A(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Landroidx/core/view/insets/Protection$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->v(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Landroidx/core/view/insets/Protection$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->z(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Landroidx/core/view/insets/Protection$a;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->s(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Landroidx/core/view/insets/Protection$a;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Landroidx/core/view/insets/Protection$a;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->x(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Landroidx/core/view/insets/Protection$a;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Landroidx/core/view/insets/Protection$a;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->y(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Landroidx/core/view/insets/Protection$a;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/insets/Protection$a;->u(Landroid/graphics/drawable/Drawable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private s(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->h:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroidx/core/view/insets/Protection$a;->h:F

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->c(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private u(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/core/view/insets/Protection$a;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->g(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private v(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/core/view/insets/Protection$a;->b:I

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private w(Lz0/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz0/c;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->b(Lz0/c;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method private x(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->f:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroidx/core/view/insets/Protection$a;->f:F

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->e(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private y(F)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->g:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Landroidx/core/view/insets/Protection$a;->g:F

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->f(F)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private z(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroidx/core/view/insets/Protection$a$a;->onVisibilityChanged(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method k()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->h:F

    .line 2
    .line 3
    return v0
.end method

.method l()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->e:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method m()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method n()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->c:Lz0/c;

    .line 2
    .line 3
    return-object v0
.end method

.method o()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->f:F

    .line 2
    .line 3
    return v0
.end method

.method p()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->g:F

    .line 2
    .line 3
    return v0
.end method

.method q()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/view/insets/Protection$a;->a:I

    .line 2
    .line 3
    return v0
.end method

.method r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/core/view/insets/Protection$a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method t(Landroidx/core/view/insets/Protection$a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/core/view/insets/Protection$a;->i:Landroidx/core/view/insets/Protection$a$a;

    .line 17
    .line 18
    return-void
.end method
