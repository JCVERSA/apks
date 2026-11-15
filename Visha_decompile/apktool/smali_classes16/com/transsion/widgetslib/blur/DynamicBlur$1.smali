.class Lcom/transsion/widgetslib/blur/DynamicBlur$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/blur/DynamicBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->a(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/transsion/widgetslib/blur/DynamicBlur;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "viewTreeObserver, onGlobalLayout, runnable delayed remove"

    invoke-static {v0, v1}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->n()V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->b(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;->this$0:Lcom/transsion/widgetslib/blur/DynamicBlur;

    invoke-static {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->a(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
