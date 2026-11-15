.class public Lvt7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvt7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static v:F

.field public static final w:[F

.field public static final x:[F


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:F

.field public f:F

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:F

.field public n:I

.field public o:Landroid/content/Context;

.field public p:Ljv9;

.field public q:Z

.field public r:F

.field public s:F

.field public t:Lf43$r;

.field public final u:Laz3;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lvt7$b;->v:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lvt7$b;->w:[F

    new-array v0, v0, [F

    sput-object v0, Lvt7$b;->x:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v12, v14

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v12

    float-to-double v11, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v11, v17

    if-gez v11, :cond_2

    sget-object v3, Lvt7$b;->w:[F

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    move v3, v4

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v11

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    sget-object v3, Lvt7$b;->x:[F

    const v7, 0x3e333333    # 0.175f

    mul-float/2addr v10, v7

    mul-float/2addr v6, v13

    add-float/2addr v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v9, v14

    aput v9, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3e333333    # 0.175f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_1
    move v1, v6

    goto :goto_3

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    sget-object v0, Lvt7$b;->w:[F

    sget-object v1, Lvt7$b;->x:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lvt7$b;->m:F

    const/4 v0, 0x0

    iput v0, p0, Lvt7$b;->n:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvt7$b;->q:Z

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, p0, Lvt7$b;->s:F

    new-instance v1, Lvt7$b$a;

    const-string v2, "splineOverScrollerSpring"

    invoke-direct {v1, p0, v2}, Lvt7$b$a;-><init>(Lvt7$b;Ljava/lang/String;)V

    iput-object v1, p0, Lvt7$b;->u:Laz3;

    iput-object p1, p0, Lvt7$b;->o:Landroid/content/Context;

    iput-boolean v0, p0, Lvt7$b;->k:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lvt7$b;->s:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    iput p1, p0, Lvt7$b;->r:F

    new-instance p1, Ljv9;

    invoke-direct {p1, p0, v1}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    iput-object p1, p0, Lvt7$b;->p:Ljv9;

    new-instance v0, Lvt7$b$b;

    invoke-direct {v0, p0}, Lvt7$b$b;-><init>(Lvt7$b;)V

    invoke-virtual {p1, v0}, Lf43;->b(Lf43$r;)Lf43;

    iget-object p1, p0, Lvt7$b;->p:Ljv9;

    new-instance v0, Lvt7$b$c;

    invoke-direct {v0, p0}, Lvt7$b$c;-><init>(Lvt7$b;)V

    invoke-virtual {p1, v0}, Lf43;->a(Lf43$q;)Lf43;

    return-void
.end method

.method public static bridge synthetic a(Lvt7$b;)F
    .locals 0

    iget p0, p0, Lvt7$b;->e:F

    return p0
.end method

.method public static bridge synthetic b(Lvt7$b;)I
    .locals 0

    iget p0, p0, Lvt7$b;->b:I

    return p0
.end method

.method public static bridge synthetic c(Lvt7$b;)I
    .locals 0

    iget p0, p0, Lvt7$b;->h:I

    return p0
.end method

.method public static bridge synthetic d(Lvt7$b;)I
    .locals 0

    iget p0, p0, Lvt7$b;->c:I

    return p0
.end method

.method public static bridge synthetic e(Lvt7$b;)Z
    .locals 0

    iget-boolean p0, p0, Lvt7$b;->k:Z

    return p0
.end method

.method public static bridge synthetic f(Lvt7$b;)Lf43$r;
    .locals 0

    iget-object p0, p0, Lvt7$b;->t:Lf43$r;

    return-object p0
.end method

.method public static bridge synthetic g(Lvt7$b;)I
    .locals 0

    iget p0, p0, Lvt7$b;->a:I

    return p0
.end method

.method public static bridge synthetic h(Lvt7$b;)J
    .locals 2

    iget-wide v0, p0, Lvt7$b;->g:J

    return-wide v0
.end method

.method public static bridge synthetic i(Lvt7$b;)I
    .locals 0

    iget p0, p0, Lvt7$b;->n:I

    return p0
.end method

.method public static bridge synthetic j(Lvt7$b;I)V
    .locals 0

    iput p1, p0, Lvt7$b;->b:I

    return-void
.end method

.method public static bridge synthetic k(Lvt7$b;Z)V
    .locals 0

    iput-boolean p1, p0, Lvt7$b;->q:Z

    return-void
.end method

.method public static bridge synthetic l(Lvt7$b;I)V
    .locals 0

    iput p1, p0, Lvt7$b;->n:I

    return-void
.end method

.method public static q(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method


# virtual methods
.method public A(IIIF)V
    .locals 0

    const/4 p4, 0x0

    iput-boolean p4, p0, Lvt7$b;->k:Z

    iput p1, p0, Lvt7$b;->a:I

    iput p1, p0, Lvt7$b;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lvt7$b;->c:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lvt7$b;->g:J

    iput p3, p0, Lvt7$b;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lvt7$b;->f:F

    iput p4, p0, Lvt7$b;->d:I

    return-void
.end method

.method public final B(III)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvt7$b;->k:Z

    const/4 v0, 0x3

    iput v0, p0, Lvt7$b;->n:I

    iput p1, p0, Lvt7$b;->a:I

    iput p1, p0, Lvt7$b;->b:I

    iput p2, p0, Lvt7$b;->c:I

    iget-object p1, p0, Lvt7$b;->p:Ljv9;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lf43;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lvt7$b;->p:Ljv9;

    invoke-virtual {p1}, Ljv9;->c()V

    :cond_0
    iget-object p1, p0, Lvt7$b;->p:Ljv9;

    new-instance p2, Lkv9;

    iget v0, p0, Lvt7$b;->c:I

    int-to-float v0, v0

    invoke-direct {p2, v0}, Lkv9;-><init>(F)V

    const/high16 v0, 0x43480000    # 200.0f

    invoke-virtual {p2, v0}, Lkv9;->i(F)Lkv9;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Lkv9;->g(F)Lkv9;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljv9;->z(Lkv9;)Ljv9;

    iget-object p1, p0, Lvt7$b;->p:Ljv9;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lf43;->n(F)Lf43;

    iget-object p0, p0, Lvt7$b;->p:Ljv9;

    invoke-virtual {p0}, Ljv9;->p()V

    return-void
.end method

.method public C()Z
    .locals 9

    iget v0, p0, Lvt7$b;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lvt7$b;->k:Z

    return p0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lvt7$b;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget p0, p0, Lvt7$b;->h:I

    if-lez p0, :cond_1

    move v3, v4

    :cond_1
    return v3

    :cond_2
    iget v2, p0, Lvt7$b;->h:I

    int-to-long v5, v2

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    return v3

    :cond_3
    iget v3, p0, Lvt7$b;->n:I

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v3, :cond_6

    const/high16 v6, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    long-to-float v0, v0

    div-float/2addr v0, v5

    iget v1, p0, Lvt7$b;->d:I

    int-to-float v2, v1

    iget v3, p0, Lvt7$b;->f:F

    mul-float v5, v3, v0

    add-float/2addr v2, v5

    iput v2, p0, Lvt7$b;->e:F

    int-to-float v1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v3, v0

    mul-float/2addr v3, v0

    div-float/2addr v3, v6

    add-float/2addr v1, v3

    float-to-double v0, v1

    goto :goto_1

    :cond_5
    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    mul-float v1, v0, v0

    iget v2, p0, Lvt7$b;->d:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget v3, p0, Lvt7$b;->l:I

    int-to-float v5, v3

    mul-float/2addr v5, v2

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v1

    mul-float/2addr v6, v0

    mul-float/2addr v6, v1

    sub-float/2addr v7, v6

    mul-float/2addr v5, v7

    float-to-double v5, v5

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    neg-float v0, v0

    add-float/2addr v0, v1

    mul-float/2addr v2, v0

    iput v2, p0, Lvt7$b;->e:F

    move-wide v0, v5

    goto :goto_1

    :cond_6
    long-to-float v0, v0

    iget v1, p0, Lvt7$b;->i:I

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v3, v0, v2

    float-to-int v3, v3

    const/16 v6, 0x64

    if-ge v3, v6, :cond_7

    int-to-float v6, v3

    div-float/2addr v6, v2

    add-int/lit8 v7, v3, 0x1

    int-to-float v8, v7

    div-float/2addr v8, v2

    sget-object v2, Lvt7$b;->w:[F

    aget v3, v2, v3

    aget v2, v2, v7

    sub-float/2addr v2, v3

    sub-float/2addr v8, v6

    div-float/2addr v2, v8

    sub-float/2addr v0, v6

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    goto :goto_0

    :cond_7
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    :goto_0
    iget v0, p0, Lvt7$b;->j:I

    int-to-float v6, v0

    mul-float/2addr v3, v6

    float-to-double v6, v3

    int-to-float v0, v0

    mul-float/2addr v2, v0

    int-to-float v0, v1

    div-float/2addr v2, v0

    mul-float/2addr v2, v5

    iput v2, p0, Lvt7$b;->e:F

    move-wide v0, v6

    :goto_1
    iget v2, p0, Lvt7$b;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p0, Lvt7$b;->b:I

    return v4
.end method

.method public D(F)V
    .locals 2

    iget v0, p0, Lvt7$b;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lvt7$b;->a:I

    iget v1, p0, Lvt7$b;->c:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lvt7$b;->b:I

    return-void
.end method

.method public final m(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sget-object p2, Lvt7$b;->x:[F

    aget p3, p2, p3

    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p1, p2

    add-float/2addr p3, p1

    iget p1, p0, Lvt7$b;->h:I

    int-to-float p1, p1

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lvt7$b;->h:I

    :cond_0
    return-void
.end method

.method public n()Z
    .locals 7

    iget v0, p0, Lvt7$b;->n:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lvt7$b;->g:J

    iget v0, p0, Lvt7$b;->h:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lvt7$b;->g:J

    iget v0, p0, Lvt7$b;->c:I

    iget v3, p0, Lvt7$b;->a:I

    invoke-virtual {p0, v0, v3, v2}, Lvt7$b;->B(III)V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lvt7$b;->h:I

    iget v3, p0, Lvt7$b;->i:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lvt7$b;->c:I

    iput v0, p0, Lvt7$b;->a:I

    iput v0, p0, Lvt7$b;->b:I

    iget v0, p0, Lvt7$b;->e:F

    float-to-int v0, v0

    iput v0, p0, Lvt7$b;->d:I

    invoke-static {v0}, Lvt7$b;->q(I)F

    move-result v0

    iput v0, p0, Lvt7$b;->f:F

    iget-wide v2, p0, Lvt7$b;->g:J

    iget v0, p0, Lvt7$b;->h:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lvt7$b;->g:J

    invoke-virtual {p0}, Lvt7$b;->u()V

    :goto_0
    invoke-virtual {p0}, Lvt7$b;->C()Z

    return v1

    :cond_3
    return v2
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lvt7$b;->p:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvt7$b;->p:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget v0, p0, Lvt7$b;->c:I

    iput v0, p0, Lvt7$b;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lvt7$b;->k:Z

    return-void
.end method

.method public p(IIIII)V
    .locals 5

    iput p5, p0, Lvt7$b;->l:I

    const/4 p5, 0x0

    iput-boolean p5, p0, Lvt7$b;->k:Z

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lvt7$b;->s:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    if-gez p2, :cond_0

    const/16 p2, -0x5dc

    goto :goto_0

    :cond_0
    const/16 p2, 0x5dc

    :cond_1
    :goto_0
    iput p2, p0, Lvt7$b;->d:I

    int-to-float v0, p2

    iput v0, p0, Lvt7$b;->e:F

    iput p5, p0, Lvt7$b;->i:I

    iput p5, p0, Lvt7$b;->h:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lvt7$b;->g:J

    iput p1, p0, Lvt7$b;->a:I

    iput p1, p0, Lvt7$b;->b:I

    if-gt p1, p4, :cond_6

    if-ge p1, p3, :cond_2

    goto :goto_2

    :cond_2
    iput p5, p0, Lvt7$b;->n:I

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lvt7$b;->t(I)I

    move-result p5

    iput p5, p0, Lvt7$b;->i:I

    iput p5, p0, Lvt7$b;->h:I

    invoke-virtual {p0, p2}, Lvt7$b;->s(I)D

    move-result-wide v1

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    iput p2, p0, Lvt7$b;->j:I

    add-int/2addr p1, p2

    iput p1, p0, Lvt7$b;->c:I

    if-ge p1, p3, :cond_4

    iget p2, p0, Lvt7$b;->a:I

    invoke-virtual {p0, p2, p1, p3}, Lvt7$b;->m(III)V

    iput p3, p0, Lvt7$b;->c:I

    :cond_4
    iget p1, p0, Lvt7$b;->c:I

    if-le p1, p4, :cond_5

    iget p2, p0, Lvt7$b;->a:I

    invoke-virtual {p0, p2, p1, p4}, Lvt7$b;->m(III)V

    iput p4, p0, Lvt7$b;->c:I

    :cond_5
    return-void

    :cond_6
    :goto_2
    if-le p1, p4, :cond_7

    move p3, p4

    :cond_7
    invoke-virtual {p0, p1, p3, p5}, Lvt7$b;->B(III)V

    return-void
.end method

.method public final r(I)D
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lvt7$b;->m:F

    iget p0, p0, Lvt7$b;->r:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final s(I)D
    .locals 6

    invoke-virtual {p0, p1}, Lvt7$b;->r(I)D

    move-result-wide v0

    sget p1, Lvt7$b;->v:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lvt7$b;->m:F

    iget p0, p0, Lvt7$b;->r:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method

.method public setSpringAnimationListener(Lf43$r;)V
    .locals 0

    iput-object p1, p0, Lvt7$b;->t:Lf43$r;

    return-void
.end method

.method public final t(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lvt7$b;->r(I)D

    move-result-wide p0

    sget v0, Lvt7$b;->v:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method public final u()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lvt7$b;->n:I

    iget v0, p0, Lvt7$b;->a:I

    iget v1, p0, Lvt7$b;->d:I

    int-to-float v1, v1

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v0, v1}, Lvt7$b;->B(III)V

    return-void
.end method

.method public v(I)V
    .locals 2

    iput p1, p0, Lvt7$b;->c:I

    iget v0, p0, Lvt7$b;->n:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lvt7$b;->p:Ljv9;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Ljv9;->s(F)V

    :cond_0
    iget p1, p0, Lvt7$b;->c:I

    iget v0, p0, Lvt7$b;->a:I

    sub-int/2addr p1, v0

    iput p1, p0, Lvt7$b;->j:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lvt7$b;->k:Z

    return-void
.end method

.method public w(F)V
    .locals 0

    iput p1, p0, Lvt7$b;->m:F

    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lvt7$b;->p:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvt7$b;->p:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvt7$b;->k:Z

    return-void
.end method

.method public y(III)Z
    .locals 3

    iput p1, p0, Lvt7$b;->c:I

    iput p1, p0, Lvt7$b;->a:I

    iput p1, p0, Lvt7$b;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lvt7$b;->d:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lvt7$b;->g:J

    iput v0, p0, Lvt7$b;->h:I

    if-ge p1, p2, :cond_0

    invoke-virtual {p0, p1, p2, v0}, Lvt7$b;->B(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    invoke-virtual {p0, p1, p3, v0}, Lvt7$b;->B(III)V

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lvt7$b;->k:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public z(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lvt7$b;->A(IIIF)V

    return-void
.end method
