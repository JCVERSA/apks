.class public Lkx3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkx3$b;
    }
.end annotation


# static fields
.field public static D:F

.field public static final E:[F

.field public static final F:[F


# instance fields
.field public final A:F

.field public B:F

.field public final C:Laz3;

.field public final a:Landroid/view/animation/Interpolator;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:J

.field public n:I

.field public o:F

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z

.field public t:F

.field public u:F

.field public v:I

.field public w:F

.field public x:F

.field public y:Ljv9;

.field public z:F


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

    sput v0, Lkx3;->D:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lkx3;->E:[F

    new-array v0, v0, [F

    sput-object v0, Lkx3;->F:[F

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

    sget-object v3, Lkx3;->E:[F

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

    sget-object v3, Lkx3;->F:[F

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
    sget-object v0, Lkx3;->E:[F

    sget-object v1, Lkx3;->F:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lkx3;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lkx3;->x:F

    .line 5
    new-instance v0, Lkx3$a;

    const-string v1, "scrollerSpring"

    invoke-direct {v0, p0, v1}, Lkx3$a;-><init>(Lkx3;Ljava/lang/String;)V

    iput-object v0, p0, Lkx3;->C:Laz3;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lkx3;->r:Z

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lkx3$b;

    invoke-direct {p2}, Lkx3$b;-><init>()V

    iput-object p2, p0, Lkx3;->a:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 8
    :cond_0
    iput-object p2, p0, Lkx3;->a:Landroid/view/animation/Interpolator;

    .line 9
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x43200000    # 160.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lkx3;->A:F

    .line 10
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p1

    invoke-virtual {p0, p1}, Lkx3;->d(F)F

    move-result p1

    iput p1, p0, Lkx3;->z:F

    .line 11
    iput-boolean p3, p0, Lkx3;->s:Z

    const/high16 p1, 0x3e800000    # 0.25f

    .line 12
    invoke-virtual {p0, p1}, Lkx3;->d(F)F

    move-result p1

    iput p1, p0, Lkx3;->B:F

    .line 13
    iget-object p1, p0, Lkx3;->y:Ljv9;

    if-nez p1, :cond_1

    .line 14
    new-instance p1, Ljv9;

    invoke-direct {p1, p0, v0}, Ljv9;-><init>(Ljava/lang/Object;Laz3;)V

    iput-object p1, p0, Lkx3;->y:Ljv9;

    :cond_1
    return-void
.end method

.method public static bridge synthetic a(Lkx3;)I
    .locals 0

    iget p0, p0, Lkx3;->l:I

    return p0
.end method

.method public static bridge synthetic b(Lkx3;I)V
    .locals 0

    iput p1, p0, Lkx3;->l:I

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget v0, p0, Lkx3;->e:I

    iput v0, p0, Lkx3;->k:I

    iget v0, p0, Lkx3;->f:I

    iput v0, p0, Lkx3;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkx3;->r:Z

    return-void
.end method

.method public final d(F)F
    .locals 1

    const v0, 0x43c10b3d

    iget p0, p0, Lkx3;->A:F

    mul-float/2addr p0, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method public e()Z
    .locals 8

    iget-boolean v0, p0, Lkx3;->r:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkx3;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lkx3;->n:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_4

    iget v3, p0, Lkx3;->b:I

    if-eqz v3, :cond_3

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    int-to-float v0, v0

    int-to-float v3, v1

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v4, v0, v3

    float-to-int v4, v4

    const/16 v5, 0x64

    if-ge v4, v5, :cond_2

    int-to-float v5, v4

    div-float/2addr v5, v3

    add-int/lit8 v6, v4, 0x1

    int-to-float v7, v6

    div-float/2addr v7, v3

    sget-object v3, Lkx3;->E:[F

    aget v4, v3, v4

    aget v3, v3, v6

    sub-float/2addr v3, v4

    sub-float/2addr v7, v5

    div-float/2addr v3, v7

    sub-float/2addr v0, v5

    mul-float/2addr v0, v3

    add-float/2addr v4, v0

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lkx3;->v:I

    int-to-float v0, v0

    mul-float/2addr v3, v0

    int-to-float v0, v1

    div-float/2addr v3, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v0

    iput v3, p0, Lkx3;->u:F

    iget v0, p0, Lkx3;->c:I

    iget v1, p0, Lkx3;->e:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkx3;->k:I

    iget v1, p0, Lkx3;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lkx3;->k:I

    iget v1, p0, Lkx3;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lkx3;->k:I

    iget v0, p0, Lkx3;->d:I

    iget v1, p0, Lkx3;->f:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lkx3;->l:I

    iget v1, p0, Lkx3;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lkx3;->l:I

    iget v1, p0, Lkx3;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lkx3;->l:I

    iget v1, p0, Lkx3;->k:I

    iget v3, p0, Lkx3;->e:I

    if-ne v1, v3, :cond_5

    iget v1, p0, Lkx3;->f:I

    if-ne v0, v1, :cond_5

    iput-boolean v2, p0, Lkx3;->r:Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lkx3;->a:Landroid/view/animation/Interpolator;

    int-to-float v0, v0

    iget v3, p0, Lkx3;->o:F

    mul-float/2addr v0, v3

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    iget v1, p0, Lkx3;->c:I

    iget v3, p0, Lkx3;->p:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lkx3;->k:I

    iget v1, p0, Lkx3;->d:I

    iget v3, p0, Lkx3;->q:F

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lkx3;->l:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lkx3;->e:I

    iput v0, p0, Lkx3;->k:I

    iget v0, p0, Lkx3;->f:I

    iput v0, p0, Lkx3;->l:I

    iput-boolean v2, p0, Lkx3;->r:Z

    :cond_5
    :goto_1
    return v2
.end method

.method public f(IIIIIIIII)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    iget-boolean v3, v0, Lkx3;->s:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lkx3;->r:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lkx3;->getCurrVelocity()F

    move-result v3

    iget v4, v0, Lkx3;->e:I

    iget v5, v0, Lkx3;->c:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v0, Lkx3;->f:I

    iget v6, v0, Lkx3;->d:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    float-to-double v6, v4

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v4, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v3

    mul-float/2addr v5, v3

    move v3, p3

    int-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    move v7, p4

    int-to-float v8, v7

    invoke-static {v8}, Ljava/lang/Math;->signum(F)F

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_2

    add-float/2addr v6, v4

    float-to-int v3, v6

    add-float/2addr v8, v5

    float-to-int v4, v8

    move v7, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v7, p4

    goto :goto_1

    :cond_1
    move v3, p3

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v4, 0x1

    iput v4, v0, Lkx3;->b:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Lkx3;->r:Z

    int-to-double v4, v3

    int-to-double v8, v7

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, v0, Lkx3;->t:F

    invoke-virtual {p0, v4}, Lkx3;->j(F)I

    move-result v5

    iput v5, v0, Lkx3;->n:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lkx3;->m:J

    iput v1, v0, Lkx3;->c:I

    iput v2, v0, Lkx3;->d:I

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v6, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    int-to-float v3, v3

    div-float/2addr v3, v4

    :goto_2
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    int-to-float v6, v7

    div-float v8, v6, v4

    :goto_3
    invoke-virtual {p0, v4}, Lkx3;->i(F)D

    move-result-wide v6

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-double v9, v4

    mul-double/2addr v9, v6

    double-to-int v4, v9

    iput v4, v0, Lkx3;->v:I

    move/from16 v4, p5

    iput v4, v0, Lkx3;->g:I

    move/from16 v4, p6

    iput v4, v0, Lkx3;->h:I

    move/from16 v4, p7

    iput v4, v0, Lkx3;->i:I

    move/from16 v4, p8

    iput v4, v0, Lkx3;->j:I

    float-to-double v3, v3

    mul-double/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v1, v3

    iput v1, v0, Lkx3;->e:I

    iget v3, v0, Lkx3;->h:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lkx3;->e:I

    iget v3, v0, Lkx3;->g:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lkx3;->e:I

    cmpg-float v1, v8, v5

    if-gez v1, :cond_5

    sub-int v1, v2, p9

    float-to-double v3, v8

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lkx3;->f:I

    goto :goto_4

    :cond_5
    add-int v1, v2, p9

    float-to-double v3, v8

    mul-double/2addr v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lkx3;->f:I

    :goto_4
    iget v1, v0, Lkx3;->f:I

    iget v2, v0, Lkx3;->j:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lkx3;->f:I

    iget v2, v0, Lkx3;->i:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lkx3;->f:I

    iput v5, v0, Lkx3;->w:F

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lkx3;->r:Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 2

    iget v0, p0, Lkx3;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lkx3;->u:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lkx3;->t:F

    iget v1, p0, Lkx3;->z:F

    invoke-virtual {p0}, Lkx3;->n()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v1, p0

    const/high16 p0, 0x44fa0000    # 2000.0f

    div-float/2addr v1, p0

    sub-float p0, v0, v1

    :goto_0
    return p0
.end method

.method public final getCurrX()I
    .locals 0

    iget p0, p0, Lkx3;->k:I

    return p0
.end method

.method public final getCurrY()I
    .locals 0

    iget p0, p0, Lkx3;->l:I

    return p0
.end method

.method public final getDuration()I
    .locals 0

    iget p0, p0, Lkx3;->n:I

    return p0
.end method

.method public final getFinalX()I
    .locals 0

    iget p0, p0, Lkx3;->e:I

    return p0
.end method

.method public final getFinalY()I
    .locals 0

    iget p0, p0, Lkx3;->f:I

    return p0
.end method

.method public getFixedFlingValue()F
    .locals 4

    iget v0, p0, Lkx3;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkx3;->m:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lkx3;->n:I

    if-ge v0, v1, :cond_3

    if-lez v1, :cond_3

    iget-boolean v2, p0, Lkx3;->r:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lkx3;->a:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_2
    iget p0, p0, Lkx3;->w:F

    mul-float/2addr v0, p0

    return v0

    :cond_3
    :goto_0
    iget p0, p0, Lkx3;->w:F

    return p0
.end method

.method public final getStartX()I
    .locals 0

    iget p0, p0, Lkx3;->c:I

    return p0
.end method

.method public final getStartY()I
    .locals 0

    iget p0, p0, Lkx3;->d:I

    return p0
.end method

.method public final h(F)D
    .locals 1

    const v0, 0x3eb33333    # 0.35f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float/2addr p1, v0

    iget v0, p0, Lkx3;->x:F

    iget p0, p0, Lkx3;->B:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final i(F)D
    .locals 6

    invoke-virtual {p0, p1}, Lkx3;->h(F)D

    move-result-wide v0

    sget p1, Lkx3;->D:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lkx3;->x:F

    iget p0, p0, Lkx3;->B:F

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

.method public final j(F)I
    .locals 4

    invoke-virtual {p0, p1}, Lkx3;->h(F)D

    move-result-wide p0

    sget v0, Lkx3;->D:F

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

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lkx3;->r:Z

    return p0
.end method

.method public l(IIIII)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lkx3;->b:I

    iput-boolean v0, p0, Lkx3;->r:Z

    iput p5, p0, Lkx3;->n:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lkx3;->m:J

    iput p1, p0, Lkx3;->c:I

    iput p2, p0, Lkx3;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lkx3;->e:I

    add-int/2addr p2, p4

    iput p2, p0, Lkx3;->f:I

    int-to-float p1, p3

    iput p1, p0, Lkx3;->p:F

    int-to-float p1, p4

    iput p1, p0, Lkx3;->q:F

    iget p1, p0, Lkx3;->n:I

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    div-float/2addr p2, p1

    iput p2, p0, Lkx3;->o:F

    const/4 p1, 0x0

    iput p1, p0, Lkx3;->w:F

    return-void
.end method

.method public m(FFZ)V
    .locals 2

    iget-object v0, p0, Lkx3;->y:Ljv9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lf43;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkx3;->y:Ljv9;

    invoke-virtual {v0}, Ljv9;->c()V

    :cond_0
    iget-object v0, p0, Lkx3;->y:Ljv9;

    new-instance v1, Lkv9;

    invoke-direct {v1, p2}, Lkv9;-><init>(F)V

    const/high16 p2, 0x42480000    # 50.0f

    invoke-virtual {v1, p2}, Lkv9;->i(F)Lkv9;

    move-result-object p2

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {p2, v1}, Lkv9;->g(F)Lkv9;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljv9;->z(Lkv9;)Ljv9;

    if-nez p3, :cond_1

    iget-object p2, p0, Lkx3;->y:Ljv9;

    iget p3, p0, Lkx3;->t:F

    const/high16 v0, 0x457a0000    # 4000.0f

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p2, p3}, Lf43;->n(F)Lf43;

    :cond_1
    iget-object p2, p0, Lkx3;->y:Ljv9;

    invoke-virtual {p2, p1}, Lf43;->m(F)Lf43;

    iget-object p0, p0, Lkx3;->y:Ljv9;

    invoke-virtual {p0}, Ljv9;->p()V

    return-void
.end method

.method public n()I
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkx3;->m:J

    sub-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public setFinalX(I)V
    .locals 1

    iput p1, p0, Lkx3;->e:I

    iget v0, p0, Lkx3;->c:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lkx3;->p:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkx3;->r:Z

    return-void
.end method

.method public setFinalY(I)V
    .locals 1

    iput p1, p0, Lkx3;->f:I

    iget v0, p0, Lkx3;->d:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lkx3;->q:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkx3;->r:Z

    return-void
.end method

.method public setFixedFlingValue(F)V
    .locals 0

    iput p1, p0, Lkx3;->w:F

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    invoke-virtual {p0, p1}, Lkx3;->d(F)F

    move-result v0

    iput v0, p0, Lkx3;->z:F

    iput p1, p0, Lkx3;->x:F

    return-void
.end method
