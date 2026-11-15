.class public final Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "iconViews"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "titleView"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleView"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->a:Ljava/util/List;

    return-object p0
.end method

.method public final b()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public final c()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->a:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->b:Landroid/widget/TextView;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->c:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->c:Landroid/widget/TextView;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->b:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/widgetsliquid/view/OSLiquidWidgetToolBar$b;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForegroundTargets(iconViews="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", titleView="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subtitleView="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
