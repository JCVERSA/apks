.class public Lcom/transsion/magicvideo/widgets/TouchWindowLayout;
.super Landroidx/constraintlayout/motion/widget/MotionLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;,
        Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;,
        Lcom/transsion/magicvideo/widgets/TouchWindowLayout$d;,
        Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;,
        Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;,
        Lcom/transsion/magicvideo/widgets/TouchWindowLayout$g;
    }
.end annotation


# static fields
.field public static final FLAGS_MOVE_VERTICAL:I = 0x6

.field public static final FLAGS_MOVE_VERTICAL_HORIZON:I = 0x7

.field public static final FLAG_MOVE_DISABLE:I = 0x1000

.field public static final FLAG_MOVE_DOWN:I = 0x8

.field public static final FLAG_MOVE_HORIZON:I = 0x1

.field public static final FLAG_MOVE_UP:I = 0x10

.field public static final FLAG_MOVE_VERTICAL_LEFT:I = 0x2

.field public static final FLAG_MOVE_VERTICAL_RIGHT:I = 0x4

.field public static final FLAG_MOVING:I = 0x20


# instance fields
.field public A:Landroid/view/ScaleGestureDetector;

.field public B:Landroid/view/ViewGroup;

.field public C:Lcom/transsion/magicvideo/services/VideosService;

.field public D:Landroid/graphics/Point;

.field public final E:Landroid/graphics/RectF;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/RectF;

.field public final H:Landroid/graphics/RectF;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:Z

.field public P:I

.field public Q:I

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Landroid/graphics/PointF;

.field public V:Landroid/graphics/PointF;

.field public W:Landroid/graphics/Point;

.field public a0:Lby3;

.field public b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

.field public b0:Z

.field public c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

.field public d:J

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:I

.field public l:Landroid/content/Context;

.field public m:I

.field public n:Z

.field public o:J

.field public p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

.field public q:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

.field public r:Lcom/transsion/WindowInfoViewModel;

.field public s:Lcom/transsion/magicvideo/model/VideoControlModel;

.field public t:I

.field public u:F

.field public v:I

.field public w:I

.field public x:F

.field public y:Landroidx/lifecycle/Observer;

