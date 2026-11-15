.class public Lcom/transsion/widgetslistitemlayout/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslistitemlayout/a$e;
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "a"


# instance fields
.field public a:I

.field public final b:Ljava/util/List;

.field public final c:Landroid/content/Context;

.field public d:Z

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/a;->b:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/a;->d:Z

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/a;->c:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslistitemlayout/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/a;->b:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslistitemlayout/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/a;->e:Z

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslistitemlayout/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/a;->d:Z

    return-void
.end method

.method public static bridge synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslistitemlayout/a;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public e(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/a;->g(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/a;->a:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/a;->d:Z

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/a;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/a;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/a;->d:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/a;->g(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/a;->a:I

    const/4 v0, 0x0

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Lp97;

    invoke-direct {v0}, Lp97;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/transsion/widgetslistitemlayout/a$c;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/a$c;-><init>(Lcom/transsion/widgetslistitemlayout/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    new-instance p2, Lcom/transsion/widgetslistitemlayout/a$d;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslistitemlayout/a$d;-><init>(Lcom/transsion/widgetslistitemlayout/a;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final g(Ljava/util/List;)I
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget v2, Lcom/transsion/widgetslistitemlayout/R$id;->os_collapse_view_info_tag:I

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/transsion/widgetslistitemlayout/a$e;

    invoke-direct {v3}, Lcom/transsion/widgetslistitemlayout/a$e;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v2, v3, Lcom/transsion/widgetslistitemlayout/a$e;

    if-eqz v2, :cond_3

    check-cast v3, Lcom/transsion/widgetslistitemlayout/a$e;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-eqz v3, :cond_0

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v2}, Lcom/transsion/widgetslistitemlayout/a$e;->e(I)V

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslistitemlayout/a$e;->f(I)V

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/transsion/widgetslistitemlayout/a$e;->d(I)V

    sget-object v3, Lcom/transsion/widgetslistitemlayout/a;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compute collapse height: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", heightUsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return v0
.end method

.method public h(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/a;->e:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/a;->d:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/a;->a:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lp97;

    invoke-direct {v1}, Lp97;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/transsion/widgetslistitemlayout/a$a;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslistitemlayout/a$a;-><init>(Lcom/transsion/widgetslistitemlayout/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    new-instance p1, Lcom/transsion/widgetslistitemlayout/a$b;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslistitemlayout/a$b;-><init>(Lcom/transsion/widgetslistitemlayout/a;)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    return-void
.end method
