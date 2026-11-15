.class public final Laz6;
.super Lun2;
.source "SourceFile"

# interfaces
.implements Lex3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laz6$a;
    }
.end annotation


# instance fields
.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivNeighbourPageSize;Loj3;Landroid/util/DisplayMetrics;IFLsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metrics"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4, p6, p7}, Lun2;-><init>(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    iget-object p1, p1, Lcom/yandex/div2/DivNeighbourPageSize;->a:Lcom/yandex/div2/DivFixedSize;

    invoke-static {p1, p3, p2}, Lcom/yandex/div/core/view2/divs/BaseDivViewExtensionsKt;->J0(Lcom/yandex/div2/DivFixedSize;Landroid/util/DisplayMetrics;Loj3;)F

    move-result p1

    iput p1, p0, Laz6;->d:F

    add-float/2addr p5, p1

    iput p5, p0, Laz6;->e:F

    sget-object p2, Laz6$a;->a:[I

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    const/4 p5, 0x2

    if-eq p2, p5, :cond_1

    const/4 p5, 0x3

    if-ne p2, p5, :cond_0

    int-to-float p2, p4

    invoke-virtual {p6}, Lsn2;->f()F

    move-result p4

    sub-float/2addr p2, p4

    invoke-virtual {p0}, Laz6;->b()F

    move-result p4

    :goto_0
    sub-float/2addr p2, p4

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    int-to-float p2, p4

    invoke-virtual {p0}, Laz6;->b()F

    move-result p4

    int-to-float p5, p5

    mul-float/2addr p4, p5

    goto :goto_0

    :cond_2
    int-to-float p2, p4

    invoke-virtual {p6}, Lsn2;->i()F

    move-result p4

    sub-float/2addr p2, p4

    invoke-virtual {p0}, Laz6;->b()F

    move-result p4

    goto :goto_0

    :goto_1
    iput p2, p0, Laz6;->f:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_2
    iput-boolean p3, p0, Laz6;->g:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Laz6;->f:F

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Laz6;->e:F

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Laz6;->g:Z

    return p0
.end method

.method public e(I)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0}, Laz6;->a()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
