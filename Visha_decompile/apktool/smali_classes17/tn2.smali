.class public final Ltn2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:Lun2;

.field public final d:Lsn2;

.field public final e:Z

.field public final f:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

.field public final g:Lcom/yandex/div2/DivPager$ItemAlignment;


# direct methods
.method public constructor <init>(IFLun2;Lsn2;ZLcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;Lcom/yandex/div2/DivPager$ItemAlignment;)V
    .locals 1

    const-string v0, "pageSizeProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltn2;->a:I

    iput p2, p0, Ltn2;->b:F

    iput-object p3, p0, Ltn2;->c:Lun2;

    iput-object p4, p0, Ltn2;->d:Lsn2;

    iput-boolean p5, p0, Ltn2;->e:Z

    iput-object p6, p0, Ltn2;->f:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    iput-object p7, p0, Ltn2;->g:Lcom/yandex/div2/DivPager$ItemAlignment;

    return-void
.end method


# virtual methods
.method public final a(FF)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(II)Z
    .locals 6

    iget v0, p0, Ltn2;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Ltn2;->d:Lsn2;

    invoke-virtual {v1}, Lsn2;->i()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Ltn2;->d:Lsn2;

    invoke-virtual {v1}, Lsn2;->f()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Ltn2;->c:Lun2;

    invoke-virtual {v1, p1}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v3, v1, v0

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    return v4

    :cond_0
    if-eq p1, p2, :cond_2

    iget v3, p0, Ltn2;->b:F

    iget-object v5, p0, Ltn2;->c:Lun2;

    invoke-virtual {v5, p2}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    add-float/2addr v1, v3

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_2

    return v4

    :cond_1
    return v2

    :cond_2
    sub-int/2addr p1, v2

    :goto_0
    const/4 v3, -0x1

    if-ge v3, p1, :cond_4

    iget v3, p0, Ltn2;->b:F

    iget-object v5, p0, Ltn2;->c:Lun2;

    invoke-virtual {v5, p1}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    add-float/2addr v1, v3

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_4
    add-int/2addr p2, v2

    iget-object p1, p0, Ltn2;->f:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getItemCount()I

    move-result p1

    :goto_1
    if-ge p2, p1, :cond_6

    iget v3, p0, Ltn2;->b:F

    iget-object v5, p0, Ltn2;->c:Lun2;

    invoke-virtual {v5, p2}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v3, v5

    add-float/2addr v1, v3

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_5

    return v4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    return v2
.end method

.method public final c(FII)F
    .locals 4

    iget-object v0, p0, Ltn2;->g:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lcom/yandex/div2/DivPager$ItemAlignment;->END:Lcom/yandex/div2/DivPager$ItemAlignment;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Ltn2;->c:Lun2;

    invoke-virtual {v0, p2}, Lun2;->f(I)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v0, p0, Ltn2;->c:Lun2;

    invoke-virtual {v0, p3}, Lun2;->f(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v1, p1, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, p1}, Ltn2;->d(F)F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ltn2;->e(F)F

    move-result p1

    :goto_0
    mul-float/2addr p2, p1

    const/4 v1, 0x1

    int-to-float v3, v1

    sub-float/2addr v3, p1

    mul-float/2addr v0, v3

    add-float/2addr p2, v0

    iget-object v0, p0, Ltn2;->d:Lsn2;

    invoke-virtual {v0}, Lsn2;->f()F

    move-result v0

    sub-float/2addr p2, v0

    cmpg-float v0, p2, v2

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Ltn2;->c:Lun2;

    invoke-virtual {v0, p3}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Ltn2;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    add-int/2addr p3, v1

    iget-object p1, p0, Ltn2;->f:Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;

    invoke-virtual {p1}, Lcom/yandex/div/core/view2/divs/pager/DivPagerAdapter;->getItemCount()I

    move-result p1

    :goto_1
    if-ge p3, p1, :cond_6

    iget-object v1, p0, Ltn2;->c:Lun2;

    invoke-virtual {v1, p3}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget v3, p0, Ltn2;->b:F

    add-float/2addr v1, v3

    add-float/2addr v0, v1

    invoke-virtual {p0, v0, p2}, Ltn2;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    sub-float/2addr p2, v0

    return p2

    :cond_7
    return v2
.end method

.method public final d(F)F
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p1, v0

    sub-float/2addr p0, p1

    return p0
.end method

