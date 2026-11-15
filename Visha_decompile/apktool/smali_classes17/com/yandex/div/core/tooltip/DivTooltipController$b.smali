.class public final Lcom/yandex/div/core/tooltip/DivTooltipController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/tooltip/DivTooltipController;->u(Landroid/view/View;Lcom/yandex/div2/DivTooltip;Lcom/yandex/div/core/view2/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/Div2View;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Lcom/yandex/div2/DivTooltip;

.field public final synthetic f:Loj3;

.field public final synthetic g:Lcom/yandex/div/core/tooltip/DivTooltipController;

.field public final synthetic h:Lb19;

.field public final synthetic i:Lcom/yandex/div/core/view2/a;

.field public final synthetic j:Lcom/yandex/div2/Div;

.field public final synthetic k:Lcom/yandex/div/core/tooltip/DivTooltipContainer;


# direct methods
.method public constructor <init>(Lcom/yandex/div/core/view2/Div2View;Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Loj3;Lcom/yandex/div/core/tooltip/DivTooltipController;Lb19;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Lcom/yandex/div/core/tooltip/DivTooltipContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->b:Lcom/yandex/div/core/view2/Div2View;

    iput-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->d:Landroid/view/View;

    iput-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->e:Lcom/yandex/div2/DivTooltip;

    iput-object p5, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->f:Loj3;

    iput-object p6, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->g:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iput-object p7, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->h:Lb19;

    iput-object p8, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->i:Lcom/yandex/div/core/view2/a;

    iput-object p9, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->j:Lcom/yandex/div2/Div;

    iput-object p10, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->k:Lcom/yandex/div/core/tooltip/DivTooltipContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-static {p1}, Lit2;->b(Lcom/yandex/div/core/view2/Div2View;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->c:Landroid/view/View;

    iget-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->d:Landroid/view/View;

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->e:Lcom/yandex/div2/DivTooltip;

    iget-object p5, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->f:Loj3;

    invoke-static {p2, p3, p4, p5}, Lit2;->f(Landroid/view/View;Landroid/view/View;Lcom/yandex/div2/DivTooltip;Loj3;)Landroid/graphics/Point;

    move-result-object p2

    iget-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->c:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->g:Lcom/yandex/div/core/tooltip/DivTooltipController;

    invoke-static {p4}, Lcom/yandex/div/core/tooltip/DivTooltipController;->c(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lxc3;

    move-result-object p4

    iget-object p5, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p5}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p5

    iget-object p6, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p6}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p4

    new-instance p5, Ljava/lang/Throwable;

    const-string p6, "Tooltip width > screen size, width was changed"

    invoke-direct {p5, p6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_0
    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->c:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    if-ge p1, p4, :cond_1

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->g:Lcom/yandex/div/core/tooltip/DivTooltipController;

    invoke-static {p4}, Lcom/yandex/div/core/tooltip/DivTooltipController;->c(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lxc3;

    move-result-object p4

    iget-object p5, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p5}, Lcom/yandex/div/core/view2/Div2View;->getDataTag()Lei2;

    move-result-object p5

    iget-object p6, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->b:Lcom/yandex/div/core/view2/Div2View;

    invoke-virtual {p6}, Lcom/yandex/div/core/view2/Div2View;->getDivData()Lcom/yandex/div2/DivData;

    move-result-object p6

    invoke-virtual {p4, p5, p6}, Lxc3;->a(Lei2;Lcom/yandex/div2/DivData;)Lwc3;

    move-result-object p4

    new-instance p5, Ljava/lang/Throwable;

    const-string p6, "Tooltip height > screen size, height was changed"

    invoke-direct {p5, p6}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Lwc3;->f(Ljava/lang/Throwable;)V

    :cond_1
    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->h:Lb19;

    iget p5, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p4, p5, p2, p3, p1}, Landroid/widget/PopupWindow;->update(IIII)V

    iget-object p1, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->g:Lcom/yandex/div/core/tooltip/DivTooltipController;

    iget-object p2, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->i:Lcom/yandex/div/core/view2/a;

    iget-object p3, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->j:Lcom/yandex/div2/Div;

    iget-object p4, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->k:Lcom/yandex/div/core/tooltip/DivTooltipContainer;

    invoke-static {p1, p2, p3, p4}, Lcom/yandex/div/core/tooltip/DivTooltipController;->e(Lcom/yandex/div/core/tooltip/DivTooltipController;Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/Div;Landroid/view/View;)V

    iget-object p0, p0, Lcom/yandex/div/core/tooltip/DivTooltipController$b;->g:Lcom/yandex/div/core/tooltip/DivTooltipController;

    invoke-static {p0}, Lcom/yandex/div/core/tooltip/DivTooltipController;->d(Lcom/yandex/div/core/tooltip/DivTooltipController;)Lrt2;

    move-result-object p0

    invoke-interface {p0}, Lrt2;->b()Lrt2$a;

    return-void
.end method
