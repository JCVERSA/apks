.class public Lcom/app/hubert/guide/model/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/app/hubert/guide/model/HighLight;


# instance fields
.field public a:Landroid/view/View;

.field public b:Lcom/app/hubert/guide/model/HighLight$Shape;

.field public c:I

.field public d:I

.field public e:Lcom/app/hubert/guide/model/b;

.field public f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/hubert/guide/model/c;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/app/hubert/guide/model/c;->b:Lcom/app/hubert/guide/model/HighLight$Shape;

    iput p3, p0, Lcom/app/hubert/guide/model/c;->c:I

    iput p4, p0, Lcom/app/hubert/guide/model/c;->d:I

    return-void
.end method


# virtual methods
.method public a()Lcom/app/hubert/guide/model/HighLight$Shape;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/c;->b:Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object p0
.end method

.method public b(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/app/hubert/guide/model/c;->a:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/app/hubert/guide/model/c;->f:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/app/hubert/guide/model/c;->d(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/app/hubert/guide/model/c;->f:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/app/hubert/guide/model/c;->e:Lcom/app/hubert/guide/model/b;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/app/hubert/guide/model/b;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/app/hubert/guide/model/c;->d(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/app/hubert/guide/model/c;->f:Landroid/graphics/RectF;

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/app/hubert/guide/model/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'s location:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/app/hubert/guide/model/c;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldq5;->c(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/app/hubert/guide/model/c;->f:Landroid/graphics/RectF;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the highlight view is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lcom/app/hubert/guide/model/c;->c:I

    return p0
.end method

.method public final d(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lcom/app/hubert/guide/model/c;->a:Landroid/view/View;

    invoke-static {p1, v1}, Lldc;->a(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/app/hubert/guide/model/c;->d:I

    sub-int/2addr v1, p0

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p0

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p0

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-object v0
.end method

.method public e(Lcom/app/hubert/guide/model/b;)V
    .locals 0

    iput-object p1, p0, Lcom/app/hubert/guide/model/c;->e:Lcom/app/hubert/guide/model/b;

    return-void
.end method

.method public getOptions()Lcom/app/hubert/guide/model/b;
    .locals 0

    iget-object p0, p0, Lcom/app/hubert/guide/model/c;->e:Lcom/app/hubert/guide/model/b;

    return-object p0
.end method

.method public getRadius()F
    .locals 2

    iget-object v0, p0, Lcom/app/hubert/guide/model/c;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/app/hubert/guide/model/c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget p0, p0, Lcom/app/hubert/guide/model/c;->d:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the highlight view is null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
