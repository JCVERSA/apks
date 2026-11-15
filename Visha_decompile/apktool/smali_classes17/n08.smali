.class public final Ln08;
.super Lun2;
.source "SourceFile"

# interfaces
.implements Lex3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln08$a;
    }
.end annotation


# instance fields
.field public final d:D

.field public final e:F

.field public final f:F

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/yandex/div2/DivPageSize;Loj3;ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V
    .locals 4

    const-string v0, "mode"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolver"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paddings"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignment"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p4, p5}, Lun2;-><init>(ILsn2;Lcom/yandex/div2/DivPager$ItemAlignment;)V

    iget-object p1, p1, Lcom/yandex/div2/DivPageSize;->a:Lcom/yandex/div2/DivPercentageSize;

    iget-object p1, p1, Lcom/yandex/div2/DivPercentageSize;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p1, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Ln08;->d:D

    int-to-double v0, p3

    mul-double/2addr v0, p1

    const/16 v2, 0x64

    int-to-double v2, v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Ln08;->e:F

    sget-object v0, Ln08$a;->a:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x1

    if-eq p5, v0, :cond_2

    const/4 v1, 0x2

    if-eq p5, v1, :cond_1

    const/4 v1, 0x3

    if-ne p5, v1, :cond_0

    int-to-float p3, p3

    invoke-virtual {p4}, Lsn2;->f()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p0}, Ln08;->a()F

    move-result p4

    :goto_0
    sub-float/2addr p3, p4

    goto :goto_1

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    int-to-float p3, p3

    invoke-virtual {p0}, Ln08;->a()F

    move-result p4

    sub-float/2addr p3, p4

    int-to-float p4, v1

    div-float/2addr p3, p4

    goto :goto_1

    :cond_2
    int-to-float p3, p3

    invoke-virtual {p4}, Lsn2;->i()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p0}, Ln08;->a()F

    move-result p4

    goto :goto_0

    :goto_1
    iput p3, p0, Ln08;->f:F

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Ln08;->g:Z

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Ln08;->e:F

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Ln08;->f:F

    return p0
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Ln08;->g:Z

    return p0
.end method

.method public e(I)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0}, Ln08;->a()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
