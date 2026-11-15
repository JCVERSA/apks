.class public final Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Loj3;

.field public c:Ljava/util/ArrayList;

.field public final d:Lyi5;

.field public final e:Lyi5;

.field public final f:Lyi5;


# direct methods
.method public constructor <init>(Landroid/view/View;Loj3;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->b:Loj3;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c:Ljava/util/ArrayList;

    new-instance p1, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$singleLineRenderer$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$singleLineRenderer$2;-><init>(Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->d:Lyi5;

    new-instance p1, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$multiLineRenderer$2;-><init>(Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->e:Lyi5;

    new-instance p1, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$cloudBackgroundRenderer$2;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper$cloudBackgroundRenderer$2;-><init>(Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->f:Lyi5;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/div/core/util/text/DivBackgroundSpan;)Z
    .locals 1

    const-string v0, "span"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/text/Spanned;Landroid/text/Layout;)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    const-string v1, "canvas"

    move-object v11, p1

    invoke-static {p1, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "text"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layout"

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, p0

    iget-object v1, v12, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/util/text/DivBackgroundSpan;

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v10, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    invoke-virtual {v10, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v6, v2

    invoke-virtual {v10, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    float-to-int v7, v2

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBackground()Lcom/yandex/div2/DivTextRangeBackground;

    move-result-object v2

    instance-of v2, v2, Lcom/yandex/div2/DivTextRangeBackground$a;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c()Lz31;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBorder()Lcom/yandex/div2/DivTextRangeBorder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBackground()Lcom/yandex/div2/DivTextRangeBackground;

    move-result-object v9

    move-object v1, v2

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v9}, Lz31;->a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V

    goto :goto_0

    :cond_0
    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->f()Lzs2;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->d()Lzs2;

    move-result-object v2

    :goto_1
    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBorder()Lcom/yandex/div2/DivTextRangeBorder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBackground()Lcom/yandex/div2/DivTextRangeBackground;

    move-result-object v9

    move-object v1, v2

    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v9}, Lzs2;->a(Landroid/graphics/Canvas;Landroid/text/Layout;IIIILcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()Lz31;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->f:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz31;

    return-object p0
.end method

.method public final d()Lzs2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->e:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzs2;

    return-object p0
.end method

.method public final e()Loj3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->b:Loj3;

    return-object p0
.end method

.method public final f()Lzs2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->d:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzs2;

    return-object p0
.end method

.method public final g()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->a:Landroid/view/View;

    return-object p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final i(Ljava/lang/CharSequence;Lcom/yandex/div/core/util/text/DivBackgroundSpan;II)Z
    .locals 4

    const-string v0, "text"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundSpan"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div/core/util/text/DivBackgroundSpan;

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBorder()Lcom/yandex/div2/DivTextRangeBorder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBorder()Lcom/yandex/div2/DivTextRangeBorder;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBackground()Lcom/yandex/div2/DivTextRangeBackground;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yandex/div/core/util/text/DivBackgroundSpan;->getBackground()Lcom/yandex/div2/DivTextRangeBackground;

    move-result-object v3

    invoke-static {v2, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne p4, v2, :cond_3

    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-ne p3, v1, :cond_3

    const/4 v0, 0x1

    :cond_4
    :goto_1
    return v0
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
