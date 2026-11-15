.class public Lrs8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu23;
.implements Lby7;
.implements Lsj4;
.implements Lab0$b;
.implements Lvf5;


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Path;

.field public final c:Lcom/airbnb/lottie/LottieDrawable;

.field public final d:Lcom/airbnb/lottie/model/layer/a;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lab0;

.field public final h:Lab0;

.field public final i:Lx6b;

.field public j:Lcg1;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lqs8;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lrs8;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lrs8;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lrs8;->c:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lrs8;->d:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p3}, Lqs8;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lrs8;->e:Ljava/lang/String;

    invoke-virtual {p3}, Lqs8;->f()Z

    move-result p1

    iput-boolean p1, p0, Lrs8;->f:Z

    invoke-virtual {p3}, Lqs8;->b()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lrs8;->g:Lab0;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p3}, Lqs8;->d()Ldc;

    move-result-object p1

    invoke-virtual {p1}, Ldc;->a()Lxy3;

    move-result-object p1

    iput-object p1, p0, Lrs8;->h:Lab0;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p3}, Lqs8;->e()Lrc;

    move-result-object p1

    invoke-virtual {p1}, Lrc;->b()Lx6b;

    move-result-object p1

    iput-object p1, p0, Lrs8;->i:Lx6b;

    invoke-virtual {p1, p2}, Lx6b;->a(Lcom/airbnb/lottie/model/layer/a;)V

    invoke-virtual {p1, p0}, Lx6b;->b(Lab0$b;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lrs8;->j:Lcg1;

    invoke-virtual {p0, p1, p2, p3}, Lcg1;->a(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public b(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lrs8;->j:Lcg1;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbg1;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lcg1;

    iget-object v2, p0, Lrs8;->c:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v3, p0, Lrs8;->d:Lcom/airbnb/lottie/model/layer/a;

    iget-boolean v5, p0, Lrs8;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcg1;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Ljava/lang/String;ZLjava/util/List;Lrc;)V

    iput-object p1, p0, Lrs8;->j:Lcg1;

    return-void
.end method

.method public c(Ltf5;ILjava/util/List;Ltf5;)V
    .locals 3

    invoke-static {p1, p2, p3, p4, p0}, Lxp6;->k(Ltf5;ILjava/util/List;Ltf5;Lvf5;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lrs8;->j:Lcg1;

    invoke-virtual {v1}, Lcg1;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lrs8;->j:Lcg1;

    invoke-virtual {v1}, Lcg1;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbg1;

    instance-of v2, v1, Lvf5;

    if-eqz v2, :cond_0

    check-cast v1, Lvf5;

    invoke-static {p1, p2, p3, p4, v1}, Lxp6;->k(Ltf5;ILjava/util/List;Ltf5;Lvf5;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lrs8;->g:Lab0;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lrs8;->h:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lrs8;->i:Lx6b;

    invoke-virtual {v2}, Lx6b;->i()Lab0;

    move-result-object v2

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lrs8;->i:Lx6b;

    invoke-virtual {v4}, Lx6b;->e()Lab0;

    move-result-object v4

    invoke-virtual {v4}, Lab0;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lrs8;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lrs8;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lrs8;->i:Lx6b;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lx6b;->g(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    invoke-static {v2, v4, v7}, Lxp6;->i(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lrs8;->j:Lcg1;

    iget-object v7, p0, Lrs8;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lcg1;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 0

    iget-object p0, p0, Lrs8;->c:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lrs8;->j:Lcg1;

    invoke-virtual {p0, p1, p2}, Lcg1;->f(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrs8;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lrs8;->j:Lcg1;

    invoke-virtual {v0}, Lcg1;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lrs8;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lrs8;->g:Lab0;

    invoke-virtual {v1}, Lab0;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lrs8;->h:Lab0;

    invoke-virtual {v2}, Lab0;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lrs8;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lrs8;->i:Lx6b;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lx6b;->g(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lrs8;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lrs8;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lrs8;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 1

    iget-object v0, p0, Lrs8;->i:Lx6b;

    invoke-virtual {v0, p1, p2}, Lx6b;->c(Ljava/lang/Object;Liu5;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lit5;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lrs8;->g:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lit5;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lrs8;->h:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    :cond_2
    :goto_0
    return-void
.end method
