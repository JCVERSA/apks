.class public Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;,
        Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;
    }
.end annotation


# instance fields
.field public A:F

.field public B:F

.field public C:Ljv9;

.field public D:Ljv9;

.field public E:I

.field public F:Z

.field public G:Ljava/lang/Runnable;

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public final b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public final h:F

.field public final i:F

.field public j:F

.field public k:F

.field public final l:F

.field public final m:F

.field public final n:Lfz3;

.field public final o:F

.field public p:Ljava/lang/ref/WeakReference;

.field public q:F

.field public r:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

.field public s:Landroid/view/View$OnTouchListener;

.field public t:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

.field public u:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Landroid/os/Handler;

.field public z:Z


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->F:Z

    .line 5
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->I:Z

    .line 6
    iput-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->J:Z

    .line 7
    iput-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->K:Z

    .line 8
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->t(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b:F

    .line 9
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->j(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    .line 10
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->h(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->g:F

    .line 11
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->i(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->i:F

    .line 12
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->r(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->f:F

    .line 13
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->s(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->h:F

    .line 14
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->b(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->j:F

    .line 15
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->c(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->l:F

    .line 16
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->f(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->k:F

    .line 17
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->g(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v4

    iput v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->m:F

    .line 18
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->k(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Lfz3;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->n:Lfz3;

    .line 19
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->v(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->o:F

    .line 20
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->w(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    .line 21
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->a(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->r:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    .line 22
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->o(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Landroid/view/View$OnTouchListener;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->s:Landroid/view/View$OnTouchListener;

    .line 23
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->m(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->t:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    .line 24
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->n(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    move-result-object v5

    iput-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->u:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    .line 25
    iget-boolean v5, p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->a:Z

    iput-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->v:Z

    .line 26
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->d(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)I

    move-result v5

    iput v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->E:I

    .line 27
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->p(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->F:Z

    .line 28
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->l(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->w:Z

    .line 29
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->q(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->x:Z

    .line 30
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->e(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->H:Z

    .line 31
    iget-object v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    .line 32
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->u(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 33
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;->u(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)F

    move-result p1

    float-to-int p1, p1

    :goto_0
    invoke-static {p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->r(I)I

    move-result p1

    int-to-float p1, p1

    goto :goto_1

    :cond_0
    const/16 p1, 0x14

    goto :goto_0

    :goto_1
    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->q:F

    .line 34
    :cond_1
    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d:F

    .line 35
    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    .line 36
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 37
    iget-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 38
    sget-boolean v0, Lolb;->E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->v:Z

    if-eqz v0, :cond_3

    .line 39
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lolb;->r0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 41
    :cond_3
    new-instance v0, Lib7;

    invoke-direct {v0, p0}, Lib7;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :goto_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->y:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;

    invoke-direct {v0, p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$DelayCallback;-><init>(Landroid/view/View;Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->G:Ljava/lang/Runnable;

    .line 44
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->w:Z

    if-eqz p1, :cond_5

    .line 45
    iput v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->j:F

    .line 46
    iput v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->k:F

    .line 47
    iput v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->f:F

    .line 48
    iput v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->g:F

    :cond_5
    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;Ljb7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$e;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->t(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljv9;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->D:Ljv9;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->t:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$f;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->u:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$g;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b:F

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)Ljv9;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    return-void
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d:F

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->I:Z

    return-void
.end method

.method public static bridge synthetic n(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;Ljv9;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    return-void
.end method

.method public static bridge synthetic o(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;FF)Ljv9;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->q(FF)Ljv9;

    move-result-object p0

    return-object p0
.end method

.method public static r(I)I
    .locals 2

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public getEndValue()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->s:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->J:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->x:Z

    if-nez p0, :cond_1

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->I:Z

    if-nez v0, :cond_15

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->A:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->B:F

    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->H:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    iget-boolean v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->w:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Ldmb;->b(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ldmb;->c(F)F

    move-result v3

    iput v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    :goto_0
    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    iput v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DOWN: dynamic mEndValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", area="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isLiquid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->w:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OSSpringPressSealAnimat"

    invoke-static {v3, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->E:I

    if-lez v0, :cond_5

    iget-object v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->y:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->G:Ljava/lang/Runnable;

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->D:Ljv9;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->D:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_6
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->q(FF)Ljv9;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    invoke-virtual {v0}, Ljv9;->p()V

    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->r:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {v0, p1, v2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;->onClick(Landroid/view/View;Z)V

    :cond_7
    iput-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v2, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_9

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_15

    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->F:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->x:Z

    if-nez p0, :cond_a

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_a

    move v1, v2

    :cond_a
    return v1

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_c

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->s(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->E:I

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->y:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_e
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_15

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p(FF)Ljv9;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->D:Ljv9;

    invoke-virtual {v0}, Ljv9;->p()V

    goto :goto_3

    :cond_f
    :goto_2
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->E:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->y:Landroid/os/Handler;

    iget-object v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->K:Z

    if-nez v0, :cond_11

    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->K:Z

    goto :goto_3

    :cond_11
    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    if-nez v0, :cond_14

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_12

    iput-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->C:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_13
    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->d:F

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->b:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_14

    iget v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p(FF)Ljv9;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->D:Ljv9;

    invoke-virtual {v0}, Ljv9;->p()V

    :cond_14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->r:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-boolean v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->z:Z

    if-nez v3, :cond_15

    invoke-interface {v0, p1, v1}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;->onClick(Landroid/view/View;Z)V

    :cond_15
    :goto_3
    iget-boolean p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->x:Z

    if-nez p0, :cond_16

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_16

    move v1, v2

    :cond_16
    return v1
.end method

.method public final p(FF)Ljv9;
    .locals 6

    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->g:F

    iget-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->H:Z

    const-string v2, "OSSpringPressSealAnimat"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-static {v1}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ldmb;->d(F)F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createEndAnimation: dynamic param enabled, area="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", stiffness="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", view size="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createEndAnimation: use default param, stiffness="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", enableDynamic="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->H:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    invoke-virtual {v1, v0}, Lkv9;->i(F)Lkv9;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->k:F

    invoke-virtual {v0, v1}, Lkv9;->g(F)Lkv9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lkv9;->h(F)Lkv9;

    new-instance p2, Ljv9;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->n:Lfz3;

    invoke-direct {p2, v1}, Ljv9;-><init>(Lfz3;)V

    invoke-virtual {p2, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {p2, p1}, Lf43;->m(F)Lf43;

    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->o:F

    invoke-virtual {p2, p1}, Lf43;->n(F)Lf43;

    const p1, 0x3b03126f    # 0.002f

    invoke-virtual {p2, p1}, Lf43;->k(F)Lf43;

    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$c;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Lf43;->b(Lf43$r;)Lf43;

    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$d;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Lf43;->a(Lf43$q;)Lf43;

    return-object p2
.end method

.method public final q(FF)Ljv9;
    .locals 8

    iget v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->f:F

    iget-boolean v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->H:Z

    const-string v2, ", finalPosition="

    const-string v3, "OSSpringPressSealAnimat"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ldmb;->a(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ldmb;->d(F)F

    move-result v4

    iget-boolean v5, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->w:Z

    if-eqz v5, :cond_0

    invoke-static {v0}, Ldmb;->b(F)F

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ldmb;->c(F)F

    move-result v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createStartAnimation: dynamic param enabled, area="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", stiffness="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isLiquid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->w:Z

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", endValue="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", view size="

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    move p2, v5

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createStartAnimation: use default param, stiffness="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", enableDynamic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v1, Lkv9;

    invoke-direct {v1}, Lkv9;-><init>()V

    invoke-virtual {v1, v0}, Lkv9;->i(F)Lkv9;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->j:F

    invoke-virtual {v0, v1}, Lkv9;->g(F)Lkv9;

    move-result-object v0

    invoke-virtual {v0, p2}, Lkv9;->h(F)Lkv9;

    new-instance p2, Ljv9;

    iget-object v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->n:Lfz3;

    invoke-direct {p2, v1}, Ljv9;-><init>(Lfz3;)V

    invoke-virtual {p2, v0}, Ljv9;->z(Lkv9;)Ljv9;

    invoke-virtual {p2, p1}, Lf43;->m(F)Lf43;

    iget p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->o:F

    invoke-virtual {p2, p1}, Lf43;->n(F)Lf43;

    const p1, 0x3b03126f    # 0.002f

    invoke-virtual {p2, p1}, Lf43;->k(F)Lf43;

    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$a;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Lf43;->b(Lf43$r;)Lf43;

    new-instance p1, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$b;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$b;-><init>(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;)V

    invoke-virtual {p2, p1}, Lf43;->a(Lf43$q;)Lf43;

    return-object p2
.end method

.method public final s(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->A:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v4, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->B:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->q:F

    float-to-double p0, p0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setEndValue(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->c:F

    iput p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->e:F

    return-void
.end method

.method public setOnSpringClickListener(Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->r:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    return-void
.end method

.method public final synthetic t(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->r:Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation$h;->onClick(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/anim/OSSpringPressSealAnimation;->J:Z

    return-void
.end method
