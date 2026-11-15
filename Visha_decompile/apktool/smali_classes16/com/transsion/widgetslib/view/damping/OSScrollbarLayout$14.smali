.class Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->a(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->B(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout$14;->this$0:Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;->C(Lcom/transsion/widgetslib/view/damping/OSScrollbarLayout;)V

    :cond_1
    :goto_0
    return-void
.end method
