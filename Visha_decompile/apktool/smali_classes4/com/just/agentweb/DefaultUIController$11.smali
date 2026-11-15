.class Lcom/just/agentweb/DefaultUIController$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/just/agentweb/DefaultUIController;->onJsPromptInternal(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/just/agentweb/DefaultUIController;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/just/agentweb/DefaultUIController;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    iput-object p2, p0, Lcom/just/agentweb/DefaultUIController$11;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {p1}, Lcom/just/agentweb/DefaultUIController;->d(Lcom/just/agentweb/DefaultUIController;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/just/agentweb/AbsAgentWebUIController;->toDismissDialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {p1}, Lcom/just/agentweb/DefaultUIController;->b(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/just/agentweb/DefaultUIController$11;->this$0:Lcom/just/agentweb/DefaultUIController;

    invoke-static {p1}, Lcom/just/agentweb/DefaultUIController;->b(Lcom/just/agentweb/DefaultUIController;)Landroid/webkit/JsPromptResult;

    move-result-object p1

    iget-object p0, p0, Lcom/just/agentweb/DefaultUIController$11;->val$et:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
