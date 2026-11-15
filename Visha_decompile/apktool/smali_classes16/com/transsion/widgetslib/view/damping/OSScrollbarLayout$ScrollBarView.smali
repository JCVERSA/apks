.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollBarView"
.end annotation


# instance fields
.field public final b:Landroid/graphics/Paint;

.field public c:F

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d:I

    .line 4
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->e:I

    .line 5
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->f:I

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d:I

    .line 11
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->e:I

    .line 12
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->f:I

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    .line 14
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b:Landroid/graphics/Paint;

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d:I

    .line 18
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->e:I

    .line 19
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->f:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    .line 21
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->i:Landroid/graphics/RectF;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->f:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;)I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->e:I

    return p0
.end method


# virtual methods
.method public c(II)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->e:I

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->f:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public d(IFII)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput p2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->c:F

    iput p3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d:I

    iput p4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    invoke-static {}, Lcom/transsion/widgetthemes/util/Utils;->isRtl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->h:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->d:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->e:I

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->f:I

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->h:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->i:Landroid/graphics/RectF;

    iget v4, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    int-to-float v5, v4

    int-to-float v1, v1

    add-int/2addr v4, v0

    int-to-float v0, v4

    int-to-float v2, v2

    invoke-virtual {v3, v5, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->i:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    iget v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->g:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->i:Landroid/graphics/RectF;

    iget v1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->c:F

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$ScrollBarView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
