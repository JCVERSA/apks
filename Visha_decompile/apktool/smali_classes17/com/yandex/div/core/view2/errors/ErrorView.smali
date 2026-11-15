.class public final Lcom/yandex/div/core/view2/errors/ErrorView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc2;


# instance fields
.field public final b:Landroid/view/ViewGroup;

.field public final c:Lcom/yandex/div/core/view2/errors/ErrorModel;

.field public final d:Z

.field public e:Landroid/view/ViewGroup;

.field public f:Lda2;

.field public g:Lmd3;

.field public final h:Lqc2;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/yandex/div/core/view2/errors/ErrorModel;Z)V
    .locals 1

    const-string v0, "root"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorModel"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->c:Lcom/yandex/div/core/view2/errors/ErrorModel;

    iput-boolean p3, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->d:Z

    new-instance p1, Lcom/yandex/div/core/view2/errors/ErrorView$modelObservation$1;

    invoke-direct {p1, p0}, Lcom/yandex/div/core/view2/errors/ErrorView$modelObservation$1;-><init>(Lcom/yandex/div/core/view2/errors/ErrorView;)V

    invoke-virtual {p2, p1}, Lcom/yandex/div/core/view2/errors/ErrorModel;->r(Le74;)Lqc2;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->h:Lqc2;

    return-void
.end method

.method public static synthetic a(Lcom/yandex/div/core/view2/errors/ErrorView;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorView;->o(Lcom/yandex/div/core/view2/errors/ErrorView;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lcom/yandex/div/core/view2/errors/ErrorView;)Lcom/yandex/div/core/view2/errors/ErrorModel;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->c:Lcom/yandex/div/core/view2/errors/ErrorModel;

    return-object p0
.end method

.method public static final synthetic d(Lcom/yandex/div/core/view2/errors/ErrorView;)Lmd3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->g:Lmd3;

    return-object p0
.end method

.method public static final synthetic e(Lcom/yandex/div/core/view2/errors/ErrorView;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorView;->h(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/yandex/div/core/view2/errors/ErrorView;Lmd3;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/view2/errors/ErrorView;->k(Lmd3;)V

    return-void
.end method

.method public static final o(Lcom/yandex/div/core/view2/errors/ErrorView;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->c:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->u()V

    return-void
.end method


# virtual methods
.method public final D()V
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lda2;

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "root.context"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->c:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-virtual {v2}, Lcom/yandex/div/core/view2/errors/ErrorModel;->p()Le74;

    move-result-object v2

    new-instance v3, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$1;

    invoke-direct {v3, p0}, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$1;-><init>(Lcom/yandex/div/core/view2/errors/ErrorView;)V

    new-instance v4, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;

    invoke-direct {v4, p0}, Lcom/yandex/div/core/view2/errors/ErrorView$tryAddDetailsView$view$2;-><init>(Lcom/yandex/div/core/view2/errors/ErrorView;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lda2;-><init>(Landroid/content/Context;Le74;Lc74;Lc74;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    return-void
.end method

.method public final E(Lmd3;Lmd3;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lmd3;->f()Z

    move-result p1

    invoke-virtual {p2}, Lmd3;->f()Z

    move-result v1

    if-eq p1, v1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    :cond_3
    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p2}, Lmd3;->f()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorView;->D()V

    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lmd3;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lda2;->i(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->c:Lcom/yandex/div/core/view2/errors/ErrorModel;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorModel;->o()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Lda2;->j(Ljava/util/Map;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lmd3;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_7

    goto :goto_1

    :cond_7
    iget-boolean p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->d:Z

    if-eqz p1, :cond_8

    :goto_1
    invoke-virtual {p0}, Lcom/yandex/div/core/view2/errors/ErrorView;->n()V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    iput-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    :goto_2
    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    if-eqz p0, :cond_a

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_3

    :cond_a
    move-object p0, v0

    :goto_3
    instance-of p1, p0, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_b

    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lmd3;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lmd3;->c()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    :cond_c
    :goto_4
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->h:Lqc2;

    invoke-interface {v0}, Lqc2;->close()V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->f:Lda2;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/ClipboardManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string p0, "Failed to access clipboard manager!"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ClipData;

    const-string v2, "Error report"

    const-string v3, "text/plain"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Errors, DivData and Variables are dumped to clipboard!"

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object p0, Lzfb;->a:Lzfb;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed paste report to clipboard!"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lmd3;)V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->g:Lmd3;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/div/core/view2/errors/ErrorView;->E(Lmd3;Lmd3;)V

    iput-object p1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->g:Lmd3;

    return-void
.end method

.method public final n()V
    .locals 10

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/yandex/div/R$drawable;->error_counter_background:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yandex/div/R$dimen;->div_shadow_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    new-instance v1, Lkd3;

    invoke-direct {v1, p0}, Lkd3;-><init>(Lcom/yandex/div/core/view2/errors/ErrorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "metrics"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v2

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->L(Ljava/lang/Number;Landroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    new-instance v1, Lcom/yandex/div/internal/widget/FrameContainerLayout;

    iget-object v2, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v2, "root.context"

    invoke-static {v5, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/yandex/div/internal/widget/FrameContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->b:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/yandex/div/core/view2/errors/ErrorView;->e:Landroid/view/ViewGroup;

    return-void
.end method
