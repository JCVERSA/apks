.class public abstract Lwr4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwr4$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lp7a;

.field public c:Lwr4$a;

.field public d:I


# direct methods
.method public constructor <init>(ILp7a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lwr4;->a:I

    iput-object p2, p0, Lwr4;->b:Lp7a;

    new-instance p1, Lwr4$a;

    invoke-direct {p1}, Lwr4$a;-><init>()V

    iput-object p1, p0, Lwr4;->c:Lwr4$a;

    return-void
.end method


# virtual methods
.method public abstract a(Lvt7;II)V
.end method

.method public abstract b(Lvt7;IIIII)V
.end method

.method public abstract c(Lvt7;II)V
.end method

.method public abstract d(Lvt7;IIIII)V
.end method

.method public abstract e(Lvt7;III)V
.end method

.method public abstract f(Lvt7;II)V
.end method

.method public abstract g(IFIZI)Landroid/graphics/Rect;
.end method

.method public getDirection()I
    .locals 0

    iget p0, p0, Lwr4;->a:I

    return p0
.end method

.method public getMenuItemCount()I
    .locals 0

    iget-object p0, p0, Lwr4;->b:Lp7a;

    invoke-virtual {p0}, Lp7a;->getMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getMenuView()Lp7a;
    .locals 0

    iget-object p0, p0, Lwr4;->b:Lp7a;

    return-object p0
.end method

.method public getMenuWidth()I
    .locals 0

    iget-object p0, p0, Lwr4;->b:Lp7a;

    invoke-virtual {p0}, Lp7a;->getMenuTotalWidth()I

    move-result p0

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    iget p0, p0, Lwr4;->d:I

    return p0
.end method

.method public abstract h(IFLandroid/view/MotionEvent;Z)I
.end method

.method public i(I)Z
    .locals 1

    invoke-virtual {p0}, Lwr4;->getMenuView()Lp7a;

    move-result-object v0

    invoke-virtual {v0}, Lp7a;->getMenuTotalWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lwr4;->getDirection()I

    move-result p0

    mul-int/2addr v0, p0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract j(I)Z
.end method

.method public setScreenWidth(I)V
    .locals 0

    iput p1, p0, Lwr4;->d:I

    return-void
.end method
