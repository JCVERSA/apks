.class public final synthetic Lh67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf43$q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;


# direct methods
.method public synthetic constructor <init>(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh67;->a:I

    iput p2, p0, Lh67;->b:I

    iput-boolean p3, p0, Lh67;->c:Z

    iput-object p4, p0, Lh67;->d:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

    return-void
.end method


# virtual methods
.method public final a(Lf43;ZFF)V
    .locals 8

    iget v0, p0, Lh67;->a:I

    iget v1, p0, Lh67;->b:I

    iget-boolean v2, p0, Lh67;->c:Z

    iget-object v3, p0, Lh67;->d:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->x(IIZLcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Lf43;ZFF)V

    return-void
.end method
