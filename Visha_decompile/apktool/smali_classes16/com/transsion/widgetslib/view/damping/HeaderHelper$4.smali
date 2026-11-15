.class Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;
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

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/HeaderHelper$4;->this$0:Lcom/transsion/widgetslib/view/damping/HeaderHelper;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->c(Lcom/transsion/widgetslib/view/damping/HeaderHelper;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/transsion/widgetslib/view/damping/HeaderHelper;->g(Lcom/transsion/widgetslib/view/damping/HeaderHelper;F)V

    :cond_0
    return-void
.end method
