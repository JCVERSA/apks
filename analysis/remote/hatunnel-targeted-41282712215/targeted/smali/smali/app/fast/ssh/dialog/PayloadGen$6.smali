.class Lapp/fast/ssh/dialog/PayloadGen$6;
.super Ljava/lang/Object;
.source "PayloadGen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/dialog/PayloadGen;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/dialog/PayloadGen;

.field final synthetic val$payload:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method constructor <init>(Lapp/fast/ssh/dialog/PayloadGen;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$6;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    iput-object p2, p0, Lapp/fast/ssh/dialog/PayloadGen$6;->val$payload:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$6;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    invoke-static {p1}, Lapp/fast/ssh/dialog/PayloadGen;->access$600(Lapp/fast/ssh/dialog/PayloadGen;)Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;

    move-result-object p1

    iget-object v0, p0, Lapp/fast/ssh/dialog/PayloadGen$6;->val$payload:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lapp/fast/ssh/dialog/PayloadGen$GeneratorListener;->onGenerated(Ljava/lang/String;)V

    iget-object p1, p0, Lapp/fast/ssh/dialog/PayloadGen$6;->this$0:Lapp/fast/ssh/dialog/PayloadGen;

    invoke-static {p1}, Lapp/fast/ssh/dialog/PayloadGen;->access$700(Lapp/fast/ssh/dialog/PayloadGen;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method
