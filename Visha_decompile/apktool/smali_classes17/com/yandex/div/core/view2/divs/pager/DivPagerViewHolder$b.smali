.class public final Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;-><init>(Lcom/yandex/div/core/view2/a;Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;Lrg2;Lcom/yandex/div/core/view2/DivViewCreator;Lcom/yandex/div/core/state/DivStatePath;ZLc74;Lc74;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    invoke-static {v0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;->f(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;)Lcom/yandex/div2/Div;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    invoke-static {v1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;->g(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;)Lcom/yandex/div/core/view2/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/a;->a()Lcom/yandex/div/core/view2/Div2View;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/div/core/view2/Div2View;->getDiv2Component$div_release()Lcom/yandex/div/core/dagger/Div2Component;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/div/core/dagger/Div2Component;->H()Lcom/yandex/div/core/view2/DivVisibilityActionTracker;

    move-result-object v1

    iget-object p0, p0, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder$b;->b:Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;

    invoke-static {p0}, Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;->g(Lcom/yandex/div/core/view2/divs/pager/DivPagerViewHolder;)Lcom/yandex/div/core/view2/a;

    move-result-object p0

    invoke-virtual {v1, p0, p1, v0}, Lcom/yandex/div/core/view2/DivVisibilityActionTracker;->s(Lcom/yandex/div/core/view2/a;Landroid/view/View;Lcom/yandex/div2/Div;)V

    :goto_0
    return-void
.end method
