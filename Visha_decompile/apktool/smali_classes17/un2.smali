.class public abstract Lun2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lun2$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lsn2;

.field public final c:Lcom/yandex/div2/DivPager$ItemAlignment;


# direct methods
.method public constructor <init>(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V
    .locals 1

    const-string v0, "paddings"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lun2;->a:I

    iput-object p2, p0, Lun2;->b:Lsn2;

    iput-object p3, p0, Lun2;->c:Lcom/yandex/div2/DivPager$ItemAlignment;

    return-void
.end method


# virtual methods
.method public final d(I)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0, p1}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget p0, p0, Lun2;->a:I

    int-to-float p0, p0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public abstract e(I)Ljava/lang/Float;
.end method

.method public final f(I)Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lun2;->c:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lun2$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lun2;->b:Lsn2;

    invoke-virtual {p0}, Lsn2;->f()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lun2;->d(I)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lun2;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lun2;->b:Lsn2;

    invoke-virtual {p0}, Lsn2;->i()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final g(I)Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lun2;->c:Lcom/yandex/div2/DivPager$ItemAlignment;

    sget-object v1, Lun2$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lun2;->e(I)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iget v0, p0, Lun2;->a:I

    int-to-float v0, v0

    iget-object p0, p0, Lun2;->b:Lsn2;

    invoke-virtual {p0}, Lsn2;->f()F

    move-result p0

    sub-float/2addr v0, p0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {p0, p1}, Lun2;->d(I)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lun2;->b:Lsn2;

    invoke-virtual {p0}, Lsn2;->i()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    return-object p0
.end method
