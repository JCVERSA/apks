.class public Lrf9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lby7;
.implements Lab0$b;
.implements Lvf5;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Lcom/airbnb/lottie/LottieDrawable;

.field public final e:Lyf9;

.field public f:Z

.field public final g:Lvd1;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/a;Lbg9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lrf9;->a:Landroid/graphics/Path;

    new-instance v0, Lvd1;

    invoke-direct {v0}, Lvd1;-><init>()V

    iput-object v0, p0, Lrf9;->g:Lvd1;

    invoke-virtual {p3}, Lbg9;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrf9;->b:Ljava/lang/String;

    invoke-virtual {p3}, Lbg9;->d()Z

    move-result v0

    iput-boolean v0, p0, Lrf9;->c:Z

    iput-object p1, p0, Lrf9;->d:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p3}, Lbg9;->c()Lkc;

    move-result-object p1

    invoke-virtual {p1}, Lkc;->a()Lyf9;

    move-result-object p1

    iput-object p1, p0, Lrf9;->e:Lyf9;

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->i(Lab0;)V

    invoke-virtual {p1, p0}, Lab0;->a(Lab0$b;)V

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lrf9;->f:Z

    iget-object p0, p0, Lrf9;->d:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public c(Ltf5;ILjava/util/List;Ltf5;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lxp6;->k(Ltf5;ILjava/util/List;Ltf5;Lvf5;)V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lrf9;->b()V

    return-void
.end method

.method public f(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbg1;

    instance-of v2, v1, Lbab;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lbab;

    invoke-virtual {v2}, Lbab;->j()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v3

    sget-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v3, v4, :cond_0

    iget-object v1, p0, Lrf9;->g:Lvd1;

    invoke-virtual {v1, v2}, Lvd1;->a(Lbab;)V

    invoke-virtual {v2, p0}, Lbab;->b(Lab0$b;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lag9;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    check-cast v1, Lag9;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lrf9;->e:Lyf9;

    invoke-virtual {p0, p2}, Lyf9;->r(Ljava/util/List;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrf9;->b:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    iget-boolean v0, p0, Lrf9;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrf9;->e:Lyf9;

    invoke-virtual {v0}, Lab0;->k()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lrf9;->a:Landroid/graphics/Path;

    return-object p0

    :cond_0
    iget-object v0, p0, Lrf9;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lrf9;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lrf9;->f:Z

    iget-object p0, p0, Lrf9;->a:Landroid/graphics/Path;

    return-object p0

    :cond_1
    iget-object v0, p0, Lrf9;->e:Lyf9;

    invoke-virtual {v0}, Lab0;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    iget-object p0, p0, Lrf9;->a:Landroid/graphics/Path;

    return-object p0

    :cond_2
    iget-object v2, p0, Lrf9;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v0, p0, Lrf9;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lrf9;->g:Lvd1;

    iget-object v2, p0, Lrf9;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lvd1;->b(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lrf9;->f:Z

    iget-object p0, p0, Lrf9;->a:Landroid/graphics/Path;

    return-object p0
.end method

.method public h(Ljava/lang/Object;Liu5;)V
    .locals 1

    sget-object v0, Lit5;->P:Landroid/graphics/Path;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lrf9;->e:Lyf9;

    invoke-virtual {p0, p2}, Lab0;->o(Liu5;)V

    :cond_0
    return-void
.end method
