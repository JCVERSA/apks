.class public Lyo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public volatile b:F

.field public volatile c:Z

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lyo1;->e:F

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lyo1;->f:F

    return-void
.end method

.method public static final a(FFF)F
    .locals 3

    cmpl-float v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    sub-float v1, p1, p0

    mul-float/2addr v1, p2

    add-float/2addr v1, p0

    sub-float p2, v1, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float p2, p2, v2

    if-gez p2, :cond_1

    return p1

    :cond_1
    cmpl-float p2, v1, p0

    if-nez p2, :cond_2

    return p1

    :cond_2
    if-lez v0, :cond_3

    cmpg-float p2, v1, p1

    if-gez p2, :cond_3

    return p1

    :cond_3
    cmpg-float p0, p0, p1

    if-gez p0, :cond_4

    cmpl-float p0, v1, p1

    if-lez p0, :cond_4

    return p1

    :cond_4
    return v1
.end method

.method public static final b(FFFFF)F
    .locals 2

    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p4

    if-gtz v1, :cond_0

    return p1

    :cond_0
    mul-float/2addr p3, v0

    add-float/2addr p3, p0

    invoke-static {p0, p3, p2}, Lyo1;->a(FFF)F

    move-result p1

    sub-float p2, p1, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpg-float p2, p2, p4

    if-gez p2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p0, p1

    return p0

    :cond_1
    return p1
.end method


# virtual methods
.method public final c(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget v0, p0, Lyo1;->f:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lyo1;->d:F

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iput v0, p0, Lyo1;->d:F

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyo1;->c:Z

    iget v0, p0, Lyo1;->a:F

    iput v0, p0, Lyo1;->b:F

    return-void
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lyo1;->b:F

    return p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lyo1;->c:Z

    return p0
.end method

.method public final g(F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyo1;->c:Z

    iput p1, p0, Lyo1;->b:F

    iput p1, p0, Lyo1;->a:F

    return-void
.end method

.method public final h(F)V
    .locals 0

    iput p1, p0, Lyo1;->e:F

    return-void
.end method

.method public final i(F)V
    .locals 0

    iput p1, p0, Lyo1;->f:F

    return-void
.end method

.method public final j(F)V
    .locals 1

    iget v0, p0, Lyo1;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lyo1;->a:F

    iget v0, p0, Lyo1;->b:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lyo1;->c(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyo1;->c:Z

    :cond_0
    return-void
.end method

.method public final k(F)Z
    .locals 4

    iget-boolean v0, p0, Lyo1;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lyo1;->b:F

    iget v1, p0, Lyo1;->a:F

    iget v2, p0, Lyo1;->e:F

    iget v3, p0, Lyo1;->d:F

    invoke-static {v0, v1, p1, v2, v3}, Lyo1;->b(FFFFF)F

    move-result p1

    iput p1, p0, Lyo1;->b:F

    iget p1, p0, Lyo1;->b:F

    iget v0, p0, Lyo1;->a:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyo1;->c:Z

    :cond_1
    iget-boolean p0, p0, Lyo1;->c:Z

    return p0
.end method
