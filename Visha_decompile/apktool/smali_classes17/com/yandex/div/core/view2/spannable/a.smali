.class public final Lcom/yandex/div/core/view2/spannable/a;
.super Lhd8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/spannable/a$a;,
        Lcom/yandex/div/core/view2/spannable/a$b;,
        Lcom/yandex/div/core/view2/spannable/a$c;
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

.field public final f:Lcom/yandex/div/core/view2/spannable/a$a;

.field public g:Landroid/graphics/drawable/Drawable;

.field public final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIILcom/yandex/div/core/view2/spannable/TextVerticalAlignment;Lcom/yandex/div/core/view2/spannable/a$a;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lhd8;-><init>()V

    iput p2, p0, Lcom/yandex/div/core/view2/spannable/a;->b:I

    iput p3, p0, Lcom/yandex/div/core/view2/spannable/a;->c:I

    iput p4, p0, Lcom/yandex/div/core/view2/spannable/a;->d:I

    iput-object p5, p0, Lcom/yandex/div/core/view2/spannable/a;->e:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    iput-object p6, p0, Lcom/yandex/div/core/view2/spannable/a;->f:Lcom/yandex/div/core/view2/spannable/a$a;

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/a;->g:Landroid/graphics/drawable/Drawable;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    const-string p3, "paint"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_7

    iget p2, p0, Lcom/yandex/div/core/view2/spannable/a;->d:I

    if-lez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    invoke-static {p1}, Ls86;->c(F)I

    move-result p1

    iget-object p3, p0, Lcom/yandex/div/core/view2/spannable/a;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/yandex/div/core/view2/spannable/a;->c:I

    :goto_0
    iget-object p4, p0, Lcom/yandex/div/core/view2/spannable/a;->e:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    sget-object v0, Lcom/yandex/div/core/view2/spannable/a$c;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v0, p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_5

    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    const/4 p2, 0x3

    if-eq p4, p2, :cond_3

    const/4 p2, 0x4

    if-ne p4, p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    add-int/2addr p2, p1

    add-int/2addr p2, p3

    div-int/lit8 p1, p2, 0x2

    goto :goto_1

    :cond_5
    add-int p1, p2, p3

    :goto_1
    sub-int p2, p1, p3

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, p4

    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p2, p3

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p1, v0

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object p1, p0, Lcom/yandex/div/core/view2/spannable/a;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_2

    :cond_6
    iget p0, p0, Lcom/yandex/div/core/view2/spannable/a;->b:I

    :goto_2
    return p0

    :cond_7
    :goto_3
    iget p0, p0, Lcom/yandex/div/core/view2/spannable/a;->b:I

    return p0
.end method

.method public final c()Lcom/yandex/div/core/view2/spannable/a$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a;->f:Lcom/yandex/div/core/view2/spannable/a$a;

    return-object p0
.end method

.method public final d(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "rect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ls86;->c(F)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ls86;->c(F)I

    move-result v1

    iget-object v2, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ls86;->c(F)I

    move-result v2

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ls86;->c(F)I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    const-string p3, "canvas"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-static {p2, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "paint"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/div/core/view2/spannable/a;->g:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object p4, p0, Lcom/yandex/div/core/view2/spannable/a;->e:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    sget-object p9, Lcom/yandex/div/core/view2/spannable/a$c;->a:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, p9, p4

    const/4 p9, 0x1

    if-eq p4, p9, :cond_3

    const/4 p9, 0x2

    if-eq p4, p9, :cond_2

    const/4 p6, 0x3

    if-eq p4, p6, :cond_4

    const/4 p6, 0x4

    if-ne p4, p6, :cond_1

    move p7, p8

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    add-int/2addr p6, p8

    add-int/2addr p6, p3

    div-int/lit8 p7, p6, 0x2

    goto :goto_0

    :cond_3
    add-int p7, p6, p3

    :cond_4
    :goto_0
    int-to-float p4, p7

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iget-object p3, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    invoke-virtual {p0, p5, p4}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final e(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object p1
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/yandex/div/core/view2/spannable/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/yandex/div/core/view2/spannable/a;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/yandex/div/core/view2/spannable/a;->b:I

    iget v1, p0, Lcom/yandex/div/core/view2/spannable/a;->c:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/spannable/a;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    :cond_1
    return-void
.end method
