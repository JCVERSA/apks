.class public Lcom/transsion/widgetslib/dialog/PromptController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->f(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->g(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->g(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->b(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->c(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->c(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/PromptController;->d(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->e(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->e(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->a(Lcom/transsion/widgetslib/dialog/PromptController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->o(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$c;->b:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->m(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    return-void
.end method
