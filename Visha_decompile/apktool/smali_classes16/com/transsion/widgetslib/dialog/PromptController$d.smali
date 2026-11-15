.class public Lcom/transsion/widgetslib/dialog/PromptController$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->i(Lcom/transsion/widgetslib/dialog/PromptController;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->h(Lcom/transsion/widgetslib/dialog/PromptController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->b:Landroid/content/Context;

    invoke-virtual {p1, v1, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->i0(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->o(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$d;->c:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->m(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return v0
.end method
