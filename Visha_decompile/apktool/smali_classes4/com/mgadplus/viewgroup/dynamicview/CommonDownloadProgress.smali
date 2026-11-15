.class public Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:Landroid/graphics/PorterDuffXfermode;

.field public c:I

.field public d:I

.field public e:F

.field public f:Landroid/graphics/Paint;

.field public g:Landroid/graphics/Paint;

.field public h:Landroid/graphics/Paint;

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/RectF;

.field public k:Landroid/graphics/Bitmap;

.field public l:F

.field public m:Landroid/graphics/Bitmap;

.field public n:Landroid/graphics/Canvas;

.field public o:F

.field public p:Z

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Landroid/graphics/BitmapShader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->b:Landroid/graphics/PorterDuffXfermode;

    const/16 p1, 0x1c

    .line 5
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->c:I

    const/high16 p1, 0x42c80000    # 100.0f

    .line 6
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->e:F

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->p:Z

    .line 8
    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getProgressText()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->y:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public final b()V
    .locals 6

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->w:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->i:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->j:Landroid/graphics/RectF;

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->q:I

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->u:I

    const-string v0, "#ff888888"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->s:I

    const-string v0, "#0F000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->t:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mgmi/R$drawable;->flicker:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->l:F

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->e()V

    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->x:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->t:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->x:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public final d(Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget v0, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle_dP_textSize:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->w:I

    sget v0, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle_dP_loadingColor:I

    const-string v1, "#F06000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->q:I

    sget v0, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle_dP_stopColor:I

    const-string v1, "#ffEEEFEF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->r:I

    sget v0, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle_dP_radius:I

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->c:I

    invoke-virtual {p0, v1}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->a(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->x:I

    sget v0, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle_dP_borderWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    sget v0, Lcom/mgmi/R$styleable;->DownloadProgressViewStyle_dP_textColor:I

    const-string v1, "#ff888888"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->v:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final e()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->d:I

    sub-int/2addr v1, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->m:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->m:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->n:Landroid/graphics/Canvas;

    return-void
.end method

.method public final f(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->e:F

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->n:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->n:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->n:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->u:I

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->n:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->b:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->n:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->k:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->l:F

    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->m:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->z:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->j:Landroid/graphics/RectF;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->x:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public finishButton(FLjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->p:Z

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->y:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public finishButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->p:Z

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->y:Ljava/lang/String;

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final g(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->s:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-direct {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->getProgressText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->i:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isFileDownload(Z)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->c(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->f(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->g(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->c:I

    invoke-virtual {p0, p2}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->a(I)I

    move-result p2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->m:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->b()V

    :cond_2
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->p:Z

    iget v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->e:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    iput p1, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/mgadplus/viewgroup/dynamicview/CommonDownloadProgress;->o:F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
