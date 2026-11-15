.class public Lp7a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/util/List;

.field public c:Landroid/content/Context;

.field public d:Z

.field public e:I

.field public f:I

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp7a;->g:Z

    iput-object p1, p0, Lp7a;->c:Landroid/content/Context;

    const/4 p1, 0x0

    iput p1, p0, Lp7a;->a:I

    iput-boolean p2, p0, Lp7a;->d:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lp7a;->b:Ljava/util/List;

    iget-boolean p1, p0, Lp7a;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lp7a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_menu_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lp7a;->e:I

    iget-object p1, p0, Lp7a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_menu_item_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lp7a;->f:I

    iget-object p1, p0, Lp7a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/widgetslib/R$dimen;->os_dimen_sm_menu_item_circle_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lp7a;->h:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-boolean p0, p0, Lp7a;->d:Z

    return p0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lp7a;->g:Z

    return p0
.end method

.method public getAdapterPosition()I
    .locals 1

    iget-object v0, p0, Lp7a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp7a;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lp7a;->c:Landroid/content/Context;

    return-object p0
.end method

.method public getHiosCircleRadius()I
    .locals 0

    iget p0, p0, Lp7a;->h:I

    return p0
.end method

.method public getHiosSpaceRatio()F
    .locals 2

    iget-object v0, p0, Lp7a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lp7a;->e:I

    iget v1, p0, Lp7a;->f:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lp7a;->getMenuTotalWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getMenuItemPadding()I
    .locals 0

    iget p0, p0, Lp7a;->f:I

    return p0
.end method

.method public getMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lu7a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lp7a;->b:Ljava/util/List;

    return-object p0
.end method

.method public getMenuPadding()I
    .locals 0

    iget p0, p0, Lp7a;->e:I

    return p0
.end method

.method public getMenuTotalWidth()I
    .locals 3

    iget-boolean v0, p0, Lp7a;->d:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lp7a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp7a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lp7a;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lp7a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_0
    return v2

    :cond_2
    iget-object p0, p0, Lp7a;->b:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw v1
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lp7a;->a:I

    return p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lp7a;->c:Landroid/content/Context;

    return-void
.end method

.method public setIsMenuImageType(Z)V
    .locals 0

    iput-boolean p1, p0, Lp7a;->g:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    iput p1, p0, Lp7a;->a:I

    return-void
.end method
