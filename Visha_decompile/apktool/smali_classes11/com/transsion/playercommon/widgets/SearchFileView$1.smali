.class Lcom/transsion/playercommon/widgets/SearchFileView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/widgets/SearchFileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/playercommon/widgets/SearchFileView;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/widgets/SearchFileView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$1;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/transsion/playercommon/widgets/SearchFileView$1;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {v1}, Lcom/transsion/playercommon/widgets/SearchFileView;->k(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/transsion/playercommon/widgets/SearchFileView$1;->this$0:Lcom/transsion/playercommon/widgets/SearchFileView;

    invoke-static {p0}, Lcom/transsion/playercommon/widgets/SearchFileView;->k(Lcom/transsion/playercommon/widgets/SearchFileView;)Lcom/transsion/widgetslib/widget/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/SearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
