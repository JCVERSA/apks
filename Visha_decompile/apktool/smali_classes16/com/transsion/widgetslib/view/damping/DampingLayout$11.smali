.class Lcom/transsion/widgetslib/view/damping/DampingLayout$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->draw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->G(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v2}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {v3}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$11;->this$0:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->I(Lcom/transsion/widgetslib/view/damping/DampingLayout;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
