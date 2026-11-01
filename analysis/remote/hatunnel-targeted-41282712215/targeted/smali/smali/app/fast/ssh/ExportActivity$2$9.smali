.class Lapp/fast/ssh/ExportActivity$2$9;
.super Ljava/lang/Object;
.source "ExportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lapp/fast/ssh/ExportActivity$2;Landroid/widget/CompoundButton;)V
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

    iput-object p1, p0, Lapp/fast/ssh/ExportActivity$2$9;->this$1:Lapp/fast/ssh/ExportActivity$2;

    iput-object p2, p0, Lapp/fast/ssh/ExportActivity$2$9;->val$checkBox:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$9;->val$checkBox:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lapp/fast/ssh/ExportActivity$2$9;->val$checkBox:Landroid/widget/CompoundButton;

    const-string/jumbo v0, "\u2e4f"

    invoke-static {v0}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
