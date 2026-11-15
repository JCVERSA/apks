.class public final Lcom/yandex/div/core/view2/divs/DivImageBinder;
.super Lwu2;
.source "SourceFile"


# instance fields
.field public final b:Lwk2;

.field public final c:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

.field public final d:Lxc3;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;Lwk2;Lcom/yandex/div/core/view2/DivPlaceholderLoader;Lxc3;)V
    .locals 1

    const-string v0, "baseBinder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageLoader"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderLoader"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorCollectors"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lwu2;-><init>(Lcom/yandex/div/core/view2/divs/DivBaseBinder;)V

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder;->b:Lwk2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder;->c:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivImageBinder;->d:Lxc3;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/internal/widget/AspectImageView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->o(Lcom/yandex/div/internal/widget/AspectImageView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->p(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->q(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic i(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImageScale;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->r(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImageScale;)V

    return-void
.end method

.method public static final synthetic j(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;Lcom/yandex/div/core/images/BitmapSource;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->s(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;Lcom/yandex/div/core/images/BitmapSource;)V

    return-void
.end method

.method public static final synthetic k(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;ZLwc3;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->t(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;ZLwc3;)V

    return-void
.end method

.method public static final synthetic l(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/widget/LoadableImageView;Ljava/lang/Integer;Lcom/yandex/div2/DivBlendMode;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->u(Lcom/yandex/div/core/widget/LoadableImageView;Ljava/lang/Integer;Lcom/yandex/div2/DivBlendMode;)V

    return-void
.end method

.method public static final synthetic m(Lcom/yandex/div/core/view2/divs/DivImageBinder;Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->C(Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic n(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div2/DivImage;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->D(Lcom/yandex/div2/DivImage;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object p3, p3, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object p3, v1

    :goto_1
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p2, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object p3, v1

    :goto_2
    iget-object v0, p2, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivBlendMode;

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->u(Lcom/yandex/div/core/widget/LoadableImageView;Ljava/lang/Integer;Lcom/yandex/div2/DivBlendMode;)V

    iget-object p3, p2, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    iget-object p3, p2, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_4

    return-void

    :cond_4
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindTint$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindTint$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object v1

    :cond_5
    invoke-virtual {p1, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImage;->Q:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final B(Landroid/widget/ImageView;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public final C(Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;)Z
    .locals 0

    invoke-virtual {p2}, Lcom/yandex/div/core/widget/LoadableImageView;->isImageLoaded()Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p3, Lcom/yandex/div2/DivImage;->x:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p1}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D(Lcom/yandex/div2/DivImage;)Z
    .locals 0

    iget-object p0, p1, Lcom/yandex/div2/DivImage;->P:Lcom/yandex/div/json/expressions/Expression;

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)V
    .locals 9

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v7

    new-instance v8, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, v7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivImageBinder$observePlaceholders$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Loj3;Lwc3;)V

    iget-object p0, p3, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v7, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    iget-object p0, p3, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, v7, v8}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;

    check-cast p3, Lcom/yandex/div2/DivImage;

    check-cast p4, Lcom/yandex/div2/DivImage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->v(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;)V

    return-void
.end method

.method public final o(Lcom/yandex/div/internal/widget/AspectImageView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V
    .locals 0

    invoke-static {p2, p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O(Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/AspectImageView;->setGravity(I)V

    return-void
.end method

.method public final p(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->getCurrentBitmapWithoutFilters$div_release()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/yandex/div/core/view2/divs/DivImageBinder$applyFiltersAndSetBitmap$1;

    invoke-direct {v0, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder$applyFiltersAndSetBitmap$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;)V

    invoke-static {p1, p2, p0, p3, v0}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->h(Landroid/view/View;Lcom/yandex/div/core/view2/a;Landroid/graphics/Bitmap;Ljava/util/List;Le74;)V

    :goto_0
    return-void
.end method

.method public final q(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p3

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v9

    iget-object v0, v7, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v9}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->getImageUrl$div_release()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v10, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0, v9, v8, v7}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->C(Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;)Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/LoadableImageView;->resetImageLoaded()V

    invoke-virtual/range {p0 .. p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->B(Landroid/widget/ImageView;)V

    invoke-virtual/range {p1 .. p1}, Lcom/yandex/div/core/widget/LoadableImageView;->getLoadReference$div_release()Ljn5;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljn5;->cancel()V

    :cond_1
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->t(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;ZLwc3;)V

    invoke-virtual {v8, v10}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->setImageUrl$div_release(Landroid/net/Uri;)V

    iget-object v11, v6, Lcom/yandex/div/core/view2/divs/DivImageBinder;->b:Lwk2;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v13

    new-instance v14, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;

    move-object v0, v14

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v9

    move-object v6, v10

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/yandex/div/core/view2/divs/DivImageBinder$a;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Loj3;Landroid/net/Uri;Lcom/yandex/div/core/view2/Div2View;)V

    invoke-interface {v11, v12, v14}, Lwk2;->loadImage(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object v0

    const-string v1, "private fun DivImageView\u2026        return true\n    }"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    invoke-virtual {v8, v0}, Lcom/yandex/div/core/widget/LoadableImageView;->setLoadReference$div_release(Ljn5;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final r(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImageScale;)V
    .locals 0

    invoke-static {p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->B0(Lcom/yandex/div2/DivImageScale;)Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/AspectImageView;->setImageScale(Lcom/yandex/div/internal/widget/AspectImageView$Scale;)V

    return-void
.end method

.method public final s(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;Lcom/yandex/div/core/images/BitmapSource;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p2, Lcom/yandex/div2/DivImage;->i:Lcom/yandex/div2/DivFadeTransition;

    invoke-virtual {p2}, Lcom/yandex/div2/DivImage;->p()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-float p2, v0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/yandex/div/core/images/BitmapSource;->MEMORY:Lcom/yandex/div/core/images/BitmapSource;

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div2/DivFadeTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/yandex/div2/DivFadeTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/yandex/div2/DivAnimationInterpolator;

    invoke-static {p4}, Leu2;->d(Lcom/yandex/div2/DivAnimationInterpolator;)Landroid/view/animation/Interpolator;

    move-result-object p4

    iget-object v2, p0, Lcom/yandex/div2/DivFadeTransition;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v2, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/yandex/div2/DivFadeTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final t(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;ZLwc3;)V
    .locals 14

    move-object/from16 v4, p3

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v5

    move-object v2, p0

    iget-object v6, v2, Lcom/yandex/div/core/view2/divs/DivImageBinder;->c:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

    iget-object v0, v4, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, v4, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, v5}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v10

    new-instance v12, Lcom/yandex/div/core/view2/divs/DivImageBinder$applyPlaceholders$1;

    move-object v7, p1

    invoke-direct {v12, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder$applyPlaceholders$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;)V

    new-instance v13, Lcom/yandex/div/core/view2/divs/DivImageBinder$applyPlaceholders$2;

    move-object v0, v13

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivImageBinder$applyPlaceholders$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Loj3;)V

    move-object/from16 v8, p5

    move/from16 v11, p4

    invoke-virtual/range {v6 .. v13}, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->b(Lkn5;Lwc3;Ljava/lang/String;IZLe74;Le74;)V

    return-void
.end method

.method public final u(Lcom/yandex/div/core/widget/LoadableImageView;Ljava/lang/Integer;Lcom/yandex/div2/DivBlendMode;)V
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->isImageLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->isImagePreview()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->E0(Lcom/yandex/div2/DivBlendMode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->B(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public v(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    const-string v0, "<this>"

    invoke-static {v5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bindingContext"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "div"

    invoke-static {v4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v4, Lcom/yandex/div2/DivImage;->b:Lcom/yandex/div2/DivAction;

    iget-object v10, v4, Lcom/yandex/div2/DivImage;->d:Ljava/util/List;

    iget-object v11, v4, Lcom/yandex/div2/DivImage;->D:Ljava/util/List;

    iget-object v12, v4, Lcom/yandex/div2/DivImage;->r:Ljava/util/List;

    iget-object v13, v4, Lcom/yandex/div2/DivImage;->z:Ljava/util/List;

    iget-object v14, v4, Lcom/yandex/div2/DivImage;->y:Ljava/util/List;

    iget-object v15, v4, Lcom/yandex/div2/DivImage;->J:Ljava/util/List;

    iget-object v0, v4, Lcom/yandex/div2/DivImage;->I:Ljava/util/List;

    iget-object v1, v4, Lcom/yandex/div2/DivImage;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivImage;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v18

    iget-object v8, v4, Lcom/yandex/div2/DivImage;->m:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v7, p1

    move-object/from16 v19, v8

    move-object/from16 v8, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    invoke-static/range {v7 .. v19}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v7

    iget-object v1, v6, Lcom/yandex/div/core/view2/divs/DivImageBinder;->d:Lxc3;

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v8

    invoke-virtual {v0}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v8

    iget-object v0, v4, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/yandex/div2/DivImage;->j:Lcom/yandex/div2/DivAspect;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v5, v0, v1, v7}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->A(Landroid/view/View;Lcom/yandex/div2/DivAspect;Lcom/yandex/div2/DivAspect;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->y(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Loj3;)V

    invoke-virtual {v6, v5, v4, v3, v7}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->w(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Loj3;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v10, v4

    move-object/from16 v4, p4

    move-object v11, v5

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->z(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Lwc3;)V

    invoke-virtual {v6, v11, v10, v9, v7}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->A(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Loj3;)V

    invoke-virtual/range {p0 .. p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->x(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;)V

    return-void
.end method

.method public final w(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Loj3;)V
    .locals 3

    iget-object v0, p2, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p3, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    :cond_1
    invoke-static {v0, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p2, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivAlignmentHorizontal;

    iget-object v0, p2, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivAlignmentVertical;

    invoke-virtual {p0, p1, p3, v0}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->o(Lcom/yandex/div/internal/widget/AspectImageView;Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)V

    iget-object p3, p2, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p2, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindContentAlignment$callback$1;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindContentAlignment$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Loj3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImage;->o:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    iget-object p0, p2, Lcom/yandex/div2/DivImage;->p:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final x(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;)V
    .locals 8

    iget-object v0, p3, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p4, :cond_1

    iget-object v2, p4, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-static {v0, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p3, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    move v4, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_2

    invoke-static {}, Ly71;->u()V

    :cond_2
    check-cast v6, Lcom/yandex/div2/DivFilter;

    if-eqz v4, :cond_4

    if-eqz p4, :cond_3

    iget-object v4, p4, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yandex/div2/DivFilter;

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    invoke-static {v6, v4}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->h(Lcom/yandex/div2/DivFilter;Lcom/yandex/div2/DivFilter;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    move v4, v2

    :goto_4
    move v5, v7

    goto :goto_2

    :cond_5
    move v4, v3

    :cond_6
    if-eqz v4, :cond_7

    return-void

    :cond_7
    iget-object p4, p3, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    invoke-virtual {p0, p1, p2, p4}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->p(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Ljava/util/List;)V

    iget-object p4, p3, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz p4, :cond_b

    check-cast p4, Ljava/lang/Iterable;

    instance-of v0, p4, Ljava/util/Collection;

    if-eqz v0, :cond_9

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_a
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/div2/DivFilter;

    invoke-static {v0}, Lcom/yandex/div/core/util/DivDataExtensionsKt;->B(Lcom/yandex/div2/DivFilter;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_b
    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    return-void

    :cond_c
    new-instance p4, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindFilters$callback$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindFilters$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;)V

    iget-object p0, p3, Lcom/yandex/div2/DivImage;->t:Ljava/util/List;

    if-eqz p0, :cond_e

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivFilter;

    instance-of v0, p3, Lcom/yandex/div2/DivFilter$a;

    if-eqz v0, :cond_d

    check-cast p3, Lcom/yandex/div2/DivFilter$a;

    invoke-virtual {p3}, Lcom/yandex/div2/DivFilter$a;->c()Lcom/yandex/div2/DivBlur;

    move-result-object p3

    iget-object p3, p3, Lcom/yandex/div2/DivBlur;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    goto :goto_6

    :cond_e
    return-void
.end method

.method public final y(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Loj3;)V
    .locals 1

    iget-object v0, p2, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p3, :cond_0

    iget-object p3, p3, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {v0, p3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p2, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p3, p4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/yandex/div2/DivImageScale;

    invoke-virtual {p0, p1, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->r(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImageScale;)V

    iget-object p3, p2, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p3}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p3

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p2, p2, Lcom/yandex/div2/DivImage;->N:Lcom/yandex/div/json/expressions/Expression;

    new-instance p3, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindImageScale$1;

    invoke-direct {p3, p0, p1}, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindImageScale$1;-><init>(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;)V

    invoke-virtual {p2, p4, p3}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final z(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lcom/yandex/div2/DivImage;Lwc3;)V
    .locals 10

    iget-object v0, p3, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    iget-object v2, p4, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-static {v0, v2}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v0

    iget-object v2, p3, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p4, :cond_1

    iget-object v3, p4, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-static {v2, v3}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p3, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    if-eqz p4, :cond_2

    iget-object v1, p4, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    :cond_2
    invoke-static {v2, v1}, Luj3;->b(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    move p4, v4

    goto :goto_3

    :cond_4
    :goto_2
    move p4, v3

    :goto_3
    iget-object v1, p3, Lcom/yandex/div2/DivImage;->K:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p3, Lcom/yandex/div2/DivImage;->G:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {v1}, Luj3;->d(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v4

    :goto_4
    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->isImageLoaded()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p4, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->E(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)V

    :cond_7
    if-nez v0, :cond_8

    iget-object p4, p3, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p4}, Luj3;->f(Lcom/yandex/div/json/expressions/Expression;)Z

    move-result p4

    if-nez p4, :cond_8

    iget-object p4, p3, Lcom/yandex/div2/DivImage;->B:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v0

    new-instance v1, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindPreviewAndImage$1;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/yandex/div/core/view2/divs/DivImageBinder$bindPreviewAndImage$1;-><init>(Lcom/yandex/div/core/view2/divs/DivImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)V

    invoke-virtual {p4, v0, v1}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/yandex/div/core/view2/divs/widgets/DivImageView;->addSubscription(Lqc2;)V

    :cond_8
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->q(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;Lwc3;)Z

    move-result p4

    if-nez p4, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object p4

    invoke-virtual {p0, p4, p1, p3}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->C(Loj3;Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div2/DivImage;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivImageBinder;->t(Lcom/yandex/div/core/view2/divs/widgets/DivImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivImage;ZLwc3;)V

    :cond_9
    return-void
.end method
