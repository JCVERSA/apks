.class public final Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;,
        Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;
    }
.end annotation


# instance fields
.field public final a:Lsz4;

.field public final b:Ldn9;

.field public final c:Lpz4;

.field public final d:Landroid/view/View;

.field public final e:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;

.field public f:I

.field public g:I

.field public h:F

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:I

.field public n:F


# direct methods
.method public constructor <init>(Lsz4;Ldn9;Lpz4;Landroid/view/View;)V
    .locals 1

    const-string v0, "styleParams"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleIndicatorDrawer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->a:Lsz4;

    iput-object p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->b:Ldn9;

    iput-object p3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    iput-object p4, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d:Landroid/view/View;

    new-instance p2, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;

    invoke-direct {p2, p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;-><init>(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)V

    iput-object p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->e:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;

    invoke-virtual {p1}, Lsz4;->c()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result p1

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->h:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j:F

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;I)Lcom/yandex/div/internal/widget/indicator/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->l(I)Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->f:I

    return p0
.end method

.method public static final synthetic c(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g:I

    return p0
.end method

.method public static final synthetic d(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i:F

    return p0
.end method

.method public static final synthetic e(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)Lsz4;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->a:Lsz4;

    return-object p0
.end method

.method public static final synthetic f(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;)I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k:I

    return p0
.end method


# virtual methods
.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->d()Lcom/yandex/div/internal/widget/indicator/a;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/a$a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/a$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/a$a;->a()F

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j:F

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/a$b;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k:I

    int-to-float v1, v1

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/a$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/a$b;->a()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i:F

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/a$b;->a()F

    move-result v0

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->a()Lcom/yandex/div/internal/widget/indicator/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/c;->d()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j:F

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i:F

    invoke-interface {v0, p0}, Lpz4;->a(F)V

    return-void
.end method

.method public final i(IF)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->e:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->e(IF)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->a:Lsz4;

    invoke-virtual {v0}, Lsz4;->d()Lcom/yandex/div/internal/widget/indicator/a;

    move-result-object v0

    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/a$a;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k:I

    int-to-float v1, v1

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/a$a;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/a$a;->a()F

    move-result v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/yandex/div/internal/widget/indicator/a$b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/yandex/div/internal/widget/indicator/a$b;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/a$b;->b()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->f:I

    invoke-static {v0, v1}, Lwn8;->g(II)I

    move-result v0

    iput v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->g:I

    return-void

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final k(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k:I

    iput p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->l:I

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j()V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->h()V

    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->h:F

    iget p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->m:I

    iget p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->n:F

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i(IF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(I)Lcom/yandex/div/internal/widget/indicator/b;
    .locals 7

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-interface {v0, p1}, Lpz4;->f(I)Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object p1

    iget v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div/internal/widget/indicator/b$b;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/b$b;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result p1

    iget v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j:F

    mul-float v2, p1, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/internal/widget/indicator/b$b;->d(Lcom/yandex/div/internal/widget/indicator/b$b;FFFILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/b$b;

    move-result-object p1

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-virtual {p1}, Lcom/yandex/div/internal/widget/indicator/b$b;->g()F

    move-result v0

    invoke-interface {p0, v0}, Lpz4;->d(F)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final m(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->e:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    iget-object v2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->b:Ldn9;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v4

    iget v5, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->h:F

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e()Lcom/yandex/div/internal/widget/indicator/b;

    move-result-object v6

    iget-object v3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->g()I

    move-result v7

    invoke-interface {v3, v7}, Lpz4;->i(I)I

    move-result v7

    iget-object v3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->g()I

    move-result v8

    invoke-interface {v3, v8}, Lpz4;->e(I)F

    move-result v8

    iget-object v3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->g()I

    move-result v1

    invoke-interface {v3, v1}, Lpz4;->g(I)I

    move-result v9

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Ldn9;->b(Landroid/graphics/Canvas;FFLcom/yandex/div/internal/widget/indicator/b;IFI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->e:Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;

    invoke-virtual {v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$IndicatorsRibbon;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    invoke-virtual {v2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-virtual {v1}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d()F

    move-result v1

    iget v2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->h:F

    iget v3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->d:Landroid/view/View;

    invoke-static {v4}, Lpdc;->f(Landroid/view/View;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lpz4;->c(FFFZ)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->b:Ldn9;

    invoke-interface {p0, p1, v0}, Ldn9;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_3
    return-void
.end method

.method public final n(IF)V
    .locals 1

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->m:I

    iput p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->n:F

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-interface {v0, p1, p2}, Lpz4;->h(IF)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i(IF)V

    return-void
.end method

.method public final o(I)V
    .locals 2

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->m:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->n:F

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-interface {v1, p1}, Lpz4;->onPageSelected(I)V

    invoke-virtual {p0, p1, v0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->i(IF)V

    return-void
.end method

.method public final p(I)V
    .locals 1

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->f:I

    iget-object v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->c:Lpz4;

    invoke-interface {v0, p1}, Lpz4;->b(I)V

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->j()V

    iget p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->l:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;->h:F

    return-void
.end method
