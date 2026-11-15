.class public final Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IndicatorsRibbon"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final synthetic c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;


# direct methods
.method public constructor <init>(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(IF)F
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x2

    if-gt v0, v1, :cond_0

    iget-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    invoke-static {p0}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->h()F

    move-result p0

    int-to-float p2, v3

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->f(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lpdc;->f(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    if-ne p1, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v2

    :goto_0
    sub-float/2addr v0, v2

    iget-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result p1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    goto :goto_2

    :cond_2
    if-ne p1, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v2

    :goto_1
    sub-float/2addr v0, v2

    iget-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result p1

    mul-float/2addr p1, p2

    sub-float/2addr v0, p1

    :goto_2
    iget-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result p1

    rem-int/2addr p1, v3

    if-nez p1, :cond_4

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result p0

    int-to-float p1, v3

    div-float/2addr p0, p1

    add-float/2addr v0, p0

    :cond_4
    return v0
.end method

.method public final b(F)F
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p1

    invoke-static {p0, v0}, Lwn8;->f(FF)F

    move-result p1

    :goto_0
    cmpl-float p0, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez p0, :cond_1

    return v2

    :cond_1
    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    invoke-static {p1, v1, v2}, Lwn8;->j(FFF)F

    move-result p0

    return p0
.end method

.method public final c(Ljava/util/List;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_0

    invoke-static {}, Ly71;->u()V

    :cond_0
    move-object v8, v6

    check-cast v8, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v6

    invoke-virtual {v0, v6}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->b(F)F

    move-result v13

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->g()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->g()I

    move-result v6

    invoke-static {v2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v6, v9, :cond_2

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v8, v13}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;F)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v6

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v14, 0xf

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v8 .. v15}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v6

    :goto_2
    invoke-interface {v1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v5, v7

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v5}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->i()F

    move-result v5

    cmpg-float v5, v5, v7

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move v3, v6

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v5, 0x0

    if-ltz v3, :cond_6

    goto :goto_5

    :cond_6
    move-object v2, v5

    :goto_5
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v8}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->i()F

    move-result v8

    cmpg-float v8, v8, v7

    if-nez v8, :cond_7

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ltz v6, :cond_9

    move-object v5, v3

    :cond_9
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    iget-object v0, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v4, 0x1

    if-gez v4, :cond_a

    invoke-static {}, Ly71;->u()V

    :cond_a
    check-cast v6, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    if-ge v4, v2, :cond_b

    invoke-static {v1, v2}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->i()F

    move-result v9

    sub-float v9, v7, v9

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result v10

    mul-float/2addr v10, v9

    invoke-virtual {v6}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v9

    sub-float v12, v9, v10

    const/16 v15, 0x1b

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v6

    invoke-static/range {v9 .. v16}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v9

    invoke-interface {v1, v4, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-le v4, v3, :cond_c

    invoke-static {v1, v3}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->i()F

    move-result v9

    sub-float v9, v7, v9

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result v10

    mul-float/2addr v10, v9

    invoke-virtual {v6}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v9

    add-float v12, v9, v10

    const/16 v15, 0x1b

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v6

    invoke-static/range {v9 .. v16}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move v4, v8

    goto :goto_6

    :cond_d
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->b:Ljava/util/List;

    return-object p0
.end method

.method public final e(IF)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->f(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lpdc;->c(Landroid/view/View;II)Ls15;

    move-result-object v1

    invoke-virtual {v1}, Ls15;->b()I

    move-result v2

    iget-object v4, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Lq15;

    invoke-virtual {v5}, Lq15;->nextInt()I

    move-result v7

    invoke-static {v4, v7}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->a(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;I)Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v10

    if-ne v7, v2, :cond_1

    invoke-virtual {v10}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    :goto_1
    move v9, v5

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    invoke-static {v5}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v5}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v5

    invoke-static {v4}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_1

    :goto_2
    iget-object v5, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    new-instance v14, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move/from16 v15, p1

    if-ne v7, v15, :cond_2

    const/4 v6, 0x1

    move v8, v6

    goto :goto_3

    :cond_2
    move v8, v3

    :goto_3
    const/16 v12, 0x10

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;-><init>(IZFLcom/yandex/div/internal/widget/indicator/b;FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move/from16 v15, p1

    iget-object v1, v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->b:Ljava/util/List;

    invoke-virtual/range {p0 .. p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->f(IF)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final f(IF)Ljava/util/List;
    .locals 13

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a(IF)F

    move-result p1

    iget-object p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->a:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v1

    add-float v5, v1, p1

    const/16 v8, 0x1b

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v9}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Li81;->e1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v0

    if-gt p2, v0, :cond_1

    return-object p1

    :cond_1
    iget-object p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lvn8;->b(FF)Loy0;

    move-result-object p2

    invoke-static {p1}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->f()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Loy0;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p1}, Li81;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->f()F

    move-result v0

    neg-float v0, v0

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    move-object v5, v3

    check-cast v5, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v5}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v3

    add-float v8, v3, v0

    const/16 v11, 0x1b

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_1

    :cond_3
    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p2, v0}, Loy0;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Li81;->A0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->h()F

    move-result v2

    sub-float/2addr v0, v2

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_4

    invoke-static {}, Ly71;->u()V

    :cond_4
    move-object v5, v3

    check-cast v5, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v5}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v3

    add-float v8, v3, v0

    const/16 v11, 0x1b

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon$relayoutVisibleItems$3;

    invoke-direct {v0, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon$relayoutVisibleItems$3;-><init>(Loy0;)V

    invoke-static {p1, v0}, Ld81;->I(Ljava/util/List;Le74;)Z

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c(Ljava/util/List;)V

    return-object p1
.end method

.method public final g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;F)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;
    .locals 9

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v2

    mul-float v4, v2, p2

    iget-object v2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->e(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)Lsz4;

    move-result-object v2

    invoke-virtual {v2}, Lsz4;->e()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->c:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;

    invoke-static {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->e(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)Lsz4;

    move-result-object v0

    invoke-virtual {v0}, Lsz4;->e()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v4

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_3

    instance-of v0, v1, Lcom/yandex/div/internal/widget/indicator/b$b;

    if-eqz v0, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div/internal/widget/indicator/b$b;

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/indicator/b$b;->f()F

    move-result v0

    invoke-virtual {v3}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v1

    div-float v1, v4, v1

    mul-float v5, v0, v1

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/yandex/div/internal/widget/indicator/b$b;->d(Lcom/yandex/div/internal/widget/indicator/b$b;FFFILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object v4

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, v1, Lcom/yandex/div/internal/widget/indicator/b$a;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/b$a;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v1

    mul-float/2addr v1, p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/yandex/div/internal/widget/indicator/b$a;->c(F)Lcom/yandex/div/internal/widget/indicator/b$a;

    move-result-object v4

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move v5, p2

    invoke-static/range {v0 .. v7}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_3
    return-object p1
.end method
