.class public final Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/view/View;

.field public c:F

.field public d:F

.field public e:F

.field public f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;FFFZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    .line 4
    iput p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    .line 5
    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->d:F

    .line 6
    iput p5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e:F

    .line 7
    iput-boolean p6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/view/View;FFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    :cond_3
    move v8, p6

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 8
    invoke-direct/range {v2 .. v8}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;-><init>(Ljava/lang/String;Landroid/view/View;FFFZ)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    return-object p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    return p0
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f:Z

    return-void
.end method

.method public final e(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e:F

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    iget-object v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->d:F

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e:F

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f:Z

    iget-boolean p1, p1, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    return-void
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->b:Landroid/view/View;

    iget v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->c:F

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->d:F

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->e:F

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab$c;->f:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TabItem(title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", px="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", textHeight="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mRtl="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
