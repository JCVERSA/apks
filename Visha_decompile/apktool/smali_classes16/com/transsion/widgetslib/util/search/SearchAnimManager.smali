.class public Lcom/transsion/widgetslib/util/search/SearchAnimManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$c;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$ShowSoftInputRunnable;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;,
        Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;
    }
.end annotation


# static fields
.field public static final A:Landroid/view/animation/Interpolator;

.field public static final B:Landroid/view/animation/Interpolator;

.field public static final C:Landroid/view/animation/Interpolator;

.field public static final D:Landroid/view/animation/Interpolator;

.field public static final E:Landroid/view/animation/Interpolator;

.field public static final F:Landroid/view/animation/Interpolator;

.field public static final G:Landroid/view/animation/Interpolator;

.field public static final H:Landroid/view/animation/Interpolator;

.field public static final I:Landroid/view/animation/Interpolator;

.field public static final J:Landroid/view/animation/Interpolator;

.field public static final K:Landroid/view/animation/Interpolator;

.field public static final L:Landroid/view/animation/Interpolator;

.field public static final M:Landroid/view/animation/Interpolator;

.field public static N:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

.field public static final n:Landroid/view/animation/Interpolator;

.field public static final o:Landroid/view/animation/Interpolator;

.field public static final p:Landroid/view/animation/Interpolator;

.field public static final q:Landroid/view/animation/Interpolator;

.field public static final r:Landroid/view/animation/Interpolator;

.field public static final s:Landroid/view/animation/Interpolator;

.field public static final t:Landroid/view/animation/Interpolator;

.field public static final u:Landroid/view/animation/Interpolator;

.field public static final v:Landroid/view/animation/Interpolator;

.field public static final w:Landroid/view/animation/Interpolator;

.field public static final x:Landroid/view/animation/Interpolator;

.field public static final y:Landroid/view/animation/Interpolator;

.field public static final z:Landroid/view/animation/Interpolator;


# instance fields
.field public a:F

.field public b:F

.field public c:Ljava/lang/ref/WeakReference;

.field public d:Ljava/lang/ref/WeakReference;

