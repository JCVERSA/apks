.class Lapp/fast/ssh/ExportActivity$1;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/ExportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/ExportActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/ExportActivity$1;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$1;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {p1}, Lapp/fast/ssh/ExportActivity;->access$000(Lapp/fast/ssh/ExportActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u2e48"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lapp/fast/ssh/ExportActivity$1;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {v1}, Lapp/fast/ssh/ExportActivity;->access$100(Lapp/fast/ssh/ExportActivity;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lapp/fast/ssh/ExportActivity$1;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {v0}, Lapp/fast/ssh/ExportActivity;->access$200(Lapp/fast/ssh/ExportActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "\u2e49"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$1;->this$0:Lapp/fast/ssh/ExportActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lapp/fast/ssh/ExportActivity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$1;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-virtual {p1}, Lapp/fast/ssh/ExportActivity;->finish()V

    :cond_1
    return-void
.end method
