.class public final Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/view/View;

.field public d:F

.field public e:F

.field public f:F

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/view/View;FFFZZ)V
    .locals 1

    const-string v0, "title"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a:I

    .line 3
    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    .line 5
    iput p4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    .line 6
    iput p5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->e:F

    .line 7
    iput p6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f:F

    .line 8
    iput-boolean p7, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g:Z

    .line 9
    iput-boolean p8, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->h:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Landroid/view/View;FFFZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move/from16 v7, p4

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v8, v2

    goto :goto_1

    :cond_1
    move/from16 v8, p5

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v9, v2

    goto :goto_2

    :cond_2
    move/from16 v9, p6

    :goto_2
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move v10, v2

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move v11, v2

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 10
    invoke-direct/range {v3 .. v11}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;-><init>(ILjava/lang/String;Landroid/view/View;FFFZZ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/widgetslib/widget/OSIconTextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.transsion.widgetslib.widget.OSIconTextView"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/transsion/widgetslib/widget/OSIconTextView;

    return-object p0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p0, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final c()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    return-object p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    return p0
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g:Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a:I

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    iget-object v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->e:F

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f:F

    iget v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g:Z

    iget-boolean v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->h:Z

    iget-boolean p1, p1, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->h:Z

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final f(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f:F

    return-void
.end method

.method public final g(F)V
    .locals 0

    iput p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    return-void
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->e:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->h:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->a:I

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->c:Landroid/view/View;

    iget v3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->d:F

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->e:F

    iget v5, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->f:F

    iget-boolean v6, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->g:Z

    iget-boolean p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar$c;->h:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TabItem(iconRes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", title="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", view="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", x="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", px="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", textHeight="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mRtl="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showBadgeView="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
