.class public final synthetic Lr77;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr77;->b:Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;

    iput p2, p0, Lr77;->c:I

    iput-object p3, p0, Lr77;->d:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lr77;->b:Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;

    iget v1, p0, Lr77;->c:I

    iget-object p0, p0, Lr77;->d:Landroid/widget/TextView;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;->y(Lcom/transsion/widgetsliquid/view/OSLiquidSegmentedTab;ILandroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
