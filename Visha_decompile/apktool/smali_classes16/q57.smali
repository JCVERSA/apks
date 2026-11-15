.class public final synthetic Lq57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

.field public final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq57;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    iput-object p2, p0, Lq57;->c:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lq57;->b:Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;

    iget-object p0, p0, Lq57;->c:Landroid/view/View$OnClickListener;

    invoke-static {v0, p0, p1}, Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;->r(Lcom/transsion/widgetsliquid/view/OSLiquidBigButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method
