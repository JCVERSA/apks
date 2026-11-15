.class Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar$1;->this$0:Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;->a(Lcom/transsion/widgetslib/view/damping/OSSmartScrollbar;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
