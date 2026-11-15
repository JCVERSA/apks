.class public Lvj5;
.super Lwr4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp7a;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lwr4;-><init>(ILp7a;)V

    return-void
.end method


# virtual methods
.method public a(Lvt7;II)V
    .locals 0

    neg-int p0, p2

    invoke-virtual {p1, p2, p0, p3}, Lvt7;->h(III)V

    return-void
.end method

.method public b(Lvt7;IIIII)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Lvt7;->c(IIIII)V

    return-void
.end method

.method public c(Lvt7;II)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object p0

    invoke-virtual {p0}, Lp7a;->getMenuTotalWidth()I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int/2addr p0, p2

    invoke-virtual {p1, v0, p0, p3}, Lvt7;->h(III)V

    return-void
.end method

.method public d(Lvt7;IIIII)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Lvt7;->c(IIIII)V

    return-void
.end method

.method public e(Lvt7;III)V
    .locals 0

    invoke-virtual {p0}, Lwr4;->getScreenWidth()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {p1, p3, p0, p4}, Lvt7;->h(III)V

    return-void
.end method

.method public f(Lvt7;II)V
    .locals 0

    neg-int p0, p2

    invoke-virtual {p1, p2, p0, p3}, Lvt7;->h(III)V

    return-void
.end method

.method public g(IFIZI)Landroid/graphics/Rect;
    .locals 0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lwr4;->getMenuItemCount()I

    move-result p2

    const-string p3, "LeftHorizontal"

    if-gtz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getClickMenuItemBound: menuItemCount = "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lwr4;->getMenuWidth()I

    move-result p2

    if-gtz p2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getClickMenuItemBound: menuWidth = "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object p0

    const-string p1, "getClickMenuItemBound: left"

    invoke-static {p3, p1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lp7a;->b()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public h(IFLandroid/view/MotionEvent;Z)I
    .locals 2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p0}, Lwr4;->getMenuItemCount()I

    move-result p3

    const/4 v0, -0x1

    if-lez p3, :cond_4

    invoke-virtual {p0}, Lwr4;->getMenuWidth()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lwr4;->getMenuWidth()I

    move-result v1

    if-gtz v1, :cond_1

    return v0

    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object p4

    invoke-virtual {p4}, Lp7a;->b()Z

    move-result p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object p0

    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_0
    sub-int/2addr p1, v1

    int-to-float p0, p1

    sub-float/2addr p2, p0

    float-to-int p0, p2

    div-int/2addr v1, p3

    div-int/2addr p0, v1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public j(I)Z
    .locals 1

    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object v0

    invoke-virtual {v0}, Lp7a;->getMenuTotalWidth()I

    move-result v0

    invoke-virtual {p0}, Lwr4;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k(I)Z
    .locals 1

    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object v0

    invoke-virtual {v0}, Lp7a;->getMenuTotalWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lwr4;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
