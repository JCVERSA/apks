.class public final Lmp9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p0}, Lmp9;->g()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p0, p1

    return p0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)I
    .locals 0

    invoke-virtual {p0}, Lmp9;->g()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p0, p1

    return p0
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lmp9;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget v1, p0, Lmp9;->a:I

    invoke-virtual {p0, p2}, Lmp9;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0, v1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p3, v0

    invoke-virtual {p0, p2}, Lmp9;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v2

    add-int/2addr p3, v0

    invoke-virtual {p0, p2}, Lmp9;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    invoke-virtual {p2, v1, v2, p3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;ILandroid/graphics/drawable/Drawable;ILdha;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, p2}, Lmp9;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    if-eqz p5, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ldha;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p5, p2}, Lmp9;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lmp9;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-virtual {p0, p2}, Lmp9;->a(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    invoke-virtual {p2, p3, v0, p4, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lmp9;->b:I

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public final h(II)V
    .locals 0

    iput p1, p0, Lmp9;->a:I

    iput p2, p0, Lmp9;->b:I

    return-void
.end method
