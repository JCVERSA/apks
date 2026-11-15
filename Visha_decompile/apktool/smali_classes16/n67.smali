.class public final synthetic Ln67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln67;->b:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

    iput-boolean p2, p0, Ln67;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ln67;->b:Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;

    iget-boolean p0, p0, Ln67;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;->v(Lcom/transsion/widgetsliquid/view/OSLiquidFootOperationBar;Z)V

    return-void
.end method
