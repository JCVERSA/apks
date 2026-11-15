.class Lcom/transsion/widgetslistitemlayout/OSListItemView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslistitemlayout/OSListItemView;->clearEditFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslistitemlayout/OSListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslistitemlayout/OSListItemView$14;->this$0:Lcom/transsion/widgetslistitemlayout/OSListItemView;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
