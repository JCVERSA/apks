.class public final Lcom/yandex/div/internal/widget/TransientViewMixin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll7b;


# instance fields
.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    invoke-static {p1}, Landroidx/core/view/ViewKt;->getAllViews(Landroid/view/View;)Lpc9;

    move-result-object p0

    sget-object p1, Lcom/yandex/div/internal/widget/TransientViewMixin$invalidateView$$inlined$filterIsInstance$1;->INSTANCE:Lcom/yandex/div/internal/widget/TransientViewMixin$invalidateView$$inlined$filterIsInstance$1;

    invoke-static {p0, p1}, Lkotlin/sequences/SequencesKt___SequencesKt;->F(Lpc9;Le74;)Lpc9;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.sequences.Sequence<R of kotlin.sequences.SequencesKt___SequencesKt.filterIsInstance>"

    invoke-static {p0, p1}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvg2;

    invoke-interface {p1}, Lvg2;->invalidateBorder()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isTransient()Z
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/TransientViewMixin;->b:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public transitionFinished(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/yandex/div/internal/widget/TransientViewMixin;->b:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yandex/div/internal/widget/TransientViewMixin;->b:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/TransientViewMixin;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public transitionStarted(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/yandex/div/internal/widget/TransientViewMixin;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yandex/div/internal/widget/TransientViewMixin;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/internal/widget/TransientViewMixin;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method
