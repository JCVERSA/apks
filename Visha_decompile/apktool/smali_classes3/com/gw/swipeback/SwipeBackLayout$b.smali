.class public Lcom/gw/swipeback/SwipeBackLayout$b;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gw/swipeback/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/gw/swipeback/SwipeBackLayout;


# direct methods
.method public constructor <init>(Lcom/gw/swipeback/SwipeBackLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gw/swipeback/SwipeBackLayout;Lcom/gw/swipeback/SwipeBackLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout$b;-><init>(Lcom/gw/swipeback/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-static {p1, p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$202(Lcom/gw/swipeback/SwipeBackLayout;I)I

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$300(Lcom/gw/swipeback/SwipeBackLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$500(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$600(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p3

    iget-object v1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/gw/swipeback/SwipeBackLayout;->access$700(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result v1

    invoke-static {p1, p3, v1, v0}, Lvkb;->c(Landroid/view/View;FFZ)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$800(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$202(Lcom/gw/swipeback/SwipeBackLayout;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$500(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$600(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p3

    iget-object v1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/gw/swipeback/SwipeBackLayout;->access$700(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result v1

    invoke-static {p1, p3, v1, v0}, Lvkb;->b(Landroid/view/View;FFZ)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$800(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$202(Lcom/gw/swipeback/SwipeBackLayout;I)I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$200(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p0

    return p0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 2

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-static {p1, p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$902(Lcom/gw/swipeback/SwipeBackLayout;I)I

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$300(Lcom/gw/swipeback/SwipeBackLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    const/4 p3, 0x4

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$500(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$600(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p3

    iget-object v1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/gw/swipeback/SwipeBackLayout;->access$700(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result v1

    invoke-static {p1, p3, v1, v0}, Lvkb;->d(Landroid/view/View;FFZ)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$902(Lcom/gw/swipeback/SwipeBackLayout;I)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    const/16 p3, 0x8

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$500(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p1

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$600(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p3

    iget-object v1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {v1}, Lcom/gw/swipeback/SwipeBackLayout;->access$700(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result v1

    invoke-static {p1, p3, v1, v0}, Lvkb;->a(Landroid/view/View;FFZ)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    neg-int p3, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$902(Lcom/gw/swipeback/SwipeBackLayout;I)I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$900(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p0

    return p0
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$800(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p0

    return p0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p0

    return p0
.end method

.method public onEdgeTouched(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/customview/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1402(Lcom/gw/swipeback/SwipeBackLayout;I)I

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1200(Lcom/gw/swipeback/SwipeBackLayout;)Lcom/gw/swipeback/SwipeBackLayout$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1100(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1200(Lcom/gw/swipeback/SwipeBackLayout;)Lcom/gw/swipeback/SwipeBackLayout$c;

    move-result-object p1

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$100(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/gw/swipeback/SwipeBackLayout$c;->b(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1100(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1200(Lcom/gw/swipeback/SwipeBackLayout;)Lcom/gw/swipeback/SwipeBackLayout$c;

    move-result-object p1

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$100(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/gw/swipeback/SwipeBackLayout$c;->b(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    const/4 p4, 0x1

    const/high16 p5, 0x3f800000    # 1.0f

    if-eq p3, p4, :cond_1

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    const/16 p1, 0x8

    if-eq p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    int-to-float p2, p2

    mul-float/2addr p2, p5

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$1102(Lcom/gw/swipeback/SwipeBackLayout;F)F

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    int-to-float p1, p1

    mul-float/2addr p1, p5

    invoke-static {p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$800(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    invoke-static {p2, p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1102(Lcom/gw/swipeback/SwipeBackLayout;F)F

    :goto_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1200(Lcom/gw/swipeback/SwipeBackLayout;)Lcom/gw/swipeback/SwipeBackLayout$c;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1200(Lcom/gw/swipeback/SwipeBackLayout;)Lcom/gw/swipeback/SwipeBackLayout$c;

    move-result-object p1

    iget-object p2, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p2}, Lcom/gw/swipeback/SwipeBackLayout;->access$100(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$1100(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p3

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$1300(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p0

    invoke-interface {p1, p2, p3, p0}, Lcom/gw/swipeback/SwipeBackLayout$c;->a(Landroid/view/View;FF)V

    :cond_2
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;->access$902(Lcom/gw/swipeback/SwipeBackLayout;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;->access$202(Lcom/gw/swipeback/SwipeBackLayout;I)I

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$300(Lcom/gw/swipeback/SwipeBackLayout;)Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0, v0}, Lcom/gw/swipeback/SwipeBackLayout;->access$1402(Lcom/gw/swipeback/SwipeBackLayout;I)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1, v0}, Lcom/gw/swipeback/SwipeBackLayout;->access$1402(Lcom/gw/swipeback/SwipeBackLayout;I)I

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1, p2, p3}, Lcom/gw/swipeback/SwipeBackLayout;->access$1500(Lcom/gw/swipeback/SwipeBackLayout;FF)Z

    move-result p1

    const/16 p2, 0x8

    const/4 p3, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$1100(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result p1

    iget-object v2, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {v2}, Lcom/gw/swipeback/SwipeBackLayout;->access$1300(Lcom/gw/swipeback/SwipeBackLayout;)F

    move-result v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->smoothScrollToY(I)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->smoothScrollToX(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p1}, Lcom/gw/swipeback/SwipeBackLayout;->access$400(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    if-eq p1, v1, :cond_8

    if-eq p1, v0, :cond_7

    if-eq p1, p3, :cond_6

    if-eq p1, p2, :cond_5

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->smoothScrollToY(I)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$1000(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->smoothScrollToY(I)V

    goto :goto_1

    :cond_7
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$800(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->smoothScrollToX(I)V

    goto :goto_1

    :cond_8
    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$800(Lcom/gw/swipeback/SwipeBackLayout;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/gw/swipeback/SwipeBackLayout;->smoothScrollToX(I)V

    :goto_1
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$b;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-static {p0}, Lcom/gw/swipeback/SwipeBackLayout;->access$100(Lcom/gw/swipeback/SwipeBackLayout;)Landroid/view/View;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
