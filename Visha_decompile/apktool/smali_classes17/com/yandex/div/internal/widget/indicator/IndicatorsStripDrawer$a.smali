.class public final Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:F

.field public final d:Lcom/yandex/div/internal/widget/indicator/b;

.field public final e:F


# direct methods
.method public constructor <init>(IZFLcom/yandex/div/internal/widget/indicator/b;F)V
    .locals 1

    const-string v0, "itemSize"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    .line 4
    iput p3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    .line 5
    iput-object p4, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    .line 6
    iput p5, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    return-void
.end method

.method public synthetic constructor <init>(IZFLcom/yandex/div/internal/widget/indicator/b;FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/high16 p5, 0x3f800000    # 1.0f

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;-><init>(IZFLcom/yandex/div/internal/widget/indicator/b;F)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;IZFLcom/yandex/div/internal/widget/indicator/b;FILjava/lang/Object;)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a(IZFLcom/yandex/div/internal/widget/indicator/b;F)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(IZFLcom/yandex/div/internal/widget/indicator/b;F)Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;
    .locals 6

    const-string p0, "itemSize"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;-><init>(IZFLcom/yandex/div/internal/widget/indicator/b;F)V

    return-object p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    return p0
.end method

.method public final e()Lcom/yandex/div/internal/widget/indicator/b;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    iget v3, p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    iget-boolean v3, p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    iget v3, p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    iget-object v3, p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    iget p1, p1, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()F
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    return v0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    return p0
.end method

.method public final h()F
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    iget-object p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/indicator/b;->b()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()F
    .locals 0

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indicator(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", centerOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", itemSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->d:Lcom/yandex/div/internal/widget/indicator/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yandex/div/internal/widget/indicator/IndicatorsStripDrawer$a;->e:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
