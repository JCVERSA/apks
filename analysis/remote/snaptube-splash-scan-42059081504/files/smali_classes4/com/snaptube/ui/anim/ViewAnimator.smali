.class public Lcom/snaptube/ui/anim/ViewAnimator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/ui/anim/ViewAnimator$RepeatMode;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public b:J

.field public c:J

.field public d:Landroid/view/animation/Interpolator;

.field public e:I

.field public f:I

.field public g:Landroid/animation/AnimatorSet;

.field public h:Landroid/view/View;

.field public i:Lo/dj;

.field public j:Lo/ej;

.field public k:Lcom/snaptube/ui/anim/ViewAnimator;

.field public l:Lcom/snaptube/ui/anim/ViewAnimator;

.field public m:Lo/x24;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->a:Ljava/util/List;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->b:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->d:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    iput v1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->e:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->f:I

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->h:Landroid/view/View;

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->k:Lcom/snaptube/ui/anim/ViewAnimator;

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->l:Lcom/snaptube/ui/anim/ViewAnimator;

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->m:Lo/x24;

    return-void
.end method

.method public static synthetic a(Lcom/snaptube/ui/anim/ViewAnimator;Lo/x24;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/ui/anim/ViewAnimator;->p(Lo/x24;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/snaptube/ui/anim/ViewAnimator;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->g:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/snaptube/ui/anim/ViewAnimator;)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->l:Lcom/snaptube/ui/anim/ViewAnimator;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/snaptube/ui/anim/ViewAnimator;)Lo/dj;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->i:Lo/dj;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/snaptube/ui/anim/ViewAnimator;)Lo/ej;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->j:Lo/ej;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/snaptube/ui/anim/ViewAnimator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->h:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/snaptube/ui/anim/ViewAnimator;Lcom/snaptube/ui/anim/ViewAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->k:Lcom/snaptube/ui/anim/ViewAnimator;

    return-void
.end method

.method public static varargs i([Landroid/view/View;)Lo/bj;
    .locals 1

    new-instance v0, Lcom/snaptube/ui/anim/ViewAnimator;

    invoke-direct {v0}, Lcom/snaptube/ui/anim/ViewAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/snaptube/ui/anim/ViewAnimator;->h([Landroid/view/View;)Lo/bj;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public varargs h([Landroid/view/View;)Lo/bj;
    .locals 1

    new-instance v0, Lo/bj;

    invoke-direct {v0, p0, p1}, Lo/bj;-><init>(Lcom/snaptube/ui/anim/ViewAnimator;[Landroid/view/View;)V

    iget-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public j(Lo/x24;)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->m:Lo/x24;

    return-object p0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->g:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->l:Lcom/snaptube/ui/anim/ViewAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/ui/anim/ViewAnimator;->k()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->l:Lcom/snaptube/ui/anim/ViewAnimator;

    :cond_1
    return-void
.end method

.method public l()Landroid/animation/AnimatorSet;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/bj;

    invoke-virtual {v2}, Lo/bj;->e()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lo/bj;->g()Landroid/view/animation/Interpolator;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    invoke-virtual {v2}, Lo/bj;->g()Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/bj;

    invoke-virtual {v2}, Lo/bj;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lo/bj;->i()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->h:Landroid/view/View;

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    instance-of v3, v2, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4

    check-cast v2, Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/snaptube/ui/anim/ViewAnimator;->e:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget v3, p0, Lcom/snaptube/ui/anim/ViewAnimator;->f:I

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-wide v2, p0, Lcom/snaptube/ui/anim/ViewAnimator;->b:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/snaptube/ui/anim/ViewAnimator;->c:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_6
    new-instance v0, Lcom/snaptube/ui/anim/ViewAnimator$a;

    invoke-direct {v0, p0}, Lcom/snaptube/ui/anim/ViewAnimator$a;-><init>(Lcom/snaptube/ui/anim/ViewAnimator;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1
.end method

.method public m(J)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iput-wide p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->b:J

    return-object p0
.end method

.method public n(Landroid/view/animation/Interpolator;)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->d:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public o()Z
    .locals 4

    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->g:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/snaptube/ui/anim/ViewAnimator;->l:Lcom/snaptube/ui/anim/ViewAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/snaptube/ui/anim/ViewAnimator;->o()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final synthetic p(Lo/x24;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/ui/anim/ViewAnimator;->k()V

    :cond_0
    return-void
.end method

.method public q(Lo/dj;)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->i:Lo/dj;

    return-object p0
.end method

.method public r(Lo/ej;)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->j:Lo/ej;

    return-object p0
.end method

.method public s()Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 2

    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->k:Lcom/snaptube/ui/anim/ViewAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/snaptube/ui/anim/ViewAnimator;->s()Lcom/snaptube/ui/anim/ViewAnimator;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/ui/anim/ViewAnimator;->l()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->g:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->h:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/snaptube/ui/anim/ViewAnimator$b;

    invoke-direct {v1, p0}, Lcom/snaptube/ui/anim/ViewAnimator$b;-><init>(Lcom/snaptube/ui/anim/ViewAnimator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    iget-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->m:Lo/x24;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/x24;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lo/wv8;

    invoke-direct {v1, p0}, Lo/wv8;-><init>(Lcom/snaptube/ui/anim/ViewAnimator;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Lo/w24;)V

    :cond_2
    return-object p0
.end method

.method public t(J)Lcom/snaptube/ui/anim/ViewAnimator;
    .locals 0

    iput-wide p1, p0, Lcom/snaptube/ui/anim/ViewAnimator;->c:J

    return-object p0
.end method

.method public varargs u([Landroid/view/View;)Lo/bj;
    .locals 1

    new-instance v0, Lcom/snaptube/ui/anim/ViewAnimator;

    invoke-direct {v0}, Lcom/snaptube/ui/anim/ViewAnimator;-><init>()V

    iput-object v0, p0, Lcom/snaptube/ui/anim/ViewAnimator;->l:Lcom/snaptube/ui/anim/ViewAnimator;

    iput-object p0, v0, Lcom/snaptube/ui/anim/ViewAnimator;->k:Lcom/snaptube/ui/anim/ViewAnimator;

    invoke-virtual {v0, p1}, Lcom/snaptube/ui/anim/ViewAnimator;->h([Landroid/view/View;)Lo/bj;

    move-result-object p1

    return-object p1
.end method
