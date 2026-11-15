.class public final synthetic Lk67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67;->b:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

    iput p2, p0, Lk67;->c:I

    iput-object p3, p0, Lk67;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk67;->b:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

    iget v1, p0, Lk67;->c:I

    iget-object p0, p0, Lk67;->d:Ljava/lang/Boolean;

    invoke-static {v0, v1, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->B(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;ILjava/lang/Boolean;)V

    return-void
.end method
