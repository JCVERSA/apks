.class Lcom/transsion/sniffer_load/fragment/SearchFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/fragment/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/sniffer_load/fragment/SearchFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/fragment/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$4;->this$0:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$4;->this$0:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-static {v0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n0(Lcom/transsion/sniffer_load/fragment/SearchFragment;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$4;->this$0:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/sniffer_load/fragment/SearchFragment$4;->this$0:Lcom/transsion/sniffer_load/fragment/SearchFragment;

    invoke-static {p0}, Lcom/transsion/sniffer_load/fragment/SearchFragment;->n0(Lcom/transsion/sniffer_load/fragment/SearchFragment;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method