.method public final e(F)F
    .locals 1

    invoke-virtual {p0, p1}, Ltn2;->d(F)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    int-to-float p1, p1

    sub-float/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final f(FIZ)F
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    :cond_0
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float p3, v3

    float-to-int p3, p3

    sub-int p3, p2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    sub-int/2addr p2, v1

    invoke-virtual {p0, p3, p2}, Ltn2;->b(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p3, p2}, Ltn2;->i(FII)F

    move-result p0

    return p0

    :cond_1
    iget-boolean v1, p0, Ltn2;->e:Z

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, p1, p3, p2}, Ltn2;->l(FII)F

    move-result v1

    cmpg-float v2, v1, v0

    if-nez v2, :cond_4

    invoke-virtual {p0, p1, p3, p2}, Ltn2;->c(FII)F

    move-result p0

    cmpg-float p1, p0, v0

    if-nez p1, :cond_3

    return v0

    :cond_3
    return p0

    :cond_4
    return v1
.end method

.method public final g(IIF)F
    .locals 2

    iget-object v0, p0, Ltn2;->c:Lun2;

    invoke-virtual {v0, p1}, Lun2;->g(I)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Ltn2;->c:Lun2;

    invoke-virtual {v1, p2}, Lun2;->g(I)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p3

    mul-float/2addr p1, v0

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iget-object p0, p0, Ltn2;->d:Lsn2;

    invoke-virtual {p0}, Lsn2;->i()F

    move-result p0

    sub-float/2addr p1, p0

    return p1

    :cond_0
    return v0
.end method

.method public final h(FI)F
    .locals 6

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    move v4, v0

    if-gt v3, v2, :cond_1

    :goto_0
    invoke-virtual {p0, p2, v1}, Ltn2;->j(II)F

    move-result v5

    add-float/2addr v4, v5

    sub-int/2addr p2, v1

    if-eq v3, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ltn2;->d(F)F

    move-result p1

    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    invoke-virtual {p0, p2, v1}, Ltn2;->j(II)F

    move-result p0

    mul-float v0, p1, p0

    :cond_2
    add-float/2addr v4, v0

    return v4
.end method

.method public final i(FII)F
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_0

    invoke-virtual {p0, p1}, Ltn2;->d(F)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ltn2;->e(F)F

    move-result p1

    :goto_0
    iget-object v1, p0, Ltn2;->c:Lun2;

    invoke-virtual {v1, p2}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    mul-float/2addr v1, p1

    add-int/lit8 v2, p2, -0x1

    :goto_1
    const/4 v3, -0x1

    if-ge v3, v2, :cond_2

    iget-object v3, p0, Ltn2;->c:Lun2;

    invoke-virtual {v3, v2}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget v4, p0, Ltn2;->b:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p0, p2, p3, p1}, Ltn2;->g(IIF)F

    move-result p0

    sub-float/2addr v1, p0

    return v1

    :cond_3
    return v0
.end method

.method public final j(II)F
    .locals 3

    iget-object v0, p0, Ltn2;->c:Lun2;

    if-lez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lun2;->g(I)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Ltn2;->c:Lun2;

    if-lez p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-virtual {v2, p1}, Lun2;->f(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    add-float/2addr v0, p1

    iget p0, p0, Ltn2;->b:F

    sub-float/2addr v0, p0

    int-to-float p0, p2

    mul-float/2addr v0, p0

    return v0

    :cond_2
    return v1
.end method

.method public final k(FIZ)F
    .locals 1

    invoke-virtual {p0, p1, p2}, Ltn2;->h(FI)F

    move-result v0

    invoke-virtual {p0, p1, p2, p3}, Ltn2;->f(FIZ)F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method public final l(FII)F
    .locals 3

    iget-object v0, p0, Ltn2;->g:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lcom/yandex/div2/DivPager$ItemAlignment;->START:Lcom/yandex/div2/DivPager$ItemAlignment;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    cmpg-float v0, p1, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0, p1}, Ltn2;->d(F)F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ltn2;->e(F)F

    move-result p1

    :goto_0
    invoke-virtual {p0, p2, p3, p1}, Ltn2;->g(IIF)F

    move-result p3

    cmpg-float v0, p3, v2

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Ltn2;->c:Lun2;

    invoke-virtual {v0, p2}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p3}, Ltn2;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    :goto_1
    const/4 p1, -0x1

    if-ge p1, p2, :cond_6

    iget-object p1, p0, Ltn2;->c:Lun2;

    invoke-virtual {p1, p2}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v1, p0, Ltn2;->b:F

    add-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p0, v0, p3}, Ltn2;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    sub-float/2addr v0, p3

    return v0

    :cond_7
    return v2
.end method