.field public e:[Ljava/lang/ref/WeakReference;

.field public f:[Ljava/lang/ref/WeakReference;

.field public g:Ljava/lang/ref/WeakReference;

.field public h:Ljava/lang/ref/WeakReference;

.field public i:Z

.field public j:I

.field public k:I

.field public l:Z

.field public m:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->n:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->o:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->p:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->q:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->r:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->s:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->t:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->u:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->v:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->w:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->x:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->y:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->z:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->B:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->C:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->D:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->E:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->F:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->G:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->H:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->I:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->J:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->K:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->L:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v5, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->M:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    return-void
.end method

.method public static getInstance()Lcom/transsion/widgetslib/util/search/SearchAnimManager;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->N:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    invoke-direct {v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;-><init>()V

    sput-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->N:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    :cond_0
    sget-object v0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->N:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    return-object v0
.end method


# virtual methods
.method public A(FF)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    iput p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    return-void
.end method

.method public B(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    filled-new-array {p2}, [Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->D([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->v()V

    return-void
.end method

.method public final C()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->j:I

    goto :goto_0

    :cond_0
    const-string p0, "unionPgsTranslationY object recycled"

    invoke-static {p0}, Lbq5;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D([Landroid/view/View;)[Ljava/lang/ref/WeakReference;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/ref/WeakReference;

    aget-object v2, p1, p0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-array p0, p0, [Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public final a(Lcom/transsion/widgetslib/widget/SearchBar;Lcom/transsion/widgetslib/widget/SearchBar;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    iput p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/SearchBar;->requireSearchAnimManagerTrans(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->A(FF)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateScaleAndOffset: mScale = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mOffset = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchAnimManager"

    invoke-static {p1, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/animation/AnimatorSet;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterSearch: getSecondPageReCreate() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAnimManager"

    invoke-static {v1, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->setSecondPageReCreate(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->i:Z

    sget-boolean v1, Lolb;->E:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->C()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e()Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m:Ljava/lang/ref/WeakReference;

    :goto_0
    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    new-instance v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$b;-><init>(Lcom/transsion/widgetslib/widget/SearchBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return-object v0
.end method

.method public final c()Landroid/animation/AnimatorSet;
    .locals 12

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_4

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->j:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v10, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterSearchForPolicyA: startY ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " endY = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " transY = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SearchAnimManager"

    invoke-static {v3, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    int-to-float v3, v10

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->n:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0x190

    move-object v4, p0

    move v6, v10

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->o:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->l(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->q:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0xfa

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->j([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->u()V

    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->p:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x96

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {p0, v0, v2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a(Lcom/transsion/widgetslib/widget/SearchBar;Lcom/transsion/widgetslib/widget/SearchBar;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    iget v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    invoke-virtual {v0, v2, p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v1, 0x1

    aput-object v3, v2, v1

    const/4 v1, 0x2

    aput-object v4, v2, v1

    const/4 v1, 0x3

    aput-object p0, v2, v1

    const/4 p0, 0x4

    aput-object v5, v2, p0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-object v0

    :cond_4
    :goto_2
    const-string p0, "object recycled"

    invoke-static {p0}, Lbq5;->f(Ljava/lang/String;)V

    return-object v1
.end method

.method public final d()Landroid/animation/AnimatorSet;
    .locals 12

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->v:Landroid/view/animation/Interpolator;

    const-wide/16 v6, 0x190

    move-object v2, p0

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    sget-object v5, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->w:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->l(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->y:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0xfa

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->q(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->z:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v4, v7, v5, v6}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->j([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->u()V

    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->x:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x96

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;

    move-result-object v5

    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->startSearchForTransition()Landroid/animation/AnimatorSet;

    move-result-object p0

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v1, v7, v3

    const/4 v1, 0x1

    aput-object v0, v7, v1

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object p0, v7, v0

    const/4 p0, 0x4

    aput-object v5, v7, p0

    const/4 p0, 0x5

    aput-object v2, v7, p0

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-object v6
.end method

.method public final e()Landroid/animation/AnimatorSet;
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x38

    invoke-static {v0, v2}, Lolb;->h(Landroid/content/Context;I)I

    move-result v0

    iget-object v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->F:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0x190

    move-object v3, p0

    move v5, v0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->G:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->l(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->I:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0xfa

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->j([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->u()V

    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->H:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0xfa

    const-wide/16 v9, 0x96

    move-object v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    aput-object v0, v5, v1

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object p0, v5, v0

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-object v4
.end method

.method public f()Landroid/animation/AnimatorSet;
    .locals 4

    iget-boolean v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->i:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->i:Z

    sget-boolean v0, Lolb;->E:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->i()Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->i()Landroid/animation/AnimatorSet;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    new-instance v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager$c;

    sget-object v2, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->N:Lcom/transsion/widgetslib/util/search/SearchAnimManager;

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$c;-><init>(Ljava/lang/Object;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->t()V

    return-object v0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public g()Landroid/animation/AnimatorSet;
    .locals 15

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    if-eqz v3, :cond_3

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    sget-object v6, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->u:Landroid/view/animation/Interpolator;

    const-wide/16 v7, 0xc8

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->n([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    sget-object v9, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v6, v9, v7, v8}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->s([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0x32

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget v7, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->j:I

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget-object v10, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    sget-object v12, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->s:Landroid/view/animation/Interpolator;

    const-wide/16 v13, 0xc8

    move-object v9, p0

    move v11, v7

    invoke-virtual/range {v9 .. v14}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->o(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v8

    iget-object v10, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    sget-object v12, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->r:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v9 .. v14}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->p(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v4, v2, v1

    aput-object v6, v2, v0

    const/4 v4, 0x2

    aput-object v8, v2, v4

    const/4 v4, 0x3

    aput-object v7, v2, v4

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {p0, v3, v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a(Lcom/transsion/widgetslib/widget/SearchBar;Lcom/transsion/widgetslib/widget/SearchBar;)V

    iget v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    invoke-virtual {v3, v2, p0}, Lcom/transsion/widgetslib/widget/SearchBar;->endSearchForTransition(FF)Landroid/animation/AnimatorSet;

    move-result-object p0

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p0, v0, v1

    invoke-virtual {v9, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-object v9

    :cond_3
    :goto_2
    const-string p0, "object recycled"

    invoke-static {p0}, Lbq5;->f(Ljava/lang/String;)V

    return-object v4
.end method

.method public getActionPolicy()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k:I

    return p0
.end method

.method public getOffset()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->b:F

    return p0
.end method

.method public getScale()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->a:F

    return p0
.end method

.method public getSecondPageReCreate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->l:Z

    return p0
.end method

.method public h()Landroid/animation/AnimatorSet;
    .locals 11

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->E:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->n([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->s([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    sget-object v3, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->D:Landroid/view/animation/Interpolator;

    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->r(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetslib/widget/SearchBar;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v3, v4}, Lolb;->h(Landroid/content/Context;I)I

    move-result v3

    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->B:Landroid/view/animation/Interpolator;

    const-wide/16 v9, 0x15e

    move-object v5, p0

    move v7, v3

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->o(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    sget-object v8, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->A:Landroid/view/animation/Interpolator;

    invoke-virtual/range {v5 .. v10}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->p(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x5

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object p0, v5, v0

    const/4 p0, 0x4

    aput-object v2, v5, p0

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-object v3
.end method

.method public i()Landroid/animation/AnimatorSet;
    .locals 10

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->M:Landroid/view/animation/Interpolator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->n([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    sget-object v4, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->L:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->s([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lolb;->h(Landroid/content/Context;I)I

    move-result v2

    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->K:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0xfa

    move-object v4, p0

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->o(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    sget-object v7, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->J:Landroid/view/animation/Interpolator;

    const-wide/16 v8, 0x15e

    invoke-virtual/range {v4 .. v9}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->p(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p0

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object p0, v4, v0

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-object v2
.end method

.method public final j([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final k([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;JJ)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final l(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 3

    int-to-float p0, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p3, p1, v1, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public final m(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 3

    int-to-float p0, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p3, p1, v2, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public final n([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final o(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 4

    int-to-float p0, p2

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p3, p1, v0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public final p(Ljava/lang/ref/WeakReference;ILandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 3

    int-to-float p0, p2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p3, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    const/4 p4, 0x3

    invoke-direct {p3, p1, p4, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$d;-><init>(Landroid/view/View;II)V

    invoke-virtual {p0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method public final q(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final r(Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final s([Ljava/lang/ref/WeakReference;Landroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;

    invoke-direct {p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager$a;-><init>([Ljava/lang/ref/WeakReference;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setActionPolicy(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->k:I

    return-void
.end method

.method public setSecondPageReCreate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->l:Z

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/view/View;

    :cond_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final u()V
    .locals 5

    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->f:[Ljava/lang/ref/WeakReference;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSecondPageStatus: getSecondPageReCreate() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchAnimManager"

    invoke-static {v1, v0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->d:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/SearchBar;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->h:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->getSecondPageReCreate()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz v1, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_5

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    :goto_1
    return-void
.end method

.method public w()Z
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->m:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public x()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->i:Z

    return p0
.end method

.method public varargs y(Landroid/view/ViewGroup;[Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    array-length v1, p2

    add-int/2addr v1, v0

    const-class v2, [Landroid/view/View;

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/view/View;

    array-length v1, p2

    sub-int/2addr v1, v0

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->D([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_0
    new-array p2, v0, [Landroid/view/View;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->D([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method

.method public varargs z(Lcom/transsion/widgetslib/widget/SearchBar;Landroid/view/ViewGroup;[Landroid/view/View;)V
    .locals 1

    sget-boolean v0, Lolb;->E:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->y(Landroid/view/ViewGroup;[Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->c:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p3}, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->D([Landroid/view/View;)[Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/util/search/SearchAnimManager;->e:[Ljava/lang/ref/WeakReference;

    :goto_0
    return-void
.end method
