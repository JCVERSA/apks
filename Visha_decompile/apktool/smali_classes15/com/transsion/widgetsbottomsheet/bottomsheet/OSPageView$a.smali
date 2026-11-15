.class public final Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Ljava/lang/CharSequence;

.field public final synthetic d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->b:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->c:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {v0}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$getSubTitleResized$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetsbottomsheet/R$dimen;->os_liquid_toolbar_subtitle_min_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->b:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3, v3}, Lolb;->F0(Landroid/widget/TextView;FFZI)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView$a;->d:Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;

    invoke-static {p0, v3}, Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;->access$setSubTitleResized$p(Lcom/transsion/widgetsbottomsheet/bottomsheet/OSPageView;Z)V

    :cond_2
    return-void
.end method
