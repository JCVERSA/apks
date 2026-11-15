.class public Lcom/transsion/magicvideo/widgets/ScaleStatusView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:Landroid/graphics/Paint;

.field public c:Landroid/graphics/Paint;

.field public d:Landroid/graphics/Paint;

.field public e:Landroid/graphics/RectF;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/RectF;

.field public i:Landroid/graphics/RectF;

.field public j:Landroid/graphics/RectF;

.field public k:Landroid/graphics/RectF;

.field public l:Landroid/graphics/Matrix;

.field public m:[F

.field public n:Lcom/transsion/magicvideo/data/VideoSizeType;

.field public o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

.field public p:Z

.field public q:Z

.field public r:F

.field public s:I

.field public t:I

.field public final u:[F

.field public v:Landroid/view/GestureDetector;

.field public w:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g:Landroid/graphics/RectF;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i:Landroid/graphics/RectF;

    .line 10
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    .line 11
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k:Landroid/graphics/RectF;

    .line 12
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 13
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->m:[F

    .line 14
    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_1_1:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->p:Z

    .line 16
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    const/16 p1, 0x9

    .line 17
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->u:[F

    .line 18
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->v:Landroid/view/GestureDetector;

    .line 19
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->w:Landroid/view/ScaleGestureDetector;

    .line 20
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    .line 23
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    .line 24
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    .line 25
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    .line 26
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    .line 27
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g:Landroid/graphics/RectF;

    .line 28
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h:Landroid/graphics/RectF;

    .line 29
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i:Landroid/graphics/RectF;

    .line 30
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    .line 31
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k:Landroid/graphics/RectF;

    .line 32
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 33
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->m:[F

    .line 34
    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_1_1:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->p:Z

    .line 36
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    const/16 p1, 0x9

    .line 37
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->u:[F

    .line 38
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->v:Landroid/view/GestureDetector;

    .line 39
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->w:Landroid/view/ScaleGestureDetector;

    .line 40
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    .line 43
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    .line 44
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    .line 45
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    .line 46
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    .line 47
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g:Landroid/graphics/RectF;

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h:Landroid/graphics/RectF;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i:Landroid/graphics/RectF;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    .line 51
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k:Landroid/graphics/RectF;

    .line 52
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 53
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->m:[F

    .line 54
    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_1_1:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->p:Z

    .line 56
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    const/16 p1, 0x9

    .line 57
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->u:[F

    .line 58
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;

    invoke-direct {p3, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->v:Landroid/view/GestureDetector;

    .line 59
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;

    invoke-direct {p3, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->w:Landroid/view/ScaleGestureDetector;

    .line 60
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    .line 64
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    .line 65
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    .line 66
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    .line 67
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g:Landroid/graphics/RectF;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h:Landroid/graphics/RectF;

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k:Landroid/graphics/RectF;

    .line 72
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    const/4 p1, 0x2

    .line 73
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->m:[F

    .line 74
    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_1_1:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->p:Z

    .line 76
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    const/16 p1, 0x9

    .line 77
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->u:[F

    .line 78
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;

    invoke-direct {p3, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$a;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->v:Landroid/view/GestureDetector;

    .line 79
    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;

    invoke-direct {p3, p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView$b;-><init>(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->w:Landroid/view/ScaleGestureDetector;

    .line 80
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/transsion/magicvideo/widgets/ScaleStatusView;)[F
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->m:[F

    return-object p0
.end method

.method public static getPercentValue(F)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkBorder(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    iget p0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, p0, v0

    const/4 v2, 0x0

    if-gez v1, :cond_0

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_0
    iget p0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    sub-float/2addr v0, p0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget p0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_2

    sub-float/2addr v0, p0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    :cond_2
    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p0, p2

    if-lez v0, :cond_3

    sub-float/2addr p2, p0

    invoke-virtual {p1, v2, p2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_3
    return-void
.end method

.method public getScale(Landroid/graphics/Matrix;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j(Landroid/graphics/Matrix;I)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    add-float/2addr v0, p0

    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public getTranslate(Landroid/graphics/Matrix;)[F
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j(Landroid/graphics/Matrix;I)F

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {p0, p1, v2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j(Landroid/graphics/Matrix;I)F

    move-result p0

    new-array p1, v0, [F

    const/4 v0, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    return-object p1
.end method

.method public final h(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget v0, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v0

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr p0, v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    div-float/2addr v0, p3

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, p0, v0, p3, p2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    return-void
.end method

.method public final i(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput v0, p0, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_3

    goto :goto_3

    :cond_3
    move p1, p2

    :goto_3
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method public isTouchDrag(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-interface {v0}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->isInScaleMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->onDragStatusChange(Z)Z

    :cond_1
    return p1
.end method

.method public final j(Landroid/graphics/Matrix;I)F
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->u:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->u:[F

    aget p0, p0, p2

    return p0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    const-string v1, "#66D1D1D1"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    const-string v1, "#FFE23300"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    const-string v1, "#FFFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public final l(Lcom/transsion/magicvideo/data/VideoSizeType;)V
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    sget-object v1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_1_1:Lcom/transsion/magicvideo/data/VideoSizeType;

    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v3, 0x42580000    # 54.0f

    const/high16 v4, 0x42100000    # 36.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    if-ne p1, v1, :cond_3

    if-eqz v0, :cond_2

    move v2, v3

    :cond_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Ld39;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_9_16:Lcom/transsion/magicvideo/data/VideoSizeType;

    const/high16 v7, 0x427a0000    # 62.5f

    if-ne p1, v1, :cond_5

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Ld39;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v4, 0x425b0000    # 54.75f

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    const p1, 0x42918000    # 72.75f

    :goto_1
    move v2, p1

    goto :goto_2

    :cond_6
    const/high16 p1, 0x42430000    # 48.75f

    goto :goto_1

    :goto_2
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Ld39;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Ld39;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v6, v6, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Ld39;->a(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Ld39;->a(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->t:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float p1, v1, p1

    :cond_7
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/RectF;->offset(FF)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iget v0, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->s:I

    return-void
.end method

.method public onDragStatusChange(Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->p:Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onDragStatusChange(Z)V

    :cond_0
    return p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->k:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_2

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_2
    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iput v2, v1, Landroid/graphics/RectF;->left:F

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v2, v4

    if-gez v5, :cond_4

    :goto_3
    move v2, v4

    goto :goto_4

    :cond_4
    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_6

    move v2, v4

    goto :goto_5

    :cond_6
    iget v5, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v2, v5

    if-gez v6, :cond_7

    move v2, v5

    :cond_7
    :goto_5
    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v2, v3

    if-gez v5, :cond_8

    move v4, v3

    goto :goto_6

    :cond_8
    cmpl-float v3, v2, v4

    if-lez v3, :cond_9

    goto :goto_6

    :cond_9
    move v4, v2

    :goto_6
    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_7
    iget v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->r:F

    invoke-static {v1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->getPercentValue(F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v3, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v3, v2

    add-float/2addr v4, v3

    iget v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->s:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v4, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ld39;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->t:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->q:Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l(Lcom/transsion/magicvideo/data/VideoSizeType;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->isTouchDrag(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->w:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->v:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->onDragStatusChange(Z)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onPointerCount(I)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onPointerCount(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->onDragStatusChange(Z)Z

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onPointerCount(I)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onPointerCount(I)V

    :goto_0
    return v2
.end method

.method public setOnScaleSurfaceListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->o:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    return-void
.end method

.method public setRectAndDraw(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, v1, p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->g:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->r:F

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->r:F

    const/high16 p2, 0x3e800000    # 0.25f

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->r:F

    :goto_0
    iput p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->r:F

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->i(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVideoSize(FFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    div-float/2addr p1, p2

    const p2, 0x3f8ccccd    # 1.1f

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_16_9:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    goto :goto_0

    :cond_0
    const p2, 0x3f666666    # 0.9f

    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_9_16:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/transsion/magicvideo/data/VideoSizeType;->SIZE_TYPE_1_1:Lcom/transsion/magicvideo/data/VideoSizeType;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->n:Lcom/transsion/magicvideo/data/VideoSizeType;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l(Lcom/transsion/magicvideo/data/VideoSizeType;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->f:Landroid/graphics/RectF;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->h(Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->l:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->e:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/ScaleStatusView;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method
