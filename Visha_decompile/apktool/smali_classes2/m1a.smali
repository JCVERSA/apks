.class public Lm1a;
.super Lpc0;
.source "SourceFile"


# instance fields
.field public final r:Lcom/airbnb/lottie/model/layer/a;

.field public final s:Ljava/lang/String;

.field public final t:Z

.field public final u:Lab0;

.field public v:Lab0;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/ShapeStroke;)V
    .locals 11

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->b()Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->toPaintCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->e()Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->toPaintJoin()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->g()F

    move-result v6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->i()Lfc;

    move-result-object v7

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->j()Ldc;

    move-result-object v8

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->d()Ldc;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lpc0;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLfc;Ldc;Ljava/util/List;Ldc;)V

    iput-object p2, p0, Lm1a;->r:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lm1a;->s:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->k()Z

    move-result p1

    iput-boolean p1, p0, Lm1a;->t:Z

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeStroke;->c()Lcc;

    move-result-object p1

    invoke-virtual {p1}, Lcc;->h()Lab0;

    move-result-object p1

    iput-object p1, p0, Lm1a;->u:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    iget-boolean v0, p0, Lm1a;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpc0;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lm1a;->u:Lab0;

    check-cast v1, Lx81;

    invoke-virtual {v1}, Lx81;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lm1a;->v:Lab0;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lpc0;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lpc0;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm1a;->s:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lpc0;->h(Ljava/lang/Object;Liu5;)V

    sget-object v0, Lit5;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lm1a;->u:Lab0;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lit5;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lm1a;->v:Lab0;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lm1a;->r:Lcom/airbnb/lottie/model/layer/a;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/model/layer/a;->H(Lab0;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lm1a;->v:Lab0;

    goto :goto_0

    :cond_2
    new-instance p1, Lhnb;

    invoke-direct {p1, p2}, Lhnb;-><init>(Liu5;)V

    iput-object p1, p0, Lm1a;->v:Lab0;

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    iget-object p1, p0, Lm1a;->r:Lcom/airbnb/lottie/model/layer/a;

    iget-object p0, p0, Lm1a;->u:Lab0;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    :cond_3
    :goto_0
    return-void
.end method
