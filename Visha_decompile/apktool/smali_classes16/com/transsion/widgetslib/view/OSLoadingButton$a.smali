.class public Lcom/transsion/widgetslib/view/OSLoadingButton$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/OSLoadingButton;->setLoading(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/view/OSLoadingButton;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/OSLoadingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSLoadingButton;->b(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSLoadingButton;->b(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSLoadingButton;->b(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_space200:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_space150:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/OSLoadingButton;->b(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSBigButton;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/OSLoadingButton;->c(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/OSLoadingButton$a;->b:Lcom/transsion/widgetslib/view/OSLoadingButton;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/OSLoadingButton;->c(Lcom/transsion/widgetslib/view/OSLoadingButton;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
