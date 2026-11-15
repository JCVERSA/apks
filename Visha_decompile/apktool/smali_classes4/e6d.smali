.class public Le6d;
.super Lo1d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le6d$a;
    }
.end annotation


# instance fields
.field public h:Landroid/view/View;

.field public i:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le6d$a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lo1d;-><init>(Landroid/content/Context;Le6d$a;I)V

    sget p1, Lcom/mgmi/R$id;->close_ad:I

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p0, p1}, Lo1d;->d(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lo1d;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mgmi/R$layout;->poptoolwindow:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le6d;->h:Landroid/view/View;

    sget v1, Lcom/mgmi/R$id;->close_ad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le6d;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Le6d;->h:Landroid/view/View;

    return-object p0
.end method

.method public e()I
    .locals 1

    iget-object p0, p0, Lo1d;->b:Landroid/content/Context;

    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {p0, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public f()I
    .locals 1

    iget-object p0, p0, Lo1d;->b:Landroid/content/Context;

    const/high16 v0, 0x42f00000    # 120.0f

    invoke-static {p0, v0}, Lw3d;->a(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public h(Landroid/view/View;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo1d;->c(Landroid/os/IBinder;)V

    iget-object v0, p0, Le6d;->i:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Le6d;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v3, p0, Le6d;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_0

    :cond_0
    move v0, v2

    move v3, v0

    :goto_0
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v7, p0, Lo1d;->g:Le6d$a;

    invoke-interface {v7}, Le6d$a;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Point;->y:I

    iget v7, v7, Landroid/graphics/Point;->x:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lmpd;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    :goto_1
    aget v9, v6, v1

    sub-int v10, v9, v0

    add-int/2addr v10, v4

    if-gtz v10, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    if-lez v8, :cond_3

    add-int v10, v9, v4

    if-le v10, v8, :cond_3

    sub-int/2addr v8, v0

    goto :goto_2

    :cond_3
    add-int/2addr v9, v4

    sub-int v8, v9, v0

    :goto_2
    aget v0, v6, v2

    sub-int/2addr v7, v3

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v4

    const/high16 v9, 0x42480000    # 50.0f

    invoke-static {v4, v9}, Lw3d;->a(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_4

    iget-object v0, p0, Lo1d;->e:Landroid/view/View;

    sget v4, Lcom/mgmi/R$drawable;->mgmi_pop_window_bg_up:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    aget v0, v6, v2

    sub-int/2addr v0, v3

    invoke-virtual {p0, p1, v1, v8, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0, v2}, Le6d;->i(Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lo1d;->e:Landroid/view/View;

    sget v3, Lcom/mgmi/R$drawable;->mgmi_pop_window_bg:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    aget v0, v6, v2

    add-int/2addr v0, v5

    invoke-virtual {p0, p1, v1, v8, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0, v1}, Le6d;->i(Z)V

    :goto_3
    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/mgmi/R$id;->close_ad:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lo1d;->g:Le6d$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le6d$a;->a()V

    :cond_0
    return-void
.end method
