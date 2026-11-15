.class public Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$f;,
        Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$d;,
        Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$e;
    }
.end annotation


# instance fields
.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public c:Landroidx/core/view/GestureDetectorCompat;

.field public d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public final q:Landroid/util/SparseBooleanArray;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:I

.field public v:F

.field public final w:Landroid/util/SparseBooleanArray;

.field public final x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public final y:Ljava/lang/Runnable;

.field public final z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    .line 3
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    .line 4
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    .line 5
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    .line 6
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    .line 7
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    .line 8
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 9
    new-instance v0, Lfb7;

    invoke-direct {v0, p0}, Lfb7;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    .line 14
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    .line 15
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    .line 16
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    .line 17
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    .line 18
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    .line 19
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 20
    new-instance v0, Lfb7;

    invoke-direct {v0, p0}, Lfb7;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 24
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    .line 25
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    .line 26
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    .line 27
    iput p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    .line 28
    new-instance p3, Landroid/util/SparseBooleanArray;

    invoke-direct {p3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    .line 29
    new-instance p3, Landroid/util/SparseBooleanArray;

    invoke-direct {p3}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    .line 30
    new-instance p3, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$a;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 31
    new-instance p3, Lfb7;

    invoke-direct {p3, p0}, Lfb7;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    .line 32
    new-instance p3, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;

    invoke-direct {p3, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$b;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    iput-object p3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->v(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroid/util/SparseBooleanArray;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroidx/core/view/GestureDetectorCompat;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->c:Landroidx/core/view/GestureDetectorCompat;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->l:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q(Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    return-void
.end method

.method private getAdapterItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic h(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->u(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->B()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->J(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->N()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->O(IZ)V

    return-void
.end method

.method private setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_2
    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->C(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public final A(Landroid/view/MotionEvent;)V
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->v:F

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->g:I

    iget v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->h:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    cmpl-float v5, p1, v4

    const/4 v6, 0x1

    if-ltz v5, :cond_1

    int-to-float v5, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    sub-int v7, v0, v1

    int-to-float v8, v7

    cmpl-float v9, p1, v8

    if-ltz v9, :cond_2

    int-to-float v9, v0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_2

    move v9, v6

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    add-int v10, v1, v2

    int-to-float v10, v10

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_3

    move v10, v6

    goto :goto_2

    :cond_3
    move v10, v3

    :goto_2
    sub-int/2addr v7, v2

    int-to-float v2, v7

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iget-boolean v7, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s:Z

    if-eqz v7, :cond_5

    move v5, v10

    :cond_5
    iget-boolean v7, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t:Z

    if-eqz v7, :cond_6

    move v9, v2

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v5, :cond_9

    if-nez v9, :cond_9

    cmpg-float v0, p1, v4

    if-gtz v0, :cond_7

    goto :goto_4

    :cond_7
    int-to-float v0, v1

    sub-float p1, v0, p1

    div-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_4
    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->i:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->u:I

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->M()V

    goto :goto_6

    :cond_8
    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s:Z

    if-nez p1, :cond_d

    iput-boolean v6, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s:Z

    iput-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->K()V

    goto :goto_6

    :cond_9
    if-eqz v9, :cond_c

    if-nez v5, :cond_c

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    goto :goto_5

    :cond_a
    sub-float/2addr p1, v8

    int-to-float v0, v1

    div-float/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :goto_5
    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->i:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->u:I

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v6}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->M()V

    goto :goto_6

    :cond_b
    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t:Z

    if-nez p1, :cond_d

    iput-boolean v6, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t:Z

    iput-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s:Z

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->K()V

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->M()V

    :cond_d
    :goto_6
    return-void
.end method

.method public final B()V
    .locals 4

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->getAdapterItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final C(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    return-void
.end method

.method public final D()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->j:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->M()V

    return-void
.end method

.method public final E(II)V
    .locals 1

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->H(IZ)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final F(II)V
    .locals 2

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final G(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->v:F

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->P(I)V

    return-void
.end method

.method public final H(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->updateItemCheckedState(IZ)V

    return v0
.end method

.method public final I(IIZ)V
    .locals 1

    :goto_0
    if-gt p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->H(IZ)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->j:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t(F)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1
.end method

.method public final K()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r:Z

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final L(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->q:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k:Z

    invoke-virtual {p0, p1, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->H(IZ)Z

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    return-void
.end method

.method public final M()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t:Z

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s:Z

    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r:Z

    :cond_0
    return-void
.end method

.method public final N()V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->B()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    return-void
.end method

.method public final O(IZ)V
    .locals 1

    if-ltz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->getAdapterItemCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->H(IZ)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final P(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->L(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Q(Z)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/transsion/widgetslistitemlayout/OSListItemView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v2, p1}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->setMultiSelectMode(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    instance-of p2, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public clearSelection(Z)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    :cond_1
    return-void
.end method

.method public enterMultiSelectMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->setMultiSelectMode(Z)V

    return-void
.end method

.method public exitMultiSelectMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->setMultiSelectMode(Z)V

    return-void
.end method

.method public getSelectedPositions()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isMultiSelectMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->l:Z

    return p0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public final o()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->C(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->M()V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->z:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    :cond_1
    return-void
.end method

.method public final p()Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 1

    new-instance v0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$c;-><init>(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;)V

    return-object v0
.end method

.method public final q(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->d:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->C(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->clearSelection(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->N()V

    return-void
.end method

.method public setAutoScrollHotspotHeight(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->g:I

    return-void
.end method

.method public setAutoScrollHotspotInnerThreshold(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->h:I

    return-void
.end method

.method public setAutoScrollMaxSpeed(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->i:I

    return-void
.end method

.method public setCheckableItemProvider(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$d;)V
    .locals 0
    .param p1    # Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->B()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    return-void
.end method

.method public setHotZoneRange(II)V
    .locals 1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lolb;->h(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->f:I

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 1

    if-ltz p1, :cond_2

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->getAdapterItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->H(IZ)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMultiSelectMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->l:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->l:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->D()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->Q(Z)V

    return-void
.end method

.method public setOnMultiSelectModeChangedListener(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$e;)V
    .locals 0
    .param p1    # Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setOnSelectionChangedListener(Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$f;)V
    .locals 0
    .param p1    # Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final t(F)I
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public final u(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t(F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->j:Z

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->A(Landroid/view/MotionEvent;)V

    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->t:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->P(I)V

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->D()V

    return v3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    const/4 p1, -0x1

    if-eq v1, p1, :cond_7

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->x(I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iput-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->j:Z

    iget-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->w:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k:Z

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->L(I)V

    return v3

    :cond_7
    :goto_0
    return v2
.end method

.method public updateItemCheckedState(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCheckBox()Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSListItemView;->getCheckBox()Lcom/transsion/widgetslib/view/OSCheckBox;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/view/OSCheckBox;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public final v(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_hotZoneInnerEdge:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_hotZoneOuterEdge:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_autoScrollStartHeight:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_autoScrollHotspotInnerThreshold:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/widgetslistitemlayout/R$dimen;->os_space200:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->i:I

    new-instance p2, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p()Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->c:Landroidx/core/view/GestureDetectorCompat;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->s()V

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n()V

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->setMultiSelectMode(Z)V

    return-void
.end method

.method public final w(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {}, Lolb;->l0()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->f:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e:I

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    :cond_2
    iget v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->e:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_3

    iget p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->f:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final x(I)Z
    .locals 0

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->getAdapterItemCount()I

    move-result p0

    if-lt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic y()V
    .locals 2

    iget-boolean v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->u:I

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->G(I)V

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->y:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final z()V
    .locals 5

    iget v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    if-ne v2, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->m:I

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->n:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    if-eq v3, v1, :cond_4

    iget v4, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    if-eq v4, v1, :cond_4

    if-le v0, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->E(II)V

    goto :goto_0

    :cond_1
    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->F(II)V

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    add-int/lit8 v1, v1, -0x1

    iget-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k:Z

    invoke-virtual {p0, v0, v1, v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->I(IIZ)V

    :cond_2
    :goto_0
    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    if-le v2, v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->F(II)V

    iget v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v3, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->I(IIZ)V

    goto :goto_1

    :cond_3
    if-ge v2, v1, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->E(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->F(II)V

    iget-boolean v1, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->k:Z

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->I(IIZ)V

    :cond_5
    :goto_1
    iput v0, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->o:I

    iput v2, p0, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->p:I

    invoke-virtual {p0}, Lcom/transsion/widgetslistitemlayout/OSSlideMutiSelectHotZoneLayout;->r()V

    :cond_6
    :goto_2
    return-void
.end method
