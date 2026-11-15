.class Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/HeaderHelper;->q(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$1;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->d(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