.field public z:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g:Z

    .line 4
    sget-object v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget v1, v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    iput v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    .line 5
    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v:I

    .line 6
    new-instance v1, Lrua;

    invoke-direct {v1, p0}, Lrua;-><init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->y:Landroidx/lifecycle/Observer;

    .line 7
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D:Landroid/graphics/Point;

    .line 8
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    .line 9
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    .line 10
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    .line 11
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    .line 12
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    .line 13
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    .line 14
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->W:Landroid/graphics/Point;

    .line 15
    new-instance v1, Lby3;

    invoke-direct {v1, v0}, Lby3;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    .line 16
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    const/4 p2, 0x0

    .line 19
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g:Z

    .line 20
    sget-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget v0, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    .line 21
    iput p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v:I

    .line 22
    new-instance v0, Lrua;

    invoke-direct {v0, p0}, Lrua;-><init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->y:Landroidx/lifecycle/Observer;

    .line 23
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D:Landroid/graphics/Point;

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    .line 28
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    .line 29
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->W:Landroid/graphics/Point;

    .line 31
    new-instance v0, Lby3;

    invoke-direct {v0, p2}, Lby3;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    .line 32
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g:Z

    .line 36
    sget-object p3, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget p3, p3, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    iput p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    .line 37
    iput p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v:I

    .line 38
    new-instance p3, Lrua;

    invoke-direct {p3, p0}, Lrua;-><init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->y:Landroidx/lifecycle/Observer;

    .line 39
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D:Landroid/graphics/Point;

    .line 40
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    .line 41
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    .line 42
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    .line 43
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    .line 44
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    .line 45
    new-instance p3, Landroid/graphics/PointF;

    invoke-direct {p3}, Landroid/graphics/PointF;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    .line 46
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->W:Landroid/graphics/Point;

    .line 47
    new-instance p3, Lby3;

    invoke-direct {p3, p2}, Lby3;-><init>(I)V

    iput-object p3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->q:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->d:J

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->k()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->u()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->x(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->y(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l(Landroid/content/Context;)V

    return-void
.end method

.method public B()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object p0, p0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwoc;

    iget-boolean v0, p0, Lwoc;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lwoc;->c:Z

    if-nez v0, :cond_1

    iget p0, p0, Lwoc;->a:I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    return v1
.end method

.method public final C()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {v0}, Lb39;->a(Landroid/content/Context;)Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    move-result-object v0

    sget-object v1, Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;->FOLD:Lcom/transsion/utils/BaseConstant$SCREEN_TYPE;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public D()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    :goto_0
    sub-float/2addr v3, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :goto_1
    iget v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->x:F

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    move v3, v4

    :cond_2
    cmpl-float v4, v3, v2

    if-eqz v4, :cond_3

    div-float v1, v0, v3

    :cond_3
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lby3;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    const/16 v3, 0x20

    :goto_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lby3;->b(I)Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {v0, v4}, Lby3;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4, v2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p(IF)V

    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p(IF)V

    :cond_6
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lby3;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {v0, v4}, Lby3;->c(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v4, v2}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->s(IF)V

    :cond_7
    invoke-virtual {p0, v3, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->s(IF)V

    :cond_8
    return-void
.end method

.method public bindWindow(Lcom/transsion/magicvideo/services/VideosService;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->C:Lcom/transsion/magicvideo/services/VideosService;

    iput-object p2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B:Landroid/view/ViewGroup;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r(I)V

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->z(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public g(Landroid/graphics/Point;)V
    .locals 6

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->getSystemGestureInsetsPx()[I

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v4, v3

    cmpg-float v2, v2, v4

    const/4 v4, 0x0

    if-gez v2, :cond_0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v5, v3

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    int-to-float v2, v3

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_1
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x2

    aget v2, v0, v2

    int-to-float v3, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int v2, v3, v2

    int-to-float v2, v2

    int-to-float v3, v3

    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->I:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    aget v0, v0, v1

    if-lez v0, :cond_4

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    int-to-float v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, v4, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_4
    return-void
.end method

.method public getNavbarSize(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p0}, Lyt8;->b(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result p0

    return p0
.end method

.method public getOnScaleSurfaceListener()Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    return-object p0
.end method

.method public getSystemGestureInsetsPx()[I
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-lt v1, v3, :cond_0

    invoke-static {}, Ljoc;->a()I

    move-result v1

    invoke-static {p0, v1}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {}, Lgoc;->a()I

    move-result v3

    invoke-static {p0, v3}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {}, Lhoc;->a()I

    move-result v7

    invoke-static {p0, v7}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v7

    invoke-static {}, Lkoc;->a()I

    move-result v8

    invoke-static {p0, v8}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    iget v8, v1, Landroid/graphics/Insets;->left:I

    iget v9, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v0, v6

    aget v6, v0, v2

    iget v3, v3, Landroid/graphics/Insets;->top:I

    iget v8, v1, Landroid/graphics/Insets;->top:I

    iget v9, p0, Landroid/graphics/Insets;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v0, v2

    iget v2, v1, Landroid/graphics/Insets;->right:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v5

    iget v2, v7, Landroid/graphics/Insets;->bottom:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, v0, v4

    goto :goto_0

    :cond_0
    aget v1, v0, v6

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v6

    aget v1, v0, v2

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v2

    aget v1, v0, v5

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v5

    aget v1, v0, v4

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aput p0, v0, v4

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getmUnLockListener()Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hideAllViews()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    invoke-direct {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->q:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$e;

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l(Landroid/content/Context;)V

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$a;-><init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->z:Landroid/view/GestureDetector;

    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;

    invoke-direct {v1, p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$b;-><init>(Lcom/transsion/magicvideo/widgets/TouchWindowLayout;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->u:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$dimen;->floating_window_min_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->w:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$dimen;->tranthunder_back_region:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$dimen;->gesture_edge_region:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->Q:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$dimen;->finger_move_max_dist:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$dimen;->gesture_speed_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    return-void
.end method

.method public initTouchBounds()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const-string v0, "navigation_bar_gesture_height"

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->getNavbarSize(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    :cond_0
    invoke-virtual {p0, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g(Landroid/graphics/Point;)V

    return-void
.end method

.method public isInDoubleTapMode()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o:J

    :cond_1
    return v0
.end method

.method public isSwipeTouchRegion(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {p0, v3, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v1

    :goto_3
    if-nez v0, :cond_5

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    return v1
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lby3;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->q(IF)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lby3;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->q(IF)V

    return-void
.end method

.method public final k()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->d:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ingoreDoubleClickEvent interval:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TouchWindowLayout"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Ld39;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->j:I

    invoke-static {p1}, Ld39;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->k:I

    invoke-static {}, Lraa;->e()I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v:I

    return-void
.end method

.method public longPressChangeSpeed(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->K:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->K:Z

    if-nez v0, :cond_8

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->C()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->e()V

    sget-object p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_FIXED:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget p1, p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->k:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->e()V

    sget-object p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_FIXED:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget p1, p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->moveToChangeSpeed(F)V

    sget-object p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_CHANGING:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget p1, p1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    :cond_8
    :goto_3
    return-void
.end method

.method public m()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    iget-boolean v0, v0, Lwoc;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    iget-boolean v0, v0, Lwoc;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwoc;

    iget-boolean v0, v0, Lwoc;->g:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object p0, p0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwoc;

    iget p0, p0, Lwoc;->a:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public moveToChangeSpeed(F)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v4

    sub-int v4, v0, v4

    iget v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    goto :goto_1

    :cond_1
    div-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-static {v5, v6}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    :cond_2
    :goto_1
    iget v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    float-to-int v0, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveToChangeSpeed  y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",mGestureSpeedStartY="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",position:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "TouchWindowLayout"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmb8;->c()Lmb8;

    move-result-object p1

    invoke-virtual {p1}, Lmb8;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    const-string p0, "moveToChangeSpeed  gestureSpeedListSize == 0"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v0

    :goto_2
    if-lt v2, p1, :cond_5

    add-int/lit8 v2, p1, -0x1

    :cond_5
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p0, v2, v1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->c(IZ)V

    return-void
.end method

.method public multiWindowModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->J:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->initTouchBounds()V

    return-void
.end method

.method public n(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final o(I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->onPointerCount(I)V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->initTouchBounds()V

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    instance-of v1, v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/transsion/magicvideo/activities/VideoPlayerActivity;

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v2, Lcom/transsion/WindowInfoViewModel;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Lcom/transsion/WindowInfoViewModel;

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    iget-object v1, v1, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->y:Landroidx/lifecycle/Observer;

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/transsion/magicvideo/model/VideoControlModel;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/transsion/magicvideo/model/VideoControlModel;

    iput-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->s:Lcom/transsion/magicvideo/model/VideoControlModel;

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->A(Z)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->r:Lcom/transsion/WindowInfoViewModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/WindowInfoViewModel;->a:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->y:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onScreenClick(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScreenEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onScreenScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onScreenScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->initTouchBounds()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->n(Landroid/view/MotionEvent;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->L:Z

    :cond_1
    iget-boolean v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->L:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    if-eq v0, v4, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->L:Z

    iput-boolean v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->K:Z

    :cond_3
    return v3

    :cond_4
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;->isTouchDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->z:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->u()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->A:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_7
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_19

    if-eq v0, v4, :cond_17

    const/16 v5, 0x1000

    const/4 v6, 0x6

    if-eq v0, v1, :cond_9

    if-eq v0, v2, :cond_17

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    if-eq v0, v6, :cond_17

    const/16 v1, 0x105

    if-eq v0, v1, :cond_8

    goto/16 :goto_d

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->w()V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {p0, v5}, Lby3;->a(I)V

    goto/16 :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i()Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_d

    :cond_a
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {p1, v5}, Lby3;->b(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto/16 :goto_d

    :cond_b
    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->e:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->e:I

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->N:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_c

    if-gt p1, v2, :cond_d

    :cond_c
    if-nez v0, :cond_14

    :cond_d
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lby3;->d(I)Z

    move-result p1

    if-nez p1, :cond_14

    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    sget-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_FIXED:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget v0, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    if-ne p1, v0, :cond_e

    goto/16 :goto_d

    :cond_e
    sget-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->PLAY_SPEED_CHANGING:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget v0, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->C()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->moveToChangeSpeed(F)V

    goto/16 :goto_d

    :cond_f
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->u:F

    cmpg-float v5, p1, v3

    if-gtz v5, :cond_10

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_10

    goto/16 :goto_d

    :cond_10
    cmpl-float p1, p1, v0

    if-lez p1, :cond_11

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {p1, v4}, Lby3;->a(I)V

    goto :goto_0

    :cond_11
    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->R:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_12

    move v1, v2

    :cond_12
    invoke-virtual {p1, v1}, Lby3;->a(I)V

    :cond_13
    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lby3;->a(I)V

    :cond_14
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {p1, v4}, Lby3;->b(I)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->j()V

    goto :goto_1

    :cond_15
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {p1, v6}, Lby3;->d(I)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D()V

    :cond_16
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->updateWindowPosition()V

    goto/16 :goto_d

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o(I)V

    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    sget-object v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget v0, v0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    if-eq p1, v0, :cond_18

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->d()V

    :cond_18
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->w()V

    iput-boolean v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->K:Z

    goto/16 :goto_d

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o(I)V

    iput v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->e:I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->E:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->F:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_2

    :cond_1a
    move v0, v3

    goto :goto_3

    :cond_1b
    :goto_2
    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->K:Z

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->G:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->H:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_4

    :cond_1c
    move v0, v3

    goto :goto_5

    :cond_1d
    :goto_4
    move v0, v4

    :goto_5
    iget-boolean v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->K:Z

    if-nez v5, :cond_2a

    if-eqz v0, :cond_1e

    goto/16 :goto_e

    :cond_1e
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_20

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_20

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_1f

    goto :goto_6

    :cond_1f
    move v0, v3

    goto :goto_7

    :cond_20
    :goto_6
    move v0, v4

    :goto_7
    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->N:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->updateTouchDownWindowPosition()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v4, :cond_27

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    invoke-virtual {p1, v3}, Lby3;->f(I)V

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t()V

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->M:Z

    if-nez p1, :cond_21

    iput-boolean v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->R:Z

    goto :goto_c

    :cond_21
    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->I:Z

    if-nez p1, :cond_24

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    if-nez p1, :cond_22

    goto :goto_9

    :cond_22
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_23

    move p1, v4

    goto :goto_8

    :cond_23
    move p1, v3

    :goto_8
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->R:Z

    goto :goto_c

    :cond_24
    :goto_9
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_26

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->P:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-ltz p1, :cond_25

    goto :goto_a

    :cond_25
    move p1, v3

    goto :goto_b

    :cond_26
    :goto_a
    move p1, v4

    :goto_b
    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->R:Z

    :cond_27
    :goto_c
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->isInDoubleTapMode()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_28

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p0, v4, v4}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->f(ZZ)V

    goto :goto_d

    :cond_28
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, v1

    div-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_29

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p0, v3, v4}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->f(ZZ)V

    :cond_29
    :goto_d
    return v4

    :cond_2a
    :goto_e
    const-string p0, "TouchWindowLayout"

    const-string p1, "ACTION_DOWN SwipeTouchRegion "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public onWindowInfoChange(Lwoc;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->s:Lcom/transsion/magicvideo/model/VideoControlModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/transsion/magicvideo/model/VideoControlModel;->isReleaseTouchEvent:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result v0

    iget v1, p1, Lwoc;->b:I

    iget v2, p1, Lwoc;->a:I

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    const/4 v4, 0x3

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_1

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/utils/a;->l(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->j:I

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v()V

    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    :cond_2
    iget-boolean p1, p1, Lwoc;->g:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->l:Landroid/content/Context;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {p1, v1}, Lcom/transsion/utils/a;->d(Landroid/content/Context;F)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/2addr v0, v3

    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    mul-int/lit8 p1, p1, 0x4

    sub-int/2addr v0, p1

    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    mul-int/lit8 p1, p1, 0x4

    sub-int/2addr v0, p1

    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    goto :goto_0

    :cond_4
    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v()V

    :cond_5
    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    mul-int/lit8 p1, p1, 0x4

    sub-int/2addr v0, p1

    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    goto :goto_0

    :cond_6
    iget p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->m:I

    mul-int/lit8 p1, p1, 0x4

    sub-int/2addr v0, p1

    div-int/2addr v0, v3

    iput v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->t:I

    :goto_0
    return-void
.end method

.method public p(IF)V
    .locals 0

    return-void
.end method

.method public q(IF)V
    .locals 0

    return-void
.end method

.method public r(I)V
    .locals 0

    return-void
.end method

.method public requestedOrientation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->O:Z

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->A(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->initTouchBounds()V

    return-void
.end method

.method public s(IF)V
    .locals 0

    return-void
.end method

.method public setForceHideUIState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->T:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceHideUIState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchWindowLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->T:Z

    :cond_0
    return-void
.end method

.method public setForceShowUIState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->S:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoErrorState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchWindowLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->S:Z

    :cond_0
    return-void
.end method

.method public setInGuideMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g:Z

    return-void
.end method

.method public setIsHadFinishedGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    return-void
.end method

.method public setMusicMode(Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    return-void
.end method

.method public setNavigationMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->I:Z

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->initTouchBounds()V

    return-void
.end method

.method public setOnScaleSurfaceListener(Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->p:Lcom/transsion/widgets/ScaleTouchView/OnScaleSurfaceListener;

    return-void
.end method

.method public setPictureInPictureModeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->n:Z

    return-void
.end method

.method public setRetreatForwardListener(Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    return-void
.end method

.method public setTouchPositionListener(Lcom/transsion/magicvideo/widgets/TouchWindowLayout$d;)V
    .locals 0

    return-void
.end method

.method public setmUnLockListener(Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    return-void
.end method

.method public showAllView()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->g:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->h:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public updateTouchDownWindowPosition()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->W:Landroid/graphics/Point;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public updateWindowPosition()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->C:Lcom/transsion/magicvideo/services/VideosService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->V:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    float-to-int v3, v3

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->W:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v3

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D:Landroid/graphics/Point;

    invoke-static {v2}, Lraa;->d(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v4, :cond_1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_1
    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_2

    sub-int/2addr v5, v2

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    :goto_0
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->v:I

    neg-int v5, v4

    if-ge v2, v5, :cond_3

    neg-int v2, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    :cond_3
    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v2, v4, :cond_4

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->B:Landroid/view/ViewGroup;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final v()V
    .locals 2

    iget v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    sget-object v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->NO_CHANGE:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;

    iget v1, v1, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$ENUM_CHANGE_PLAY_SPEED_MODE;->value:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->i:I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->d()V

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->w()V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lby3;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lby3;->a(I)V

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lby3;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->j()V

    :cond_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lby3;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->D()V

    :cond_2
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lby3;->e(I)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->a0:Lby3;

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lby3;->a(I)V

    return-void
.end method

.method public final x(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->f:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->b:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$f;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->R:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    const/4 v0, 0x1

    if-gez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->U:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->a()V

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o:J

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->c:Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;

    invoke-interface {p0, p1, v0}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout$c;->f(ZZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final y(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/TouchWindowLayout;->onScreenClick(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public final z(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
