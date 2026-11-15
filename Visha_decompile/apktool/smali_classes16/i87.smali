.class public final synthetic Li87;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li87;->b:Landroid/view/View;

    iput-object p2, p0, Li87;->c:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    iput p3, p0, Li87;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Li87;->b:Landroid/view/View;

    iget-object v1, p0, Li87;->c:Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;

    iget p0, p0, Li87;->d:I

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;->a(Landroid/view/View;Lcom/transsion/widgetsliquid/view/OSLiquidToolBar;ILandroid/view/View;)V

    return-void
.end method
