.class Lapp/fast/ssh/ExportActivity$2$1;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/ExportActivity$2;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lapp/fast/ssh/ExportActivity$2;

.field final synthetic val$checkBox:Landroid/widget/CompoundButton;

.field final synthetic val$query:Lapp/fast/ssh/ExportActivity$TextQuery;


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExportActivity$2;Lapp/fast/ssh/ExportActivity$TextQuery;Landroid/widget/CompoundButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/ExportActivity$2$1;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iput-object p2, p0, Lapp/fast/ssh/ExportActivity$2$1;->val$query:Lapp/fast/ssh/ExportActivity$TextQuery;

    iput-object p3, p0, Lapp/fast/ssh/ExportActivity$2$1;->val$checkBox:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$1;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iget-object p1, p1, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    iget-object p2, p0, Lapp/fast/ssh/ExportActivity$2$1;->val$query:Lapp/fast/ssh/ExportActivity$TextQuery;

    invoke-virtual {p2}, Lapp/fast/ssh/ExportActivity$TextQuery;->getResult()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lapp/fast/ssh/ExportActivity;->access$302(Lapp/fast/ssh/ExportActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$1;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iget-object p1, p1, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    invoke-static {p1}, Lapp/fast/ssh/ExportActivity;->access$300(Lapp/fast/ssh/ExportActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$1;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iget-object p1, p1, Lapp/fast/ssh/ExportActivity$2;->this$0:Lapp/fast/ssh/ExportActivity;

    const-string/jumbo p2, "\u2e4a"

    invoke-static {p2}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$1;->val$checkBox:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
