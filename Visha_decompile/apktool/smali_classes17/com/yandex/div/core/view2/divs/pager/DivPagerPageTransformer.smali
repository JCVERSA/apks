.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008 \u0008\u0000\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J#\u0010\u001a\u001a\u00020\u0016*\u00020\u00192\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ#\u0010\u001d\u001a\u00020\u0016*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJa\u0010\'\u001a\u00020\u0016*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001f2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001f2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001f2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\"0\u001fH\u0002\u00a2\u0006\u0004\u0008\'\u0010(J%\u0010*\u001a\u00020\u0016*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\u0008\u0008\u0002\u0010)\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008*\u0010+J#\u0010.\u001a\u00020\u0016*\u00020\u00132\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008.\u0010/J#\u00102\u001a\u00020\u0016*\u00020\u00132\u0006\u00100\u001a\u00020\u00072\u0006\u00101\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u00082\u00103J#\u00105\u001a\u00020\u0016*\u00020\u00132\u0006\u00100\u001a\u00020\u00072\u0006\u00104\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u00085\u00103J\'\u00108\u001a\u00020\"2\u0006\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\"2\u0006\u00100\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u00088\u00109R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010:R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010;R\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010<R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010=R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010>R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u0010A\u00a8\u0006B"
    }
    d2 = {
        "Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;",
        "Landroidx/viewpager2/widget/ViewPager2$PageTransformer;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "recyclerView",
        "Loj3;",
        "resolver",
        "Landroid/util/SparseArray;",
        "",
        "pageTranslations",
        "",
        "parentSize",
        "Lcom/yandex/div2/DivPageTransformation;",
        "pageTransformation",
        "Ltn2;",
        "offsetProvider",
        "",
        "isHorizontal",
        "<init>",
        "(Landroidx/recyclerview/widget/RecyclerView;Loj3;Landroid/util/SparseArray;ILcom/yandex/div2/DivPageTransformation;Ltn2;Z)V",
        "Landroid/view/View;",
        "page",
        "position",
        "Lzfb;",
        "transformPage",
        "(Landroid/view/View;F)V",
        "Lcom/yandex/div2/DivPageTransformationSlide;",
        "b",
        "(Lcom/yandex/div2/DivPageTransformationSlide;Landroid/view/View;F)V",
        "Lcom/yandex/div2/DivPageTransformationOverlap;",
        "a",
        "(Lcom/yandex/div2/DivPageTransformationOverlap;Landroid/view/View;F)V",
        "Lcom/yandex/div/json/expressions/Expression;",
        "Lcom/yandex/div2/DivAnimationInterpolator;",
        "interpolator",
        "",
        "nextPageAlpha",
        "nextPageScale",
        "previousPageAlpha",
        "previousPageScale",
        "c",
        "(Landroid/view/View;FLcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V",
        "overlap",
        "e",
        "(Landroid/view/View;FZ)V",
        "pagePosition",
        "offset",
        "d",
        "(Landroid/view/View;IF)V",
        "interpolatedValue",
        "cornerAlpha",
        "g",
        "(Landroid/view/View;FD)V",
        "cornerScale",
        "h",
        "value1",
        "value2",
        "i",
        "(DDF)D",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Loj3;",
        "Landroid/util/SparseArray;",
        "I",
        "Lcom/yandex/div2/DivPageTransformation;",
        "f",
        "Ltn2;",
        "Z",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:Loj3;

.field public final c:Landroid/util/SparseArray;

.field public final d:I

.field public final e:Lcom/yandex/div2/DivPageTransformation;

.field public final f:Ltn2;

.field public final g:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Loj3;Landroid/util/SparseArray;ILcom/yandex/div2/DivPageTransformation;Ltn2;Z)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageTranslations"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offsetProvider"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->c:Landroid/util/SparseArray;

    iput p4, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->d:I

    iput-object p5, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->e:Lcom/yandex/div2/DivPageTransformation;

    iput-object p6, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->f:Ltn2;

    iput-boolean p7, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->g:Z

    return-void
.end method

