.class public Lcom/transsion/widgetslib/widget/SearchBar$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/SearchBar;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/widget/SearchBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->a(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->a(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->b(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->r(Lcom/transsion/widgetslib/widget/SearchBar;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->j(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v2}, Lcom/transsion/widgetslib/widget/SearchBar;->getBackViewStaticWidth()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/transsion/widgetslib/widget/SearchBar;->q(Lcom/transsion/widgetslib/widget/SearchBar;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->o(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v3}, Lcom/transsion/widgetslib/widget/SearchBar;->k(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/widget/SearchBar;->s(Lcom/transsion/widgetslib/widget/SearchBar;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getIsBackMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->h(Lcom/transsion/widgetslib/widget/SearchBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->b(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->a(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->n(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->v(Lcom/transsion/widgetslib/widget/SearchBar;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->n(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->p(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->n(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lolb;->l0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->k(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->k(Lcom/transsion/widgetslib/widget/SearchBar;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->n(Lcom/transsion/widgetslib/widget/SearchBar;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {v1}, Lcom/transsion/widgetslib/widget/SearchBar;->m(Lcom/transsion/widgetslib/widget/SearchBar;)Lcom/transsion/widgetslib/widget/OSIconTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/SearchBar$i;->b:Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->t(Lcom/transsion/widgetslib/widget/SearchBar;)V

    const/4 p0, 0x1

    return p0
.end method
