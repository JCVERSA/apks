.class public Lcom/transsion/video_edit/ThumbnailSelectorBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;,
        Lcom/transsion/video_edit/ThumbnailSelectorBar$a;
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:I

.field public D:I

.field public E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

.field public F:J

.field public G:Lcom/transsion/video_edit/b$a;

.field public H:Lcom/transsion/video_edit/ThumbnailSelectorBar$a;

.field public b:Landroid/graphics/Paint;

.field public c:I

.field public d:I

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:Landroid/graphics/Rect;

.field public h:Landroid/graphics/Rect;

.field public i:Landroid/graphics/Rect;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/graphics/Paint;

.field public n:Z

.field public o:Landroid/graphics/Matrix;

.field public p:Landroid/graphics/Matrix;

.field public pointer_offy:I

.field public q:Z

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p3, 0x88

    const/4 p4, 0x0

    .line 5
    invoke-static {p3, p4, p4, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    iput p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->c:I

    .line 6
    invoke-static {p4, p4, p4, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    iput p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->d:I

    .line 7
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    .line 8
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f:Landroid/graphics/Rect;

    .line 9
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g:Landroid/graphics/Rect;

    .line 10
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h:Landroid/graphics/Rect;

    .line 11
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    const/4 p3, 0x1

    .line 12
    iput-boolean p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->n:Z

    .line 13
    iput-boolean p4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    .line 14
    new-instance p3, Ljava/lang/String;

    const/4 p4, 0x6

    new-array v0, p4, [C

    invoke-direct {p3, v0}, Ljava/lang/String;-><init>([C)V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->A:Ljava/lang/String;

    .line 15
    new-instance p3, Ljava/lang/String;

    new-array p4, p4, [C

    invoke-direct {p3, p4}, Ljava/lang/String;-><init>([C)V

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->B:Ljava/lang/String;

    .line 16
    sget-object p3, Lcom/transsion/video_edit/R$styleable;->EditBarSelector:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcom/transsion/video_edit/R$styleable;->EditBarSelector_android_paddingLeft:I

    const/16 p3, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->v:I

    .line 18
    sget p2, Lcom/transsion/video_edit/R$styleable;->EditBarSelector_android_paddingRight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->w:I

    .line 19
    sget p2, Lcom/transsion/video_edit/R$styleable;->EditBarSelector_drag_icon_width:I

    const/16 p3, 0x12

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    .line 20
    sget p2, Lcom/transsion/video_edit/R$styleable;->EditBarSelector_drag_icon_height:I

    const/16 p3, 0x30

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->s:I

    .line 21
    sget p2, Lcom/transsion/video_edit/R$styleable;->EditBarSelector_pointer_height:I

    const/16 p3, 0x3e

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->t:I

    .line 22
    sget p2, Lcom/transsion/video_edit/R$styleable;->EditBarSelector_pointer_width:I

    const/16 p3, 0xa

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->u:I

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->b()V

    return-void
.end method

.method private setPointer(J)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/video_edit/b$a;->a(J)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->u:I

    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->left:I

    iput p2, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->p:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->b:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->m:Landroid/graphics/Paint;

    const v2, -0x4c212122

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Le39;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->x:I

    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->m:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->m:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/video_edit/R$drawable;->edit_drag_left:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/video_edit/R$drawable;->edit_drag_right:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/video_edit/R$drawable;->edit_center_seek_bar:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->k:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Le39;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->pointer_offy:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le39;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le39;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->z:I

    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->o:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->p:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->o:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->y:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->o:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->o:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->p:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 0

    invoke-static {}, Lolb;->l0()Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide v0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->H:Lcom/transsion/video_edit/ThumbnailSelectorBar$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v1}, Lcom/transsion/video_edit/ThumbnailSelectorBar$a;->f(J)V

    :cond_0
    return-void
.end method

.method public final e(J)Ljava/lang/String;
    .locals 0

    long-to-float p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/transsion/video_edit/b;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(JLcom/transsion/video_edit/b$a;ZZZ)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->F:J

    iput-object p3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    invoke-virtual {p0, p4, p5, p6}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g(ZZZ)V

    return-void
.end method

.method public final g(ZZZ)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    iget-wide v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->F:J

    iget-object v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    iget-object v4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->F:J

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    iget-object v6, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h(JJ)V

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->H:Lcom/transsion/video_edit/ThumbnailSelectorBar$a;

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    new-array v6, v6, [J

    const/4 v7, 0x0

    aput-wide v1, v6, v7

    aput-wide v3, v6, v0

    invoke-interface {v5, p1, p2, p3, v6}, Lcom/transsion/video_edit/ThumbnailSelectorBar$a;->e(ZZZ[J)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateTime error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThumbnailSelectorBar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public getLeftSpace()I
    .locals 1

    iget v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->v:I

    iget p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getRightSpace()I
    .locals 1

    iget v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->w:I

    iget p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    add-int/2addr v0, p0

    return v0
.end method

.method public getSelectedValue(JJ)[J
    .locals 4

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-long v0, v0

    mul-long/2addr v0, p3

    add-long/2addr v0, p1

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-long v2, p0

    mul-long/2addr v2, p3

    add-long/2addr p1, v2

    const/4 p0, 0x2

    new-array p0, p0, [J

    const/4 p3, 0x0

    aput-wide v0, p0, p3

    const/4 p3, 0x1

    aput-wide p1, p0, p3

    return-object p0
.end method

.method public getSelectedValueDuration()J
    .locals 2

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/video_edit/b$a;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getValueSpace()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public final h(JJ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->A:Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->B:Ljava/lang/String;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->y:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v3, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutRect(Landroid/graphics/Rect;)Z

    iget v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->c:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->k:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->l:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-boolean v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->n:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->j:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v1, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-boolean v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->y:I

    sub-int v1, v2, v1

    :cond_3
    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->A:Ljava/lang/String;

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->x:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v1, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-boolean v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->y:I

    sub-int v1, v2, v1

    :cond_5
    iget-object v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->B:Ljava/lang/String;

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->x:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->s:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v0, p2

    iget v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    sub-int/2addr p1, v1

    iget v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->v:I

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    iget v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->w:I

    sub-int/2addr p1, v3

    iget-object p0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h:Landroid/graphics/Rect;

    iput p2, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/graphics/Rect;->right:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->o:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    if-eq v0, v4, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iget v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    sub-int v0, v1, v0

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v6, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->left:I

    iget v0, v5, Landroid/graphics/Rect;->right:I

    if-ge v0, v6, :cond_2

    iput v0, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->v:I

    iget v7, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    add-int v8, v0, v7

    if-ge v6, v8, :cond_3

    add-int/2addr v0, v7

    iput v0, v5, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput-boolean v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->n:Z

    invoke-virtual {p0, v3, v4, v4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g(ZZZ)V

    iput v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    iput v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->D:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_4
    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v6, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v0

    iput v6, v5, Landroid/graphics/Rect;->right:I

    iget v0, v5, Landroid/graphics/Rect;->left:I

    if-ge v6, v0, :cond_5

    iput v0, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v6, v0, :cond_6

    iput v0, v5, Landroid/graphics/Rect;->right:I

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    add-int/2addr v5, v6

    iput v5, v0, Landroid/graphics/Rect;->right:I

    iput-boolean v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->n:Z

    invoke-virtual {p0, v3, v3, v4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g(ZZZ)V

    iput v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    iput v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->D:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_7
    iget-boolean v4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->n:Z

    if-eqz v4, :cond_d

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v5, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->SEEK:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v4, v5, :cond_d

    iget-object v4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v5, :cond_8

    iget-object v4, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    :cond_8
    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v4, :cond_9

    iget-object v5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    sub-int/2addr v4, v0

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->d()V

    iput v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    iput v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->D:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    sget-object v1, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->NONE:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {p0, v4, v4, v4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g(ZZZ)V

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_b
    sget-object v1, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->NONE:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {p0, v4, v3, v4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g(ZZZ)V

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_c
    sget-object v1, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->SEEK:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->d()V

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->NONE:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_d
    :goto_4
    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iput v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    iput v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->D:I

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->LEFT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_f
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iput v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    iput v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->D:I

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->RIGHT:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_10
    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iput v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->C:I

    iput v2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->D:I

    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->d()V

    sget-object v0, Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;->SEEK:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    iput-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->E:Lcom/transsion/video_edit/ThumbnailSelectorBar$DRAGMODE;

    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V

    return v4

    :cond_11
    invoke-virtual {p0, p1}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->a(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public seekTime(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->setPointer(J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnSeekListener(Lcom/transsion/video_edit/ThumbnailSelectorBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->H:Lcom/transsion/video_edit/ThumbnailSelectorBar$a;

    return-void
.end method

.method public setValueTime(JJLcom/transsion/video_edit/b$a;)V
    .locals 2

    iput-wide p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->F:J

    iput-object p5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    invoke-virtual {p5, p3, p4}, Lcom/transsion/video_edit/b$a;->a(J)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->getLeftSpace()I

    move-result p5

    iput p5, p2, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->i:Landroid/graphics/Rect;

    iget p5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, p1

    iput p5, p2, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->g:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->r:I

    add-int/2addr p5, v1

    iput p5, v0, Landroid/graphics/Rect;->right:I

    iget p5, p1, Landroid/graphics/Rect;->top:I

    iput p5, v0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f:Landroid/graphics/Rect;

    iget p5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->v:I

    iput p5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v1

    iput p5, p1, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->e:Landroid/graphics/Rect;

    iget v0, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->u:I

    div-int/lit8 v1, v0, 0x2

    sub-int/2addr p5, v1

    iput p5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p5, v0

    iput p5, p1, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->pointer_offy:I

    add-int/2addr p2, p5

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p5, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->t:I

    sub-int/2addr p2, p5

    iput p2, p1, Landroid/graphics/Rect;->top:I

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->h(JJ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateTimeByStartChanged(JZZ)V
    .locals 7

    iget-object v3, p0, Lcom/transsion/video_edit/ThumbnailSelectorBar;->G:Lcom/transsion/video_edit/b$a;

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/transsion/video_edit/ThumbnailSelectorBar;->f(JLcom/transsion/video_edit/b$a;ZZZ)V

    return-void
.end method
