.class public final Lcom/transsion/widgetslib/widget/OSPopupWindow$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/OSPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:[I


# direct methods
.method public constructor <init>(FFFF[I)V
    .locals 1

    const-string v0, "pos"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->a:F

    iput p2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->b:F

    iput p3, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->c:F

    iput p4, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->d:F

    iput-object p5, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->e:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->a:F

    iget v3, p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->b:F

    iget v3, p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->c:F

    iget v3, p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->d:F

    iget v3, p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->e:[I

    iget-object p1, p1, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->e:[I

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->d:F

    return p0
.end method

.method public final getPos()[I
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->e:[I

    return-object p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->c:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->a:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->b:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->b:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->e:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->a:F

    iget v1, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->b:F

    iget v2, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->c:F

    iget v3, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->d:F

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupWindow$a;->e:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnchorBounds(x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", y="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", pos="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