.method public static synthetic f(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;Landroid/view/View;FZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->e(Landroid/view/View;FZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div2/DivPageTransformationOverlap;Landroid/view/View;F)V
    .locals 8

    iget-object v3, p1, Lcom/yandex/div2/DivPageTransformationOverlap;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, p1, Lcom/yandex/div2/DivPageTransformationOverlap;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object v5, p1, Lcom/yandex/div2/DivPageTransformationOverlap;->c:Lcom/yandex/div/json/expressions/Expression;

    iget-object v6, p1, Lcom/yandex/div2/DivPageTransformationOverlap;->d:Lcom/yandex/div/json/expressions/Expression;

    iget-object v7, p1, Lcom/yandex/div2/DivPageTransformationOverlap;->e:Lcom/yandex/div/json/expressions/Expression;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->c(Landroid/view/View;FLcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-gtz v1, :cond_1

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    iget-object p1, p1, Lcom/yandex/div2/DivPageTransformationOverlap;->f:Lcom/yandex/div/json/expressions/Expression;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {p1, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->e(Landroid/view/View;FZ)V

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationZ(F)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->f(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;Landroid/view/View;FZILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationZ(F)V

    :goto_1
    return-void
.end method

.method public final b(Lcom/yandex/div2/DivPageTransformationSlide;Landroid/view/View;F)V
    .locals 14

    move-object v0, p1

    iget-object v3, v0, Lcom/yandex/div2/DivPageTransformationSlide;->a:Lcom/yandex/div/json/expressions/Expression;

    iget-object v4, v0, Lcom/yandex/div2/DivPageTransformationSlide;->b:Lcom/yandex/div/json/expressions/Expression;

    iget-object v5, v0, Lcom/yandex/div2/DivPageTransformationSlide;->c:Lcom/yandex/div/json/expressions/Expression;

    iget-object v6, v0, Lcom/yandex/div2/DivPageTransformationSlide;->d:Lcom/yandex/div/json/expressions/Expression;

    iget-object v7, v0, Lcom/yandex/div2/DivPageTransformationSlide;->e:Lcom/yandex/div/json/expressions/Expression;

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->c(Landroid/view/View;FLcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v8 .. v13}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->f(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;Landroid/view/View;FZILjava/lang/Object;)V

    return-void
.end method

.method public final c(Landroid/view/View;FLcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v0}, Lwn8;->c(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lwn8;->f(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {p3, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p3}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p3

    const/4 v1, 0x1

    int-to-float v1, v1

    invoke-interface {p3, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p3

    sub-float/2addr v1, p3

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {p4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->g(Landroid/view/View;FD)V

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {p5, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->h(Landroid/view/View;FD)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {p6, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->g(Landroid/view/View;FD)V

    iget-object p2, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {p7, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->h(Landroid/view/View;FD)V

    :goto_0
    return-void
.end method

.method public final d(Landroid/view/View;IF)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->c:Landroid/util/SparseArray;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-boolean p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->g:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method public final e(Landroid/view/View;FZ)V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->d:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->f:Ltn2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->e:Lcom/yandex/div2/DivPageTransformation;

    instance-of v1, v1, Lcom/yandex/div2/DivPageTransformation$b;

    invoke-virtual {p3, p2, v0, v1}, Ltn2;->k(FIZ)F

    move-result p3

    :goto_0
    neg-float p2, p3

    iget-boolean p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->g:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p3}, Lpdc;->f(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_2

    neg-float p2, p2

    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->d(Landroid/view/View;IF)V

    return-void
.end method

.method public final g(Landroid/view/View;FD)V
    .locals 7

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v2, v1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->D()Lg3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lg3;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzl2;

    invoke-virtual {v0}, Lzl2;->c()Lcom/yandex/div2/Div;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/div2/Div;->b()Log2;

    move-result-object v0

    invoke-interface {v0}, Log2;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b:Loj3;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->i(DDF)D

    move-result-wide p2

    double-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final h(Landroid/view/View;FD)V
    .locals 7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v4, p3

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->i(DDF)D

    move-result-wide p2

    double-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public final i(DDF)D
    .locals 2

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    sub-double/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    float-to-double p2, p5

    mul-double/2addr p0, p2

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 7

    const-string v0, "page"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->e:Lcom/yandex/div2/DivPageTransformation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yandex/div2/DivPageTransformation;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Lcom/yandex/div2/DivPageTransformationSlide;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/yandex/div2/DivPageTransformationSlide;

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->b(Lcom/yandex/div2/DivPageTransformationSlide;Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Lcom/yandex/div2/DivPageTransformationOverlap;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/yandex/div2/DivPageTransformationOverlap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->a(Lcom/yandex/div2/DivPageTransformationOverlap;Landroid/view/View;F)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;->f(Lcom/yandex/div/core/view2/divs/pager/DivPagerPageTransformer;Landroid/view/View;FZILjava/lang/Object;)V

    :goto_1
    return-void
.end method
