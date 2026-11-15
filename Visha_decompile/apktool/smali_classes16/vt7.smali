.class public Lvt7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvt7$b;
    }
.end annotation


# static fields
.field public static final e:Landroid/view/animation/Interpolator;


# instance fields
.field public a:I

.field public final b:Lvt7$b;

.field public c:Landroid/animation/TimeInterpolator;

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvt7$a;

    invoke-direct {v0}, Lvt7$a;-><init>()V

    sput-object v0, Lvt7;->e:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lvt7;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lvt7;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lvt7;->e:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lvt7;->c:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 5
    :cond_0
    iput-object p2, p0, Lvt7;->c:Landroid/animation/TimeInterpolator;

    .line 6
    :goto_0
    iput-boolean p3, p0, Lvt7;->d:Z

    .line 7
    new-instance p2, Lvt7$b;

    invoke-direct {p2, p1}, Lvt7$b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lvt7;->b:Lvt7$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0}, Lvt7$b;->o()V

    return-void
.end method

.method public b()Z
    .locals 6

    invoke-virtual {p0}, Lvt7;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lvt7;->a:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {v0}, Lvt7$b;->e(Lvt7$b;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {v0}, Lvt7$b;->C()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {v0}, Lvt7$b;->n()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0}, Lvt7$b;->o()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lvt7;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {v0}, Lvt7$b;->h(Lvt7$b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {v0}, Lvt7$b;->c(Lvt7$b;)I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    iget-object v4, p0, Lvt7;->c:Landroid/animation/TimeInterpolator;

    long-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-interface {v4, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0, v0}, Lvt7$b;->D(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lvt7;->a()V

    :cond_5
    :goto_0
    return v1
.end method

.method public c(IIIII)V
    .locals 6

    iget-boolean v0, p0, Lvt7;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lvt7;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {v0}, Lvt7$b;->a(Lvt7$b;)F

    move-result v0

    int-to-float v1, p2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    add-float/2addr v1, v0

    float-to-int p2, v1

    :cond_0
    move v2, p2

    const/4 p2, 0x1

    iput p2, p0, Lvt7;->a:I

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lvt7$b;->p(IIIII)V

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->e(Lvt7$b;)Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {v0}, Lvt7$b;->i(Lvt7$b;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lvt7;->d()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0}, Lvt7$b;->x()V

    return-void
.end method

.method public g(III)Z
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lvt7;->a:I

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0, p1, p2, p3}, Lvt7$b;->y(III)Z

    move-result p0

    return p0
.end method

.method public final getCurrPos()I
    .locals 2

    iget-object v0, p0, Lvt7;->b:Lvt7$b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvt7$b;->k(Lvt7$b;Z)V

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->b(Lvt7$b;)I

    move-result p0

    return p0
.end method

.method public getCurrVelocity()F
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->a(Lvt7$b;)F

    move-result p0

    return p0
.end method

.method public final getDuration()I
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->c(Lvt7$b;)I

    move-result p0

    return p0
.end method

.method public final getFinalPos()I
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->d(Lvt7$b;)I

    move-result p0

    return p0
.end method

.method public getScroller()Lvt7$b;
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    return-object p0
.end method

.method public final getStartPos()I
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-static {p0}, Lvt7$b;->g(Lvt7$b;)I

    move-result p0

    return p0
.end method

.method public h(III)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lvt7;->a:I

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0, p1, p2, p3}, Lvt7$b;->z(III)V

    return-void
.end method

.method public setFinalPos(I)V
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0, p1}, Lvt7$b;->v(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 0

    iget-object p0, p0, Lvt7;->b:Lvt7$b;

    invoke-virtual {p0, p1}, Lvt7$b;->w(F)V

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lvt7;->e:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lvt7;->c:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lvt7;->c:Landroid/animation/TimeInterpolator;

    :goto_0
    return-void
.end method
