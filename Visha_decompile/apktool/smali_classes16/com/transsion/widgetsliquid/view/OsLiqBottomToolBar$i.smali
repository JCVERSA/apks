.class public Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;->startBgModeTransition(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/animation/ArgbEvaluator;

.field public final synthetic d:[I

.field public final synthetic e:I

.field public final synthetic f:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;Ljava/util/ArrayList;Landroid/animation/ArgbEvaluator;[II)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->f:Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar;

    iput-object p2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->c:Landroid/animation/ArgbEvaluator;

    iput-object p4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->d:[I

    iput p5, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)Lzfb;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->c:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->d:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/transsion/widgetsliquid/view/OsLiqBottomToolBar$i;->a(Ljava/lang/Float;)Lzfb;

    move-result-object p0

    return-object p0
.end method
