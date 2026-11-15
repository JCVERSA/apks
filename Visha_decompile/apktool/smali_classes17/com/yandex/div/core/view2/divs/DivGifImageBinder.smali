.class public final Lcom/yandex/div/core/view2/divs/DivGifImageBinder;
.super Lwu2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/divs/DivGifImageBinder$a;,
        Lcom/yandex/div/core/view2/divs/DivGifImageBinder$b;
    }
.end annotation


# static fields
.field public static final e:Lcom/yandex/div/core/view2/divs/DivGifImageBinder$a;


# instance fields
.field public final b:Lwk2;

.field public final c:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

.field public final d:Lxc3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->e:Lcom/yandex/div/core/view2/divs/DivGifImageBinder$a;

    return-void
.end method

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

    iput-object p2, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->b:Lwk2;

    iput-object p3, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->c:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

    iput-object p4, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->d:Lxc3;

    return-void
.end method

.method public static final synthetic f(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/internal/widget/AspectImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->i(Lcom/yandex/div/internal/widget/AspectImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-void
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivGifImage;Lwc3;)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->j(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivGifImage;Lwc3;)V

    return-void
.end method

.method public static final synthetic h(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Ldq0;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->l(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Ldq0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/yandex/div/core/view2/a;Log2;Log2;)V
    .locals 0

    check-cast p1, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;

    check-cast p3, Lcom/yandex/div2/DivGifImage;

    check-cast p4, Lcom/yandex/div2/DivGifImage;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->k(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGifImage;Lcom/yandex/div2/DivGifImage;)V

    return-void
.end method

.method public final i(Lcom/yandex/div/internal/widget/AspectImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 0

    invoke-virtual {p3, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAlignmentHorizontal;

    invoke-virtual {p4, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yandex/div2/DivAlignmentVertical;

    invoke-static {p0, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->O(Lcom/yandex/div2/DivAlignmentHorizontal;Lcom/yandex/div2/DivAlignmentVertical;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/internal/widget/AspectImageView;->setGravity(I)V

    return-void
.end method

.method public final j(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivGifImage;Lwc3;)V
    .locals 10

    iget-object v0, p4, Lcom/yandex/div2/DivGifImage;->u:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {v0, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->getGifUrl$div_release()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->resetImageLoaded()V

    invoke-virtual {p1}, Lcom/yandex/div/core/widget/LoadableImageView;->getLoadReference$div_release()Ljn5;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljn5;->cancel()V

    :cond_1
    iget-object v2, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->c:Lcom/yandex/div/core/view2/DivPlaceholderLoader;

    iget-object v1, p4, Lcom/yandex/div2/DivGifImage;->H:Lcom/yandex/div/json/expressions/Expression;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget-object p4, p4, Lcom/yandex/div2/DivGifImage;->D:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p4, p3}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v6

    new-instance v8, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;

    invoke-direct {v8, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V

    new-instance v9, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;

    invoke-direct {v9, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$applyGifImage$2;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/yandex/div/core/view2/DivPlaceholderLoader;->b(Lkn5;Lwc3;Ljava/lang/String;IZLe74;Le74;)V

    invoke-virtual {p1, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->setGifUrl$div_release(Landroid/net/Uri;)V

    iget-object p3, p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->b:Lwk2;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;

    invoke-direct {p5, p2, p0, p1}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$c;-><init>(Lcom/yandex/div/core/view2/Div2View;Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V

    invoke-interface {p3, p4, p5}, Lwk2;->loadImageBytes(Ljava/lang/String;Lrk2;)Ljn5;

    move-result-object p0

    const-string p3, "private fun DivGifImageV\u2026ference = reference\n    }"

    invoke-static {p0, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/yandex/div/core/view2/Div2View;->addLoadReference(Ljn5;Landroid/view/View;)V

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/widget/LoadableImageView;->setLoadReference$div_release(Ljn5;)V

    return-void
.end method

.method public k(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivGifImage;Lcom/yandex/div2/DivGifImage;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v0, p3

    move-object/from16 v14, p4

    const-string v2, "<this>"

    invoke-static {v15, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bindingContext"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "div"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/yandex/div/core/view2/a;->b()Loj3;

    move-result-object v13

    iget-object v2, v1, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->d:Lxc3;

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object v17

    iget-object v4, v0, Lcom/yandex/div2/DivGifImage;->b:Lcom/yandex/div2/DivAction;

    iget-object v5, v0, Lcom/yandex/div2/DivGifImage;->d:Ljava/util/List;

    iget-object v6, v0, Lcom/yandex/div2/DivGifImage;->A:Ljava/util/List;

    iget-object v7, v0, Lcom/yandex/div2/DivGifImage;->q:Ljava/util/List;

    iget-object v8, v0, Lcom/yandex/div2/DivGifImage;->x:Ljava/util/List;

    iget-object v9, v0, Lcom/yandex/div2/DivGifImage;->w:Ljava/util/List;

    iget-object v10, v0, Lcom/yandex/div2/DivGifImage;->G:Ljava/util/List;

    iget-object v11, v0, Lcom/yandex/div2/DivGifImage;->F:Ljava/util/List;

    iget-object v12, v0, Lcom/yandex/div2/DivGifImage;->c:Lcom/yandex/div2/DivAnimation;

    invoke-virtual/range {p3 .. p3}, Lcom/yandex/div2/DivGifImage;->r()Lcom/yandex/div2/DivAccessibility;

    move-result-object v18

    iget-object v2, v0, Lcom/yandex/div2/DivGifImage;->l:Lcom/yandex/div/json/expressions/Expression;

    move-object/from16 v19, v2

    move-object/from16 v2, p1

    move-object v1, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v1

    move-object v1, v14

    move-object/from16 v14, v19

    invoke-static/range {v2 .. v14}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->j(Landroid/view/View;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivAction;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAccessibility;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v2, v0, Lcom/yandex/div2/DivGifImage;->i:Lcom/yandex/div2/DivAspect;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/yandex/div2/DivGifImage;->i:Lcom/yandex/div2/DivAspect;

    :goto_0
    move-object/from16 v3, v18

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v15, v2, v1, v3}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->A(Landroid/view/View;Lcom/yandex/div2/DivAspect;Lcom/yandex/div2/DivAspect;Loj3;)V

    iget-object v1, v0, Lcom/yandex/div2/DivGifImage;->K:Lcom/yandex/div/json/expressions/Expression;

    new-instance v2, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$bind$1;

    invoke-direct {v2, v15}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$bind$1;-><init>(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;)V

    invoke-virtual {v1, v3, v2}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->addSubscription(Lqc2;)V

    iget-object v1, v0, Lcom/yandex/div2/DivGifImage;->n:Lcom/yandex/div/json/expressions/Expression;

    iget-object v2, v0, Lcom/yandex/div2/DivGifImage;->o:Lcom/yandex/div/json/expressions/Expression;

    move-object v7, v3

    move-object/from16 v3, p0

    invoke-virtual {v3, v15, v7, v1, v2}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->m(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v8, v0, Lcom/yandex/div2/DivGifImage;->u:Lcom/yandex/div/json/expressions/Expression;

    new-instance v9, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$bind$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$bind$2;-><init>(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Lcom/yandex/div/core/view2/Div2View;Loj3;Lcom/yandex/div2/DivGifImage;Lwc3;)V

    invoke-virtual {v8, v7, v9}, Lcom/yandex/div/json/expressions/Expression;->f(Loj3;Le74;)Lqc2;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->addSubscription(Lqc2;)V

    return-void
.end method

.method public final l(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Ldq0;)V
    .locals 1

    new-instance p0, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$b;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$b;-><init>(Ljava/lang/ref/WeakReference;Ldq0;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final m(Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder;->i(Lcom/yandex/div/internal/widget/AspectImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    new-instance v6, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/core/view2/divs/DivGifImageBinder$observeContentAlignment$callback$1;-><init>(Lcom/yandex/div/core/view2/divs/DivGifImageBinder;Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;Loj3;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p3, p2, v6}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->addSubscription(Lqc2;)V

    invoke-virtual {p4, p2, v6}, Lcom/yandex/div/json/expressions/Expression;->e(Loj3;Le74;)Lqc2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;->addSubscription(Lqc2;)V

    return-void
.end method
