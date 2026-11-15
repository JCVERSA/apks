.class Lcom/transsion/widgetslib/dialog/InputDialog$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/InputDialog$4;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/widgetslib/dialog/InputDialog$4;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog$4;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;->this$1:Lcom/transsion/widgetslib/dialog/InputDialog$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;->this$1:Lcom/transsion/widgetslib/dialog/InputDialog$4;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->c(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4$1;->this$1:Lcom/transsion/widgetslib/dialog/InputDialog$4;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$4;->b:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
