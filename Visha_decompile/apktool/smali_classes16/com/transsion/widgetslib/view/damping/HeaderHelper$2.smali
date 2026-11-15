.class Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/HeaderHelper;->m(Landroid/view/MotionEvent;)V
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

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->b(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/view/OSLoadingView;->setPullPercent(F)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$2;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->b(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)Lcom/transsion/widgetslib/view/OSLoadingView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/view/OSLoadingView;->startLoadingAnimation()V

    return-void
.end method
